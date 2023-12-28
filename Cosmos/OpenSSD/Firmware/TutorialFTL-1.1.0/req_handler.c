//////////////////////////////////////////////////////////////////////////////////
// req_handler.c for Cosmos OpenSSD
// Copyright (c) 2014 Hanyang University ENC Lab.
// Contributed by Yong Ho Song <yhsong@enc.hanyang.ac.kr>
//                Youngjin Jo <yjjo@enc.hanyang.ac.kr>
//                Sangjin Lee <sjlee@enc.hanyang.ac.kr>
//                Gyeongyong Lee <gylee@enc.hanyang.ac.kr>
//			   	  Jaewook Kwak <jwkwak@enc.hanyang.ac.kr>
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
//			 Jaewook Kwak <jwkwak@enc.hanyang.ac.kr>
//
// Project Name: Cosmos OpenSSD
// Design Name: Tutorial FTL
// Module Name: Request Handler
// File Name: req_handler.c
//
// Version: v2.1.1
//
// Description:
//   - Handling request commands.
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v2.1.1
//   - Automatically calculate sector count
//
// * v2.1.0
//   - Support shutdown command (not ATA command)
//   - Move sector count information from driver to device firmware
//
// * v2.0.0
//   - support Tutorial FTL function
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
#include "host_controller.h"
#include "identify.h"
#include "req_handler.h"

#include "ftl.h"
#include "pageMap.h"

extern XAxiPcie devPcie;

extern XAxiCdma devCdma;

P_IDENTIFY_DEVICE_DATA pIdentifyData = (P_IDENTIFY_DEVICE_DATA)IDENTIFY_DEVICE_DATA_BASE_ADDR;
HOST_CMD hostCmd;
XAxiPcie_Config XAxiPcie_ConfigTable[] =
{
	{
		XPAR_PCI_EXPRESS_DEVICE_ID,
		XPAR_PCI_EXPRESS_BASEADDR,
		XPAR_PCI_EXPRESS_AXIBAR_NUM,
		XPAR_PCI_EXPRESS_INCLUDE_BAROFFSET_REG,
		XPAR_PCI_EXPRESS_INCLUDE_RC
	}
};

XAxiCdma_Config XAxiCdma_ConfigTable[] =
{
	{
		XPAR_AXI_CDMA_0_DEVICE_ID,
		XPAR_AXI_CDMA_0_BASEADDR,
		XPAR_AXI_CDMA_0_INCLUDE_DRE,
		XPAR_AXI_CDMA_0_USE_DATAMOVER_LITE,
		XPAR_AXI_CDMA_0_M_AXI_DATA_WIDTH,
		XPAR_AXI_CDMA_0_M_AXI_MAX_BURST_LEN
	}
};

void ReqHandler(void)
{
	u32 deviceAddr;
	u32 reqSize, scatterLength;
	u32 checkRequest;
	u32 storageSize;

	//initialize controller registers
	Xil_Out32(CONFIG_SPACE_REQUEST_START, 0);
	Xil_Out32(CONFIG_SPACE_SHUTDOWN, 0);

	//initialize AXI bridge for PCIe
	XAxiPcie_CfgInitialize(&devPcie, XAxiPcie_ConfigTable, XPAR_PCI_EXPRESS_BASEADDR);

	//initialize CentralDMA
	XAxiCdma_CfgInitialize(&devCdma, XAxiCdma_ConfigTable, XPAR_AXI_CDMA_0_BASEADDR);

	InitIdentifyData(pIdentifyData);

	InitNandReset();
	InitFtlMapTable();

	printf("[ Initialization is completed. ]\r\n");

	storageSize = SSD_SIZE - FREE_BLOCK_SIZE - BAD_BLOCK_SIZE - METADATA_BLOCK_SIZE;
	xil_printf("[ Bad block size : %dMB. ]\r\n", BAD_BLOCK_SIZE);
	xil_printf("[ Storage size : %dMB. ]\r\n",storageSize);
	Xil_Out32(CONFIG_SPACE_SECTOR_COUNT, storageSize * Mebibyte);

	while(1)
	{

		checkRequest = CheckRequest();

		if(checkRequest == 0)
		{
			//shutdown handling
			print("------ Shutdown ------\r\n");
		}
		else
		{
			/*DebugPrint("CONFIG_SPACE_STATUS = 0x%x\n\r", 					Xil_In32(CONFIG_SPACE_STATUS));
			DebugPrint("CONFIG_SPACE_INTERRUPT_SET = 0x%x\n\r", 			Xil_In32(CONFIG_SPACE_INTERRUPT_SET));
			DebugPrint("CONFIG_SPACE_REQUEST_BASE_ADDR_U = 0x%x\n\r", 		Xil_In32(CONFIG_SPACE_REQUEST_BASE_ADDR_U));
			DebugPrint("CONFIG_SPACE_REQUEST_BASE_ADDR_L = 0x%x\n\r", 		Xil_In32(CONFIG_SPACE_REQUEST_BASE_ADDR_L));
			DebugPrint("CONFIG_SPACE_REQUEST_HEAD_PTR_SET = 0x%x\n\r", 		Xil_In32(CONFIG_SPACE_REQUEST_HEAD_PTR_SET));
			DebugPrint("CONFIG_SPACE_REQUEST_TAIL_PTR = 0x%x\n\r", 			Xil_In32(CONFIG_SPACE_REQUEST_TAIL_PTR));
			DebugPrint("CONFIG_SPACE_COMPLETION_BASE_ADDR_U = 0x%x\n\r", 	Xil_In32(CONFIG_SPACE_COMPLETION_BASE_ADDR_U));
			DebugPrint("CONFIG_SPACE_COMPLETION_BASE_ADDR_L = 0x%x\n\r", 	Xil_In32(CONFIG_SPACE_COMPLETION_BASE_ADDR_L));
			DebugPrint("CONFIG_SPACE_COMPLETION_HEAD_PTR = 0x%x\n\r",	 	Xil_In32(CONFIG_SPACE_COMPLETION_HEAD_PTR));*/
			GetRequestCmd(&hostCmd);

			hostCmd.CmdStatus = COMMAND_STATUS_SUCCESS;
			hostCmd.ErrorStatus = IDE_ERROR_NOTHING;

			if((hostCmd.reqInfo.Cmd == IDE_COMMAND_WRITE_DMA) ||  (hostCmd.reqInfo.Cmd == IDE_COMMAND_WRITE))
			{
				PrePmRead(&hostCmd, RAM_DISK_BASE_ADDR);

				deviceAddr = RAM_DISK_BASE_ADDR + (hostCmd.reqInfo.CurSect % SECTOR_NUM_PER_PAGE)*SECTOR_SIZE;
				reqSize = hostCmd.reqInfo.ReqSect * SECTOR_SIZE;
				scatterLength = hostCmd.reqInfo.HostScatterNum;

//				xil_printf("reqSize: %2d KB\r\n", reqSize / 1024);

				DmaHostToDevice(&hostCmd, deviceAddr, reqSize, scatterLength);

				PmWrite(&hostCmd, RAM_DISK_BASE_ADDR);

				CompleteCmd(&hostCmd);
			}

			else if((hostCmd.reqInfo.Cmd == IDE_COMMAND_READ_DMA) || (hostCmd.reqInfo.Cmd == IDE_COMMAND_READ))
			{
				PmRead(&hostCmd, RAM_DISK_BASE_ADDR);

				deviceAddr = RAM_DISK_BASE_ADDR + (hostCmd.reqInfo.CurSect % SECTOR_NUM_PER_PAGE)*SECTOR_SIZE;
				reqSize = hostCmd.reqInfo.ReqSect * SECTOR_SIZE;
				scatterLength = hostCmd.reqInfo.HostScatterNum;

//				xil_printf("reqSize: %2d KB\r\n", reqSize / 1024);

				DmaDeviceToHost(&hostCmd, deviceAddr, reqSize, scatterLength);

				CompleteCmd(&hostCmd);
			}
			else if( hostCmd.reqInfo.Cmd == IDE_COMMAND_FLUSH_CACHE )
			{
				DebugPrint("flush command\r\n");
				CompleteCmd(&hostCmd);
			}
			else if( hostCmd.reqInfo.Cmd == IDE_COMMAND_IDENTIFY )
			{
				reqSize = hostCmd.reqInfo.ReqSect * SECTOR_SIZE;
				scatterLength = hostCmd.reqInfo.HostScatterNum;

				DmaDeviceToHost(&hostCmd, IDENTIFY_DEVICE_DATA_BASE_ADDR, reqSize, scatterLength);
				CompleteCmd(&hostCmd);
			}
			else if( hostCmd.reqInfo.Cmd == IDE_COMMAND_SET_FEATURE )
			{
				SetIdentifyData(pIdentifyData, &hostCmd);
				CompleteCmd(&hostCmd);
			}
			else if( hostCmd.reqInfo.Cmd == IDE_COMMAND_SECURITY_FREEZE_LOCK )
			{
				SetIdentifyData(pIdentifyData, &hostCmd);
				CompleteCmd(&hostCmd);
			}
			else if( hostCmd.reqInfo.Cmd == IDE_COMMAND_SMART )
			{
				DebugPrint("not support IDE_COMMAND_SMART:%x\r\n", hostCmd.reqInfo.Cmd);
				hostCmd.CmdStatus = COMMAND_STATUS_INVALID_REQUEST;
				CompleteCmd(&hostCmd);
			}
			else if( hostCmd.reqInfo.Cmd == IDE_COMMAND_ATAPI_IDENTIFY )
			{
				DebugPrint("not support IDE_COMMAND_ATAPI_IDENTIFY:%x\r\n", hostCmd.reqInfo.Cmd);
				hostCmd.CmdStatus = COMMAND_STATUS_INVALID_REQUEST;
				CompleteCmd(&hostCmd);
			}
			else
			{
				DebugPrint("not support command:%x\r\n", hostCmd.reqInfo.Cmd);
				hostCmd.CmdStatus = COMMAND_STATUS_INVALID_REQUEST;
				CompleteCmd(&hostCmd);
			}
		}
	}
}
