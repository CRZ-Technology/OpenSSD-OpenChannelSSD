//////////////////////////////////////////////////////////////////////////////////
// host_controller.c for Cosmos OpenSSD
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
// File Name: host_controller.c
//
// Version: v1.1.0
//
// Description:
//   - Provides host interface (GetRequestCmd, DmaDeviceToHost, CompleteCmd, ...).
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.1.0
//   - Support shutdown command (not ATA command)
//   - Improve code readability
//
// * v1.0.1
//   - clean up miscellanea
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
#include "host_controller.h"
#include "identify.h"

#ifndef HOST_CONTROLLER_C_
#define HOST_CONTROLLER_C_

XAxiPcie devPcie;
XAxiPcie_BarAddr barAddrPtr;
XAxiPcie_BarAddr barAddrPtrForTest;
XAxiCdma devCdma;

P_HOST_SCATTER_REGION pHostScaterRegion = (P_HOST_SCATTER_REGION)HOST_SCATTER_REGION_BASE_ADDR;
P_COMPLETION_IO pCompletionIO =  (P_COMPLETION_IO)COMPLETION_IO_BASE_ADDR;

u32 CheckRequest()
{
	u32 reqStart;
	u32 shutdown;

	DebugPrint("Call check_request..\n\r");

	do{
		reqStart = Xil_In32(CONFIG_SPACE_REQUEST_START);
		shutdown = Xil_In32(CONFIG_SPACE_SHUTDOWN);
	}while((reqStart == 0) && (shutdown == 0));

	if(shutdown == 1)
	{
		Xil_Out32(CONFIG_SPACE_SHUTDOWN, 0);
		return 0;
	}

	Xil_Out32(CONFIG_SPACE_REQUEST_START, 0);
	return 1;
}

u32 GetRequestCmd(P_HOST_CMD hostCmd)
{
	u32 hostAddr, isDmaError;
	P_REQUEST_IO reqInfoAddr = (P_REQUEST_IO)(REQUEST_IO_BASE_ADDR);

	barAddrPtr.UpperAddr = Xil_In32(CONFIG_SPACE_REQUEST_BASE_ADDR_U);
	barAddrPtr.LowerAddr = Xil_In32(CONFIG_SPACE_REQUEST_BASE_ADDR_L);
	//DebugPrint("BarAddrPtr.UpperAddr = 0x%x\n\r", BarAddrPtr.UpperAddr);
	//DebugPrint("BarAddrPtr.LowerAddr = 0x%x\n\r", BarAddrPtr.LowerAddr);
	while(XAxiCdma_IsBusy(&devCdma))
	{
	}
	while(1)
	{
		XAxiPcie_SetLocalBusBar2PcieBar(&devPcie, 0x00, &barAddrPtr);
		XAxiPcie_GetLocalBusBar2PcieBar(&devPcie, 0x00, &barAddrPtrForTest);
		if(barAddrPtr.LowerAddr == barAddrPtrForTest.LowerAddr)
		{
			if(barAddrPtr.UpperAddr == barAddrPtrForTest.UpperAddr)
			{
				break;
			}
		}
	}

	hostAddr = Xil_In32(CONFIG_SPACE_REQUEST_BASE_ADDR_L) & DMA_ADDR_MASK;
	hostAddr = XPAR_AXIPCIE_0_AXIBAR_0 + hostAddr;

	//wait until cdma is idle
	while(XAxiCdma_IsBusy(&devCdma))
	{
	}
	do
	{
		isDmaError = XAxiCdma_SimpleTransfer(&devCdma, hostAddr, (u32)reqInfoAddr, sizeof(REQUEST_IO), NULL, NULL);
		if(isDmaError)
			DebugPrint("%s, %d\n\r", __FUNCTION__, __LINE__);
	}
	while(isDmaError);

	//wait until dma operation is done
	DebugPrint("getting requst cmd... ");
	while(XAxiCdma_IsBusy(&devCdma))
	{
	}
	DebugPrint("done!\n\r");

	*((u32*)(&hostCmd->reqInfo)) = Xil_In32((u32)(reqInfoAddr));
	hostCmd->reqInfo.CurSect = Xil_In32((u32)(&reqInfoAddr->CurSect));
	hostCmd->reqInfo.ReqSect = Xil_In32((u32)(&reqInfoAddr->ReqSect));
	hostCmd->reqInfo.HostScatterAddrU = Xil_In32((u32)(&reqInfoAddr->HostScatterAddrU));
	hostCmd->reqInfo.HostScatterAddrL = Xil_In32((u32)(&reqInfoAddr->HostScatterAddrL));
	hostCmd->reqInfo.HostScatterNum = Xil_In32((u32)(&reqInfoAddr->HostScatterNum));

	DebugPrint("Cmd = 0x%x\n\r", hostCmd->reqInfo.Cmd);
	DebugPrint("CurSect = 0x%x\n\r", hostCmd->reqInfo.CurSect);
	DebugPrint("ReqSect = 0x%x\n\r", hostCmd->reqInfo.ReqSect);
	DebugPrint("HostScatterAddrU = 0x%x\n\r", hostCmd->reqInfo.HostScatterAddrU);
	DebugPrint("HostScatterAddrL = 0x%x\n\r", hostCmd->reqInfo.HostScatterAddrL);
	DebugPrint("HostScatterLen = 0x%x\n\r\n\r", hostCmd->reqInfo.HostScatterLen);

	return TRUE;
}

u32 GetHostScatterRegion(P_HOST_CMD hostCmd)
{
	u32 hostAddr;
	u32 isDmaError;

	//get address of HOST_SCATTER_REGION array from command
	barAddrPtr.UpperAddr = hostCmd->reqInfo.HostScatterAddrU;
	barAddrPtr.LowerAddr = hostCmd->reqInfo.HostScatterAddrL;

	//check DMA module is busy
	while(XAxiCdma_IsBusy(&devCdma))
	{
	}

	//set host address register of DMA module
	while(1)
	{
		XAxiPcie_SetLocalBusBar2PcieBar(&devPcie, 0x00, &barAddrPtr);
		XAxiPcie_GetLocalBusBar2PcieBar(&devPcie, 0x00, &barAddrPtrForTest);
		if(barAddrPtr.LowerAddr == barAddrPtrForTest.LowerAddr)
		{
			if(barAddrPtr.UpperAddr == barAddrPtrForTest.UpperAddr)
			{
				break;
			}
		}
	}

	//set host address
	hostAddr = hostCmd->reqInfo.HostScatterAddrL & DMA_ADDR_MASK;
	hostAddr = XPAR_AXIPCIE_0_AXIBAR_0 + hostAddr;

	//get HOST_SCATTER_REGION array
	do
	{
		isDmaError = XAxiCdma_SimpleTransfer(&devCdma, hostAddr, HOST_SCATTER_REGION_BASE_ADDR,
					sizeof(HOST_SCATTER_REGION) * hostCmd->reqInfo.HostScatterNum, NULL, NULL);
		if(isDmaError)
			DebugPrint("%s, %d\n\r", __FUNCTION__, __LINE__);
	}
	while(isDmaError);

	//wait until DMA done
	DebugPrint("getting HOST_SCATTER_REGION data... ");
	while(XAxiCdma_IsBusy(&devCdma))
	{
	}
	DebugPrint("done!\n\r");

	return 0;
}

void DmaDeviceToHost(P_HOST_CMD hostCmd, u32 deviceAddr, u32 reqSize, u32 scatterLength)
{
	u32 hostAddr;
	u32 flag;
	u32 deviceAddrOffset;
	u32 curScatterRegionNum;
	u32 curDmaSize;
	u32 remainedCurrentScatterRegionSize;
	u32 acc;
	u32 isDmaError;

	//get HOST_SCATTER_REGION array from HOST
	GetHostScatterRegion(hostCmd);

	/////////////////////////////////////////////////////////////////////
	//start data dma
	/////////////////////////////////////////////////////////////////////

	flag = 0;
	deviceAddrOffset = 0;
	curScatterRegionNum = 0;
	acc = 0;

	while(curScatterRegionNum < scatterLength)
	{
		remainedCurrentScatterRegionSize = pHostScaterRegion[curScatterRegionNum].Size - acc;
		DebugPrint("remainedCurrentScatterRegionSize = 0x%x\n\r", remainedCurrentScatterRegionSize);
		if(flag == 0)//normal transfer
		{
			DebugPrint("flag 0\n\r");
			//set host address
			barAddrPtr.UpperAddr = pHostScaterRegion[curScatterRegionNum].DmaAddrU;
			barAddrPtr.LowerAddr = pHostScaterRegion[curScatterRegionNum].DmaAddrL;

			hostAddr = barAddrPtr.LowerAddr & DMA_ADDR_MASK;
			hostAddr = XPAR_AXIPCIE_0_AXIBAR_0 + hostAddr;

			//if blabla~
			if(((XPAR_AXIPCIE_0_AXIBAR_HIGHADDR_0 + 1) - hostAddr) < remainedCurrentScatterRegionSize)//
			{
				flag = 1;
				curDmaSize = (XPAR_AXIPCIE_0_AXIBAR_HIGHADDR_0 + 1) - hostAddr;
				acc += curDmaSize;
			}
			//if blabla~
			else
			{
				curDmaSize = remainedCurrentScatterRegionSize;
				curScatterRegionNum += 1;
			}
		}
		else//partial transfer
		{
			DebugPrint("flag 1\n\r");
			//set host address
			if((barAddrPtr.LowerAddr + curDmaSize) < barAddrPtr.LowerAddr)
			{
				barAddrPtr.UpperAddr += 1;
			}
			barAddrPtr.LowerAddr += curDmaSize;

			hostAddr = barAddrPtr.LowerAddr & DMA_ADDR_MASK;
			hostAddr = XPAR_AXIPCIE_0_AXIBAR_0 + hostAddr;

			//if blabla~
			if(((XPAR_AXIPCIE_0_AXIBAR_HIGHADDR_0 + 1) - hostAddr) < remainedCurrentScatterRegionSize)//
			{
				curDmaSize = (XPAR_AXIPCIE_0_AXIBAR_HIGHADDR_0 + 1) - hostAddr;
				acc += curDmaSize;
			}
			//if blabla~
			else//last
			{
				curDmaSize = remainedCurrentScatterRegionSize;
				flag = 0;
				acc = 0;
				curScatterRegionNum += 1;
			}
		}

		DebugPrint("dmaAddrU = 0x%x\n\r", barAddrPtr.UpperAddr);
		DebugPrint("dmaAddrL = 0x%x\n\r", barAddrPtr.LowerAddr);
		while(XAxiCdma_IsBusy(&devCdma))
		{
		}
		while(1)
		{
			XAxiPcie_SetLocalBusBar2PcieBar(&devPcie, 0x00, &barAddrPtr);
			XAxiPcie_GetLocalBusBar2PcieBar(&devPcie, 0x00, &barAddrPtrForTest);
			if(barAddrPtr.LowerAddr == barAddrPtrForTest.LowerAddr)
			{
				if(barAddrPtr.UpperAddr == barAddrPtrForTest.UpperAddr)
				{
					break;
				}
			}
		}

		while(XAxiCdma_IsBusy(&devCdma))
		{
		}

		do
		{
			//if(hostCmd->reqInfo.Cmd)
			isDmaError = XAxiCdma_SimpleTransfer(&devCdma, deviceAddr + deviceAddrOffset, hostAddr,
													curDmaSize, NULL, NULL);
			if(isDmaError)
				DebugPrint("%s, %d\n\r", __FUNCTION__, __LINE__);
		}
		while(isDmaError);

		while(XAxiCdma_IsBusy(&devCdma))
		{
		}
		deviceAddrOffset += curDmaSize;
	}

	/*for(tmp = 0; tmp < reqSize; tmp++)
	{
		if(((*(u8 *)(deviceAddr + tmp)) < (u8)65) || ((*(u8 *)(deviceAddr + tmp)) > (u8)80))
		{
			DebugPrint("err:%c\n\r", Xil_In8(deviceAddr + tmp));
		}
	}*/
	DebugPrint("%x\n\r", Xil_In32(deviceAddr));
}

void DmaHostToDevice(P_HOST_CMD hostCmd, u32 deviceAddr, u32 reqSize, u32 scatterLength)
{
	u32 hostAddr;
	u32 flag;
	u32 deviceAddrOffset;
	u32 curScatterRegionNum;
	u32 curDmaSize;
	u32 remainedCurrentScatterRegionSize;
	u32 acc;
	u32 isDmaError;

	//get HOST_SCATTER_REGION array from HOST
	GetHostScatterRegion(hostCmd);

	/////////////////////////////////////////////////////////////////////
	//start data dma
	/////////////////////////////////////////////////////////////////////

	flag = 0;
	deviceAddrOffset = 0;
	curScatterRegionNum = 0;
	acc = 0;

	while(curScatterRegionNum < scatterLength)
	{
		remainedCurrentScatterRegionSize = pHostScaterRegion[curScatterRegionNum].Size - acc;
		DebugPrint("remainedCurrentScatterRegionSize = 0x%x\n\r", remainedCurrentScatterRegionSize);
		if(flag == 0)//normal transfer
		{
			DebugPrint("flag 0\n\r");
			//set host address
			barAddrPtr.UpperAddr = pHostScaterRegion[curScatterRegionNum].DmaAddrU;
			barAddrPtr.LowerAddr = pHostScaterRegion[curScatterRegionNum].DmaAddrL;

			hostAddr = barAddrPtr.LowerAddr & DMA_ADDR_MASK;
			hostAddr = XPAR_AXIPCIE_0_AXIBAR_0 + hostAddr;

			//if blabla~
			if(((XPAR_AXIPCIE_0_AXIBAR_HIGHADDR_0 + 1) - hostAddr) < remainedCurrentScatterRegionSize)//
			{
				flag = 1;
				curDmaSize = (XPAR_AXIPCIE_0_AXIBAR_HIGHADDR_0 + 1) - hostAddr;
				acc += curDmaSize;
			}
			//if blabla~
			else
			{
				curDmaSize = remainedCurrentScatterRegionSize;
				curScatterRegionNum += 1;
			}
		}
		else//partial transfer
		{
			DebugPrint("flag 1\n\r");
			//set host address
			if((barAddrPtr.LowerAddr + curDmaSize) < barAddrPtr.LowerAddr)
			{
				barAddrPtr.UpperAddr += 1;
			}
			barAddrPtr.LowerAddr += curDmaSize;

			hostAddr = barAddrPtr.LowerAddr & DMA_ADDR_MASK;
			hostAddr = XPAR_AXIPCIE_0_AXIBAR_0 + hostAddr;

			//if blabla~
			if(((XPAR_AXIPCIE_0_AXIBAR_HIGHADDR_0 + 1) - hostAddr) < remainedCurrentScatterRegionSize)//
			{
				curDmaSize = (XPAR_AXIPCIE_0_AXIBAR_HIGHADDR_0 + 1) - hostAddr;
				acc += curDmaSize;
			}
			//if blabla~
			else//last
			{
				curDmaSize = remainedCurrentScatterRegionSize;
				flag = 0;
				acc = 0;
				curScatterRegionNum += 1;
			}
		}

		DebugPrint("dmaAddrU = 0x%x\n\r", barAddrPtr.UpperAddr);
		DebugPrint("dmaAddrL = 0x%x\n\r", barAddrPtr.LowerAddr);
		while(XAxiCdma_IsBusy(&devCdma))
		{
		}
		while(1)
		{
			XAxiPcie_SetLocalBusBar2PcieBar(&devPcie, 0x00, &barAddrPtr);
			XAxiPcie_GetLocalBusBar2PcieBar(&devPcie, 0x00, &barAddrPtrForTest);
			if(barAddrPtr.LowerAddr == barAddrPtrForTest.LowerAddr)
			{
				if(barAddrPtr.UpperAddr == barAddrPtrForTest.UpperAddr)
				{
					break;
				}
			}
		}

		while(XAxiCdma_IsBusy(&devCdma))
		{
		}
		do
		{
			isDmaError = XAxiCdma_SimpleTransfer(&devCdma, hostAddr, deviceAddr + deviceAddrOffset,
													curDmaSize, NULL, NULL);
			if(isDmaError)
				DebugPrint("%s, %d\n\r", __FUNCTION__, __LINE__);
		}
		while(isDmaError);

		while(XAxiCdma_IsBusy(&devCdma))
		{
		}
		deviceAddrOffset += curDmaSize;
	}

	DebugPrint("%x\n\r", Xil_In32(deviceAddr));
}

void CompleteCmd(P_HOST_CMD hostCmd)
{
	u32 hostAddr, isDmaError;

	barAddrPtr.UpperAddr = Xil_In32(CONFIG_SPACE_COMPLETION_BASE_ADDR_U);
	barAddrPtr.LowerAddr = Xil_In32(CONFIG_SPACE_COMPLETION_BASE_ADDR_L);
	while(XAxiCdma_IsBusy(&devCdma))
	{
	}
	XAxiPcie_SetLocalBusBar2PcieBar(&devPcie, 0x00, &barAddrPtr);

	//DebugPrint("Completion IO addr: 0x%x\n\r", Xil_In32(COMPLETION_IO_BASE_ADDR));

	pCompletionIO->CmdStatus = hostCmd->CmdStatus;
	pCompletionIO->ErrorStatus = hostCmd->ErrorStatus;
	pCompletionIO->Done = 0;

	pCompletionIO->debug_ReqCount++;


	hostAddr = Xil_In32(CONFIG_SPACE_COMPLETION_BASE_ADDR_L) & DMA_ADDR_MASK;
	hostAddr = XPAR_AXIPCIE_0_AXIBAR_0 + hostAddr;

	//DebugPrint("i = 0x%x\n\r", hostAddr);
	//wait until cdma is idle
	while(XAxiCdma_IsBusy(&devCdma))
	{
	}

	do
	{
		isDmaError = XAxiCdma_SimpleTransfer(&devCdma, COMPLETION_IO_BASE_ADDR, hostAddr, sizeof(COMPLETION_IO), NULL, NULL);
		if(isDmaError)
			DebugPrint("%s, %d\n\r", __FUNCTION__, __LINE__);
	}
	while(isDmaError);


	//DebugPrint("posting completion cmd without deadface... ");
	while(XAxiCdma_IsBusy(&devCdma))
	{
	}
	//DebugPrint("done!\n\r");

	pCompletionIO->Done = 0xdeadface;

	do
	{
		isDmaError = XAxiCdma_SimpleTransfer(&devCdma, COMPLETION_IO_BASE_ADDR, hostAddr, sizeof(COMPLETION_IO), NULL, NULL);
		if(isDmaError)
			DebugPrint("%s, %d\n\r", __FUNCTION__, __LINE__);
	}
	while(isDmaError);
	
	//DebugPrint("posting completion cmd with deadface... ");
	while(XAxiCdma_IsBusy(&devCdma))
	{
	}
	//DebugPrint("done!\n\r");

	DebugPrint("return CompleteCmd\n\r\n\r\n\r");
}

#endif /* HOST_CONTROLLER_C_ */
