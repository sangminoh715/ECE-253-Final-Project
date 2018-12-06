/*
 * Name:	Sang Min Oh & Aditya Wadaskar
 * Class:	ECE 253
 * 
 * Final Project - QWOP
 */

#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include "xgpio.h"
#include "xil_cache.h"
#include "xintc.h"
#include "xparameters.h"
#include "xtft.h"
#include "xtmrctr.h"
#include "xtmrctr_l.h"

/* -------------------- Definitions -------------------- */

#define FRAME_BUFFER_0_ADDR 	XPAR_MIG_7SERIES_0_BASEADDR

#define RESET_VALUE		0x30D40
#define GPIO_CHANNEL	1

#define BLACK	0x00000000
#define WHITE	0xFFFFFFFF

#define WIDTH	640
#define HEIGHT	480
#define GROUND	460

#define THIGH_LENGTH	140
#define CALF_LENGTH		140

#define PI				3.141592653
#define MAX_THIGH_ANGLE	5*PI/8

#define sgn(x) ((x<0)?-1:((x>0)?1:0)) // return sign of a number

static XGpio led;
static XGpio btn;
static XTmrCtr timer;
static XTft TftInstance;

static XIntc interrupt;

volatile u32 * TFT = (u32 *)XPAR_AXI_TFT_0_BASEADDR;

struct part {
	int length;		// length of body part
	int x1, y1;		// endpoint 1
	int x2, y2;		// endpoint 2
	float angle;	// angle of body part with respect to neg. y-axis
};

struct part left_thigh, right_thigh;
struct part left_calf, right_calf;
struct part torso;

int refPos = WIDTH, oldRefPos = WIDTH;

u16 leds = 0x0000;
int controls[5] = {0,	// Q = Right Thigh
                   0, 	// W = Left Thigh
                   0, 	// O = Left Calf
                   0, 	// P = Right Calf
                   0};	// RESET
int leftInFront = 1;
int resetPressed = 0;

/* -------------------- Functions -------------------- */

void TimerInterruptHandler(void);

// Drawing Functions
void DrawLine(int x1, int y1, int x2, int y2, u32 color);
void DrawBar(int x0, int x1, int y0, int y1, u32 color);
void FillCircle(int x,int y, int radius, u32 color);
void InitializeParameters(void);
void InitScreen(void);

// QWOP Functions
void UpdateAndDisplayBody(void);
void UpdateBody(void);
void UpdateRefPos(void);

#define DRAW_BG		DrawBar(0, WIDTH, 0, HEIGHT, BLACK)
#define DRAW_HEAD	FillCircle(WIDTH/2, 55, 55, WHITE)
#define DRAW_TORSO	{\
	DrawLine(WIDTH/2, 0, WIDTH/2, HEIGHT/2, WHITE);\
	DrawBar(torso.x1, torso.y1, torso.x2, torso.y2, WHITE);\
}

int main() {
	//print("---Entering main---\n\r");
	Xil_ICacheEnable();
	Xil_DCacheEnable();

	// Initialize TFT Controller

	int Status;
	XTft_Config *TftConfigPtr;

	// Get address of the XTft_Config structure for the given device id.
	TftConfigPtr = XTft_LookupConfig(XPAR_AXI_TFT_0_DEVICE_ID);
	if (TftConfigPtr == (XTft_Config *)NULL) return XST_FAILURE;

	// Initialize all the TftInstance members and fill screen with default bg color.
	Status = XTft_CfgInitialize(&TftInstance, TftConfigPtr, TftConfigPtr->BaseAddress);
	if (Status != XST_SUCCESS) return XST_FAILURE;

	// Wait till Video address latch status bit is set before writing (ensure no data flicker)
	while (XTft_GetVsyncStatus(&TftInstance) != XTFT_IESR_VADDRLATCH_STATUS_MASK);

	// Change Video Memory Base Address from default value to a valid Memory Address.
	XTft_SetFrameBaseAddr(&TftInstance, FRAME_BUFFER_0_ADDR);

	// Initialize GPIO Peripherals

	XGpio_Initialize(&led, XPAR_GPIO_1_DEVICE_ID);
	XGpio_Initialize(&btn, XPAR_GPIO_3_DEVICE_ID);
	XGpio_SetDataDirection(&btn, GPIO_CHANNEL, 0xF);

	// Initialize Interrupt Controller

	XIntc_Initialize(&interrupt, XPAR_MICROBLAZE_0_AXI_INTC_DEVICE_ID);

	XIntc_Connect(&interrupt, XPAR_MICROBLAZE_0_AXI_INTC_AXI_TIMER_0_INTERRUPT_INTR, (XInterruptHandler) TimerInterruptHandler, &timer);
	XIntc_Start(&interrupt, XIN_REAL_MODE);
	XIntc_Enable(&interrupt, XPAR_MICROBLAZE_0_AXI_INTC_AXI_TIMER_0_INTERRUPT_INTR);

	XTmrCtr_Initialize(&timer, XPAR_MICROBLAZE_0_AXI_INTC_DEVICE_ID);
	XTmrCtr_SetOptions(&timer, 0, XTC_INT_MODE_OPTION | XTC_AUTO_RELOAD_OPTION);
	XTmrCtr_SetResetValue(&timer, 0, 0xFFFFFFFF - RESET_VALUE);
	XTmrCtr_Start(&timer, 0);

	// Register interrupt handling with Microblaze

	microblaze_register_handler((XInterruptHandler) XIntc_DeviceInterruptHandler, (void*) XPAR_MICROBLAZE_0_AXI_INTC_DEVICE_ID);
	microblaze_enable_interrupts();

	// Initialize the body part parameters and draw the initial position
	InitializeParameters();
	InitScreen();

	while(1) {
		DRAW_HEAD;
		DRAW_TORSO;

		UpdateAndDisplayBody();
	}

	Xil_DCacheDisable();
	Xil_ICacheDisable();
	//print("---Exiting main---\n\r");

	return 0;
}

void TimerInterruptHandler(void) {
	int i;
	u32 ControlStatusReg;
	ControlStatusReg = XTimerCtr_ReadReg(timer.BaseAddress, 0, XTC_TCSR_OFFSET);

	// Read the inputs
	u32 inputs = XGpio_DiscreteRead(&btn, GPIO_CHANNEL);
	for(i=0; i<5; ++i) {
		controls[i] = (inputs & (0x00000001 << i)) ? 1 : 0;
		XGpio_DiscreteWrite(&led, GPIO_CHANNEL, leds | (controls[i] << i)); // Turn on LED if button is pressed (for physical sanity check)
	}

	// Handle RESET
	if(controls[4]) {
		InitializeParameters();
		InitScreen();
		resetPressed = 1;
	} else {
		resetPressed = 0;

		// Update Based on the inputs
		for(i=0; i<4; ++i) {
			if(controls[i]) {
				switch(i) {
				case 0: // Q is pressed
					if(right_thigh.angle > -MAX_THIGH_ANGLE && right_thigh.angle < MAX_THIGH_ANGLE) {
						right_thigh.angle += 0.005;
						right_calf.angle += 0.005;
					}
					break;
				case 1: // W is pressed
					if(left_thigh.angle > -MAX_THIGH_ANGLE && left_thigh.angle < MAX_THIGH_ANGLE) {
						left_thigh.angle += 0.005;
						left_calf.angle += 0.005;
					}
					break;
				case 2: // O is pressed
					if(left_calf.angle > (left_thigh.angle - 7 * PI / 8) && left_calf.angle < (left_thigh.angle))
						left_calf.angle -= 0.005;
					break;
				case 3: // P is pressed
					if(right_calf.angle > (right_thigh.angle - 7 * PI / 8) && right_calf.angle < (right_thigh.angle))
						right_calf.angle -= 0.005;
					break;
				}
			}
		}
	}

	XTmrCtr_WriteReg(timer.BaseAddress, 0, XTC_TCSR_OFFSET, ControlStatusReg | XTC_CSR_INT_OCCURED_MASK);
}

void DrawBar(int x0, int x1, int y0, int y1, u32 color) {
	if(resetPressed) return;

	for (int row = y0; row < y1; row++)
		for (int col = x0; col < x1; col++)
			Xil_Out32(FRAME_BUFFER_0_ADDR + 4096*row + 4*col, color);
}

// Draw line using Bresenham's algorithm
void DrawLine(int x1, int y1, int x2, int y2, u32 color) {
	if(resetPressed) return;

	int i, dx, dy, sdx, sdy, dxabs, dyabs, x, y, px, py;

	dx = x2 - x1;      /* the horizontal distance of the line */
	dy = y2 - y1;      /* the vertical distance of the line */
	dxabs = abs(dx);
	dyabs = abs(dy);
	sdx = sgn(dx);
	sdy = sgn(dy);
	x = dyabs >> 1;
	y = dxabs >> 1;
	px = x1;
	py = y1;

	Xil_Out32(FRAME_BUFFER_0_ADDR + 4096*py + 4*px, color);

	if (dxabs>=dyabs) { /* the line is more horizontal than vertical */
		for(i=0;i<dxabs;i++) {
			y+=dyabs;
			if (y>=dxabs) {
				y-=dxabs;
				py+=sdy;
			}
			px+=sdx;
			Xil_Out32(FRAME_BUFFER_0_ADDR + 4096*py + 4*px, color);
		}
	} else { /* the line is more vertical than horizontal */
		for(i=0;i<dyabs;i++) {
			x+=dxabs;
			if (x>=dyabs) {
				x-=dyabs;
				px+=sdx;
			}
			py+=sdy;
			Xil_Out32(FRAME_BUFFER_0_ADDR + 4096*py + 4*px, color);
		}
	}
}

void FillCircle(int x0, int y0, int r, u32 color) {
	if(resetPressed) return;

	uint8_t corners = 3;
	int16_t delta = 0;

    int16_t f     = 1 - r;
    int16_t ddF_x = 1;
    int16_t ddF_y = -2 * r;
    int16_t x     = 0;
    int16_t y     = r;
    int16_t px    = x;
    int16_t py    = y;

    delta++; // Avoid some +1's in the loop

    while (x < y) {
        if (f >= 0) {
            y--;
            ddF_y += 2;
            f     += ddF_y;
        }
        x++;
        ddF_x += 2;
        f     += ddF_x;
        // These checks avoid double-drawing certain lines, important
        // for the SSD1306 library which has an INVERT drawing mode.
        if(x < (y + 1)) {
            if(corners & 1) DrawLine(x0+x, y0-y, x0+x, y0-y-1 + (2*y+delta), color);
            if(corners & 2) DrawLine(x0-x, y0-y, x0-x, y0-y-1 + (2*y+delta), color);
        }
        if(y != py) {
            if(corners & 1) DrawLine(x0+py, y0-px, x0+py, y0-px-1 + (2*px+delta), color);
            if(corners & 2) DrawLine(x0-py, y0-px, x0-py, y0-px-1 + (2*px+delta), color);
            py = y;
        }
        px = x;
    }
}

void InitializeParameters(void) {
	left_thigh.x1 = WIDTH/2;
	left_thigh.y1 = HEIGHT/2;
	left_thigh.x2 = WIDTH/2 + 60;
	left_thigh.y2 = HEIGHT/2 + 50;
	left_thigh.angle = PI/4;

	right_thigh.x1 = WIDTH/2;
	right_thigh.y1 = HEIGHT/2;
	right_thigh.x2 = WIDTH/2 - 60;
	right_thigh.y2 = HEIGHT/2 + 50;
	right_thigh.angle = 0;

	left_calf.x1 = WIDTH/2 + 60;
	left_calf.y1 = HEIGHT/2 + 50;
	left_calf.x2 = WIDTH/2 + 60;
	left_calf.y2 = GROUND;
	left_calf.angle = -PI/8;

	right_calf.x1 = WIDTH/2 - 60;
	right_calf.y1 = HEIGHT/2 + 50;
	right_calf.x2 = WIDTH/2 - 60;
	right_calf.y2 = GROUND;
	right_calf.angle = -PI/4;

	torso.x1 = WIDTH/2 - 1;
	torso.y1 = 110;
	torso.x2 = WIDTH/2 + 1;
	torso.y2 = HEIGHT/2;
	torso.angle = 0;

	refPos = WIDTH;
	oldRefPos = WIDTH;
}

// Initialize screen and add reference point
void InitScreen(void) {
	DRAW_BG;
	UpdateRefPos(); //Show reference point

	DRAW_HEAD;
	DRAW_TORSO;

	UpdateAndDisplayBody();
}

// Display updated body
void UpdateAndDisplayBody() {
	// Resets previous positions to black
	DrawLine(left_thigh.x1 , left_thigh.y1 , left_thigh.x2 , left_thigh.y2 , BLACK);
	DrawLine(left_calf.x1  , left_calf.y1  , left_calf.x2  , left_calf.y2  , BLACK);
	DrawLine(right_thigh.x1, right_thigh.y1, right_thigh.x2, right_thigh.y2, BLACK);
	DrawLine(right_calf.x1 , right_calf.y1 , right_calf.x2 , right_calf.y2 , BLACK);

	//Update leg array values
	UpdateBody();

	// Draw the reference point
	UpdateRefPos();

	// Sets new positions to white
	DrawLine(left_thigh.x1 , left_thigh.y1 , left_thigh.x2 , left_thigh.y2 , WHITE);
	DrawLine(left_calf.x1  , left_calf.y1  , left_calf.x2  , left_calf.y2  , WHITE);
	DrawLine(right_thigh.x1, right_thigh.y1, right_thigh.x2, right_thigh.y2, WHITE);
	DrawLine(right_calf.x1 , right_calf.y1 , right_calf.x2 , right_calf.y2 , WHITE);
}

// Update leg array values
void UpdateBody(void) {
	// Use trig functions to calculate new values - based on input
	left_thigh.x2 = WIDTH/2 + THIGH_LENGTH * sin(left_thigh.angle);
	left_thigh.y2 = HEIGHT/2 + THIGH_LENGTH * cos(left_thigh.angle);
	left_calf.x1 = left_thigh.x2;
	left_calf.y1 = left_thigh.y2;
	left_calf.x2 = left_thigh.x2 + CALF_LENGTH * sin(left_calf.angle);
	left_calf.y2 = left_thigh.y2 + CALF_LENGTH * cos(left_calf.angle);

	right_thigh.x2 = WIDTH/2 + THIGH_LENGTH * sin(right_thigh.angle);
	right_thigh.y2 = HEIGHT/2 + THIGH_LENGTH * cos(right_thigh.angle);
	right_calf.x1 = right_thigh.x2;
	right_calf.y1 = right_thigh.y2;
	right_calf.x2 = right_thigh.x2 + CALF_LENGTH * sin(right_calf.angle);
	right_calf.y2 = right_thigh.y2 + CALF_LENGTH * cos(right_calf.angle);

}

void UpdateRefPos(void) {
	DrawBar(oldRefPos-10, oldRefPos, 440, 460, BLACK); //clear existing
	DrawBar(refPos-10, refPos, 440, 460, 0x0000FC00); //update point
	oldRefPos = refPos;
}
