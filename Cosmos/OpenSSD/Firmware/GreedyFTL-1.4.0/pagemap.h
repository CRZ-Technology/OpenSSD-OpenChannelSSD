//////////////////////////////////////////////////////////////////////////////////
// page_map.h for Cosmos OpenSSD
// Copyright (c) 2014 Hanyang University ENC Lab.
// Contributed by Yong Ho Song <yhsong@enc.hanyang.ac.kr>
//                Gyeongyong Lee <gylee@enc.hanyang.ac.kr>
//			      Jaewook Kwak <jwkwak@enc.hanyang.ac.kr>
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
// Design Name: Greedy FTL
// Module Name: Page Mapping
// File Name: page_map.h
//
// Version: v2.3.0
//
// Description:
//   - define data structure of map tables
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v2.3.0
//   - add die buffer to support channel/way interleaving between different write requests
//
// * v2.2.0
//   - meta data flush
//   - meta data recovery
//
// * v2.1.0
//   - add page buffer to decrease formatting time
//
// * v2.0.1
//   - add constant to check bad blocks
//
// * v2.0.0
//   - modify/add tables to support garbage collection
//
// * v1.1.0
//   - add bad flag
//
// * v1.0.0
//   - First draft
//////////////////////////////////////////////////////////////////////////////////

#ifndef PAGEMAP_H_
#define PAGEMAP_H_

#include "host_controller.h"
#include "ftl.h"

struct pmEntry {
	u32 ppn;	// Physical Page Number (PPN) to which a logical page is mapped

	u32 valid	: 1;	// validity of a physical page
	u32 lpn		: 31;	// Logical Page Number (LPN) of a physical page
};

struct pmArray {
	struct pmEntry pmEntry[DIE_NUM][PAGE_NUM_PER_DIE];
};

struct bmEntry {
	u32 bad				: 1;
	u32 free			: 1;
	u32 eraseCnt		: 30;
	u32 invalidPageCnt	: 16;
	u32 currentPage		: 16;
	u32 prevBlock;
	u32 nextBlock;
};

struct bmArray {
	struct bmEntry bmEntry[DIE_NUM][BLOCK_NUM_PER_DIE];
};

struct dieEntry {
	u32 currentBlock;
	u32 freeBlock;
};

struct dieArray {
	struct dieEntry dieEntry[DIE_NUM];
};

struct gcEntry {
	u32 head;
	u32 tail;
};

struct gcArray {
	struct gcEntry gcEntry[DIE_NUM][PAGE_NUM_PER_BLOCK+1];
};

struct ciArray {
	u32 ciEntry[DIE_NUM];
};

struct ciBufArray {
	u32 ciBufEntry[BLOCK_NUM_PER_DIE][PAGE_NUM_PER_BLOCK];
};
struct ciBufArray* ciBufMap;

struct pmArray* pageMap;
struct bmArray* blockMap;
struct dieArray* dieBlock;
struct gcArray* gcMap;
struct ciArray* ciMap;

// memory addresses for map tables
#define PAGE_MAP_ADDR	(RAM_DISK_BASE_ADDR + (0x1 << 27))
#define BLOCK_MAP_ADDR	(PAGE_MAP_ADDR + sizeof(struct pmEntry) * PAGE_NUM_PER_SSD)
#define DIE_MAP_ADDR	(BLOCK_MAP_ADDR + sizeof(struct bmEntry) * BLOCK_NUM_PER_SSD)
#define GC_MAP_ADDR		(DIE_MAP_ADDR + sizeof(struct dieEntry) * DIE_NUM)
#define CI_ADDR			(GC_MAP_ADDR + sizeof(struct gcEntry) * DIE_NUM*(PAGE_NUM_PER_BLOCK + 1))

// Die buffer to guarantee completion of each die
#define DIE_BUFFER_ADDR			(CI_ADDR + sizeof(u32)*DIE_NUM)

// memory address of buffer for GC migration
#define GC_BUFFER_ADDR			(DIE_BUFFER_ADDR + DIE_NUM*PAGE_SIZE)

// Closed index buffer to recover page map
#define CI_BUF_MAP_ADDR			(RAM_DISK_BASE_ADDR + PAGE_SIZE)

#define BAD_BLOCK_MARK_POSITION	(7972)
#define METADATA_BLOCK_PPN	 	0x00000000 // write metadata to Block0 of Die0
#define EMPTY_4BYTE				0xffffffff
#define EMPTY_BYTE				0xff


extern u32 BAD_BLOCK_SIZE;

// buffered LPN in the page buffer
u32 pageBufLpn;

void InitPageMap();
void InitBlockMap();
void InitDieBlock();
void InitGcMap();
void InitCiMap();

int FindFreePage(u32 dieNo);
int PrePmRead(P_HOST_CMD hostCmd, u32 bufferAddr);
int PmRead(P_HOST_CMD hostCmd, u32 bufferAddr);
int PmWrite(P_HOST_CMD hostCmd, u32 bufferAddr);

void EraseBlock(u32 dieNo, u32 blockNo);
u32 GarbageCollection(u32 dieNo);

void CheckBadBlock();
int CountBits(u8 i);

void FlushPageBuf(u32 lpn, u32 bufAddr);
void UpdateMetaForOverwrite(u32 lpn);
//void MvData(u32* src, u32* dst, u32 sectSize);

void PageMapFlushForCurrentBlock(u32 dieNo,  u32 tempBuffer);
void PageMapFlushForOpenBlock();
void MetadataFlush();
int CheckMetadata();
void RecoverMetadata();
void BadBlockTableBackup();
void RecoverPageMap();

#endif /* PAGEMAP_H_ */
