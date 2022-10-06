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
// Version: v1.0.1.oc (oc: for Open Channel SSD)
//
// Description:
//	 - transform request information
//   - check dependency between requests
//   - issue host DMA request to host DMA engine
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.1.oc
//   - Remove functions for updating the dependency table related with NAND physical address
//
// * v1.0.0.oc
//   - First draft
//////////////////////////////////////////////////////////////////////////////////


#include "xil_printf.h"
#include <assert.h>
#include "nvme/nvme.h"
#include "nvme/host_lld.h"
#include "nvme/ocssd_lld.h"
#include "memory_map.h"
#include "ftl_config.h"


void ReqTransOcssdPhyToSlice(unsigned int cmdSlotTag, OCSSD_PHYSICAL_PAGE_ADDRESS* ppa,
		unsigned int * metadataAddr, unsigned int * MPTR,
		unsigned int dmaStartIndex, unsigned int numOfSector,
		unsigned int cmdCode, unsigned int fua)
{
	unsigned int reqSlotTag, reqCode, wayNo, blockNo;

	if(cmdCode == IO_OCSSD_PHYSICAL_PAGE_ADDRESS_WRITE)
		reqCode = REQ_CODE_OCSSD_PHY_WRITE;
	else if(cmdCode == IO_OCSSD_PHYSICAL_PAGE_ADDRESS_READ)
		reqCode = REQ_CODE_OCSSD_PHY_READ;
	else if(cmdCode == IO_OCSSD_PHYSICAL_BLOCK_ERASE)
		reqCode = REQ_CODE_OCSSD_PHY_ERASE;
	else
		assert(!"[WARNING] Not supported command code [WARNING]");

	reqSlotTag = GetFromFreeReqQ();

	reqPoolPtr->reqPool[reqSlotTag].reqType = REQ_TYPE_SLICE;
	reqPoolPtr->reqPool[reqSlotTag].reqCode = reqCode;
	reqPoolPtr->reqPool[reqSlotTag].nvmeCmdSlotTag = cmdSlotTag;
	reqPoolPtr->reqPool[reqSlotTag].logicalSliceAddr = LOGICAL_SLICE_ADDR_NONE;

	if(reqCode != REQ_CODE_OCSSD_PHY_ERASE)
	{
		reqPoolPtr->reqPool[reqSlotTag].nvmeDmaInfo.startIndex = dmaStartIndex;
		reqPoolPtr->reqPool[reqSlotTag].nvmeDmaInfo.nvmeBlockOffset = ppa->sector;
		reqPoolPtr->reqPool[reqSlotTag].nvmeDmaInfo.numOfNvmeBlock = numOfSector;
	}
	reqPoolPtr->reqPool[reqSlotTag].reqOpt.forceUnitAccess = fua;

	reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandAddr = REQ_OPT_NAND_ADDR_PHY_ORG;
	reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandEcc = REQ_OPT_NAND_ECC_ON;
	reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandEccWarning = REQ_OPT_NAND_ECC_WARNING_ON;
	reqPoolPtr->reqPool[reqSlotTag].reqOpt.blockSpace = REQ_OPT_BLOCK_SPACE_MAIN;

	//translate from physical address of OCSSD to physical address of nand devices
	reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalCh = ppa->channel;
	wayNo = ppa->lun;
	reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalWay = wayNo;
	blockNo =  OcpOrgPlaneBlock2PorgBlockTranslation(ppa->plane, ppa->block);
	reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalBlock = blockNo;
	if(BITS_PER_FLASH_CELL == SLC_MODE)
		reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalPage = Vpage2PlsbPageTranslation(ppa->page);
	else if(BITS_PER_FLASH_CELL == MLC_MODE)
		reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalPage = ppa->page;
	else
		assert(!"[WARNING] Not supported bit-per-flash-cell configuration [WARNING]");

	reqPoolPtr->reqPool[reqSlotTag].ppa.dword[0] = ppa->dword[0];
	reqPoolPtr->reqPool[reqSlotTag].ppa.dword[1] = ppa->dword[1];
	reqPoolPtr->reqPool[reqSlotTag].metadataAddr = metadataAddr;
	reqPoolPtr->reqPool[reqSlotTag].MPTR[0] = MPTR[0];
	reqPoolPtr->reqPool[reqSlotTag].MPTR[1] = MPTR[1];

	PutToSliceReqQ(reqSlotTag);
}

void EvictDataBufEntryForOcssdPhyReq(unsigned int originReqSlotTag)
{
	unsigned int reqSlotTag, dataBufEntry;
	int i, numOfUint32ToCopy, metadataOffset;
	unsigned int * spareDataBufAddr;

	dataBufEntry = reqPoolPtr->reqPool[originReqSlotTag].dataBufInfo.entry;
	if(dataBufMapPtr->dataBuf[dataBufEntry].dirty == DATA_BUF_DIRTY)
	{
		reqSlotTag = GetFromFreeReqQ();

		reqPoolPtr->reqPool[reqSlotTag].reqType = REQ_TYPE_NAND;
		reqPoolPtr->reqPool[reqSlotTag].reqCode = REQ_CODE_WRITE;
		reqPoolPtr->reqPool[reqSlotTag].nvmeCmdSlotTag = reqPoolPtr->reqPool[originReqSlotTag].nvmeCmdSlotTag;
		reqPoolPtr->reqPool[reqSlotTag].logicalSliceAddr = LOGICAL_SLICE_ADDR_NONE;
		reqPoolPtr->reqPool[reqSlotTag].reqOpt.dataBufFormat = REQ_OPT_DATA_BUF_ENTRY;
		reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandAddr = REQ_OPT_NAND_ADDR_PHY_ORG;
		reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandEcc = REQ_OPT_NAND_ECC_ON;
		reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandEccWarning = REQ_OPT_NAND_ECC_WARNING_ON;
		if(reqPoolPtr->reqPool[originReqSlotTag].reqCode == REQ_CODE_RxDMA)
			reqPoolPtr->reqPool[reqSlotTag].reqOpt.forceUnitAccess = reqPoolPtr->reqPool[originReqSlotTag].reqOpt.forceUnitAccess;
		else
			reqPoolPtr->reqPool[reqSlotTag].reqOpt.forceUnitAccess = REQ_OPT_FORCE_UNIT_ACCESS_OFF;
		reqPoolPtr->reqPool[reqSlotTag].reqOpt.blockSpace = REQ_OPT_BLOCK_SPACE_MAIN;
		reqPoolPtr->reqPool[reqSlotTag].dataBufInfo.entry = dataBufEntry;
		UpdateDataBufEntryInfoBlockingReq(dataBufEntry, reqSlotTag);

		reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalCh = reqPoolPtr->reqPool[originReqSlotTag].nandInfo.physicalCh;
		reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalWay = reqPoolPtr->reqPool[originReqSlotTag].nandInfo.physicalWay;
		reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalBlock = reqPoolPtr->reqPool[originReqSlotTag].nandInfo.physicalBlock;
		reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalPage = reqPoolPtr->reqPool[originReqSlotTag].nandInfo.physicalPage;

		reqPoolPtr->reqPool[reqSlotTag].ppa.dword[0] = reqPoolPtr->reqPool[originReqSlotTag].ppa.dword[0];
		reqPoolPtr->reqPool[reqSlotTag].ppa.dword[1] = reqPoolPtr->reqPool[originReqSlotTag].ppa.dword[1];
		reqPoolPtr->reqPool[reqSlotTag].metadataAddr = reqPoolPtr->reqPool[originReqSlotTag].metadataAddr;

		spareDataBufAddr = (unsigned int *)GenerateSpareDataBufAddr(reqSlotTag);
		metadataOffset = NUMBER_OF_UINT32_IN_OCSSD_METADATA * reqPoolPtr->reqPool[originReqSlotTag].nvmeDmaInfo.startIndex;
		numOfUint32ToCopy = NUMBER_OF_UINT32_IN_OCSSD_METADATA * reqPoolPtr->reqPool[originReqSlotTag].nvmeDmaInfo.numOfNvmeBlock;

		for(i = 0; i < numOfUint32ToCopy; i++)
		{
			spareDataBufAddr[i] = reqPoolPtr->reqPool[reqSlotTag].metadataAddr[metadataOffset + i];
		}

		SelectLowLevelReqQ(reqSlotTag);

		dataBufMapPtr->dataBuf[dataBufEntry].dirty = DATA_BUF_CLEAN;

		if(reqPoolPtr->reqPool[reqSlotTag].reqOpt.forceUnitAccess == REQ_OPT_FORCE_UNIT_ACCESS_ON)
			AllocateNotCompletedNandReqforNvmeIoCmd(reqPoolPtr->reqPool[reqSlotTag].nvmeCmdSlotTag);
	}
}

void DataReadFromNandForOcssdPhyReq(unsigned int originReqSlotTag)
{
	unsigned int reqSlotTag;

	reqSlotTag = GetFromFreeReqQ();

	reqPoolPtr->reqPool[reqSlotTag].reqType = REQ_TYPE_NAND;
	reqPoolPtr->reqPool[reqSlotTag].reqCode = REQ_CODE_READ;
	reqPoolPtr->reqPool[reqSlotTag].nvmeCmdSlotTag = reqPoolPtr->reqPool[originReqSlotTag].nvmeCmdSlotTag;
	reqPoolPtr->reqPool[reqSlotTag].logicalSliceAddr = LOGICAL_SLICE_ADDR_NONE;
	reqPoolPtr->reqPool[reqSlotTag].reqOpt.dataBufFormat = REQ_OPT_DATA_BUF_ENTRY;
	reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandAddr = REQ_OPT_NAND_ADDR_PHY_ORG;
	reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandEcc = REQ_OPT_NAND_ECC_ON;
	reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandEccWarning = REQ_OPT_NAND_ECC_WARNING_ON;
	reqPoolPtr->reqPool[reqSlotTag].reqOpt.forceUnitAccess = reqPoolPtr->reqPool[originReqSlotTag].reqOpt.forceUnitAccess;
	reqPoolPtr->reqPool[reqSlotTag].reqOpt.blockSpace = REQ_OPT_BLOCK_SPACE_MAIN;
	reqPoolPtr->reqPool[reqSlotTag].dataBufInfo.entry = reqPoolPtr->reqPool[originReqSlotTag].dataBufInfo.entry;
	UpdateDataBufEntryInfoBlockingReq(reqPoolPtr->reqPool[reqSlotTag].dataBufInfo.entry, reqSlotTag);

	reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalCh = reqPoolPtr->reqPool[originReqSlotTag].nandInfo.physicalCh;
	reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalWay = reqPoolPtr->reqPool[originReqSlotTag].nandInfo.physicalWay;
	reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalBlock = reqPoolPtr->reqPool[originReqSlotTag].nandInfo.physicalBlock;
	reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalPage = reqPoolPtr->reqPool[originReqSlotTag].nandInfo.physicalPage;

	reqPoolPtr->reqPool[reqSlotTag].ppa.dword[0] = reqPoolPtr->reqPool[originReqSlotTag].ppa.dword[0];
	reqPoolPtr->reqPool[reqSlotTag].ppa.dword[1] = reqPoolPtr->reqPool[originReqSlotTag].ppa.dword[1];
	reqPoolPtr->reqPool[reqSlotTag].metadataAddr = reqPoolPtr->reqPool[originReqSlotTag].metadataAddr;
	reqPoolPtr->reqPool[reqSlotTag].MPTR[0] = reqPoolPtr->reqPool[originReqSlotTag].MPTR[0];
	reqPoolPtr->reqPool[reqSlotTag].MPTR[1] = reqPoolPtr->reqPool[originReqSlotTag].MPTR[1];

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

		if(reqPoolPtr->reqPool[reqSlotTag].reqCode == REQ_CODE_OCSSD_PHY_ERASE)
		{
			reqPoolPtr->reqPool[reqSlotTag].reqCode = REQ_CODE_ERASE;
			reqPoolPtr->reqPool[reqSlotTag].reqType = REQ_TYPE_NAND;
			reqPoolPtr->reqPool[reqSlotTag].reqOpt.dataBufFormat = REQ_OPT_DATA_BUF_NONE;

			SelectLowLevelReqQ(reqSlotTag);

			if(reqPoolPtr->reqPool[reqSlotTag].reqOpt.forceUnitAccess == REQ_OPT_FORCE_UNIT_ACCESS_ON)
				AllocateNotCompletedNandReqforNvmeIoCmd(reqPoolPtr->reqPool[reqSlotTag].nvmeCmdSlotTag);
		}
		else
		{
			dataBufEntry = AllocateDataBuf(reqSlotTag);
			reqPoolPtr->reqPool[reqSlotTag].dataBufInfo.entry = dataBufEntry;

			if(reqPoolPtr->reqPool[reqSlotTag].reqCode  == REQ_CODE_OCSSD_PHY_WRITE)
			{
				dataBufMapPtr->dataBuf[dataBufEntry].dirty = DATA_BUF_DIRTY;
				reqPoolPtr->reqPool[reqSlotTag].reqCode = REQ_CODE_RxDMA;
			}
			else if(reqPoolPtr->reqPool[reqSlotTag].reqCode  == REQ_CODE_OCSSD_PHY_READ)
			{
				reqPoolPtr->reqPool[reqSlotTag].reqCode = REQ_CODE_TxDMA;

				DataReadFromNandForOcssdPhyReq(reqSlotTag);

				if(reqPoolPtr->reqPool[reqSlotTag].reqOpt.forceUnitAccess == REQ_OPT_FORCE_UNIT_ACCESS_ON)
					AllocateNotCompletedDmaReqforNvmeIoCmd(reqPoolPtr->reqPool[reqSlotTag].nvmeCmdSlotTag);
			}
			else
				assert(!"[WARNING] Not supported reqCode. [WARNING]");

			reqPoolPtr->reqPool[reqSlotTag].reqType = REQ_TYPE_NVME_DMA;
			reqPoolPtr->reqPool[reqSlotTag].reqOpt.dataBufFormat = REQ_OPT_DATA_BUF_ENTRY;
			UpdateDataBufEntryInfoBlockingReq(dataBufEntry, reqSlotTag);

			SelectLowLevelReqQ(reqSlotTag);

			if(reqPoolPtr->reqPool[reqSlotTag].reqCode == REQ_CODE_RxDMA)
			{
				if(reqPoolPtr->reqPool[reqSlotTag].reqOpt.forceUnitAccess == REQ_OPT_FORCE_UNIT_ACCESS_ON)
				{
					EvictDataBufEntryForOcssdPhyReq(reqSlotTag);
				}
				else
					assert(!"[WARNING] Not supported fua flag. [WARNING]");
			}
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
	unsigned int chNo, wayNo, bufDepCheckReport;

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
			if(reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandAddr == REQ_OPT_NAND_ADDR_PHY_ORG)
			{
				chNo = reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalCh;
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
	unsigned int targetReqSlotTag, chNo, wayNo;

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
			if(reqPoolPtr->reqPool[targetReqSlotTag].reqOpt.nandAddr == REQ_OPT_NAND_ADDR_PHY_ORG)
			{
				chNo = reqPoolPtr->reqPool[targetReqSlotTag].nandInfo.physicalCh;
				wayNo = reqPoolPtr->reqPool[targetReqSlotTag].nandInfo.physicalWay;
			}
			else
				assert(!"[WARNING] Not supported reqOpt-nandAddress [WARNING]");

			PutToNandReqQ(targetReqSlotTag, chNo, wayNo);
		}
	}
}

void IssueNvmeDmaReq(unsigned int reqSlotTag)
{
	unsigned int nvmeCmdSlotTag, devAddr, dmaIndex, numOfNvmeBlock;
	P_OCSSD_METADATA_BUFFER ocssdMetadataBuffer;
	unsigned int *spareDataBuffer;
	int metadataOffset, spareDataOffset, i;

	nvmeCmdSlotTag = reqPoolPtr->reqPool[reqSlotTag].nvmeCmdSlotTag;
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
		ocssdMetadataBuffer = (P_OCSSD_METADATA_BUFFER)OCSSD_METADATA_READ_ADDR;
		spareDataBuffer = (unsigned int *)(GenerateSpareDataBufAddr(reqSlotTag));
		while(numOfNvmeBlock < reqPoolPtr->reqPool[reqSlotTag].nvmeDmaInfo.numOfNvmeBlock)
		{
			if(reqPoolPtr->reqPool[reqSlotTag].reqOpt.forceUnitAccess == REQ_OPT_FORCE_UNIT_ACCESS_ON)
				set_auto_tx_dma(reqPoolPtr->reqPool[reqSlotTag].nvmeCmdSlotTag, dmaIndex, devAddr, NVME_COMMAND_AUTO_COMPLETION_OFF);
			else
				set_auto_tx_dma(reqPoolPtr->reqPool[reqSlotTag].nvmeCmdSlotTag, dmaIndex, devAddr, NVME_COMMAND_AUTO_COMPLETION_ON);

			//for metadata
			metadataOffset = dmaIndex * NUMBER_OF_UINT32_IN_OCSSD_METADATA;
			spareDataOffset = numOfNvmeBlock * NUMBER_OF_UINT32_IN_OCSSD_METADATA;
			for(i = 0; i < NUMBER_OF_UINT32_IN_OCSSD_METADATA; i++)
				ocssdMetadataBuffer->d[nvmeCmdSlotTag][metadataOffset + i] = spareDataBuffer[spareDataOffset + i];

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



