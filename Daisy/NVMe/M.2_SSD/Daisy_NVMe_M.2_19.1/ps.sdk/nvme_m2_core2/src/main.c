//////////////////////////////////////////////////////////////////////////////////
// main.c for Daisy OpenSSD
// Copyright (c) 2016 Hanyang University ENC Lab.
// Contributed by Yong Ho Song <yhsong@enc.hanyang.ac.kr>
//				  Youngjin Jo <yjjo@enc.hanyang.ac.kr>
//				  Sangjin Lee <sjlee@enc.hanyang.ac.kr>
//				  Jaewook Kwak <jwkwak@enc.hanyang.ac.kr>
//				  Kibin Park <kbpark@enc.hanyang.ac.kr>
//
// This file is part of Cosmos+ OpenSSD.
//
// Cosmos+ OpenSSD is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 3, or (at your option)
// any later version.
//
// Cosmos+ OpenSSD is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
// See the GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Cosmos+ OpenSSD; see the file COPYING.
// If not, see <http://www.gnu.org/licenses/>.
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Company: ENC Lab. <http://enc.hanyang.ac.kr>
// Engineer: Sangjin Lee <sjlee@enc.hanyang.ac.kr>
//			 Jaewook Kwak <jwkwak@enc.hanyang.ac.kr>
//			 Kibin Park <kbpark@enc.hanyang.ac.kr>
//
// Project Name: Daisy OpenSSD
// Design Name: Daisy Firmware
// Module Name: Main
// File Name: main.c
//
// Version: v1.0.2
//
// Description:
//   - initializes caches, MMU, exception handler
//   - calls nvme_main function
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.2
//   - An address region (0x0020_0000 ~ 0x179F_FFFF) is used to uncached & nonbuffered region
//   - An address region (0x1800_0000 ~ 0x3FFF_FFFF) is used to cached & buffered region
//
// * v1.0.1
//   - Paging table setting is modified for QSPI or SD card boot mode
//     * An address region (0x0010_0000 ~ 0x001F_FFFF) is used to place code, data, heap and stack sections
//     * An address region (0x0010_0000 ~ 0x001F_FFFF) is setted a cached&bufferd region
//
// * v1.0.0
//   - First draft
//////////////////////////////////////////////////////////////////////////////////



#include "xil_cache.h"
#include "xil_exception.h"
#include "xil_mmu.h"
#include "xparameters_ps.h"
#include "xscugic_hw.h"
#include "xscugic.h"
#include "xil_printf.h"
#include "debug.h"

#include "nvme.h"
#include "nvme_main.h"
#include "sleep.h"

const unsigned int start_req_addr = IPC_START_REQ_CORE2_ADDR;
const unsigned int start_res_addr = IPC_START_RES_CORE2_ADDR;

int main()
{
	unsigned int u;

	Xil_ICacheDisable();
	Xil_DCacheDisable();

	// Paging table set
	#define MB (1024*1024)
	for (u = 0; u < 4096; u+=2)
	{
		if (u < 0x4)
			Xil_SetTlbAttributes(u * MB, NORM_WB_CACHE);
		else if (u < 0x300)
			Xil_SetTlbAttributes(u * MB, NORM_NONCACHE);
		else if (u < 0x400)
			Xil_SetTlbAttributes(u * MB, NORM_WB_CACHE);
		else if (u < 0x800)
			Xil_SetTlbAttributes(u * MB, NORM_NONCACHE);
		else
			Xil_SetTlbAttributes(u * MB, STRONG_ORDERED);
	}

	Xil_ICacheEnable();
	Xil_DCacheEnable();

    *(unsigned int *)start_req_addr = 0;
    *(unsigned int *)start_res_addr = 0;

    usleep(1000000);    
    while(*(unsigned int *)start_req_addr == 0)
        ;

	nvme_main();

	xil_printf("done\r\n");

	return 0;
}
