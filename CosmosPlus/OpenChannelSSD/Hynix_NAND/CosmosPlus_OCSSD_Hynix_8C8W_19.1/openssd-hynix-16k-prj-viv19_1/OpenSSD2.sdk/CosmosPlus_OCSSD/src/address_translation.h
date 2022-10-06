//////////////////////////////////////////////////////////////////////////////////
// address_translation.h for Cosmos+ OpenSSD
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
// Module Name: Address Translator
// File Name: address translation.h
//
// Version: v1.0.0.oc (oc: for Open Channel SSD)
//
// Description:
//   - define parameters, data structure and functions of address translator
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.0.oc
//   - First draft
//////////////////////////////////////////////////////////////////////////////////


#ifndef ADDRESS_TRANSLATION_H_
#define ADDRESS_TRANSLATION_H_

#include "ftl_config.h"
#include "nvme/nvme.h"

#define BLOCK_STATE_NORMAL						0
#define BLOCK_STATE_BAD							1

#define DIE_STATE_BAD_BLOCK_TABLE_NOT_EXIST		0
#define DIE_STATE_BAD_BLOCK_TABLE_EXIST			1
#define DIE_STATE_BAD_BLOCK_TABLE_HOLD			2
#define DIE_STATE_BAD_BLOCK_TABLE_UPDATE		3

#define BAD_BLOCK_TABLE_MAKER_IDLE				0
#define BAD_BLOCK_TABLE_MAKER_TRIGGER			1

#define CLEAN_DATA_IN_BYTE						0xff

#define USED_PAGES_FOR_BAD_BLOCK_TABLE_PER_DIE	(TOTAL_BLOCKS_PER_DIE / BYTES_PER_DATA_REGION_OF_PAGE + 1)
#define DATA_SIZE_OF_BAD_BLOCK_TABLE_PER_DIE	(TOTAL_BLOCKS_PER_DIE)
#define START_PAGE_NO_OF_BAD_BLOCK_TABLE_BLOCK	(1)		//bad block table begins at second page for preserving a bad block mark of the block allocated to save bad block table

#define BBT_INFO_GROWN_BAD_UPDATE_NONE			0
#define BBT_INFO_GROWN_BAD_UPDATE_BOOKED		1

// virtual to physical translation
#define Vdie2PchTranslation(dieNo) ((dieNo) % (USER_CHANNELS))
#define Vdie2PwayTranslation(dieNo) ((dieNo) / (USER_CHANNELS))
#define Vpage2PlsbPageTranslation(pageNo) ((pageNo) > (0) ? (2 * (pageNo) - 1): (0))

// physical to virtual translation
#define Pcw2VdieTranslation(chNo, wayNo) ((chNo) + (wayNo) * (USER_CHANNELS))
#define PlsbPage2VPageTranslation(pageNo) ((pageNo) > (0) ? ( ((pageNo) + 1) / 2): (0))

// OCSSD physical organization to physical organization translation
#define OcpOrgPlaneBlock2PorgBlockTranslation(planeNo, blockNo)	 ((planeNo)*(MAIN_BLOCKS_PER_LUN) + (blockNo))

typedef struct _BAD_BLOCK_TABLE_INFO_ENTRY{
	unsigned int phyBlock : 16;
	unsigned int grownBadUpdate : 1;
	unsigned int reserved0 : 15;
} BAD_BLOCK_TABLE_INFO_ENTRY, *P_BAD_BLOCK_TABLE_ENTRY;

typedef struct _BAD_BLOCK_TABLE_INFO_MAP{
	BAD_BLOCK_TABLE_INFO_ENTRY bbtInfo[USER_DIES];
} BAD_BLOCK_TABLE_INFO_MAP, *P_BAD_BLOCK_TABLE_INFO_MAP;

typedef struct _PHY_BLOCK_ENTRY {
	unsigned int remappedPhyBlock : 16;
	unsigned int bad :1;
	unsigned int reserved0 :15;
} PHY_BLOCK_ENTRY, *P_PHY_BLOCK_ENTRY;

typedef struct _PHY_BLOCK_MAP {
	PHY_BLOCK_ENTRY phyBlock[USER_DIES][TOTAL_BLOCKS_PER_DIE];
} PHY_BLOCK_MAP, *P_PHY_BLOCK_MAP;


void InitPhyBlockMap();
void InitBadBlockTable();
void RecoverBadBlockTable(unsigned int tempBufAddr);
void ReadBadBlockTable(unsigned int tempBbtBufAddr[], unsigned int tempBbtBufEntrySize);
void FindBadBlock(unsigned char dieState[], unsigned int badBlockCount[], unsigned int tempBbtBufAddr[], unsigned int tempBbtBufEntrySize, unsigned int tempReadBufAddr[], unsigned int tempReadBufEntrySize);
void SaveBadBlockTable(unsigned char dieState[], unsigned int tempBbtBufAddr[], unsigned int tempBbtBufEntrySize);
void UpdatePhyBlockMapForGrownBadBlock(OCSSD_PHYSICAL_PAGE_ADDRESS* ppa);
void UpdateBadBlockTableForGrownBadBlock(unsigned int tempBufAddr);
void TotalBlockErase();
void UserBlockErase();

extern P_BAD_BLOCK_TABLE_INFO_MAP bbtInfoMapPtr;
extern P_PHY_BLOCK_MAP phyBlockMapPtr;
extern unsigned int badBlockSize;

#endif /* ADDRESS_TRANSLATION_H_ */
