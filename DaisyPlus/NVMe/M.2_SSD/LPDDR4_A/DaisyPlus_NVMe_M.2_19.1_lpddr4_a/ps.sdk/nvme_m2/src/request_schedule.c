//////////////////////////////////////////////////////////////////////////////////
// request_schedule.c for Cosmos+ OpenSSD
// Copyright (c) 2017 Hanyang University ENC Lab.
// Contributed by Yong Ho Song <yhsong@enc.hanyang.ac.kr>
//				  Jaewook Kwak <jwkwak@enc.hanyang.ac.kr>
//			      Sangjin Lee <sjlee@enc.hanyang.ac.kr>
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
// Engineer: Jaewook Kwak <jwkwak@enc.hanyang.ac.kr>
//
// Project Name: Cosmos+ OpenSSD
// Design Name: Cosmos+ Firmware
// Module Name: Request Scheduler
// File Name: request_schedule.c
//
// Version: v1.0.0
//
// Description:
//	 - decide request execution sequence
//   - issue NAND request to NAND storage controller
//   - check request execution result
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.0
//   - First draft
//////////////////////////////////////////////////////////////////////////////////

#include <assert.h>
#include "xil_printf.h"
#include "memory_map.h"
#include "nvme/debug.h"

void SyncAllLowLevelReqDone()
{
	while((nvmeDmaReqQ.headReq != REQ_SLOT_TAG_NONE) || notCompletedNvmeM2ReqCnt || blockedReqCnt)
	{
		CheckDoneNvmeDmaReq();
		CheckDoneNvmeM2Req();
	}
}

void SyncAvailFreeReq()
{
	while(freeReqQ.headReq == REQ_SLOT_TAG_NONE)
	{
		CheckDoneNvmeDmaReq();
		CheckDoneNvmeM2Req();
	}
}

void CheckDoneNvmeM2Req()
{
	int chNo;

	for(chNo = 0; chNo < NUM_NVME_M2; chNo++)
		ProcessNvmeM2ResPerCh(chNo);
}

void ProcessNvmeM2ResPerCh(unsigned int chNo)
{
    ExecuteNvmeM2Res(chNo);
}

void IssueNvmeM2Res(unsigned int chNo)
{
    ProcessNvmeM2Res(chNo);
}

unsigned int GenerateDataBufAddr(unsigned int reqSlotTag)
{
	if(reqPoolPtr->reqPool[reqSlotTag].reqType == REQ_TYPE_NVME_M2)
	{
		if(reqPoolPtr->reqPool[reqSlotTag].reqOpt.dataBufFormat == REQ_OPT_DATA_BUF_ENTRY)
			return (DATA_BUFFER_BASE_ADDR + reqPoolPtr->reqPool[reqSlotTag].dataBufInfo.entry * BYTES_PER_DATA_REGION_OF_SLICE);
	}
	else if(reqPoolPtr->reqPool[reqSlotTag].reqType == REQ_TYPE_NVME_DMA)
	{
		if(reqPoolPtr->reqPool[reqSlotTag].reqOpt.dataBufFormat == REQ_OPT_DATA_BUF_ENTRY)
			return (DATA_BUFFER_BASE_ADDR + reqPoolPtr->reqPool[reqSlotTag].dataBufInfo.entry * BYTES_PER_DATA_REGION_OF_SLICE + reqPoolPtr->reqPool[reqSlotTag].nvmeDmaInfo.nvmeBlockOffset * BYTES_PER_NVME_BLOCK);
		else
			assert(!"[WARNING] wrong reqOpt-dataBufFormat [WARNING]");
	}
	else
		assert(!"[WARNING] wrong reqType [WARNING]");

	return 0;
}

void ExecuteNvmeM2Res(unsigned int chNo)
{
	IssueNvmeM2Res(chNo);
}

