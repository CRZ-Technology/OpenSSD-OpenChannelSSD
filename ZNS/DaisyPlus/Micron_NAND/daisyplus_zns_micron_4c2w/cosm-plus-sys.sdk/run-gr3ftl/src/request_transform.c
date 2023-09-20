//////////////////////////////////////////////////////////////////////////////////
// request_transform.c for Cosmos+ OpenSSD
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
// File Name: request_transform.c
//
// Version: v1.0.0
//
// Description:
//	 - transform request information
//   - check dependency between requests
//   - issue host DMA request to host DMA engine
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.0
//   - First draft
//////////////////////////////////////////////////////////////////////////////////


#include "xil_printf.h"
#include <assert.h>
#include "nvme/nvme.h"
#include "nvme/host_lld.h"
#include "memory_map.h"
#include "ftl_config.h"

void handle_nvme_io_erase(unsigned int cmdSlotTag, uint64_t zslba, uint64_t nlb)
{
    unsigned int blockNo, dieNo, reqSlotTag, startBlockNo, endBlockNo;
 
    if(!nlb)
    {
        set_auto_nvme_cpl(cmdSlotTag, 0, 0);
        return;
    }

    startBlockNo = zslba / NVME_BLOCKS_PER_SLICE / USER_PAGES_PER_BLOCK / USER_CHANNELS / USER_WAYS;
    endBlockNo = startBlockNo + nlb / NVME_BLOCKS_PER_SLICE / USER_PAGES_PER_BLOCK / USER_CHANNELS / USER_WAYS;
    if(nlb % (NVME_BLOCKS_PER_SLICE * USER_PAGES_PER_BLOCK * USER_CHANNELS * USER_WAYS))
    {
        endBlockNo++;
    }

    for(blockNo=startBlockNo ; blockNo<endBlockNo ; blockNo++)
    {
        for(dieNo=0 ; dieNo<USER_DIES ; dieNo++)
        {
            reqSlotTag = GetFromFreeReqQ();

            reqPoolPtr->reqPool[reqSlotTag].reqType = REQ_TYPE_NAND;
            reqPoolPtr->reqPool[reqSlotTag].reqCode = REQ_CODE_ERASE;
            reqPoolPtr->reqPool[reqSlotTag].nvmeCmdSlotTag = cmdSlotTag;
            reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandAddr = REQ_OPT_NAND_ADDR_PHY_ORG;
            reqPoolPtr->reqPool[reqSlotTag].reqOpt.dataBufFormat = REQ_OPT_DATA_BUF_NONE;
            reqPoolPtr->reqPool[reqSlotTag].reqOpt.forceUnitAccess = REQ_OPT_FORCE_UNIT_ACCESS_ON;
            reqPoolPtr->reqPool[reqSlotTag].reqOpt.blockSpace = REQ_OPT_BLOCK_SPACE_TOTAL;

            reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalCh = Vdie2PchTranslation(dieNo);
            reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalWay = Vdie2PwayTranslation(dieNo);
            reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalBlock = blockNo;
            reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalPage = 0;

			if(reqPoolPtr->reqPool[reqSlotTag].reqOpt.forceUnitAccess == REQ_OPT_FORCE_UNIT_ACCESS_ON)
				AllocateNotCompletedNandReqforNvmeIoCmd(reqPoolPtr->reqPool[reqSlotTag].nvmeCmdSlotTag);

            SelectLowLevelReqQ(reqSlotTag);
        }
    }
    AssignWPtrNvmeIoCmd(cmdSlotTag, 0);
}

void ReqTransNvmeToSlice(unsigned int cmdSlotTag, unsigned int startLba, unsigned int nlb, unsigned int cmdCode, unsigned int w_ptr)
{
	unsigned int reqSlotTag, requestedNvmeBlock, tempNumOfNvmeBlock, transCounter, tempLsa, loop, nvmeBlockOffset, nvmeDmaStartIndex, reqCode;

	requestedNvmeBlock = nlb + 1;
	transCounter = 0;
	nvmeDmaStartIndex = 0;
	tempLsa = startLba / NVME_BLOCKS_PER_SLICE;
	loop = ((startLba % NVME_BLOCKS_PER_SLICE) + requestedNvmeBlock) / NVME_BLOCKS_PER_SLICE;

    AssignWPtrNvmeIoCmd(cmdSlotTag, w_ptr);

	if(cmdCode == IO_NVM_WRITE)
		reqCode = REQ_CODE_WRITE;
	else if(cmdCode == IO_NVM_READ)
		reqCode = REQ_CODE_READ;
	else
		assert(!"[WARNING] Not supported command code [WARNING]");

	//first transform
	nvmeBlockOffset = (startLba % NVME_BLOCKS_PER_SLICE);
	if(loop)
		tempNumOfNvmeBlock = NVME_BLOCKS_PER_SLICE - nvmeBlockOffset;
	else
		tempNumOfNvmeBlock = requestedNvmeBlock;

	reqSlotTag = GetFromFreeReqQ();

	reqPoolPtr->reqPool[reqSlotTag].reqType = REQ_TYPE_SLICE;
	reqPoolPtr->reqPool[reqSlotTag].reqCode = reqCode;
	reqPoolPtr->reqPool[reqSlotTag].nvmeCmdSlotTag = cmdSlotTag;
	reqPoolPtr->reqPool[reqSlotTag].logicalSliceAddr = tempLsa;
	reqPoolPtr->reqPool[reqSlotTag].nvmeDmaInfo.startIndex = nvmeDmaStartIndex;
	reqPoolPtr->reqPool[reqSlotTag].nvmeDmaInfo.nvmeBlockOffset = nvmeBlockOffset;
	reqPoolPtr->reqPool[reqSlotTag].nvmeDmaInfo.numOfNvmeBlock = tempNumOfNvmeBlock;
	reqPoolPtr->reqPool[reqSlotTag].reqOpt.forceUnitAccess = REQ_OPT_FORCE_UNIT_ACCESS_ON;

	PutToSliceReqQ(reqSlotTag);

	tempLsa++;
	transCounter++;
	nvmeDmaStartIndex += tempNumOfNvmeBlock;

	//transform continue
	while(transCounter < loop)
	{
		nvmeBlockOffset = 0;
		tempNumOfNvmeBlock = NVME_BLOCKS_PER_SLICE;

		reqSlotTag = GetFromFreeReqQ();

		reqPoolPtr->reqPool[reqSlotTag].reqType = REQ_TYPE_SLICE;
		reqPoolPtr->reqPool[reqSlotTag].reqCode = reqCode;
		reqPoolPtr->reqPool[reqSlotTag].nvmeCmdSlotTag = cmdSlotTag;
		reqPoolPtr->reqPool[reqSlotTag].logicalSliceAddr = tempLsa;
		reqPoolPtr->reqPool[reqSlotTag].nvmeDmaInfo.startIndex = nvmeDmaStartIndex;
		reqPoolPtr->reqPool[reqSlotTag].nvmeDmaInfo.nvmeBlockOffset = nvmeBlockOffset;
		reqPoolPtr->reqPool[reqSlotTag].nvmeDmaInfo.numOfNvmeBlock = tempNumOfNvmeBlock;
        reqPoolPtr->reqPool[reqSlotTag].reqOpt.forceUnitAccess = REQ_OPT_FORCE_UNIT_ACCESS_ON;

		PutToSliceReqQ(reqSlotTag);

		tempLsa++;
		transCounter++;
		nvmeDmaStartIndex += tempNumOfNvmeBlock;
	}

	//last transform
	nvmeBlockOffset = 0;
	tempNumOfNvmeBlock = (startLba + requestedNvmeBlock) % NVME_BLOCKS_PER_SLICE;
	if((tempNumOfNvmeBlock == 0) || (loop == 0))
		return ;

	reqSlotTag = GetFromFreeReqQ();

	reqPoolPtr->reqPool[reqSlotTag].reqType = REQ_TYPE_SLICE;
	reqPoolPtr->reqPool[reqSlotTag].reqCode = reqCode;
	reqPoolPtr->reqPool[reqSlotTag].nvmeCmdSlotTag = cmdSlotTag;
	reqPoolPtr->reqPool[reqSlotTag].logicalSliceAddr = tempLsa;
	reqPoolPtr->reqPool[reqSlotTag].nvmeDmaInfo.startIndex = nvmeDmaStartIndex;
	reqPoolPtr->reqPool[reqSlotTag].nvmeDmaInfo.nvmeBlockOffset = nvmeBlockOffset;
	reqPoolPtr->reqPool[reqSlotTag].nvmeDmaInfo.numOfNvmeBlock = tempNumOfNvmeBlock;
	reqPoolPtr->reqPool[reqSlotTag].reqOpt.forceUnitAccess = REQ_OPT_FORCE_UNIT_ACCESS_ON;

	PutToSliceReqQ(reqSlotTag);
}



void EvictDataBufEntry(unsigned int originReqSlotTag)
{
	unsigned int reqSlotTag, virtualSliceAddr, dataBufEntry;

	dataBufEntry = reqPoolPtr->reqPool[originReqSlotTag].dataBufInfo.entry;
	if(dataBufMapPtr->dataBuf[dataBufEntry].dirty == DATA_BUF_DIRTY)
	{
		reqSlotTag = GetFromFreeReqQ();
		virtualSliceAddr =  dataBufMapPtr->dataBuf[dataBufEntry].logicalSliceAddr;

		reqPoolPtr->reqPool[reqSlotTag].reqType = REQ_TYPE_NAND;
		reqPoolPtr->reqPool[reqSlotTag].reqCode = REQ_CODE_WRITE;
		reqPoolPtr->reqPool[reqSlotTag].nvmeCmdSlotTag = reqPoolPtr->reqPool[originReqSlotTag].nvmeCmdSlotTag;
		reqPoolPtr->reqPool[reqSlotTag].logicalSliceAddr = dataBufMapPtr->dataBuf[dataBufEntry].logicalSliceAddr;
		reqPoolPtr->reqPool[reqSlotTag].reqOpt.dataBufFormat = REQ_OPT_DATA_BUF_ENTRY;
		reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandAddr = REQ_OPT_NAND_ADDR_VSA;
		reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandEcc = REQ_OPT_NAND_ECC_ON;
		reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandEccWarning = REQ_OPT_NAND_ECC_WARNING_ON;
		if(reqPoolPtr->reqPool[originReqSlotTag].reqCode == REQ_CODE_RxDMA)
			reqPoolPtr->reqPool[reqSlotTag].reqOpt.forceUnitAccess = reqPoolPtr->reqPool[originReqSlotTag].reqOpt.forceUnitAccess;
		else
			reqPoolPtr->reqPool[reqSlotTag].reqOpt.forceUnitAccess = REQ_OPT_FORCE_UNIT_ACCESS_OFF;
		reqPoolPtr->reqPool[reqSlotTag].reqOpt.blockSpace = REQ_OPT_BLOCK_SPACE_MAIN;
		reqPoolPtr->reqPool[reqSlotTag].dataBufInfo.entry = dataBufEntry;
		UpdateDataBufEntryInfoBlockingReq(dataBufEntry, reqSlotTag);
		reqPoolPtr->reqPool[reqSlotTag].nandInfo.virtualSliceAddr = virtualSliceAddr;

		SelectLowLevelReqQ(reqSlotTag);

		dataBufMapPtr->dataBuf[dataBufEntry].dirty = DATA_BUF_CLEAN;

        if(reqPoolPtr->reqPool[reqSlotTag].reqOpt.forceUnitAccess == REQ_OPT_FORCE_UNIT_ACCESS_ON)
            AllocateNotCompletedNandReqforNvmeIoCmd(reqPoolPtr->reqPool[reqSlotTag].nvmeCmdSlotTag);
	}
}

void DataReadFromNand(unsigned int originReqSlotTag)
{
	unsigned int reqSlotTag, virtualSliceAddr;

	virtualSliceAddr =  reqPoolPtr->reqPool[originReqSlotTag].logicalSliceAddr;

	reqSlotTag = GetFromFreeReqQ();

	reqPoolPtr->reqPool[reqSlotTag].reqType = REQ_TYPE_NAND;
	reqPoolPtr->reqPool[reqSlotTag].reqCode = REQ_CODE_READ;
	reqPoolPtr->reqPool[reqSlotTag].nvmeCmdSlotTag = reqPoolPtr->reqPool[originReqSlotTag].nvmeCmdSlotTag;
	reqPoolPtr->reqPool[reqSlotTag].logicalSliceAddr = reqPoolPtr->reqPool[originReqSlotTag].logicalSliceAddr;
	reqPoolPtr->reqPool[reqSlotTag].reqOpt.dataBufFormat = REQ_OPT_DATA_BUF_ENTRY;
	reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandAddr = REQ_OPT_NAND_ADDR_VSA;
	reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandEcc = REQ_OPT_NAND_ECC_ON;
	reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandEccWarning = REQ_OPT_NAND_ECC_WARNING_ON;
	reqPoolPtr->reqPool[reqSlotTag].reqOpt.forceUnitAccess = reqPoolPtr->reqPool[originReqSlotTag].reqOpt.forceUnitAccess;
	reqPoolPtr->reqPool[reqSlotTag].reqOpt.blockSpace = REQ_OPT_BLOCK_SPACE_MAIN;

	reqPoolPtr->reqPool[reqSlotTag].dataBufInfo.entry = reqPoolPtr->reqPool[originReqSlotTag].dataBufInfo.entry;
	UpdateDataBufEntryInfoBlockingReq(reqPoolPtr->reqPool[reqSlotTag].dataBufInfo.entry, reqSlotTag);
	reqPoolPtr->reqPool[reqSlotTag].nandInfo.virtualSliceAddr = virtualSliceAddr;

	SelectLowLevelReqQ(reqSlotTag);
}


void ReqTransSliceToLowLevel()
{
	unsigned int reqSlotTag, dataBufEntry;

	while(sliceReqQ.headReq != REQ_SLOT_TAG_NONE)
	{
		reqSlotTag = GetFromSliceReqQ();
		if(reqSlotTag == REQ_SLOT_TAG_FAIL)
			return ;

		//data buffer miss, allocate a new buffer entry
		dataBufEntry = AllocateDataBuf();
		reqPoolPtr->reqPool[reqSlotTag].dataBufInfo.entry = dataBufEntry;

		//transform this slice request to nvme request
		if(reqPoolPtr->reqPool[reqSlotTag].reqCode  == REQ_CODE_WRITE)
		{
			dataBufMapPtr->dataBuf[dataBufEntry].dirty = DATA_BUF_DIRTY;
			reqPoolPtr->reqPool[reqSlotTag].reqCode = REQ_CODE_RxDMA;
			if(reqPoolPtr->reqPool[reqSlotTag].nvmeDmaInfo.numOfNvmeBlock != NVME_BLOCKS_PER_SLICE) //for read modify write
			{
				DataReadFromNand(reqSlotTag);

                if(reqPoolPtr->reqPool[reqSlotTag].reqOpt.forceUnitAccess == REQ_OPT_FORCE_UNIT_ACCESS_ON)
                    AllocateNotCompletedNandReqforNvmeIoCmd(reqPoolPtr->reqPool[reqSlotTag].nvmeCmdSlotTag);
            }
		}
		else if(reqPoolPtr->reqPool[reqSlotTag].reqCode  == REQ_CODE_READ)
		{
			reqPoolPtr->reqPool[reqSlotTag].reqCode = REQ_CODE_TxDMA;
            reqPoolPtr->reqPool[reqSlotTag].reqOpt.forceUnitAccess = REQ_OPT_FORCE_UNIT_ACCESS_OFF;

            DataReadFromNand(reqSlotTag);
        }
		else
			assert(!"[WARNING] Not supported reqCode. [WARNING]");

		//update meta-data of the allocated data buffer entry
		dataBufMapPtr->dataBuf[dataBufEntry].logicalSliceAddr = reqPoolPtr->reqPool[reqSlotTag].logicalSliceAddr;

		reqPoolPtr->reqPool[reqSlotTag].reqType = REQ_TYPE_NVME_DMA;
		reqPoolPtr->reqPool[reqSlotTag].reqOpt.dataBufFormat = REQ_OPT_DATA_BUF_ENTRY;

		UpdateDataBufEntryInfoBlockingReq(dataBufEntry, reqSlotTag);
		SelectLowLevelReqQ(reqSlotTag);

        if(reqPoolPtr->reqPool[reqSlotTag].reqCode == REQ_CODE_RxDMA)
        {
            if(reqPoolPtr->reqPool[reqSlotTag].reqOpt.forceUnitAccess == REQ_OPT_FORCE_UNIT_ACCESS_ON)
            {
                EvictDataBufEntry(reqSlotTag);
            }
            else
                assert(!"[WARNING] Not supported fua flag. [WARNING]");
        }
	}
}

unsigned int CheckBufDep(unsigned int reqSlotTag)
{
	if(reqPoolPtr->reqPool[reqSlotTag].prevBlockingReq == REQ_SLOT_TAG_NONE)
		return BUF_DEPENDENCY_REPORT_PASS;
	else
		return BUF_DEPENDENCY_REPORT_BLOCKED;
}

void SelectLowLevelReqQ(unsigned int reqSlotTag)
{
	unsigned int dieNo, chNo, wayNo, bufDepCheckReport;

	bufDepCheckReport = CheckBufDep(reqSlotTag);
	if(bufDepCheckReport == BUF_DEPENDENCY_REPORT_PASS)
	{
		if(reqPoolPtr->reqPool[reqSlotTag].reqType  == REQ_TYPE_NVME_DMA)
		{
			IssueNvmeDmaReq(reqSlotTag);
			PutToNvmeDmaReqQ(reqSlotTag);
		}
		else if(reqPoolPtr->reqPool[reqSlotTag].reqType  == REQ_TYPE_NAND)
		{
			if(reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandAddr == REQ_OPT_NAND_ADDR_VSA)
			{
				dieNo = Vsa2VdieTranslation(reqPoolPtr->reqPool[reqSlotTag].nandInfo.virtualSliceAddr);
				chNo =  Vdie2PchTranslation(dieNo);
				wayNo = Vdie2PwayTranslation(dieNo);
			}
			else if(reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandAddr == REQ_OPT_NAND_ADDR_PHY_ORG)
			{
				chNo =  reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalCh;
				wayNo = reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalWay;
			}
			else
				assert(!"[WARNING] Not supported reqOpt-nandAddress [WARNING]");

			PutToNandReqQ(reqSlotTag, chNo, wayNo);
		}
		else
			assert(!"[WARNING] Not supported reqType [WARNING]");
	}
	else if(bufDepCheckReport == BUF_DEPENDENCY_REPORT_BLOCKED)
		PutToBlockedByBufDepReqQ(reqSlotTag);
	else
		assert(!"[WARNING] Not supported report [WARNING]");
}


void ReleaseBlockedByBufDepReq(unsigned int reqSlotTag)
{
	unsigned int targetReqSlotTag, dieNo, chNo, wayNo;

	targetReqSlotTag = REQ_SLOT_TAG_NONE;
	if(reqPoolPtr->reqPool[reqSlotTag].nextBlockingReq != REQ_SLOT_TAG_NONE)
	{
		targetReqSlotTag = reqPoolPtr->reqPool[reqSlotTag].nextBlockingReq;
		reqPoolPtr->reqPool[targetReqSlotTag].prevBlockingReq = REQ_SLOT_TAG_NONE;
		reqPoolPtr->reqPool[reqSlotTag].nextBlockingReq = REQ_SLOT_TAG_NONE;
	}

	if(reqPoolPtr->reqPool[reqSlotTag].reqOpt.dataBufFormat == REQ_OPT_DATA_BUF_ENTRY)
	{
		if(dataBufMapPtr->dataBuf[reqPoolPtr->reqPool[reqSlotTag].dataBufInfo.entry].blockingReqTail == reqSlotTag)
			dataBufMapPtr->dataBuf[reqPoolPtr->reqPool[reqSlotTag].dataBufInfo.entry].blockingReqTail = REQ_SLOT_TAG_NONE;
	}

	if((targetReqSlotTag != REQ_SLOT_TAG_NONE) && (reqPoolPtr->reqPool[targetReqSlotTag].reqQueueType == REQ_QUEUE_TYPE_BLOCKED_BY_BUF_DEP))
	{
		SelectiveGetFromBlockedByBufDepReqQ(targetReqSlotTag);

		if(reqPoolPtr->reqPool[targetReqSlotTag].reqType == REQ_TYPE_NVME_DMA)
		{
			IssueNvmeDmaReq(targetReqSlotTag);
			PutToNvmeDmaReqQ(targetReqSlotTag);
		}
		else if(reqPoolPtr->reqPool[targetReqSlotTag].reqType  == REQ_TYPE_NAND)
		{
			if(reqPoolPtr->reqPool[targetReqSlotTag].reqOpt.nandAddr == REQ_OPT_NAND_ADDR_VSA)
			{
				dieNo = Vsa2VdieTranslation(reqPoolPtr->reqPool[targetReqSlotTag].nandInfo.virtualSliceAddr);
				chNo =  Vdie2PchTranslation(dieNo);
				wayNo = Vdie2PwayTranslation(dieNo);
			}
			else
				assert(!"[WARNING] Not supported reqOpt-nandAddress [WARNING]");

			PutToNandReqQ(targetReqSlotTag, chNo, wayNo);
		}
	}
}

void IssueNvmeDmaReq(unsigned int reqSlotTag)
{
	unsigned int devAddr, dmaIndex, numOfNvmeBlock;

	dmaIndex = reqPoolPtr->reqPool[reqSlotTag].nvmeDmaInfo.startIndex;
	devAddr = GenerateDataBufAddr(reqSlotTag);
	numOfNvmeBlock = 0;

	if(reqPoolPtr->reqPool[reqSlotTag].reqCode == REQ_CODE_RxDMA)
	{
		while(numOfNvmeBlock < reqPoolPtr->reqPool[reqSlotTag].nvmeDmaInfo.numOfNvmeBlock)
		{
			if(reqPoolPtr->reqPool[reqSlotTag].reqOpt.forceUnitAccess == REQ_OPT_FORCE_UNIT_ACCESS_ON)
				set_auto_rx_dma(reqPoolPtr->reqPool[reqSlotTag].nvmeCmdSlotTag, dmaIndex, devAddr, NVME_COMMAND_AUTO_COMPLETION_OFF);
			else
				set_auto_rx_dma(reqPoolPtr->reqPool[reqSlotTag].nvmeCmdSlotTag, dmaIndex, devAddr, NVME_COMMAND_AUTO_COMPLETION_ON);

			numOfNvmeBlock++;
			dmaIndex++;
			devAddr += BYTES_PER_NVME_BLOCK;
		}
		reqPoolPtr->reqPool[reqSlotTag].nvmeDmaInfo.reqTail = g_hostDmaStatus.fifoTail.autoDmaRx;
		reqPoolPtr->reqPool[reqSlotTag].nvmeDmaInfo.overFlowCnt = g_hostDmaAssistStatus.autoDmaRxOverFlowCnt;
	}
	else if(reqPoolPtr->reqPool[reqSlotTag].reqCode == REQ_CODE_TxDMA)
	{
		while(numOfNvmeBlock < reqPoolPtr->reqPool[reqSlotTag].nvmeDmaInfo.numOfNvmeBlock)
		{
			if(reqPoolPtr->reqPool[reqSlotTag].reqOpt.forceUnitAccess == REQ_OPT_FORCE_UNIT_ACCESS_ON)
				set_auto_tx_dma(reqPoolPtr->reqPool[reqSlotTag].nvmeCmdSlotTag, dmaIndex, devAddr, NVME_COMMAND_AUTO_COMPLETION_OFF);
			else
				set_auto_tx_dma(reqPoolPtr->reqPool[reqSlotTag].nvmeCmdSlotTag, dmaIndex, devAddr, NVME_COMMAND_AUTO_COMPLETION_ON);

			numOfNvmeBlock++;
			dmaIndex++;
			devAddr += BYTES_PER_NVME_BLOCK;
		}
		reqPoolPtr->reqPool[reqSlotTag].nvmeDmaInfo.reqTail =  g_hostDmaStatus.fifoTail.autoDmaTx;
		reqPoolPtr->reqPool[reqSlotTag].nvmeDmaInfo.overFlowCnt = g_hostDmaAssistStatus.autoDmaTxOverFlowCnt;
	}
	else
		assert(!"[WARNING] Not supported reqCode [WARNING]");
}

void CheckDoneNvmeDmaReq()
{
	unsigned int reqSlotTag, prevReq;
	unsigned int rxDone, txDone;

	reqSlotTag = nvmeDmaReqQ.tailReq;
	rxDone = 0;
	txDone = 0;

	while(reqSlotTag != REQ_SLOT_TAG_NONE)
	{
		prevReq = reqPoolPtr->reqPool[reqSlotTag].prevReq;

		if(reqPoolPtr->reqPool[reqSlotTag].reqCode  == REQ_CODE_RxDMA)
		{
			if(!rxDone)
				rxDone = check_auto_rx_dma_partial_done(reqPoolPtr->reqPool[reqSlotTag].nvmeDmaInfo.reqTail , reqPoolPtr->reqPool[reqSlotTag].nvmeDmaInfo.overFlowCnt);

			if(rxDone)
				SelectiveGetFromNvmeDmaReqQ(reqSlotTag);
		}
		else
		{
			if(!txDone)
				txDone = check_auto_tx_dma_partial_done(reqPoolPtr->reqPool[reqSlotTag].nvmeDmaInfo.reqTail , reqPoolPtr->reqPool[reqSlotTag].nvmeDmaInfo.overFlowCnt);

			if(txDone)
				SelectiveGetFromNvmeDmaReqQ(reqSlotTag);
		}

		reqSlotTag = prevReq;
	}
}



