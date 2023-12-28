//////////////////////////////////////////////////////////////////////////////////
// host_controller.h for Cosmos OpenSSD
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
// Design Name: Host Controller
// File Name: host_controller.h
//
// Version: v1.1.0
//
// Description:
//   - Provides host interface (GetRequestCmd, DmaDeviceToHost, CompleteCmd, ...)
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.1.0
//   - Support shutdown command (not ATA command)
//   - Move sector count information from driver to device firmware
//
// * v1.0.0
//   - First draft
//////////////////////////////////////////////////////////////////////////////////

#include "xbasic_types.h"

#include <stdio.h>
#include "xparameters.h"
#include "xil_io.h"
#include "xil_cache.h"
#include "xil_exception.h"
#include "xil_types.h"
#include "xaxicdma.h"
#include "xaxipcie.h"

#ifndef HOST_CONTROLLER_H_
#define HOST_CONTROLLER_H_

#define CONFIG_SPACE_REQUEST_START				XPAR_PCI_EXPRESS_PCIEBAR2AXIBAR_0
#define CONFIG_SPACE_REQUEST_BASE_ADDR_U		(XPAR_PCI_EXPRESS_PCIEBAR2AXIBAR_0 + 0x04)
#define CONFIG_SPACE_REQUEST_BASE_ADDR_L		(XPAR_PCI_EXPRESS_PCIEBAR2AXIBAR_0 + 0x08)
#define CONFIG_SPACE_COMPLETION_BASE_ADDR_U		(XPAR_PCI_EXPRESS_PCIEBAR2AXIBAR_0 + 0x0C)
#define CONFIG_SPACE_COMPLETION_BASE_ADDR_L		(XPAR_PCI_EXPRESS_PCIEBAR2AXIBAR_0 + 0x10)
#define CONFIG_SPACE_SHUTDOWN					(XPAR_PCI_EXPRESS_PCIEBAR2AXIBAR_0 + 0x14)
#define CONFIG_SPACE_SECTOR_COUNT				(XPAR_PCI_EXPRESS_PCIEBAR2AXIBAR_0 + 0x18)

#define REQUEST_IO_BASE_ADDR					0x01000000
#define COMPLETION_IO_BASE_ADDR					0x01100000
#define COMPLETION_IO_DONE_ADDR					COMPLETION_IO_BASE_ADDR

#define HOST_SCATTER_REGION_BASE_ADDR			0x01200000

#define IDENTIFY_DEVICE_DATA_BASE_ADDR 			0x02000000
#define IDENTIFY_DEVICE_ALIGNED_DATA_BASE_ADDR 	0x02100000
#define IDENTIFY_DEVICE_GET_BACK_DATA_BASE_ADDR 0x02200000
#define IDENTIFY_DEVICE_ID_DATA_BASE_ADDR 		0x02300000

#define RAM_DISK_BASE_ADDR						0x10000000

#define SECTOR_SIZE				0x200

#define DMA_WINDOW_SIZE		(XPAR_AXIPCIE_0_AXIBAR_HIGHADDR_0 - XPAR_AXIPCIE_0_AXIBAR_0 + 1)
#define DMA_ADDR_MASK		(XPAR_AXIPCIE_0_AXIBAR_HIGHADDR_0 - XPAR_AXIPCIE_0_AXIBAR_0)



#define	REQUEST_IO_DEPTH					(0x1 << 0)
#define	COMPLETION_IO_DEPTH					(0x1 << 0)

#define	COMMAND_STATUS_SUCCESS				(0x01)
#define	COMMAND_STATUS_ERROR				(0x02)
#define	COMMAND_STATUS_INVALID_REQUEST		(0x03)


#define Mebibyte							(1024 * 2)
#define Gibibyte							(1024 * 1024 * 2)


#pragma	pack(push, io_data_struct, 1)

typedef struct _HOST_CONTROLLER_REG
{
	u32	ReqStart;
	u32	RequestBaseAddrU;
	u32	RequestBaseAddrL;
	u32	CompletionBaseAddrU;
	u32	CompletionBaseAddrL;
	u32 Shutdown;
	u32 SectorCount;
}HOST_CONTROLLER_REG, *P_HOST_CONTROLLER_REG;


typedef struct _REQUEST_IO
{
	u32 Cmd;
	u32 CurSect;
	u32 ReqSect;
	u32 HostScatterAddrU;
	u32 HostScatterAddrL;
	u32 HostScatterNum;
	u32 Reserve[2];
}REQUEST_IO, *P_REQUEST_IO;


typedef struct _COMPLETION_IO
{
	u32	Done;
	u32	CmdStatus;
	u32	ErrorStatus;
	u32 debug_ReqCount;
}COMPLETION_IO, *P_COMPLETION_IO;


typedef struct _HOST_SCATTER_REGION
{
	u32	DmaAddrU;
	u32	DmaAddrL;
	u32	Reserve;
	u32	Size;//bytes
}HOST_SCATTER_REGION, *P_HOST_SCATTER_REGION;

#pragma	pack (pop, io_data_struct)

typedef struct _HOST_CMD
{
	u32	CmdStatus;
	u32	ErrorStatus;
	u32	dScatterRegionLen;
	u32	dataTransferDirection;
	REQUEST_IO	reqInfo;
}HOST_CMD, *P_HOST_CMD;



u32 CheckRequest();

u32 GetRequestCmd(P_HOST_CMD hostCmd);

u32 GetHostScatterRegion(P_HOST_CMD hostCmd);

void DmaDeviceToHost(P_HOST_CMD hostCmd, u32 deviceAddr, u32 reqSize, u32 scatterLength);

void DmaHostToDevice(P_HOST_CMD hostCmd, u32 deviceAddr, u32 reqSize, u32 scatterLength);

void CompleteCmd(P_HOST_CMD hostCmd);


//#define __DEBUG__

#ifdef __DEBUG__
#define DebugPrint xil_printf
#else
#define DebugPrint(x, ...)
#endif

#endif /* HOST_CONTROLLER_H_ */
