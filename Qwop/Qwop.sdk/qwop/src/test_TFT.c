/*
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A 
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR 
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION 
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE 
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO 
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO 
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE 
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY 
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 */

/*
 * 
 *
 * This file is a generated sample test application.
 *
 * This application is intended to test and/or illustrate some 
 * functionality of your system.  The contents of this file may
 * vary depending on the IP in your system and may use existing
 * IP driver functions.  These drivers will be generated in your
 * SDK application project when you run the "Generate Libraries" menu item.
 *
 */

#include <stdio.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xtft.h"

//#define RED		0x00FC0000
//#define GREEN	0x0000FC00
//#define BLUE	0x000000FC

#define FRAME_BUFFER_0_ADDR XPAR_MIG_7SERIES_0_BASEADDR


void InitScreen(void);
volatile u32 * TFT = (u32 *)XPAR_AXI_TFT_0_BASEADDR;


int main () 
{

   static XTft TftInstance;
   Xil_ICacheEnable();
   Xil_DCacheEnable();
   print("---Entering main---\n\r");



   {
   	int Status;
   	XTft_Config *TftConfigPtr;

   	/*
   	 * Get address of the XTft_Config structure for the given device id.
   	 */
   	TftConfigPtr = XTft_LookupConfig(XPAR_AXI_TFT_0_DEVICE_ID);
   	if (TftConfigPtr == (XTft_Config *)NULL) {
   		return XST_FAILURE;
   	}

   	/*
   	 * Initialize all the TftInstance members and fills the screen with
   	 * default background color.
   	 */
   	Status = XTft_CfgInitialize(&TftInstance, TftConfigPtr,
   				 	TftConfigPtr->BaseAddress);
   	if (Status != XST_SUCCESS) {
   		return XST_FAILURE;
   	}

   	/*
   	 * Wait till Vsync(Video address latch) status bit is set before writing
   	 * the frame address into the Address Register. This ensures that the
   	 * current frame has been displayed and we can display a new frame of
   	 * data. Checking the Vsync state ensures that there is no data flicker
   	 * when displaying frames in real time though there is some delay due to
   	 * polling.
   	 */
   	while (XTft_GetVsyncStatus(&TftInstance) !=
   					XTFT_IESR_VADDRLATCH_STATUS_MASK);

   	/*
   	 * Change the Video Memory Base Address from default value to
   	 * a valid Memory Address and clear the screen.
   	 */
   	XTft_SetFrameBaseAddr(&TftInstance, FRAME_BUFFER_0_ADDR);


   }

   print("---Initializing Screen---\r\n");
   InitScreen();

//   while(1) {
//	   int num=0;
//	   u32 color=RED;
//	   switch(num%3) {
//	   case 0:
//		   color = RED;
//		   break;
//	   case 1:
//		   color = GREEN;
//		   break;
//	   case 2:
//		   color = BLUE;
//		   break;
//	   }
//	   int row=0, col=0;
//	   for(row=0; row<480; row++) {
//		   for(col=0; col<640; col++) {
//			   Xil_Out32(FRAME_BUFFER_0_ADDR+4096*row+4*col,color); //0x000000FC for blue, 0x0000FC00 for green, 0x00FC0000 for red
//		   }
//	   }
//	   ++num;
//   }

   print("---Exiting main---\n\r");
   Xil_DCacheDisable();
   Xil_ICacheDisable();
   return 0;
}

void InitScreen(void)
{
    int row=0, col=0;
    for( row=0; row<480; row++)
    {
   	 for(col=0; col<640; col++)
   	 {
   		 	 	Xil_Out32(FRAME_BUFFER_0_ADDR+4096*row+4*col,0x00FC0000);
   	 }
    }
    *(TFT) = FRAME_BUFFER_0_ADDR;			// Point TFT to address of frame buffer
	return;
}

