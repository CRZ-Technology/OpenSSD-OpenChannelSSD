//////////////////////////////////////////////////////////////////////////////////
// lld.h for Cosmos OpenSSD
// Copyright (c) 2014 Hanyang University ENC Lab.
// Contributed by Yong Ho Song <yhsong@enc.hanyang.ac.kr>
//                Gyeongyong Lee <gylee@enc.hanyang.ac.kr>
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
// Engineer: Gyeongyong Lee <gylee@enc.hanyang.ac.kr>
// 
// Project Name: Cosmos OpenSSD
// Design Name: Tutorial FTL
// Module Name: Low Level Driver
// File Name: lld.h
//
// Version: v1.1.1
//
// Description: 
//   - define basic functions and parameters
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.1.1
//   - change in naming convention
//
// * v1.1.0
//   - change parameter addresses/values
//
// * v1.0.0
//   - First draft
//////////////////////////////////////////////////////////////////////////////////

#ifndef	LLD_H_
#define	LLD_H_

#include "xbasic_types.h"
#include "xparameters.h"

#ifdef XPAR_SYNC_CH_CTL_BL16_0_BASEADDR
#define XPAR_SYNC_CH_CTL_0_BASEADDR XPAR_SYNC_CH_CTL_BL16_0_BASEADDR
#endif

#ifdef XPAR_SYNC_CH_CTL_BL16_1_BASEADDR
#define XPAR_SYNC_CH_CTL_1_BASEADDR XPAR_SYNC_CH_CTL_BL16_1_BASEADDR
#endif

#ifdef XPAR_SYNC_CH_CTL_BL16_2_BASEADDR
#define XPAR_SYNC_CH_CTL_2_BASEADDR XPAR_SYNC_CH_CTL_BL16_2_BASEADDR
#endif

#ifdef XPAR_SYNC_CH_CTL_BL16_3_BASEADDR
#define XPAR_SYNC_CH_CTL_3_BASEADDR XPAR_SYNC_CH_CTL_BL16_3_BASEADDR
#endif

#ifndef XPAR_PS7_DDR_0_S_AXI_HP0_BASEADDR
#define XPAR_PS7_DDR_0_S_AXI_HP0_BASEADDR 0x00000000
#endif

#define SSD_CMD_READ        0x00000001
#define SSD_CMD_PROG        0x00000002
#define SSD_CMD_ERASE       0x00000003
#define SSD_CMD_RESET       0x000000ff
#define SSD_CMD_MODE_CHANGE 0x000000ef
#define SSD_CMD_READ_ID     0x00000090

#define WAY_RB_MASK         0x20202020
#define WAY_ERR_MASK        0x03030303

#define ReadCh0WayStatus(wayNo)	Xil_In32((XPAR_SYNC_CH_CTL_0_BASEADDR+0x0)+((7-wayNo)<<4))
#define ReadCh1WayStatus(wayNo)	Xil_In32((XPAR_SYNC_CH_CTL_1_BASEADDR+0x0)+((7-wayNo)<<4))
#define ReadCh2WayStatus(wayNo)	Xil_In32((XPAR_SYNC_CH_CTL_2_BASEADDR+0x0)+((7-wayNo)<<4))
#define ReadCh3WayStatus(wayNo)	Xil_In32((XPAR_SYNC_CH_CTL_3_BASEADDR+0x0)+((7-wayNo)<<4))

#define readCmdCh0(wayNo)		Xil_In32((XPAR_SYNC_CH_CTL_0_BASEADDR+0x4)+((7-wayNo)<<4))
#define ReadMemCh0(wayNo)		Xil_In32((XPAR_SYNC_CH_CTL_0_BASEADDR+0x8)+((7-wayNo)<<4))
#define ReadRowCh0(wayNo)		Xil_In32((XPAR_SYNC_CH_CTL_0_BASEADDR+0xC)+((7-wayNo)<<4))
#define ReadCh0Sdata(addr)		Xil_In32((XPAR_SYNC_CH_CTL_0_BASEADDR+0x80+addr))

#define readCmdCh1(wayNo)		Xil_In32((XPAR_SYNC_CH_CTL_1_BASEADDR+0x4)+((7-wayNo)<<4))
#define ReadMemCh1(wayNo)		Xil_In32((XPAR_SYNC_CH_CTL_1_BASEADDR+0x8)+((7-wayNo)<<4))
#define ReadRowCh1(wayNo)		Xil_In32((XPAR_SYNC_CH_CTL_1_BASEADDR+0xC)+((7-wayNo)<<4))
#define ReadCh1Sdata(addr)		Xil_In32((XPAR_SYNC_CH_CTL_1_BASEADDR+0x80+addr))

#define readCmdCh2(wayNo)		Xil_In32((XPAR_SYNC_CH_CTL_2_BASEADDR+0x4)+((7-wayNo)<<4))
#define ReadMemCh2(wayNo)		Xil_In32((XPAR_SYNC_CH_CTL_2_BASEADDR+0x8)+((7-wayNo)<<4))
#define ReadRowCh2(wayNo)		Xil_In32((XPAR_SYNC_CH_CTL_2_BASEADDR+0xC)+((7-wayNo)<<4))
#define ReadCh2Sdata(addr)		Xil_In32((XPAR_SYNC_CH_CTL_2_BASEADDR+0x80+addr))

#define readCmdCh3(wayNo)		Xil_In32((XPAR_SYNC_CH_CTL_3_BASEADDR+0x4)+((7-wayNo)<<4))
#define ReadMemCh3(wayNo)		Xil_In32((XPAR_SYNC_CH_CTL_3_BASEADDR+0x8)+((7-wayNo)<<4))
#define ReadRowCh3(wayNo)		Xil_In32((XPAR_SYNC_CH_CTL_3_BASEADDR+0xC)+((7-wayNo)<<4))
#define ReadCh3Sdata(addr)		Xil_In32((XPAR_SYNC_CH_CTL_3_BASEADDR+0x80+addr))

#define WriteCh0RowAddr(wayNo, data)	Xil_Out32((XPAR_SYNC_CH_CTL_0_BASEADDR+0xC)+((7-wayNo)<<4), (u32)(data))
#define WriteCh1RowAddr(wayNo, data)	Xil_Out32((XPAR_SYNC_CH_CTL_1_BASEADDR+0xC)+((7-wayNo)<<4), (u32)(data))
#define WriteCh2RowAddr(wayNo, data)	Xil_Out32((XPAR_SYNC_CH_CTL_2_BASEADDR+0xC)+((7-wayNo)<<4), (u32)(data))
#define WriteCh3RowAddr(wayNo, data)	Xil_Out32((XPAR_SYNC_CH_CTL_3_BASEADDR+0xC)+((7-wayNo)<<4), (u32)(data))

#define WriteCh0MemAddr(wayNo, addr)	Xil_Out32((XPAR_SYNC_CH_CTL_0_BASEADDR+0x8)+((7-wayNo)<<4), (u32)(addr))
#define WriteCh1MemAddr(wayNo, addr)	Xil_Out32((XPAR_SYNC_CH_CTL_1_BASEADDR+0x8)+((7-wayNo)<<4), (u32)(addr))
#define WriteCh2MemAddr(wayNo, addr)	Xil_Out32((XPAR_SYNC_CH_CTL_2_BASEADDR+0x8)+((7-wayNo)<<4), (u32)(addr))
#define WriteCh3MemAddr(wayNo, addr)	Xil_Out32((XPAR_SYNC_CH_CTL_3_BASEADDR+0x8)+((7-wayNo)<<4), (u32)(addr))

#define WriteCh0Command(wayNo, data)	Xil_Out32((XPAR_SYNC_CH_CTL_0_BASEADDR+0x0)+((7-wayNo)<<4), (u32)(data))
#define WriteCh1Command(wayNo, data)	Xil_Out32((XPAR_SYNC_CH_CTL_1_BASEADDR+0x0)+((7-wayNo)<<4), (u32)(data))
#define WriteCh2Command(wayNo, data)	Xil_Out32((XPAR_SYNC_CH_CTL_2_BASEADDR+0x0)+((7-wayNo)<<4), (u32)(data))
#define WriteCh3Command(wayNo, data)	Xil_Out32((XPAR_SYNC_CH_CTL_3_BASEADDR+0x0)+((7-wayNo)<<4), (u32)(data))

#define WriteCh0Sdata(addr, data)		Xil_Out32((XPAR_SYNC_CH_CTL_0_BASEADDR+0x80+addr), (u32)(data))
#define WriteCh1Sdata(addr, data)		Xil_Out32((XPAR_SYNC_CH_CTL_1_BASEADDR+0x80+addr), (u32)(data))
#define WriteCh2Sdata(addr, data)		Xil_Out32((XPAR_SYNC_CH_CTL_2_BASEADDR+0x80+addr), (u32)(data))
#define WriteCh3Sdata(addr, data)		Xil_Out32((XPAR_SYNC_CH_CTL_3_BASEADDR+0x80+addr), (u32)(data))
  
int SsdReset(u32 chNo, u32 wayNo);
int SsdModeChange(u32 chNo, u32 wayNo);
int SsdReadChWayStatus(u32 chNo, u32 wayNo);

int SsdBlockErase(u32 chNo, u32 wayNo, u32 rowAddr);
int SsdPageRead(u32 chNo, u32 wayNo, u32 rowAddr, u32 dstAddr);
int SsdPageProgram(u32 chNo, u32 wayNo, u32 rowAddr, u32 srcAddr);

int SsdErase(u32 chNo, u32 wayNo, u32 blockNo);
int SsdRead(u32 chNo, u32 wayNo, u32 rowAddr, u32 dstAddr);
int SsdProgram(u32 chNo, u32 wayNo, u32 rowAddr, u32 srcAddr);

void WaitWayFree(u32 ch, u32 way);

#endif /* LLD_H_ */
