//////////////////////////////////////////////////////////////////////////////////
// address_translation.c for Cosmos+ OpenSSD
// Copyright (c) 2017 Hanyang University ENC Lab.
// Contributed by Yong Ho Song <yhsong@enc.hanyang.ac.kr>
//				  Jaewook Kwak <jwkwak@enc.hanyang.ac.kr>
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
// Engineer: Jaewook Kwak <jwkwak@enc.hanyang.ac.kr>
//
// Project Name: Cosmos+ OpenSSD
// Design Name: Cosmos+ Firmware
// Module Name: Address Translator
// File Name: address translation.c
//
// Version: v1.0.1.oc (oc: for Open Channel SSD)
//
// Description:
//   - translate address between address space of host system and address space of NAND device
//   - manage bad blocks in NAND device
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.1.oc
//   - Remove a request option for data dependency related with NAND physical address
//
// * v1.0.0.oc
//   - First draft
//////////////////////////////////////////////////////////////////////////////////

#include <assert.h>
#include "memory_map.h"
#include "xil_printf.h"

P_BAD_BLOCK_TABLE_INFO_MAP bbtInfoMapPtr;
P_PHY_BLOCK_MAP phyBlockMapPtr;
ADMIN_OCSSD_BAD_BLOCKS_TABLE* ocssdBBT;

unsigned int mbPerbadBlockSpace;

void InitPhyBlockMap()
{
	unsigned int blockNo, dieNo;

	phyBlockMapPtr = (P_PHY_BLOCK_MAP) PHY_BLOCK_MAP_ADDR;
	bbtInfoMapPtr = (P_BAD_BLOCK_TABLE_INFO_MAP) BAD_BLOCK_TABLE_INFO_MAP_ADDR;

	for(dieNo=0 ; dieNo<USER_DIES ; dieNo++)
	{
		for(blockNo=0 ; blockNo<TOTAL_BLOCKS_PER_DIE ; blockNo++)
			phyBlockMapPtr->phyBlock[dieNo][blockNo].remappedPhyBlock = blockNo;

		bbtInfoMapPtr->bbtInfo[dieNo].phyBlock = 0;
		bbtInfoMapPtr->bbtInfo[dieNo].grownBadUpdate = BBT_INFO_GROWN_BAD_UPDATE_NONE;
	}

}

void RemapBadBlock()
{
	unsigned int blockNo, dieNo, remapFlag;
	unsigned int reservedBlockOfLun0[USER_DIES];
	unsigned int reservedBlockOfLun1[USER_DIES];

	xil_printf("Bad block remapping start...\r\n");

	for(dieNo=0 ; dieNo<USER_DIES ; dieNo++)
	{
		reservedBlockOfLun0[dieNo] = USER_BLOCKS_PER_LUN;
		reservedBlockOfLun1[dieNo] = TOTAL_BLOCKS_PER_LUN + USER_BLOCKS_PER_LUN;
	}

	for(blockNo=0 ; blockNo<USER_BLOCKS_PER_LUN ; blockNo++)
	{
		for(dieNo=0 ; dieNo<USER_DIES ; dieNo++)
		{
			//lun0
			if(phyBlockMapPtr->phyBlock[dieNo][blockNo].bad)
			{
				if(reservedBlockOfLun0[dieNo] < TOTAL_BLOCKS_PER_LUN)
				{
					remapFlag = 1;
					while(phyBlockMapPtr->phyBlock[dieNo][reservedBlockOfLun0[dieNo]].bad)
					{
						reservedBlockOfLun0[dieNo]++;
						if(reservedBlockOfLun0[dieNo] >= TOTAL_BLOCKS_PER_LUN)
						{
							remapFlag = 0;
							break;
						}
					}

					if(remapFlag)
					{
						phyBlockMapPtr->phyBlock[dieNo][blockNo].remappedPhyBlock  = reservedBlockOfLun0[dieNo];
						reservedBlockOfLun0[dieNo]++;
					}
					else
						xil_printf("No reserved block - Ch %d Way %d Lun 0 Block %d is bad block \r\n", Vdie2PchTranslation(dieNo), Vdie2PwayTranslation(dieNo), blockNo);
				}
				else
					xil_printf("No reserved block - Ch %d Way %d Lun 0 Block %d is bad block \r\n", Vdie2PchTranslation(dieNo), Vdie2PwayTranslation(dieNo), blockNo);
			}

			//lun1
			if(phyBlockMapPtr->phyBlock[dieNo][blockNo+TOTAL_BLOCKS_PER_LUN].bad)
			{
				if(reservedBlockOfLun1[dieNo] < TOTAL_BLOCKS_PER_DIE)
				{
					remapFlag = 1;
					while(phyBlockMapPtr->phyBlock[dieNo][reservedBlockOfLun1[dieNo]].bad)
					{
						reservedBlockOfLun1[dieNo]++;
						if(reservedBlockOfLun1[dieNo] >= TOTAL_BLOCKS_PER_DIE)
						{
							remapFlag = 0;
							break;
						}
					}

					if(remapFlag)
					{
						phyBlockMapPtr->phyBlock[dieNo][blockNo+TOTAL_BLOCKS_PER_LUN].remappedPhyBlock  = reservedBlockOfLun1[dieNo];
						reservedBlockOfLun1[dieNo]++;
					}
					else
						xil_printf("No reserved block - Ch %x Way %x Lun 1 Block %d is bad block \r\n",  Vdie2PchTranslation(dieNo), Vdie2PwayTranslation(dieNo), blockNo);
				}
				else
					xil_printf("No reserved block - Ch %x Way %x Lun 1 Block %d is bad block \r\n",  Vdie2PchTranslation(dieNo), Vdie2PwayTranslation(dieNo), blockNo);
			}
		}
	}

	xil_printf("Bad block remapping end\r\n");
}


void InitBadBlockTable()
{
	unsigned int blockNo, dieNo, remappedPhyBlock;

	ocssdBBT = (ADMIN_OCSSD_BAD_BLOCKS_TABLE *) OCSSD_BAD_BLOCKS_TABLE_ADDR;
	memset(ocssdBBT, 0, sizeof(ADMIN_OCSSD_BAD_BLOCKS_TABLE)*NUMBER_OF_LUNS_ON_DEVICE);


	xil_printf("Press 'X' to re-make the bad block table.\r\n");
	if (inbyte() == 'X')
		TotalBlockErase();


	//make bad block table
	RecoverBadBlockTable(RESERVED_DATA_BUFFER_BASE_ADDR);

	//bad block table of ocssd initialization
	for(dieNo=0 ; dieNo<USER_DIES ; dieNo++)
	{
		//to prevent accessing bbtBlock by host
		phyBlockMapPtr->phyBlock[dieNo][bbtInfoMapPtr->bbtInfo[dieNo].phyBlock].bad = 1;

		ocssdBBT[dieNo].tableID[0] = 'B';
		ocssdBBT[dieNo].tableID[1] = 'B';
		ocssdBBT[dieNo].tableID[2] = 'L';
		ocssdBBT[dieNo].tableID[3] = 'T';
		ocssdBBT[dieNo].versionNumber = 1;
		ocssdBBT[dieNo].revisionNumber = 0;
		ocssdBBT[dieNo].totalNumberOfBlocksInThisLUN = NUMBER_OF_BLOCKS_PER_LUN;
		ocssdBBT[dieNo].numberOfFactoryBadBlocks = 0;
		ocssdBBT[dieNo].numberOfGrownBadBlocks = 0;
		ocssdBBT[dieNo].numberOfDeviceReservedBlocks = 0;
		ocssdBBT[dieNo].numberOfHostReservedBlocks = 0;
	}

	//to prevent accessing bad blocks by host
	RemapBadBlock();

	//update bad block table of ocssd considering phyBlockMap
	for(blockNo=0 ; blockNo<USER_BLOCKS_PER_LUN ; blockNo++)
	{
		for(dieNo=0 ; dieNo<USER_DIES ; dieNo++)
		{
			//lun0
			remappedPhyBlock = phyBlockMapPtr->phyBlock[dieNo][blockNo].remappedPhyBlock;
			ocssdBBT[dieNo].badBlocksTableEntry[2*blockNo].factoryBadBlock = phyBlockMapPtr->phyBlock[dieNo][remappedPhyBlock].bad;
			if(phyBlockMapPtr->phyBlock[dieNo][remappedPhyBlock].bad)
				ocssdBBT[dieNo].numberOfFactoryBadBlocks += 1;

			//lun1
			remappedPhyBlock = phyBlockMapPtr->phyBlock[dieNo][blockNo+TOTAL_BLOCKS_PER_LUN].remappedPhyBlock;
			ocssdBBT[dieNo].badBlocksTableEntry[2*blockNo+1].factoryBadBlock = phyBlockMapPtr->phyBlock[dieNo][remappedPhyBlock].bad;
			if(phyBlockMapPtr->phyBlock[dieNo][remappedPhyBlock].bad)
				ocssdBBT[dieNo].numberOfFactoryBadBlocks += 1;
		}
	}

	//UserBlockErase();
}


void RecoverBadBlockTable(unsigned int tempBufAddr)
{
	unsigned int dieNo, blockNo, maxBadBlockCount, bbtMaker, tempBbtBufBaseAddr, tempBbtBufEntrySize, tempReadBufBaseAddr, tempReadBufEntrySize;
	unsigned int badBlockCount[USER_DIES];
	unsigned int tempBbtBufAddr[USER_DIES];
	unsigned int tempReadBufAddr[USER_DIES];
	unsigned char dieState[USER_DIES];
	unsigned char* bbtTableChecker;

	//data buffer allocation
	tempBbtBufBaseAddr = tempBufAddr;
	tempBbtBufEntrySize = BYTES_PER_DATA_REGION_OF_PAGE + BYTES_PER_SPARE_REGION_OF_PAGE;
	tempReadBufBaseAddr = tempBbtBufBaseAddr + USER_DIES * USED_PAGES_FOR_BAD_BLOCK_TABLE_PER_DIE * tempBbtBufEntrySize;
	tempReadBufEntrySize = BYTES_PER_NAND_ROW;
	for(dieNo = 0; dieNo < USER_DIES; dieNo++)
	{
		tempBbtBufAddr[dieNo] = tempBbtBufBaseAddr + dieNo * USED_PAGES_FOR_BAD_BLOCK_TABLE_PER_DIE * tempBbtBufEntrySize;
		tempReadBufAddr[dieNo] = tempReadBufBaseAddr + dieNo * tempReadBufEntrySize;
	}

	//read bad block tables
	ReadBadBlockTable(tempBbtBufAddr, tempBbtBufEntrySize);

	//check bad block tables
	bbtMaker = BAD_BLOCK_TABLE_MAKER_IDLE;
	for(dieNo=0; dieNo<USER_DIES; dieNo++)
	{
		bbtTableChecker = (unsigned char*)(tempBbtBufAddr[dieNo]);
		badBlockCount[dieNo] = 0;

		if((*bbtTableChecker == BLOCK_STATE_NORMAL)||(*bbtTableChecker == BLOCK_STATE_BAD))
		{
			xil_printf("[ bad block table of ch %d way %d exists.]\r\n",Vdie2PchTranslation(dieNo), Vdie2PwayTranslation(dieNo));

			dieState[dieNo] = DIE_STATE_BAD_BLOCK_TABLE_EXIST;
			for(blockNo=0; blockNo<TOTAL_BLOCKS_PER_DIE; blockNo++)
			{
				bbtTableChecker = (unsigned char*)(tempBbtBufAddr[dieNo] + blockNo);

				phyBlockMapPtr->phyBlock[dieNo][blockNo].bad = *bbtTableChecker;
				if(phyBlockMapPtr->phyBlock[dieNo][blockNo].bad == BLOCK_STATE_BAD)
				{
					if(blockNo < TOTAL_BLOCKS_PER_LUN)
						xil_printf("	bad block: ch %d way %d lun 0 block %d  \r\n",Vdie2PchTranslation(dieNo), Vdie2PwayTranslation(dieNo), blockNo);
					else
						xil_printf("	bad block: ch %d way %d lun 1 block %d  \r\n",Vdie2PchTranslation(dieNo), Vdie2PwayTranslation(dieNo), blockNo - TOTAL_BLOCKS_PER_LUN);

					badBlockCount[dieNo]++;
				}
			}

			xil_printf("[ bad blocks of ch %d way %d are checked. ]\r\n",Vdie2PchTranslation(dieNo), Vdie2PwayTranslation(dieNo));
		}
		else
		{
			xil_printf("[ bad block table of ch %d way %d does not exist.]\r\n",Vdie2PchTranslation(dieNo), Vdie2PwayTranslation(dieNo));
			dieState[dieNo] = DIE_STATE_BAD_BLOCK_TABLE_NOT_EXIST;
			bbtMaker = BAD_BLOCK_TABLE_MAKER_TRIGGER;
		}
	}

	//if bad block table does not exist in some dies, make new bad block table for each die having no bad block table
	if(bbtMaker == BAD_BLOCK_TABLE_MAKER_TRIGGER)
	{
		FindBadBlock(dieState, badBlockCount, tempBbtBufAddr, tempBbtBufEntrySize, tempReadBufAddr, tempReadBufEntrySize);
		SaveBadBlockTable(dieState, tempBbtBufAddr, tempBbtBufEntrySize);
	}

	maxBadBlockCount = 0;
	for(dieNo=0; dieNo < USER_DIES; dieNo++)
	{
		if(dieState[dieNo] == DIE_STATE_BAD_BLOCK_TABLE_NOT_EXIST)
			xil_printf("[ bad block table of Ch %d Way %d is saved. ]\r\n", dieNo%USER_CHANNELS, dieNo/USER_CHANNELS);

		if(maxBadBlockCount < badBlockCount[dieNo])
			maxBadBlockCount = badBlockCount[dieNo];
	}

	mbPerbadBlockSpace = maxBadBlockCount * USER_DIES * MB_PER_BLOCK;
}

void ReadBadBlockTable(unsigned int tempBbtBufAddr[], unsigned int tempBbtBufEntrySize)
{
	unsigned int tempPage, reqSlotTag, dieNo;
	int loop, dataSize;

	loop = 0;
	dataSize = DATA_SIZE_OF_BAD_BLOCK_TABLE_PER_DIE;
	tempPage = PlsbPage2VPageTranslation(START_PAGE_NO_OF_BAD_BLOCK_TABLE_BLOCK); 	//bad block table is saved at lsb pages

	while(dataSize>0)
	{
		for(dieNo = 0; dieNo < USER_DIES; dieNo++)
		{
			reqSlotTag = GetFromFreeReqQ();

			reqPoolPtr->reqPool[reqSlotTag].reqType = REQ_TYPE_NAND;
			reqPoolPtr->reqPool[reqSlotTag].reqCode = REQ_CODE_READ;
			reqPoolPtr->reqPool[reqSlotTag].reqOpt.dataBufFormat = REQ_OPT_DATA_BUF_ADDR;
			reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandAddr = REQ_OPT_NAND_ADDR_PHY_ORG;
			reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandEcc = REQ_OPT_NAND_ECC_ON;
			reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandEccWarning = REQ_OPT_NAND_ECC_WARNING_OFF;
			reqPoolPtr->reqPool[reqSlotTag].reqOpt.forceUnitAccess = REQ_OPT_FORCE_UNIT_ACCESS_OFF;
			reqPoolPtr->reqPool[reqSlotTag].reqOpt.blockSpace = REQ_OPT_BLOCK_SPACE_TOTAL;

			reqPoolPtr->reqPool[reqSlotTag].dataBufInfo.addr = tempBbtBufAddr[dieNo] + loop * tempBbtBufEntrySize;

			reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalCh = Vdie2PchTranslation(dieNo);
			reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalWay = Vdie2PwayTranslation(dieNo);
			reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalBlock = bbtInfoMapPtr->bbtInfo[dieNo].phyBlock;
			reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalPage = Vpage2PlsbPageTranslation(tempPage);

			SelectLowLevelReqQ(reqSlotTag);
		}

		tempPage++;
		loop++;
		dataSize -= BYTES_PER_DATA_REGION_OF_PAGE;
	}

	SyncAllLowLevelReqDone();
}


void UpdatePhyBlockMapForGrownBadBlock(OCSSD_PHYSICAL_PAGE_ADDRESS* ppa)	//for bad block update by using admin cmd
{
	unsigned int remappedPhyBlock, dieNo, blockNo;

	//translate from physical address of OCSSD to physical address of nand devices
	dieNo = Pcw2VdieTranslation(ppa->channel, ppa->lun);
	blockNo =  OcpOrgPlaneBlock2PorgBlockTranslation(ppa->plane, ppa->block);

	//currently FW use phyblock remapping for processing host request
	remappedPhyBlock = phyBlockMapPtr->phyBlock[dieNo][blockNo].remappedPhyBlock;
	phyBlockMapPtr->phyBlock[dieNo][remappedPhyBlock].bad = BLOCK_STATE_BAD;

	bbtInfoMapPtr->bbtInfo[dieNo].grownBadUpdate = BBT_INFO_GROWN_BAD_UPDATE_BOOKED;
}


void UpdateBadBlockTableForGrownBadBlock(unsigned int tempBufAddr)
{
	unsigned int dieNo, phyBlockNo, tempBbtBufBaseAddr, tempBbtBufEntrySize;
	unsigned int tempBbtBufAddr[USER_DIES];
	unsigned char dieState[USER_DIES];
	unsigned char* bbtUpdater;

	//data buffer allocation
	tempBbtBufBaseAddr = tempBufAddr;
	tempBbtBufEntrySize = BYTES_PER_DATA_REGION_OF_PAGE + BYTES_PER_SPARE_REGION_OF_PAGE;
	for(dieNo = 0; dieNo < USER_DIES; dieNo++)
		tempBbtBufAddr[dieNo] = tempBbtBufBaseAddr + dieNo * USED_PAGES_FOR_BAD_BLOCK_TABLE_PER_DIE * tempBbtBufEntrySize;

	//create new bad block table
	for(dieNo = 0; dieNo < USER_DIES; dieNo++)
	{
		if(bbtInfoMapPtr->bbtInfo[dieNo].grownBadUpdate == BBT_INFO_GROWN_BAD_UPDATE_BOOKED)
		{
			for(phyBlockNo = 0; phyBlockNo < TOTAL_BLOCKS_PER_DIE; phyBlockNo++)
			{
				bbtUpdater = (unsigned char*)(tempBbtBufAddr[dieNo] + phyBlockNo);
				
				if(phyBlockNo != bbtInfoMapPtr->bbtInfo[dieNo].phyBlock)
					*bbtUpdater = phyBlockMapPtr->phyBlock[dieNo][phyBlockNo].bad;
				else
					*bbtUpdater = BLOCK_STATE_NORMAL;
			}

			dieState[dieNo] = DIE_STATE_BAD_BLOCK_TABLE_UPDATE;
		}
		else
			dieState[dieNo] = DIE_STATE_BAD_BLOCK_TABLE_HOLD;
	}

	//update bad block tables in flash
	SaveBadBlockTable(dieState, tempBbtBufAddr, tempBbtBufEntrySize);
}


void FindBadBlock(unsigned char dieState[], unsigned int badBlockCount[], unsigned int tempBbtBufAddr[],
					unsigned int tempBbtBufEntrySize, unsigned int tempReadBufAddr[], unsigned int tempReadBufEntrySize)
{
	unsigned int phyBlockNo, dieNo, reqSlotTag;
	unsigned char blockChecker[USER_DIES];
	unsigned char* markPointer0;
	unsigned char* markPointer1;
	unsigned char* bbtUpdater;

	//check bad block mark of each block
	for(phyBlockNo = 0; phyBlockNo < TOTAL_BLOCKS_PER_DIE; phyBlockNo++)
	{
		for(dieNo=0; dieNo < USER_DIES; dieNo++)
			if(!dieState[dieNo])
			{
				blockChecker[dieNo] = BLOCK_STATE_NORMAL;

				reqSlotTag = GetFromFreeReqQ();

				reqPoolPtr->reqPool[reqSlotTag].reqType = REQ_TYPE_NAND;
				reqPoolPtr->reqPool[reqSlotTag].reqCode = REQ_CODE_READ;
				reqPoolPtr->reqPool[reqSlotTag].reqOpt.dataBufFormat = REQ_OPT_DATA_BUF_ADDR;
				reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandAddr = REQ_OPT_NAND_ADDR_PHY_ORG;
				reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandEcc = REQ_OPT_NAND_ECC_OFF;
				reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandEccWarning = REQ_OPT_NAND_ECC_WARNING_OFF;
				reqPoolPtr->reqPool[reqSlotTag].reqOpt.forceUnitAccess = REQ_OPT_FORCE_UNIT_ACCESS_OFF;
				reqPoolPtr->reqPool[reqSlotTag].reqOpt.blockSpace = REQ_OPT_BLOCK_SPACE_TOTAL;

				reqPoolPtr->reqPool[reqSlotTag].dataBufInfo.addr = tempReadBufAddr[dieNo];

				reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalCh = Vdie2PchTranslation(dieNo);
				reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalWay = Vdie2PwayTranslation(dieNo);
				reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalBlock = phyBlockNo;
				reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalPage = BAD_BLOCK_MARK_PAGE0;

				SelectLowLevelReqQ(reqSlotTag);
			}

		SyncAllLowLevelReqDone();

		for(dieNo=0; dieNo < USER_DIES; dieNo++)
			if(!dieState[dieNo])
			{
				markPointer0 = (unsigned char*)(tempReadBufAddr[dieNo] + BAD_BLOCK_MARK_BYTE0);
				markPointer1 = (unsigned char*)(tempReadBufAddr[dieNo] + BAD_BLOCK_MARK_BYTE1);

				if((*markPointer0 == CLEAN_DATA_IN_BYTE) && (*markPointer1 == CLEAN_DATA_IN_BYTE))
				{
					reqSlotTag = GetFromFreeReqQ();

					reqPoolPtr->reqPool[reqSlotTag].reqType = REQ_TYPE_NAND;
					reqPoolPtr->reqPool[reqSlotTag].reqCode = REQ_CODE_READ;
					reqPoolPtr->reqPool[reqSlotTag].reqOpt.dataBufFormat = REQ_OPT_DATA_BUF_ADDR;
					reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandAddr = REQ_OPT_NAND_ADDR_PHY_ORG;
					reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandEcc = REQ_OPT_NAND_ECC_OFF;
					reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandEccWarning = REQ_OPT_NAND_ECC_WARNING_OFF;
					reqPoolPtr->reqPool[reqSlotTag].reqOpt.forceUnitAccess = REQ_OPT_FORCE_UNIT_ACCESS_OFF;
					reqPoolPtr->reqPool[reqSlotTag].reqOpt.blockSpace = REQ_OPT_BLOCK_SPACE_TOTAL;

					reqPoolPtr->reqPool[reqSlotTag].dataBufInfo.addr = tempReadBufAddr[dieNo];

					reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalCh = Vdie2PchTranslation(dieNo);
					reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalWay = Vdie2PwayTranslation(dieNo);
					reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalBlock = phyBlockNo;
					reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalPage = BAD_BLOCK_MARK_PAGE1;

					SelectLowLevelReqQ(reqSlotTag);
				}
				else
				{
					if(phyBlockNo < TOTAL_BLOCKS_PER_LUN)
						xil_printf("	bad block is detected: Ch %d Way %d Lun 0 Block %d \r\n",Vdie2PchTranslation(dieNo), Vdie2PwayTranslation(dieNo), phyBlockNo);
					else
						xil_printf("	bad block is detected: Ch %d Way %d Lun 1 Block %d \r\n",Vdie2PchTranslation(dieNo), Vdie2PwayTranslation(dieNo), phyBlockNo - TOTAL_BLOCKS_PER_LUN);

					blockChecker[dieNo] = BLOCK_STATE_BAD;
					badBlockCount[dieNo]++;
				}
			}

		SyncAllLowLevelReqDone();

		for(dieNo=0; dieNo < USER_DIES; dieNo++)
			if(!dieState[dieNo])
			{
				markPointer0 = (unsigned char*)(tempReadBufAddr[dieNo] + BAD_BLOCK_MARK_BYTE0);
				markPointer1 = (unsigned char*)(tempReadBufAddr[dieNo] + BAD_BLOCK_MARK_BYTE1);

				if(!((*markPointer0 == CLEAN_DATA_IN_BYTE) && (*markPointer1 == CLEAN_DATA_IN_BYTE)))
					if(blockChecker[dieNo] == BLOCK_STATE_NORMAL)
					{
						if(phyBlockNo < TOTAL_BLOCKS_PER_LUN)
							xil_printf("	bad block is detected: Ch %d Way %d Lun 0 Block %d \r\n",Vdie2PchTranslation(dieNo), Vdie2PwayTranslation(dieNo), phyBlockNo);
						else
							xil_printf("	bad block is detected: Ch %d Way %d Lun 1 Block %d \r\n",Vdie2PchTranslation(dieNo), Vdie2PwayTranslation(dieNo), phyBlockNo - TOTAL_BLOCKS_PER_LUN);

						blockChecker[dieNo] = BLOCK_STATE_BAD;
						badBlockCount[dieNo]++;
					}

				bbtUpdater= (unsigned char*)(tempBbtBufAddr[dieNo] + phyBlockNo);
				*bbtUpdater = blockChecker[dieNo];
				phyBlockMapPtr->phyBlock[dieNo][phyBlockNo].bad = blockChecker[dieNo];
			}
	}
}


void SaveBadBlockTable(unsigned char dieState[], unsigned int tempBbtBufAddr[], unsigned int tempBbtBufEntrySize)
{
	unsigned int dieNo, reqSlotTag;
	int loop, dataSize, tempPage;

	loop = 0;
	dataSize = DATA_SIZE_OF_BAD_BLOCK_TABLE_PER_DIE;
	tempPage = PlsbPage2VPageTranslation(START_PAGE_NO_OF_BAD_BLOCK_TABLE_BLOCK);	//bad block table is saved at lsb pages

	while(dataSize>0)
	{
		for(dieNo = 0; dieNo < USER_DIES; dieNo++)
			if((dieState[dieNo] == DIE_STATE_BAD_BLOCK_TABLE_NOT_EXIST) || (dieState[dieNo] == DIE_STATE_BAD_BLOCK_TABLE_UPDATE))
			{
				if(loop == 0)
				{
					reqSlotTag = GetFromFreeReqQ();

					reqPoolPtr->reqPool[reqSlotTag].reqType = REQ_TYPE_NAND;
					reqPoolPtr->reqPool[reqSlotTag].reqCode = REQ_CODE_ERASE;
					reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandAddr = REQ_OPT_NAND_ADDR_PHY_ORG;
					reqPoolPtr->reqPool[reqSlotTag].reqOpt.dataBufFormat = REQ_OPT_DATA_BUF_NONE;
					reqPoolPtr->reqPool[reqSlotTag].reqOpt.forceUnitAccess = REQ_OPT_FORCE_UNIT_ACCESS_OFF;
					reqPoolPtr->reqPool[reqSlotTag].reqOpt.blockSpace = REQ_OPT_BLOCK_SPACE_TOTAL;

					reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalCh = Vdie2PchTranslation(dieNo);
					reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalWay = Vdie2PwayTranslation(dieNo);
					reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalBlock = bbtInfoMapPtr->bbtInfo[dieNo].phyBlock;
					reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalPage = 0;	//dummy

					SelectLowLevelReqQ(reqSlotTag);
				}

				reqSlotTag = GetFromFreeReqQ();

				reqPoolPtr->reqPool[reqSlotTag].reqType = REQ_TYPE_NAND;
				reqPoolPtr->reqPool[reqSlotTag].reqCode = REQ_CODE_WRITE;
				reqPoolPtr->reqPool[reqSlotTag].reqOpt.dataBufFormat = REQ_OPT_DATA_BUF_ADDR;
				reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandAddr = REQ_OPT_NAND_ADDR_PHY_ORG;
				reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandEcc = REQ_OPT_NAND_ECC_ON;
				reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandEccWarning = REQ_OPT_NAND_ECC_WARNING_OFF;
				reqPoolPtr->reqPool[reqSlotTag].reqOpt.forceUnitAccess = REQ_OPT_FORCE_UNIT_ACCESS_OFF;
				reqPoolPtr->reqPool[reqSlotTag].reqOpt.blockSpace = REQ_OPT_BLOCK_SPACE_TOTAL;

				reqPoolPtr->reqPool[reqSlotTag].dataBufInfo.addr = tempBbtBufAddr[dieNo] + loop * tempBbtBufEntrySize;

				reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalCh = Vdie2PchTranslation(dieNo);
				reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalWay = Vdie2PwayTranslation(dieNo);
				reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalBlock = bbtInfoMapPtr->bbtInfo[dieNo].phyBlock;
				reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalPage =  Vpage2PlsbPageTranslation(tempPage);

				SelectLowLevelReqQ(reqSlotTag);
			}

		loop++;
		dataSize++;
		dataSize -= BYTES_PER_DATA_REGION_OF_PAGE;
	}

	SyncAllLowLevelReqDone();
}

void TotalBlockErase()
{
	unsigned int blockNo, dieNo, reqSlotTag;

	xil_printf("Total block erase...wait for a minute...\r\n");

	for(blockNo=0 ; blockNo<TOTAL_BLOCKS_PER_DIE ; blockNo++)
		for(dieNo=0 ; dieNo<USER_DIES ; dieNo++)
		{
			reqSlotTag = GetFromFreeReqQ();

			reqPoolPtr->reqPool[reqSlotTag].reqType = REQ_TYPE_NAND;
			reqPoolPtr->reqPool[reqSlotTag].reqCode = REQ_CODE_ERASE;
			reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandAddr = REQ_OPT_NAND_ADDR_PHY_ORG;
			reqPoolPtr->reqPool[reqSlotTag].reqOpt.dataBufFormat = REQ_OPT_DATA_BUF_NONE;
			reqPoolPtr->reqPool[reqSlotTag].reqOpt.forceUnitAccess = REQ_OPT_FORCE_UNIT_ACCESS_OFF;
			reqPoolPtr->reqPool[reqSlotTag].reqOpt.blockSpace = REQ_OPT_BLOCK_SPACE_TOTAL;

			reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalCh = Vdie2PchTranslation(dieNo);
			reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalWay = Vdie2PwayTranslation(dieNo);
			reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalBlock = blockNo;
			reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalPage = 0;

			SelectLowLevelReqQ(reqSlotTag);
		}


	SyncAllLowLevelReqDone();
	xil_printf("Done.\r\n");
}


void UserBlockErase()
{
	unsigned int blockNo, dieNo, reqSlotTag;

	xil_printf("User block erase...wait for a minute...\r\n");

	for(blockNo=0 ; blockNo<USER_BLOCKS_PER_DIE ; blockNo++)
		for(dieNo=0 ; dieNo<USER_DIES ; dieNo++)
		{
			reqSlotTag = GetFromFreeReqQ();

			reqPoolPtr->reqPool[reqSlotTag].reqType = REQ_TYPE_NAND;
			reqPoolPtr->reqPool[reqSlotTag].reqCode = REQ_CODE_ERASE;
			reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandAddr = REQ_OPT_NAND_ADDR_PHY_ORG;
			reqPoolPtr->reqPool[reqSlotTag].reqOpt.dataBufFormat = REQ_OPT_DATA_BUF_NONE;
			reqPoolPtr->reqPool[reqSlotTag].reqOpt.forceUnitAccess = REQ_OPT_FORCE_UNIT_ACCESS_OFF;
			reqPoolPtr->reqPool[reqSlotTag].reqOpt.blockSpace = REQ_OPT_BLOCK_SPACE_MAIN;

			reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalCh = Vdie2PchTranslation(dieNo);
			reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalWay = Vdie2PwayTranslation(dieNo);
			reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalBlock = blockNo;
			reqPoolPtr->reqPool[reqSlotTag].nandInfo.physicalPage = 0;

			SelectLowLevelReqQ(reqSlotTag);
		}


	SyncAllLowLevelReqDone();
	xil_printf("Done.\r\n");
}
