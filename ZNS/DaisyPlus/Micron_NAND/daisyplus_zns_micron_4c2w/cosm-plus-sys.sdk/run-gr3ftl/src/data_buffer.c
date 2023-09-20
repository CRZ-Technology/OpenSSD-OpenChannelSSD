//////////////////////////////////////////////////////////////////////////////////
// data_buffer.c for Cosmos+ OpenSSD
// Copyright (c) 2017 Hanyang University ENC Lab.
// Contributed by Yong Ho Song <yhsong@enc.hanyang.ac.kr>
//				  Jaewook Kwak <jwkwak@enc.hanyang.ac.kr>
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
// Module Name: Data Buffer Manager
// File Name: data_buffer.c
//
// Version: v1.0.0
//
// Description:
//   - manage data buffer used to transfer data between host system and NAND device
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.0
//   - First draft
//////////////////////////////////////////////////////////////////////////////////


#include "xil_printf.h"
#include <assert.h>
#include "memory_map.h"

P_DATA_BUF_MAP dataBufMapPtr;
DATA_BUF_LRU_LIST dataBufLruList;

void InitDataBuf()
{
	int bufEntry;

	dataBufMapPtr = (P_DATA_BUF_MAP) DATA_BUFFER_MAP_ADDR;

	for(bufEntry = 0; bufEntry < AVAILABLE_DATA_BUFFER_ENTRY_COUNT; bufEntry++)
	{
		dataBufMapPtr->dataBuf[bufEntry].logicalSliceAddr = LSA_NONE;
		dataBufMapPtr->dataBuf[bufEntry].prevEntry = bufEntry-1;
		dataBufMapPtr->dataBuf[bufEntry].nextEntry = bufEntry+1;
		dataBufMapPtr->dataBuf[bufEntry].dirty = DATA_BUF_CLEAN;
		dataBufMapPtr->dataBuf[bufEntry].blockingReqTail =  REQ_SLOT_TAG_NONE;
	}

	dataBufMapPtr->dataBuf[0].prevEntry = DATA_BUF_NONE;
	dataBufMapPtr->dataBuf[AVAILABLE_DATA_BUFFER_ENTRY_COUNT - 1].nextEntry = DATA_BUF_NONE;
	dataBufLruList.headEntry = 0 ;
	dataBufLruList.tailEntry = AVAILABLE_DATA_BUFFER_ENTRY_COUNT - 1;
}

unsigned int AllocateDataBuf(unsigned int reqSlotTag)
{
	unsigned int evictedEntry = dataBufLruList.tailEntry;

	if(evictedEntry == DATA_BUF_NONE)
		assert(!"[WARNING] There is no valid buffer entry [WARNING]");

	if(dataBufMapPtr->dataBuf[evictedEntry].prevEntry != DATA_BUF_NONE)
	{
		dataBufMapPtr->dataBuf[dataBufMapPtr->dataBuf[evictedEntry].prevEntry].nextEntry = DATA_BUF_NONE;
		dataBufLruList.tailEntry = dataBufMapPtr->dataBuf[evictedEntry].prevEntry;

		dataBufMapPtr->dataBuf[evictedEntry].prevEntry = DATA_BUF_NONE;
		dataBufMapPtr->dataBuf[evictedEntry].nextEntry = dataBufLruList.headEntry;
		dataBufMapPtr->dataBuf[dataBufLruList.headEntry].prevEntry = evictedEntry;
		dataBufLruList.headEntry = evictedEntry;

	}
	else
	{
		dataBufMapPtr->dataBuf[evictedEntry].prevEntry = DATA_BUF_NONE;
		dataBufMapPtr->dataBuf[evictedEntry].nextEntry = DATA_BUF_NONE;
		dataBufLruList.headEntry = evictedEntry;
		dataBufLruList.tailEntry = evictedEntry;
	}

	return evictedEntry;
}


void UpdateDataBufEntryInfoBlockingReq(unsigned int bufEntry, unsigned int reqSlotTag)
{
	if(dataBufMapPtr->dataBuf[bufEntry].blockingReqTail != REQ_SLOT_TAG_NONE)
	{
		reqPoolPtr->reqPool[reqSlotTag].prevBlockingReq = dataBufMapPtr->dataBuf[bufEntry].blockingReqTail;
		reqPoolPtr->reqPool[reqPoolPtr->reqPool[reqSlotTag].prevBlockingReq].nextBlockingReq  = reqSlotTag;
	}

	dataBufMapPtr->dataBuf[bufEntry].blockingReqTail = reqSlotTag;
}


