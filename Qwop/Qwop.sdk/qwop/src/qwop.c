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
#define RED		0x00DB4832
#define GREEN	0x0000FC00
#define DARK_GREEN	0x003A8E4D

// Additional color changes
#define SKY_BLUE 0x0071E2FF

#define WIDTH			640
#define HEIGHT			480
#define GROUND			460
#define DELTA_THETA		0.005

#define THIGH_LENGTH	140
#define CALF_LENGTH		140
#define TORSO_LENGTH	130

#define PI				3.141592653
#define MAX_THIGH_ANGLE	5*PI/8

#define SECOND			500

#define sgn(x) ((x<0)?-1:((x>0)?1:0))	// Return Sign of a Number
#define max(x, y) ((x > y) ? x : y)		// Return Maximum Value
#define min(x, y) ((x < y) ? x : y)		// Return Minimum Value

#define DRAW_BG			DrawBar(0, WIDTH, 0, HEIGHT, BLACK)
#define DRAW_GROUND		DrawLine(0, GROUND, WIDTH, GROUND, DARK_GREEN)
#define DRAW_UPPER_BODY(color)	{\
	DrawCircle(WIDTH/2, torso.y1 - 50, 50, color, 1);\
	DrawLine(torso.x1-17, torso.y1-75, torso.x1-17, torso.y1-50, color);\
	DrawLine(torso.x1+17, torso.y1-75, torso.x1+17, torso.y1-50, color);\
	DrawCircle(WIDTH/2, torso.y1 - 50, 35, color, 0);\
	\
	DrawLine(torso.x1, torso.y1, torso.x2, torso.y2, color);\
	\
	DrawLine(torso.x1, torso.y1, torso.x1 - 50, torso.y1 + TORSO_LENGTH/2, color);\
	DrawLine(torso.x1 - 50, torso.y1 + TORSO_LENGTH/2, torso.x1 - 90, torso.y1 + TORSO_LENGTH/4, color);\
	DrawLine(torso.x1 - 90, torso.y1 + TORSO_LENGTH/4, torso.x1 - 100, torso.y1 + TORSO_LENGTH/4, color);\
	\
	DrawLine(torso.x1, torso.y1, torso.x1 + 50, torso.y1 + TORSO_LENGTH/2, color);\
	DrawLine(torso.x1 + 50, torso.y1 + TORSO_LENGTH/2, torso.x1 + 90, torso.y1 + TORSO_LENGTH/4, color);\
	DrawLine(torso.x1 + 90, torso.y1 + TORSO_LENGTH/4, torso.x1 + 100, torso.y1 + TORSO_LENGTH/4, color);\
}

#define WRITE_SCORE {\
	int x;\
	XTft_SetPos(&TftInstance, 10, 10);\
	for(x=0; x<10; ++x)\
		XTft_Write(&TftInstance, scoreText[x]);\
}
#define WRITE_HI_SCORE {\
	int y;\
	XTft_SetPos(&TftInstance, 10, 30);\
	for(y=0; y<10; ++y)\
		XTft_Write(&TftInstance, hiScoreText[y]);\
}
#define WRITE_GAME_OVER {\
	int z;\
	XTft_SetColor(&TftInstance, RED, BLACK);\
	XTft_SetPos(&TftInstance, WIDTH/2-37, HEIGHT/4-30);\
	for(z=0; z<9; ++z)\
		XTft_Write(&TftInstance, gameOverText1[z]);\
	\
	XTft_SetPos(&TftInstance, WIDTH/2-72, HEIGHT/4);\
	for(z=0; z<18; ++z)\
		XTft_Write(&TftInstance, gameOverText2[z]);\
	\
	XTft_SetPos(&TftInstance, WIDTH/2-51, HEIGHT/4+20);\
	for(z=0; z<13; ++z)\
		XTft_Write(&TftInstance, gameOverText3[z]);\
	XTft_SetColor(&TftInstance, WHITE, BLACK);\
}
#define WRITE_GAME_OVER_SIDE {\
	int z;\
	XTft_SetColor(&TftInstance, RED, BLACK);\
	XTft_SetPos(&TftInstance, 45, HEIGHT/2-30);\
	for(z=0; z<9; ++z)\
		XTft_Write(&TftInstance, gameOverText1[z]);\
	\
	XTft_SetPos(&TftInstance, 10, HEIGHT/2);\
	for(z=0; z<18; ++z)\
		XTft_Write(&TftInstance, gameOverText2[z]);\
	\
	XTft_SetPos(&TftInstance, 31, HEIGHT/2+20);\
	for(z=0; z<13; ++z)\
		XTft_Write(&TftInstance, gameOverText3[z]);\
	XTft_SetColor(&TftInstance, WHITE, BLACK);\
}

static XGpio led;
static XGpio btn;
static XTmrCtr timer;
static XTft TftInstance;

static XIntc interrupt;

volatile u32 * TFT = (u32 *)XPAR_AXI_TFT_0_BASEADDR;

struct part {
	int x1, y1;		// endpoint 1
	int x2, y2;		// endpoint 2
	float angle;	// angle of body part with respect to neg. y-axis
};

struct part left_thigh, right_thigh;
struct part left_calf, right_calf;
struct part torso;

float refPos = WIDTH, oldRefPos = WIDTH;

int counter = 0;
u16 leds = 0x0000;
int controls[5] = {0,	// Q = Right Thigh
                   0, 	// W = Left Thigh
                   0, 	// O = Left Calf
                   0, 	// P = Right Calf
                   0};	// RESET
int leftInFront = 1;
int leftKneeInFront = 1;
int resetPressed = 0;
int gameOver = 0;
int started = 0;
float score = 0, hiScore = 0;
int time = 30, timectr = 0;

u8 scoreText[10] = {0x53, 0x43, 0x4F, 0x52, 0x45, 0x20, 0x20, 0x20, 0x20, 0x3A};
u8 hiScoreText[10] = {0x48, 0x49, 0x2D, 0x53, 0x43, 0x4F, 0x52, 0x45, 0x20, 0x3A};
u8 gameOverText1[9] =  {0x47, 0x41, 0x4D, 0x45, 0x20, 0x4F, 0x56, 0x45, 0x52};
u8 gameOverText2[18] = {0x50, 0x4C, 0x45, 0x41, 0x53, 0x45, 0x20, 0x50, 0x52, 0x45, 0x53, 0x53, 0x20, 0x52, 0x45, 0x53, 0x45, 0x54};
u8 gameOverText3[13] = {0x54, 0x4F, 0x20, 0x50, 0x4C, 0x41, 0x59, 0x20, 0x41, 0x47, 0x41, 0x49, 0x4E};
u8 timerText[7] = {0x54, 0x49, 0x4D, 0x45, 0x52, 0x20, 0x3A};

/* -------------------- Functions -------------------- */

void TimerInterruptHandler(void);

// Drawing Functions
void DisplayTimer(int time);
void DrawBar(int x0, int x1, int y0, int y1, u32 color);
void DrawCircle(int x0, int y0, int radius, u32 color, int full);
void DrawLine(int x1, int y1, int x2, int y2, u32 color);
void InitializeParameters(void);
void InitScreen(void);

// QWOP Functions
void UpdateAndDisplayBody(void);
void UpdateBody(void);
void UpdateRefPos(void);
void UpdateScore(int value, int high);

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

	XGpio_Initialize(&led, XPAR_GPIO_0_DEVICE_ID);
	XGpio_Initialize(&btn, XPAR_GPIO_1_DEVICE_ID);
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

	// Draw the initial score and high score
	WRITE_SCORE;
	WRITE_HI_SCORE;

	UpdateScore((int) score, 0);
	UpdateScore((int) hiScore, 1);

	while(1) {
		DRAW_GROUND;

		if(counter % 20 == 0)
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
	++counter;

	// Read the inputs
	u32 inputs = XGpio_DiscreteRead(&btn, GPIO_CHANNEL);
	for(i=0; i<5; ++i) {
		controls[i] = (inputs & (0x00000001 << i)) ? 1 : 0;
		started = (i < 4 && controls[i] && (!started)) ? 1 : started;
		XGpio_DiscreteWrite(&led, GPIO_CHANNEL, leds | (controls[i] << i)); // Turn on LED if button is pressed (for physical sanity check)
	}

	// Decrement the timer
	if(!gameOver && started) {
		if((++timectr) % SECOND == 0)
			--time;
		if(time <= 0) {
			DisplayTimer(time);
			gameOver = 1;
			WRITE_GAME_OVER_SIDE;
		}
	}

	// Handle RESET
	if(controls[4]) {
		if(!resetPressed) {
			InitializeParameters();
			InitScreen();

			resetPressed = 1;
			gameOver = 0;
			started = 0;

			hiScore = (score > hiScore) ? score : hiScore;
			score = 0;

			WRITE_SCORE;
			WRITE_HI_SCORE;

			UpdateScore(score/20, 0);
			UpdateScore(hiScore/20, 1);

			time = 30;
		}
	} else if(!gameOver) {
		resetPressed = 0;

		// Update Based on the inputs
		for(i=0; i<4; ++i) {
			if(controls[i]) {
				switch(i) {
				case 0: // Q is pressed
					if(controls[1]) break;

					if(right_thigh.angle > -MAX_THIGH_ANGLE && right_thigh.angle < MAX_THIGH_ANGLE && right_thigh.y2 < GROUND-1) {
						right_thigh.angle += DELTA_THETA;

						int y_prime = right_thigh.y1 + THIGH_LENGTH * cos(right_thigh.angle);
						right_calf.angle = ((right_calf.angle > 0) ? 1 : -1) * acos(((double) min(GROUND - y_prime, CALF_LENGTH)) / CALF_LENGTH);
					} else {
						if(right_thigh.angle > -MAX_THIGH_ANGLE && right_thigh.angle < MAX_THIGH_ANGLE) {
							right_thigh.angle += DELTA_THETA;
							right_calf.angle += DELTA_THETA;
						}
					}
					break;
				case 1: // W is pressed
					if(controls[0]) break;
					if(left_thigh.angle > -MAX_THIGH_ANGLE && left_thigh.angle < MAX_THIGH_ANGLE && left_thigh.y2 < GROUND-1) {
						left_thigh.angle += DELTA_THETA;

						int y_prime = left_thigh.y1 + THIGH_LENGTH * cos(left_thigh.angle);
						left_calf.angle = ((left_calf.angle > 0) ? 1 : -1) * acos(((double) min(GROUND - y_prime, CALF_LENGTH)) / CALF_LENGTH);
					} else {
						if(left_thigh.angle > -MAX_THIGH_ANGLE && left_thigh.angle < MAX_THIGH_ANGLE) {
							left_thigh.angle += DELTA_THETA;
							left_calf.angle += DELTA_THETA;
						}
					}
					break;
				case 2: // O is pressed
					if(controls[1] || controls[3]) break;
					if(left_calf.angle > (left_thigh.angle - 7 * PI / 8) && left_calf.angle < (left_thigh.angle)) {
						if(left_calf.x1 >= torso.x2 && left_calf.y1 < GROUND-1) {
							left_thigh.angle += ((left_calf.angle > 0) ? 1 : -1) * DELTA_THETA;

							int y_prime = left_thigh.y1 + THIGH_LENGTH * cos(left_thigh.angle);
							left_calf.angle = ((left_calf.angle > 0) ? 1 : -1) * acos(((double) min(GROUND - y_prime, CALF_LENGTH)) / CALF_LENGTH);

							score += 0.4;
							refPos -= 0.4;
						} else {
							left_calf.angle -= DELTA_THETA;
						}
					}
					break;
				case 3: // P is pressed
					if(controls[0] || controls[2]) break;
					if(right_calf.angle > (right_thigh.angle - 7 * PI / 8) && right_calf.angle < (right_thigh.angle)) {
						if(right_calf.x1 >= torso.x2 && right_calf.y1 < GROUND-1) {
							right_thigh.angle += ((right_calf.angle > 0) ? 1 : -1) * DELTA_THETA;

							int y_prime = right_thigh.y1 + THIGH_LENGTH * cos(right_thigh.angle);
							right_calf.angle = ((right_calf.angle > 0) ? 1 : -1) * acos(((double) min(GROUND - y_prime, CALF_LENGTH)) / CALF_LENGTH);

							score += 0.4;
							refPos -= 0.4;
						} else {
							right_calf.angle -= DELTA_THETA;
						}
					}
					break;
				}
			}
		}
	}

	XTmrCtr_WriteReg(timer.BaseAddress, 0, XTC_TCSR_OFFSET, ControlStatusReg | XTC_CSR_INT_OCCURED_MASK);
}

void DisplayTimer(int time) {
	int i;
	XTft_SetPos(&TftInstance, WIDTH-100, 10);
	for(i=0; i<7; ++i)
		XTft_Write(&TftInstance, timerText[i]);

	int vals[2] = {
		time/10,	// Tens Place
		time%10,	// Ones Place
	};
	XTft_SetPos(&TftInstance, WIDTH-30, 10);
	for(i=0; i<2; ++i)
		XTft_Write(&TftInstance, 0x30 + vals[i]);
}

void DrawBar(int x0, int x1, int y0, int y1, u32 color) {
	if(resetPressed) return;

	for (int row = y0; row < y1; row++)
		for (int col = x0; col < x1; col++)
			Xil_Out32(FRAME_BUFFER_0_ADDR + 4096*row + 4*col, color);
}

// Draw circle using Bresenham's algorithm
void DrawCircle(int x0, int y0, int radius, u32 color, int full) {
	if(resetPressed) return;

    int x = radius-1, y = 0, dx = 1, dy = 1, err = dx - (radius << 1);

    while (x >= y) {
    	if(full) {
    		Xil_Out32(FRAME_BUFFER_0_ADDR + 4096*(y0 + y) + 4*(x0 + x), color);

			Xil_Out32(FRAME_BUFFER_0_ADDR + 4096*(y0 + y) + 4*(x0 - x), color);
			Xil_Out32(FRAME_BUFFER_0_ADDR + 4096*(y0 - y) + 4*(x0 - x), color);
			Xil_Out32(FRAME_BUFFER_0_ADDR + 4096*(y0 - x) + 4*(x0 - y), color);
			Xil_Out32(FRAME_BUFFER_0_ADDR + 4096*(y0 - x) + 4*(x0 + y), color);
			Xil_Out32(FRAME_BUFFER_0_ADDR + 4096*(y0 - y) + 4*(x0 + x), color);
    	}
    	Xil_Out32(FRAME_BUFFER_0_ADDR + 4096*(y0 + x) + 4*(x0 + y), color);
    	Xil_Out32(FRAME_BUFFER_0_ADDR + 4096*(y0 + x) + 4*(x0 - y), color);

        if (err <= 0) {
            y++;
            err += dy;
            dy += 2;
        }

        if (err > 0) {
            x--;
            dx += 2;
            err += dx - (radius << 1);
        }
    }
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

void InitializeParameters(void) {
	left_thigh.angle = PI/4;
	left_thigh.x1 = WIDTH/2;
	left_thigh.y1 = HEIGHT/2;
	left_thigh.x2 = left_thigh.x1 + THIGH_LENGTH * sin(left_thigh.angle);
	left_thigh.y2 = left_thigh.y1 + THIGH_LENGTH * cos(left_thigh.angle);

	right_thigh.angle = -PI/8;
	right_thigh.x1 = WIDTH/2;
	right_thigh.y1 = HEIGHT/2;
	right_thigh.x2 = right_thigh.x1 + THIGH_LENGTH * sin(right_thigh.angle);
	right_thigh.y2 = right_thigh.y1 + THIGH_LENGTH * cos(right_thigh.angle);

	left_calf.angle = -acos(((double) (GROUND - left_thigh.y2)) / CALF_LENGTH);
	left_calf.x1 = left_thigh.x2;
	left_calf.y1 = left_thigh.y2;
	left_calf.x2 = left_calf.x1 + CALF_LENGTH * sin(left_calf.angle);
	left_calf.y2 = GROUND;

	right_calf.angle = -acos(((double) (GROUND - right_thigh.y2)) / CALF_LENGTH);
	right_calf.x1 = right_thigh.x2;
	right_calf.y1 = right_thigh.y2;
	right_calf.x2 = right_calf.x1 + CALF_LENGTH * sin(right_calf.angle);
	right_calf.y2 = GROUND;

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
	DRAW_GROUND;
	UpdateRefPos(); //Show reference point

	DRAW_UPPER_BODY(WHITE);

	UpdateAndDisplayBody();
}

// Display updated body
void UpdateAndDisplayBody() {
	if(gameOver) return;

	// Display the timer
	DisplayTimer(time);

	// Resets previous positions to black
	DrawLine(left_thigh.x1 , left_thigh.y1 , left_thigh.x2 , left_thigh.y2 , BLACK);
	DrawLine(left_calf.x1  , left_calf.y1  , left_calf.x2  , left_calf.y2  , BLACK);
	DrawLine(right_thigh.x1, right_thigh.y1, right_thigh.x2, right_thigh.y2, BLACK);
	DrawLine(right_calf.x1 , right_calf.y1 , right_calf.x2 , right_calf.y2 , BLACK);
	DRAW_UPPER_BODY(BLACK);

	//Update leg array values
	UpdateBody();

	// Draw the reference point
	UpdateRefPos();

	// Update the score
	UpdateScore(score/20, 0);

	// Sets new positions to white
	DrawLine(left_thigh.x1 , left_thigh.y1 , left_thigh.x2 , left_thigh.y2 , WHITE);
	DrawLine(left_calf.x1  , left_calf.y1  , left_calf.x2  , left_calf.y2  , WHITE);
	DrawLine(right_thigh.x1, right_thigh.y1, right_thigh.x2, right_thigh.y2, WHITE);
	DrawLine(right_calf.x1 , right_calf.y1 , right_calf.x2 , right_calf.y2 , WHITE);
	DRAW_UPPER_BODY(WHITE);

	// Check for GAME OVER
	if(torso.y2 >= GROUND-1) {
		gameOver = 1;
		WRITE_GAME_OVER;
	}
}

// Update leg array values
void UpdateBody(void) {
	// Use trig functions to calculate new values - based on input
	left_calf.x1 = left_thigh.x2 = left_thigh.x1 + THIGH_LENGTH * sin(left_thigh.angle);
	left_calf.y1 = left_thigh.y2 = left_thigh.y1 + THIGH_LENGTH * cos(left_thigh.angle);
	left_calf.x2 = left_thigh.x2 + CALF_LENGTH * sin(left_calf.angle);
	left_calf.y2 = left_thigh.y2 + CALF_LENGTH * cos(left_calf.angle);

	right_calf.x1 = right_thigh.x2 = right_thigh.x1 + THIGH_LENGTH * sin(right_thigh.angle);
	right_calf.y1 = right_thigh.y2 = right_thigh.y1 + THIGH_LENGTH * cos(right_thigh.angle);
	right_calf.x2 = right_thigh.x2 + CALF_LENGTH * sin(right_calf.angle);
	right_calf.y2 = right_thigh.y2 + CALF_LENGTH * cos(right_calf.angle);

	leftInFront = (left_calf.x2 > right_calf.x2) ? 1 : 0;
	leftKneeInFront = (left_calf.x1 > right_calf.x1) ? 1 : 0;

	if((left_calf.y2 >= GROUND-1 || left_calf.y1 >= GROUND) && (right_calf.y2 >= GROUND-1 || right_calf.y1 >= GROUND-1)) return;

	// Additional Updates

	int delta_h;
	// Case I - Both legs are in front of the center of gravity
	if(left_calf.x2 > WIDTH/2 && right_calf.x2 > WIDTH/2 && torso.y2 < GROUND-1) {
		if(left_thigh.angle < 3*PI/4)	left_thigh.angle += 4*DELTA_THETA;
		if(left_calf.angle < 3*PI/5)	left_calf.angle += 4*DELTA_THETA;
		if(right_thigh.angle < 3*PI/4)	right_thigh.angle += 4*DELTA_THETA;
		if(right_calf.angle < 3*PI/5)	right_calf.angle += 4*DELTA_THETA;

		right_calf.x1 = right_thigh.x2 = right_thigh.x1 + THIGH_LENGTH * sin(right_thigh.angle);
		right_calf.y1 = right_thigh.y2 = right_thigh.y1 + THIGH_LENGTH * cos(right_thigh.angle);
		right_calf.x2 = right_thigh.x2 + CALF_LENGTH * sin(right_calf.angle);
		right_calf.y2 = right_thigh.y2 + CALF_LENGTH * cos(right_calf.angle);

		delta_h = GROUND - max(max(max(left_calf.y1, left_calf.y2), right_calf.y1), right_calf.y2);
		refPos += delta_h;
		score -= delta_h;
	}

	// Case II - Both legs are behind the center of gravity
	else if(left_calf.x1 < WIDTH/2 && right_calf.x1 < WIDTH/2 && torso.y2 < GROUND-1) {
		if(left_thigh.angle > -PI/2)	left_thigh.angle -= 4*DELTA_THETA;
		if(left_calf.angle > -3*PI/5)	left_calf.angle -= 4*DELTA_THETA;
		if(right_thigh.angle > -PI/2)	right_thigh.angle -= 4*DELTA_THETA;
		if(right_calf.angle > -3*PI/5)	right_calf.angle -= 4*DELTA_THETA;

		right_calf.x1 = right_thigh.x2 = right_thigh.x1 + THIGH_LENGTH * sin(right_thigh.angle);
		right_calf.y1 = right_thigh.y2 = right_thigh.y1 + THIGH_LENGTH * cos(right_thigh.angle);
		right_calf.x2 = right_thigh.x2 + CALF_LENGTH * sin(right_calf.angle);
		right_calf.y2 = right_thigh.y2 + CALF_LENGTH * cos(right_calf.angle);

		delta_h = GROUND - max(max(max(left_calf.y1, left_calf.y2), right_calf.y1), right_calf.y2);
		refPos -= delta_h;
		score += delta_h;
	}

	// Case III - One foot/knee is off of the ground
	else if((left_calf.y2 < GROUND-1 || right_calf.y2 < GROUND-1 || (left_calf.y2 < left_calf.y1 && left_calf.y1 < GROUND-1) || (right_calf.y2 < right_calf.y1 && right_calf.y1 < GROUND-1)) && torso.y2 < GROUND-1) {
		if((leftInFront && left_calf.x2 > WIDTH/2 && left_calf.y2 < GROUND-1) || (!leftInFront && right_calf.x2 > WIDTH/2 && right_calf.y2 < GROUND-1)) {
			if((leftInFront && left_thigh.angle > 0) || (!leftInFront && left_thigh.angle > -PI/2))			left_thigh.angle -= 4*DELTA_THETA;
			if((leftInFront && left_calf.angle > -PI/9) || (!leftInFront && left_calf.angle > -5*PI/9))		left_calf.angle -= 4*DELTA_THETA;
			if((leftInFront && right_thigh.angle > -PI/2) || (!leftInFront && right_thigh.angle > 0))		right_thigh.angle -= 4*DELTA_THETA;
			if((leftInFront && right_calf.angle > -5*PI/9) || (!leftInFront && right_calf.angle > -PI/9))	right_calf.angle -= 4*DELTA_THETA;
		} else if((leftInFront && right_calf.x2 < WIDTH/2 && right_calf.y2 < GROUND-1) || (!leftInFront && left_calf.x2 < WIDTH/2 && left_calf.y2 < GROUND-1)) {
			if((leftInFront && left_thigh.angle < 5*PI/9) || (!leftInFront && left_thigh.angle < 0))		left_thigh.angle += 4*DELTA_THETA;
			if((leftInFront && left_calf.angle < PI/2) || (!leftInFront && left_calf.angle < -PI/9))		left_calf.angle += 4*DELTA_THETA;
			if((leftInFront && right_thigh.angle < 0) || (!leftInFront && right_thigh.angle < PI/2))		right_thigh.angle += 4*DELTA_THETA;
			if((leftInFront && right_calf.angle < -PI/9) || (!leftInFront && right_calf.angle < 5*PI/9))	right_calf.angle += 4*DELTA_THETA;
		}

		right_calf.x1 = right_thigh.x2 = right_thigh.x1 + THIGH_LENGTH * sin(right_thigh.angle);
		right_calf.y1 = right_thigh.y2 = right_thigh.y1 + THIGH_LENGTH * cos(right_thigh.angle);
		right_calf.x2 = right_thigh.x2 + CALF_LENGTH * sin(right_calf.angle);
		right_calf.y2 = right_thigh.y2 + CALF_LENGTH * cos(right_calf.angle);

		delta_h = GROUND - max(max(max(left_calf.y1, left_calf.y2), right_calf.y1), right_calf.y2);
	}

	torso.y1 += delta_h;
	torso.y2 += delta_h;
	left_thigh.y1 += delta_h;
	left_thigh.y2 += delta_h;
	left_calf.y1 += delta_h;
	left_calf.y2 += delta_h;
	right_thigh.y1 += delta_h;
	right_thigh.y2 += delta_h;
	right_calf.y1 += delta_h;
	right_calf.y2 += delta_h;
}

void UpdateRefPos(void) {
	if(refPos > WIDTH) {
		refPos -= WIDTH;
	} else if(refPos < 0) {
		refPos += WIDTH;
	}
	DrawBar((int) oldRefPos-15, (int) oldRefPos+10, 440, 460, BLACK); //clear existing
	DrawBar((int) refPos-10, (int) refPos, 440, 460, GREEN); //update point
	oldRefPos = refPos;
}

void UpdateScore(int value, int high) {
	// Set column based on whether we are trying to update the score or the hi-score
	int colVal = (high) ? 30 : 10;
	int scoreToWrite = (value >= 0) ? ((value <= 999) ? value : 999) : 0;

	int i;
	int vals[3] = {
		scoreToWrite/100,		// Hundreds Place
		(scoreToWrite/10)%10,	// Tens Place
		scoreToWrite%10			// Ones Place
	};

	XTft_SetPos(&TftInstance, 100, colVal);
	for(i=0; i<3; ++i)
		XTft_Write(&TftInstance, 0x30 + vals[i]);
}
