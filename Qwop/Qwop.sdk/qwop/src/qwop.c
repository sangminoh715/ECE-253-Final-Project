/*
 * Name:	Sang Min Oh & Aditya Wadaskar
 * Class:	ECE 253
 * 
 * Final Project - QWOP
 */

#include <math.h>
#include <stdio.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xtft.h"

#define FRAME_BUFFER_0_ADDR XPAR_MIG_7SERIES_0_BASEADDR

/*-----Function Definitions-----*/

void TimerInterruptHandler(void);

// Helper functions
void InitScreen(void);
void DrawLine(int x1, int y1, int x2, int y2, u32 color);
void DrawBar(int x0, int x1, int y0, int y1, u32 color);
void FillCircle(int x,int y, int radius, u32 color);

// QWOP functions
void UpdateAndDisplayBody(void);
void UpdateBody(void);
void UpdateRefPos(void);

void TimerInterruptHandler(void);

volatile u32 * TFT = (u32 *)XPAR_AXI_TFT_0_BASEADDR;

#define MAX_X 639
#define MAX_Y 479
#define GROUND 460
#define sgn(x) ((x<0)?-1:((x>0)?1:0)) // return sign of a number

// Global Variables
int refPos = MAX_X, oldRefPos = MAX_X;
int thigh_length = 140, knee_length = 140;

// Define Limb Positions (Vertices)
// Parameters: x1, y1, x2, y2
int torso[4] = {MAX_X/2 - 2, 110, MAX_X/2 + 2, MAX_Y/2};
int left_thigh[4] = {MAX_X/2, MAX_Y/2, MAX_X/2 + 60, MAX_Y/2 + 50};
int left_knee[4] = {MAX_X/2 + 60, MAX_Y/2 + 50, MAX_X/2 + 60, GROUND};
int right_thigh[4] = {MAX_X/2, MAX_Y/2, MAX_X/2 - 60, MAX_Y/2 + 50};
int right_knee[4] = {MAX_X/2 - 60, MAX_Y/2 + 50, MAX_X/2 - 60, GROUND};

// limb angles. both thigh/knee angles are relative to Y-axis (0 rads if leg perpendicular to ground)
float angles[4]; //0: left thigh, 1: left knee, 2: right thigh, 3: right knee
float PI = 3.141592653;
float MAX_THIGH_ANGLE = 4.71238898; //lower threshold is its negative value

int main () {

	static XTft TftInstance;
	Xil_ICacheEnable();
	Xil_DCacheEnable();
	print("---Entering main---\n\r");

	/*---------------------------------------------------*/
	/*---------------Setup VGA Interface ----------------*/
	/*---------------------------------------------------*/

	int Status;
	XTft_Config *TftConfigPtr;

	// Get address of the XTft_Config structure for the given device id.
	TftConfigPtr = XTft_LookupConfig(XPAR_AXI_TFT_0_DEVICE_ID);
	if (TftConfigPtr == (XTft_Config *)NULL)
		return XST_FAILURE;

	// Initialize all the TftInstance members and fill screen with default bg color.
	Status = XTft_CfgInitialize(&TftInstance, TftConfigPtr, TftConfigPtr->BaseAddress);
	if (Status != XST_SUCCESS)
		return XST_FAILURE;

	// Wait till Video address latch status bit is set before writing (ensure no data flicker)
	while (XTft_GetVsyncStatus(&TftInstance) != XTFT_IESR_VADDRLATCH_STATUS_MASK);

	// Change Video Memory Base Address from default value to a valid Memory Address.
	XTft_SetFrameBaseAddr(&TftInstance, FRAME_BUFFER_0_ADDR);

	//*(TFT) = FRAME_BUFFER_0_ADDR;	 // Point TFT to address of frame buffer

	/*---------------------------------------------------*/
	/*--------------End VGA Interface Setup--------------*/
	/*---------------------------------------------------*/

	// Setup timer interrupt - use Polling every 2 ms

	// JOSH: CAN YOU SET UP POLLING INTERRUPT?
	// ALSO SETUP GPIO PINS FOR NOW FOR TESTING

	InitScreen();

	// This is a simulation to show functioning trig
	while (1) {
		DrawBar(torso[0], torso[2], torso[1], torso[3], 0x00F0FC00); //Draw torso
		FillCircle(MAX_X/2, 55, 55, 0x00F0FC00); // Draw head
		for (int j = 0; j < 300000; j++);
		angles[0] -= 0.1;
		angles[2] -= 0.1;
		if (angles[0] <= -PI*2)
			angles[0] = 0;
		if (angles[2] <= -PI*2)
			angles[2] = 0;
		UpdateAndDisplayBody();
	}

	print("---Exiting main---\n\r");
	Xil_DCacheDisable();
	Xil_ICacheDisable();
	return 0;
}

// Interrupt Handler - JOSH, CAN YOU WRITE THIS
void TimerInterruptHandler(void) {

//	This timer will fire every 2 ms (polling).
//	Every time it fires, it will use DiscreteRead() and check status of GPIO pins.
//	We're using GPIO for now - we'll set up AnalogRead() for flex sensors later.
//
//	What this handler does:
//		- Updates values of angles[4] depending on user input
//		- After updating, calls UpdateAndDisplayBody()

}

// Black screen and add ref point
void InitScreen(void) {
	DrawBar(0, MAX_X, 0, MAX_Y, 0x00000000);
	UpdateRefPos(); //Show reference point
	FillCircle(MAX_X/2, 55, 55, 0x00F0FC00); // Draw head
	DrawLine(MAX_X/2, 0, MAX_X/2, MAX_Y/2, 0x00F0FC00);
	DrawBar(torso[0], torso[2], torso[1], torso[3], 0x00F0FC00); //Draw torso

	//Initialize angles
	angles[0] = PI/4; 	// left thigh
	angles[1] = -PI/8;	// left knee
	angles[2] = 0;		// right thigh
	angles[3] = -PI/4;	// right knee

	UpdateAndDisplayBody();
}

// Display updated body
void UpdateAndDisplayBody() {
	// Resets previous positions to black
	DrawLine(left_thigh[0], left_thigh[1], left_thigh[2], left_thigh[3], 0x00000000); //left thigh
	DrawLine(left_knee[0], left_knee[1], left_knee[2], left_knee[3], 0x00000000); //left knee
	DrawLine(right_thigh[0], right_thigh[1], right_thigh[2], right_thigh[3], 0x00000000); //right thigh
	DrawLine(right_knee[0], right_knee[1], right_knee[2], right_knee[3], 0x00000000); //right knee

	//Update leg array values
	UpdateBody();

	// Sets new positions to white
	DrawLine(left_thigh[0], left_thigh[1], left_thigh[2], left_thigh[3], 0xFFFFFFFF); //left thigh
	DrawLine(left_knee[0], left_knee[1], left_knee[2], left_knee[3], 0xFFFFFFFF); //left knee
	DrawLine(right_thigh[0], right_thigh[1], right_thigh[2], right_thigh[3], 0xFFFFFFFF); //right thigh
	DrawLine(right_knee[0], right_knee[1], right_knee[2], right_knee[3], 0xFFFFFFFF); //right knee

//	UpdateRefPos();
}

// Update leg array values
void UpdateBody(void) {

	// Use trig functions to calculate new values - based on input
	left_thigh[2] = MAX_X/2 + thigh_length * sin(angles[0]);
	left_thigh[3] = MAX_Y/2 + thigh_length * cos(angles[0]);
	left_knee[0] = left_thigh[2];
	left_knee[1] = left_thigh[3];
	left_knee[2] = left_thigh[2] + knee_length * sin(angles[1]);
	left_knee[3] = left_thigh[3] + knee_length * cos(angles[1]);

	right_thigh[2] = MAX_X/2 + thigh_length * sin(angles[2]);
	right_thigh[3] = MAX_Y/2 + thigh_length * cos(angles[2]);
	right_knee[0] = right_thigh[2];
	right_knee[1] = right_thigh[3];
	right_knee[2] = right_thigh[2] + knee_length * sin(angles[3]);
	right_knee[3] = right_thigh[3] + knee_length * cos(angles[3]);

}

// Draw line using Bresenham's algorithm
void DrawLine(int x1, int y1, int x2, int y2, u32 color) {
	int i,dx,dy,sdx,sdy,dxabs,dyabs,x,y,px,py;

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

	Xil_Out32(FRAME_BUFFER_0_ADDR + 4096*py + 4*px,color);

	if (dxabs>=dyabs) { /* the line is more horizontal than vertical */
		for(i=0;i<dxabs;i++) {
			y+=dyabs;
			if (y>=dxabs) {
				y-=dxabs;
				py+=sdy;
			}
			px+=sdx;
			Xil_Out32(FRAME_BUFFER_0_ADDR + 4096*py + 4*px,color);
		}
	}
	else {/* the line is more vertical than horizontal */
		for(i=0;i<dyabs;i++) {
			x+=dxabs;
			if (x>=dyabs) {
				x-=dyabs;
				px+=sdx;
			}
			py+=sdy;
			Xil_Out32(FRAME_BUFFER_0_ADDR + 4096*py + 4*px,color);
		}
	}
}

void UpdateRefPos(void) {
	DrawBar(oldRefPos-10, oldRefPos, 440, 460, 0x00000000); //clear existing
	DrawBar(refPos-10, refPos, 440, 460, 0x0000FC00); //update point
	oldRefPos = refPos;
}

void DrawBar(int x0, int x1, int y0, int y1, u32 color) {
	for (int row = y0; row < y1; row++)
		for (int col = x0; col < x1; col++)
			Xil_Out32(FRAME_BUFFER_0_ADDR + 4096*row + 4*col,color); //0x000000FC for blue, 0x0000FC00 for green, 0x00FC0000 for red
}

void FillCircle(int x0, int y0, int r, u32 color) {
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
