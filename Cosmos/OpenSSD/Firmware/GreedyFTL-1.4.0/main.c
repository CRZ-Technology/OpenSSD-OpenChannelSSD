//////////////////////////////////////////////////////////////////////////////////
// main.c for Cosmos OpenSSD
// Copyright (c) 2014 Hanyang University ENC Lab.
// Contributed by Yong Ho Song <yhsong@enc.hanyang.ac.kr>
//                Youngjin Jo <yjjo@enc.hanyang.ac.kr>
//                Sangjin Lee <sjlee@enc.hanyang.ac.kr>
//
// This file is part of Cosmos OpenSSD.
//
// Cosmos OpenSSD is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 3, or (at your option)
// any later version.
//
// Cosmos OpenSSD is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
// See the GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Cosmos OpenSSD; see the file COPYING.
// If not, see <http://www.gnu.org/licenses/>.
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Company: ENC Lab. <http://enc.hanyang.ac.kr>
// Engineer: Sangjin Lee <sjlee@enc.hanyang.ac.kr>
//
// Project Name: Cosmos OpenSSD
// Design Name: Main
// File Name: main.c
//
// Version: v1.0.2
//
// Description:
//   - Main function is here.
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.2
//   - Enable instruction cache
//
// * v1.0.1
//   - add PCIe status check
//
// * v1.0.0
//   - First draft
//////////////////////////////////////////////////////////////////////////////////

#include <stdio.h>
#include "xparameters.h"
#include "xil_io.h"
#include "xil_cache.h"
#include "xil_exception.h"
#include "xil_types.h"
#include "xaxicdma.h"
#include "xaxipcie.h"

#include "mem_map.h"
#include "ata.h"
#include "identify.h"
#include "req_handler.h"

int main()
{
	Xil_DCacheDisable();

	print("\r\n---------------------------------\r\n");
	print("------ SSD firmware start -------\r\n");
	print("---------------------------------\r\n\r\n");

	while (Xil_In32(XPAR_PCIE_STATUS_CHECK_0_BASEADDR) == 0);

	ReqHandler();

    return 0;
}
