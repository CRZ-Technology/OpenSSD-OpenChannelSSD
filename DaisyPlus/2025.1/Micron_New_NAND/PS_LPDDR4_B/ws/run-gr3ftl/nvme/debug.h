//////////////////////////////////////////////////////////////////////////////////
// debug.h for Cosmos+ OpenSSD
// Copyright (c) 2016 Hanyang University ENC Lab.
// Contributed by Yong Ho Song <yhsong@enc.hanyang.ac.kr>
//				  Youngjin Jo <yjjo@enc.hanyang.ac.kr>
//				  Sangjin Lee <sjlee@enc.hanyang.ac.kr>
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
//
// Project Name: Cosmos+ OpenSSD
// Design Name: Cosmos+ Firmware
// Module Name: Debug Mate
// File Name: debug.h
//
// Version: v1.0.0
//
// Description:
//   - defines macros for debugging
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.0
//   - First draft
//////////////////////////////////////////////////////////////////////////////////

#ifndef __DEBUG_H_
#define __DEBUG_H_

#include "assert.h"
#include "nvme.h"
#include "xil_printf.h"

#define __CRITICAL_MESSAGE 0

#define __ASSERT 1
#define __DEBUG_MESSAGE_LEVEL __CRITICAL_MESSAGE
#define __ADMIN_CMD_DONE_MESSAGE_PRINT 0
#define __IO_CMD_DONE_MESSAGE_PRINT 0
#define __DEBUG 0

#if __ASSERT
#define ASSERT(X)														\
if (!(X))																\
{																		\
	xil_printf("\r\n\nerror in %s: Line %d\r\n", __FILE__, __LINE__);	\
	while(1) ;															\
}
#else
#define ASSERT(X)
#endif

#if __DEBUG
#define PRINT(FORMAT, ...)	xil_printf(FORMAT, ## __VA_ARGS__)
#else
#define PRINT(FORMAT, ...)
#endif


#endif
