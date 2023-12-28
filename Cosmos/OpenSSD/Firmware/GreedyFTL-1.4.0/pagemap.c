//////////////////////////////////////////////////////////////////////////////////
// page_map.c for Cosmos OpenSSD
// Copyright (c) 2014 Hanyang University ENC Lab.
// Contributed by Yong Ho Song <yhsong@enc.hanyang.ac.kr>
//                Gyeongyong Lee <gylee@enc.hanyang.ac.kr>
//				  Jaewook Kwak <jwkwak@@enc.hanyang.ac.kr>
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
// File Name: page_map.c
//
// Version: v2.4.0
//
// Description:
//   - initialize map tables
//   - read/write request
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v2.4.0
//   - support channel/way interleaving between different write requests
//
// * v2.3.0
//   - meta data flush
//   - meta data recovery
//
// * v2.2.0
//   - page buffer utilization in r/w
//   - code of metadata update for overwrite is extracted into the function UpdateMetaForOverwrite()
//
// * v2.1.0
//   - add a function to check bad block
//
// * v2.0.1
//   - replace bitwise operation with decimal operation
//
// * v2.0.0
//   - add garbage collection
//
// * v1.1.0
//   - support static bad block management
//
// * v1.0.0
//   - First draft
//////////////////////////////////////////////////////////////////////////////////

#include "pagemap.h"

#include <assert.h>

#include "lld.h"

#include <string.h>

u32 BAD_BLOCK_SIZE;

void InitPageMap()
{
	pageMap = (struct pmArray*)(PAGE_MAP_ADDR);

//	xil_printf("PAGE_MAP_ADDR : %8x\r\n", PAGE_MAP_ADDR);

	// page status initialization, allows lpn, ppn access
	int i, j;
	for(i=0 ; i<DIE_NUM ; i++)
	{
		for(j=0 ; j<PAGE_NUM_PER_DIE ; j++)
		{
			pageMap->pmEntry[i][j].ppn = 0xffffffff;
			pageMap->pmEntry[i][j].valid = 1;
			pageMap->pmEntry[i][j].lpn = 0x7fffffff;
		}
	}

	xil_printf("[ ssd page map initialized. ]\r\n");
}
void InitBlockMap()
{
	blockMap = (struct bmArray*)(BLOCK_MAP_ADDR);

	CheckBadBlock();

	// block status initialization except bad block marks, allows only physical access
	int i, j;
	for(i=0 ; i<BLOCK_NUM_PER_DIE ; i++)
	{
		for(j=0 ; j<DIE_NUM ; j++)
		{
			blockMap->bmEntry[j][i].free = 1;
			blockMap->bmEntry[j][i].eraseCnt = 0;
			blockMap->bmEntry[j][i].invalidPageCnt = 0;
			blockMap->bmEntry[j][i].currentPage = 0x0;
			blockMap->bmEntry[j][i].prevBlock = 0xffffffff;
			blockMap->bmEntry[j][i].nextBlock = 0xffffffff;
		}
	}

	for (i = 0; i < BLOCK_NUM_PER_DIE; ++i)
		for (j = 0; j < DIE_NUM; ++j)
			if (!blockMap->bmEntry[j][i].bad && ((i != METADATA_BLOCK_PPN % DIE_NUM)|| (j != (METADATA_BLOCK_PPN / DIE_NUM) / PAGE_NUM_PER_BLOCK)))
			{
				// initial block erase
				WaitWayFree(j % CHANNEL_NUM, j / CHANNEL_NUM);
				SsdErase(j % CHANNEL_NUM, j / CHANNEL_NUM, i);
			}


	xil_printf("[ ssd entire block erasure completed. ]\r\n");

	for(i=0 ; i<DIE_NUM ; i++)
	{
		// initially, 0th block of each die is allocated for storage start point
		blockMap->bmEntry[i][0].free = 0;
		blockMap->bmEntry[i][0].currentPage = 0xffff;
		// initially, the last block of each die is reserved as free block for GC migration
		blockMap->bmEntry[i][BLOCK_NUM_PER_DIE-1].free = 0;
	}
	//block0 of die0 is metadata block
	blockMap->bmEntry[0][1].free = 0;
	blockMap->bmEntry[0][1].currentPage = 0xffff;

	xil_printf("[ ssd block map initialized. ]\r\n");
}

void CheckBadBlock()
{
	blockMap = (struct bmArray*)(BLOCK_MAP_ADDR);
	u32 dieNo, diePpn, blockNo, tempBuffer, badBlockCount;
	u8* shifter;
	u8* markPointer;
	int loop;

	markPointer = (u8*)(RAM_DISK_BASE_ADDR + BAD_BLOCK_MARK_POSITION);

	//read bad block table
	loop = DIE_NUM *BLOCK_NUM_PER_DIE;
	dieNo = METADATA_BLOCK_PPN % DIE_NUM;
	diePpn = METADATA_BLOCK_PPN / DIE_NUM;

	tempBuffer = RAM_DISK_BASE_ADDR;
	while(loop > 0)
	{
		SsdRead(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM, diePpn, tempBuffer);
		WaitWayFree(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);

		diePpn++;
		tempBuffer += PAGE_SIZE;
		loop -= PAGE_SIZE;
	}

	shifter= (u8*)(RAM_DISK_BASE_ADDR);
	badBlockCount = 0;
	if(*shifter == EMPTY_BYTE)	//check whether bad block marks exist
	{
		// static bad block management
		for(blockNo=0; blockNo < BLOCK_NUM_PER_DIE; blockNo++)
			for(dieNo=0; dieNo < DIE_NUM; dieNo++)
			{
				blockMap->bmEntry[dieNo][blockNo].bad = 0;

				SsdRead(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM, (blockNo*PAGE_NUM_PER_BLOCK+1), RAM_DISK_BASE_ADDR);
				WaitWayFree(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);

				if(CountBits(*markPointer)<4)
				{
					xil_printf("Bad block is detected on: Ch %d Way %d Block %d \r\n",dieNo%CHANNEL_NUM, dieNo/CHANNEL_NUM, blockNo);
					blockMap->bmEntry[dieNo][blockNo].bad = 1;
					badBlockCount++;
				}
				shifter= (u8*)(GC_BUFFER_ADDR + blockNo + dieNo *BLOCK_NUM_PER_DIE );//gather badblock mark at GC buffer
				*shifter = blockMap->bmEntry[dieNo][blockNo].bad;
			}

		// save bad block mark
		loop = DIE_NUM *BLOCK_NUM_PER_DIE;
		dieNo = METADATA_BLOCK_PPN % DIE_NUM;
		diePpn = METADATA_BLOCK_PPN / DIE_NUM;
		blockNo = diePpn / PAGE_NUM_PER_BLOCK;

		SsdErase(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM, blockNo);
		WaitWayFree(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);

		tempBuffer = GC_BUFFER_ADDR;
		while(loop>0)
		{
			WaitWayFree(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);
			SsdProgram(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM, diePpn, tempBuffer);
			diePpn++;
			tempBuffer += PAGE_SIZE;
			loop -= PAGE_SIZE;
		}
		xil_printf("[ Bad block Marks are saved. ]\r\n");
	}

	else	//read existing bad block marks
	{
		for(blockNo=0; blockNo<BLOCK_NUM_PER_DIE; blockNo++)
			for(dieNo=0; dieNo<DIE_NUM; dieNo++)
			{
				shifter = (u8*)(RAM_DISK_BASE_ADDR + blockNo + dieNo *BLOCK_NUM_PER_DIE );
				blockMap->bmEntry[dieNo][blockNo].bad = *shifter;
				if(blockMap->bmEntry[dieNo][blockNo].bad)
				{
					xil_printf("Bad block mark is checked at: Ch %d Way %d Block %d  \r\n",dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM, blockNo );
					badBlockCount++;
				}
			}

		xil_printf("[ Bad blocks are checked. ]\r\n");
	}

	// save bad block size
	BAD_BLOCK_SIZE = badBlockCount * BLOCK_SIZE_MB;
}

int CountBits(u8 i)
{
	int count;
	count=0;
	while(i!=0)
	{
		count+=i%2;
		i/=2;
	}
	return count;
}


void InitDieBlock()
{
	dieBlock = (struct dieArray*)(DIE_MAP_ADDR);

//	xil_printf("DIE_MAP_ADDR : %8x\r\n", DIE_MAP_ADDR);

	int i;
	for(i=0 ; i<DIE_NUM ; i++)
	{
		if(i==0) // prevent to write at meta data block
			dieBlock->dieEntry[i].currentBlock = 1;
		else
			dieBlock->dieEntry[i].currentBlock = 0;
		dieBlock->dieEntry[i].freeBlock = BLOCK_NUM_PER_DIE - 1;
	}

	xil_printf("[ ssd die map initialized. ]\r\n");
}

void InitGcMap()
{
	gcMap = (struct gcArray*)(GC_MAP_ADDR);

//	xil_printf("GC_MAP_ADDR : %8x\r\n", GC_MAP_ADDR);

	// gc table status initialization
	int i, j;
	for(i=0 ; i<DIE_NUM ; i++)
	{
		for(j=0 ; j<PAGE_NUM_PER_BLOCK+1 ; j++)
		{
			gcMap->gcEntry[i][j].head = 0xffffffff;
			gcMap->gcEntry[i][j].tail = 0xffffffff;
		}
	}

	xil_printf("[ ssd gc map initialized. ]\r\n");
}

void InitCiMap()
{
	ciMap = (struct ciArray*)(CI_ADDR);

	int i;
	for(i=0; i<DIE_NUM; i++)
		ciMap->ciEntry[i] = 0;

	xil_printf("[ ssd ci map initialized. ]\r\n");
}


int FindFreePage(u32 dieNo)
{
	blockMap = (struct bmArray*)(BLOCK_MAP_ADDR);
	dieBlock = (struct dieArray*)(DIE_MAP_ADDR);

	if(blockMap->bmEntry[dieNo][dieBlock->dieEntry[dieNo].currentBlock].currentPage == (PAGE_NUM_PER_BLOCK-2)) // last page is a spare for pageMap of current block
	{
		PageMapFlushForCurrentBlock(dieNo, GC_BUFFER_ADDR);

		dieBlock->dieEntry[dieNo].currentBlock++;

		int i;
		for(i=dieBlock->dieEntry[dieNo].currentBlock ; i<(dieBlock->dieEntry[dieNo].currentBlock + BLOCK_NUM_PER_DIE) ; i++)
		{
			if((blockMap->bmEntry[dieNo][i % BLOCK_NUM_PER_DIE].free) && (!blockMap->bmEntry[dieNo][i % BLOCK_NUM_PER_DIE].bad))
			{
				blockMap->bmEntry[dieNo][i % BLOCK_NUM_PER_DIE].free = 0;
				dieBlock->dieEntry[dieNo].currentBlock = i % BLOCK_NUM_PER_DIE;

//				xil_printf("allocated free block: %4d at %d-%d\r\n", dieBlock->dieEntry[dieNo].currentBlock, dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);

				return dieBlock->dieEntry[dieNo].currentBlock * PAGE_NUM_PER_BLOCK;
			}
		}

		dieBlock->dieEntry[dieNo].currentBlock = GarbageCollection(dieNo);

//		xil_printf("allocated free block by GC: %4d at %d-%d\r\n", dieBlock->dieEntry[dieNo].currentBlock, dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);

		return (dieBlock->dieEntry[dieNo].currentBlock * PAGE_NUM_PER_BLOCK) + blockMap->bmEntry[dieNo][dieBlock->dieEntry[dieNo].currentBlock].currentPage;
	}
	else
	{
		blockMap->bmEntry[dieNo][dieBlock->dieEntry[dieNo].currentBlock].currentPage++;
		return (dieBlock->dieEntry[dieNo].currentBlock * PAGE_NUM_PER_BLOCK) + blockMap->bmEntry[dieNo][dieBlock->dieEntry[dieNo].currentBlock].currentPage;
	}
}

int PrePmRead(P_HOST_CMD hostCmd, u32 bufferAddr)
{
	u32 lpn;
	u32 dieNo;
	u32 dieLpn;

	pageMap = (struct pmArray*)(PAGE_MAP_ADDR);
	lpn = hostCmd->reqInfo.CurSect / SECTOR_NUM_PER_PAGE;

	if (lpn != pageBufLpn)
	{
		FlushPageBuf(pageBufLpn, bufferAddr);

		if((((hostCmd->reqInfo.CurSect)%SECTOR_NUM_PER_PAGE) != 0)
					|| ((hostCmd->reqInfo.CurSect / SECTOR_NUM_PER_PAGE) == (((hostCmd->reqInfo.CurSect)+(hostCmd->reqInfo.ReqSect))/SECTOR_NUM_PER_PAGE)))
		{
			dieNo = lpn % DIE_NUM;
			dieLpn = lpn / DIE_NUM;

			if(pageMap->pmEntry[dieNo][dieLpn].ppn != 0xffffffff)
			{
//				xil_printf("PrePmRead pdie, ppn = %d, %d\r\n", dieNo, pageMap->pmEntry[dieNo][dieLpn].ppn);

				WaitWayFree(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);
				SsdRead(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM, pageMap->pmEntry[dieNo][dieLpn].ppn, bufferAddr);
				WaitWayFree(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);

				pageBufLpn = lpn;
			}
		}
	}

	if(((((hostCmd->reqInfo.CurSect)+(hostCmd->reqInfo.ReqSect))% SECTOR_NUM_PER_PAGE) != 0)
			&& ((hostCmd->reqInfo.CurSect / SECTOR_NUM_PER_PAGE) != (((hostCmd->reqInfo.CurSect)+(hostCmd->reqInfo.ReqSect))/SECTOR_NUM_PER_PAGE)))
	{
		lpn = ((hostCmd->reqInfo.CurSect)+(hostCmd->reqInfo.ReqSect))/SECTOR_NUM_PER_PAGE;
		dieNo = lpn % DIE_NUM;
		dieLpn = lpn / DIE_NUM;

		if(pageMap->pmEntry[dieNo][dieLpn].ppn != 0xffffffff)
		{

//			xil_printf("PrePmRead pdie, ppn = %d, %d\r\n", dieNo, pageMap->pmEntry[dieNo][dieLpn].ppn);

			WaitWayFree(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);
			SsdRead(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM, pageMap->pmEntry[dieNo][dieLpn].ppn,
					bufferAddr + ((((hostCmd->reqInfo.CurSect)% SECTOR_NUM_PER_PAGE) + hostCmd->reqInfo.ReqSect)/SECTOR_NUM_PER_PAGE*PAGE_SIZE));
			WaitWayFree(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);
		}
	}

	return 0;
}

int PmRead(P_HOST_CMD hostCmd, u32 bufferAddr)
{
	u32 tempBuffer = bufferAddr;

	u32 lpn = hostCmd->reqInfo.CurSect / SECTOR_NUM_PER_PAGE;
	int loop = (hostCmd->reqInfo.CurSect % SECTOR_NUM_PER_PAGE) + hostCmd->reqInfo.ReqSect;

	u32 dieNo;
	u32 dieLpn;

	pageMap = (struct pmArray*)(PAGE_MAP_ADDR);

	if (lpn == pageBufLpn)
	{
		lpn++;
		tempBuffer += PAGE_SIZE;
		loop -= SECTOR_NUM_PER_PAGE;
	}
	else
	{
		dieNo = lpn % DIE_NUM;
		dieLpn = lpn / DIE_NUM;

		if (pageMap->pmEntry[dieNo][dieLpn].ppn != 0xffffffff)
		{
			FlushPageBuf(pageBufLpn, bufferAddr);
			pageBufLpn = lpn;
		}
	}

	while (loop > 0)
	{
		dieNo = lpn % DIE_NUM;
		dieLpn = lpn / DIE_NUM;

		//		xil_printf("requested read lpn = %d\r\n", lpn);
		//		xil_printf("read pdie, ppn = %d, %d\r\n", dieNo, pageMap->pmEntry[dieNo][dieLpn].ppn);

		if (pageMap->pmEntry[dieNo][dieLpn].ppn != 0xffffffff)
		{
			//			xil_printf("read at (%d, %2d, %4x)\r\n", dieNo%CHANNEL_NUM, dieNo/CHANNEL_NUM, pageMap->pmEntry[dieNo][dieLpn].ppn);

			WaitWayFree(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);
			SsdRead(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM, pageMap->pmEntry[dieNo][dieLpn].ppn, tempBuffer);
		}

		lpn++;
		tempBuffer += PAGE_SIZE;
		loop -= SECTOR_NUM_PER_PAGE;
	}

	int i;
	for (i = 0; i<DIE_NUM; ++i)
		WaitWayFree(i%CHANNEL_NUM, i / CHANNEL_NUM);

	return 0;
}

int PmWrite(P_HOST_CMD hostCmd, u32 bufferAddr)
{
	u32 tempBuffer = bufferAddr;
	
	u32 lpn = hostCmd->reqInfo.CurSect / SECTOR_NUM_PER_PAGE;
	
	int loop = (hostCmd->reqInfo.CurSect % SECTOR_NUM_PER_PAGE) + hostCmd->reqInfo.ReqSect;
	
	u32 dieNo;
	u32 dieLpn;
	u32 freePageNo;
	u32 dieBuffer;

	pageMap = (struct pmArray*)(PAGE_MAP_ADDR);

	// page buffer utilization
	if (lpn != pageBufLpn)
		pageBufLpn = lpn;

	UpdateMetaForOverwrite(lpn);

	// pageMap update
	dieNo = lpn % DIE_NUM;
	dieLpn = lpn / DIE_NUM;
	pageMap->pmEntry[dieNo][dieLpn].ppn = 0xffffffff;

	lpn++;
	tempBuffer += PAGE_SIZE;
	loop -= SECTOR_NUM_PER_PAGE;

	while(loop > 0)
	{
		dieNo = lpn % DIE_NUM;
		dieLpn = lpn / DIE_NUM;
		freePageNo = FindFreePage(dieNo);

//		xil_printf("free page: %6d(%d, %d, %4d)\r\n", freePageNo, dieNo%CHANNEL_NUM, dieNo/CHANNEL_NUM, freePageNo/PAGE_NUM_PER_BLOCK);

		WaitWayFree(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);
		dieBuffer = DIE_BUFFER_ADDR + dieNo*PAGE_SIZE;
		memcpy((u32*)dieBuffer,(u32*)tempBuffer,PAGE_SIZE);
		SsdProgram(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM, freePageNo, dieBuffer);
		
		UpdateMetaForOverwrite(lpn);

		// pageMap update
		pageMap->pmEntry[dieNo][dieLpn].ppn = freePageNo;
		pageMap->pmEntry[dieNo][freePageNo].lpn = dieLpn;

		lpn++;
		tempBuffer += PAGE_SIZE;
		loop -= SECTOR_NUM_PER_PAGE;
	}

	return 0;
}

void EraseBlock(u32 dieNo, u32 blockNo)
{
	pageMap = (struct pmArray*)(PAGE_MAP_ADDR);
	blockMap = (struct bmArray*)(BLOCK_MAP_ADDR);

	// block map indicated blockNo initialization
	blockMap->bmEntry[dieNo][blockNo].free = 1;
	blockMap->bmEntry[dieNo][blockNo].eraseCnt++;
	blockMap->bmEntry[dieNo][blockNo].invalidPageCnt = 0;
	blockMap->bmEntry[dieNo][blockNo].currentPage = 0x0;
	blockMap->bmEntry[dieNo][blockNo].prevBlock = 0xffffffff;
	blockMap->bmEntry[dieNo][blockNo].nextBlock = 0xffffffff;

	int i;
	for(i=0 ; i<PAGE_NUM_PER_BLOCK ; i++)
	{
		pageMap->pmEntry[dieNo][(blockNo * PAGE_NUM_PER_BLOCK) + i].valid = 1;
		pageMap->pmEntry[dieNo][(blockNo * PAGE_NUM_PER_BLOCK) + i].lpn = 0x7fffffff;
	}

	WaitWayFree(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);
	SsdErase(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM, blockNo);
}

u32 GarbageCollection(u32 dieNo)
{
//	xil_printf("GC occurs!\r\n");

	pageMap = (struct pmArray*)(PAGE_MAP_ADDR);
	blockMap = (struct bmArray*)(BLOCK_MAP_ADDR);
	dieBlock = (struct dieArray*)(DIE_MAP_ADDR);
	gcMap = (struct gcArray*)(GC_MAP_ADDR);

	int i;
	for(i=PAGE_NUM_PER_BLOCK ; i>0 ; i--)
	{
		if(gcMap->gcEntry[dieNo][i].head != 0xffffffff)
		{
			u32 victimBlock = gcMap->gcEntry[dieNo][i].head;	// GC victim block

			// link setting
			if(blockMap->bmEntry[dieNo][victimBlock].nextBlock != 0xffffffff)
			{
				gcMap->gcEntry[dieNo][i].head = blockMap->bmEntry[dieNo][victimBlock].nextBlock;
				blockMap->bmEntry[dieNo][blockMap->bmEntry[dieNo][victimBlock].nextBlock].prevBlock = 0xffffffff;
			}
			else
			{
				gcMap->gcEntry[dieNo][i].head = 0xffffffff;
				gcMap->gcEntry[dieNo][i].tail = 0xffffffff;
			}

			// copy valid pages from the victim block to the free block
			if(i != PAGE_NUM_PER_BLOCK)
			{
				int j;
				for(j=0 ; j<PAGE_NUM_PER_BLOCK ; j++)
				{
					if(pageMap->pmEntry[dieNo][(victimBlock * PAGE_NUM_PER_BLOCK) + j].valid)
					{
						// page copy process
						u32 validPage = victimBlock*PAGE_NUM_PER_BLOCK + j;
						u32 freeBlock = dieBlock->dieEntry[dieNo].freeBlock;
						u32 freePage = freeBlock*PAGE_NUM_PER_BLOCK + blockMap->bmEntry[dieNo][freeBlock].currentPage;

						WaitWayFree(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);
						SsdRead(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM, validPage, GC_BUFFER_ADDR);
						WaitWayFree(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);
						SsdProgram(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM, freePage, GC_BUFFER_ADDR);

						// pageMap, blockMap update
						u32 lpn = pageMap->pmEntry[dieNo][validPage].lpn;

						pageMap->pmEntry[dieNo][lpn].ppn = freePage;
						pageMap->pmEntry[dieNo][freePage].lpn = lpn;
						blockMap->bmEntry[dieNo][freeBlock].currentPage++;
					}
				}
			}

			// erased victim block becomes the free block for GC migration
			EraseBlock(dieNo, victimBlock);
			blockMap->bmEntry[dieNo][victimBlock].free = 0;

			u32 currentBlock = dieBlock->dieEntry[dieNo].freeBlock;
			dieBlock->dieEntry[dieNo].freeBlock = victimBlock;

			return currentBlock;	// atomic GC completion
		}
	}

	// no free space anymore
	assert(!"[WARNING] There are no free blocks. Abort terminate this ssd. [WARNING]");
	return 1;
}

void FlushPageBuf(u32 lpn, u32 bufAddr)
{
	if (lpn == 0xffffffff)
		return;

	u32 dieNo = lpn % DIE_NUM;
	u32 dieLpn = lpn / DIE_NUM;
	u32 ppn = pageMap->pmEntry[dieNo][dieLpn].ppn;
	u32 dieBuffer;

	if (ppn == 0xffffffff)
	{
		u32 freePageNo = FindFreePage(dieNo);

//		xil_printf("free page: %6d(%d, %d, %4d)\r\n", freePageNo, dieNo%CHANNEL_NUM, dieNo/CHANNEL_NUM, freePageNo/PAGE_NUM_PER_BLOCK);

		WaitWayFree(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);
		dieBuffer = DIE_BUFFER_ADDR + dieNo*PAGE_SIZE;
		memcpy((u32*)dieBuffer,(u32*)bufAddr,PAGE_SIZE);
		SsdProgram(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM, freePageNo, dieBuffer);
		//WaitWayFree(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);

		// pageMap update
		pageMap->pmEntry[dieNo][dieLpn].ppn = freePageNo;
		pageMap->pmEntry[dieNo][freePageNo].lpn = dieLpn;
	}
}

void UpdateMetaForOverwrite(u32 lpn)
{
	pageMap = (struct pmArray*)(PAGE_MAP_ADDR);
	blockMap = (struct bmArray*)(BLOCK_MAP_ADDR);
	gcMap = (struct gcArray*)(GC_MAP_ADDR);

	u32 dieNo = lpn % DIE_NUM;
	u32 dieLpn = lpn / DIE_NUM;

	if(pageMap->pmEntry[dieNo][dieLpn].ppn != 0xffffffff)
	{
		// GC victim block list management
		u32 diePbn = pageMap->pmEntry[dieNo][dieLpn].ppn / PAGE_NUM_PER_BLOCK;

		// unlink
		if((blockMap->bmEntry[dieNo][diePbn].nextBlock != 0xffffffff) && (blockMap->bmEntry[dieNo][diePbn].prevBlock != 0xffffffff))
		{
			blockMap->bmEntry[dieNo][blockMap->bmEntry[dieNo][diePbn].prevBlock].nextBlock = blockMap->bmEntry[dieNo][diePbn].nextBlock;
			blockMap->bmEntry[dieNo][blockMap->bmEntry[dieNo][diePbn].nextBlock].prevBlock = blockMap->bmEntry[dieNo][diePbn].prevBlock;
		}
		else if((blockMap->bmEntry[dieNo][diePbn].nextBlock == 0xffffffff) && (blockMap->bmEntry[dieNo][diePbn].prevBlock != 0xffffffff))
		{
			blockMap->bmEntry[dieNo][blockMap->bmEntry[dieNo][diePbn].prevBlock].nextBlock = 0xffffffff;
			gcMap->gcEntry[dieNo][blockMap->bmEntry[dieNo][diePbn].invalidPageCnt].tail = blockMap->bmEntry[dieNo][diePbn].prevBlock;
		}
		else if((blockMap->bmEntry[dieNo][diePbn].nextBlock != 0xffffffff) && (blockMap->bmEntry[dieNo][diePbn].prevBlock == 0xffffffff))
		{
			blockMap->bmEntry[dieNo][blockMap->bmEntry[dieNo][diePbn].nextBlock].prevBlock = 0xffffffff;
			gcMap->gcEntry[dieNo][blockMap->bmEntry[dieNo][diePbn].invalidPageCnt].head = blockMap->bmEntry[dieNo][diePbn].nextBlock;
		}
		else
		{
			gcMap->gcEntry[dieNo][blockMap->bmEntry[dieNo][diePbn].invalidPageCnt].head = 0xffffffff;
			gcMap->gcEntry[dieNo][blockMap->bmEntry[dieNo][diePbn].invalidPageCnt].tail = 0xffffffff;
		}

//		xil_printf("[unlink] dieNo = %d, invalidPageCnt= %d, diePbn= %d, blockMap.prevBlock= %d, blockMap.nextBlock= %d, gcMap.head= %d, gcMap.tail= %d\r\n", dieNo, blockMap->bmEntry[dieNo][diePbn].invalidPageCnt, diePbn, blockMap->bmEntry[dieNo][diePbn].prevBlock, blockMap->bmEntry[dieNo][diePbn].nextBlock, gcMap->gcEntry[dieNo][blockMap->bmEntry[dieNo][diePbn].invalidPageCnt].head, gcMap->gcEntry[dieNo][blockMap->bmEntry[dieNo][diePbn].invalidPageCnt].tail);

		// invalidation update
		pageMap->pmEntry[dieNo][pageMap->pmEntry[dieNo][dieLpn].ppn].valid = 0;
		blockMap->bmEntry[dieNo][diePbn].invalidPageCnt++;

		// insertion
		if(gcMap->gcEntry[dieNo][blockMap->bmEntry[dieNo][diePbn].invalidPageCnt].tail != 0xffffffff)
		{
			blockMap->bmEntry[dieNo][diePbn].prevBlock = gcMap->gcEntry[dieNo][blockMap->bmEntry[dieNo][diePbn].invalidPageCnt].tail;
			blockMap->bmEntry[dieNo][diePbn].nextBlock = 0xffffffff;
			blockMap->bmEntry[dieNo][gcMap->gcEntry[dieNo][blockMap->bmEntry[dieNo][diePbn].invalidPageCnt].tail].nextBlock = diePbn;
			gcMap->gcEntry[dieNo][blockMap->bmEntry[dieNo][diePbn].invalidPageCnt].tail = diePbn;
		}
		else
		{
			blockMap->bmEntry[dieNo][diePbn].prevBlock = 0xffffffff;
			blockMap->bmEntry[dieNo][diePbn].nextBlock = 0xffffffff;
			gcMap->gcEntry[dieNo][blockMap->bmEntry[dieNo][diePbn].invalidPageCnt].head = diePbn;
			gcMap->gcEntry[dieNo][blockMap->bmEntry[dieNo][diePbn].invalidPageCnt].tail = diePbn;
		}
	}
}

//void MvData(u32* src, u32* dst, u32 sectSize)
//{
//	int i;
//	for (i = 0; i < sectSize*(SECTOR_SIZE/4); ++i)
//		dst[i] = src[i];
//}

void PageMapFlushForCurrentBlock(u32 dieNo, u32 tempBuffer) //save page map of current block
{
	u32 pmAddrForCurrentBlock;
	u32* shifter;
	u32* pmDataBuf;
	int pageCount;

	pageMap = (struct pmArray*)(PAGE_MAP_ADDR);
	blockMap = (struct bmArray*)(BLOCK_MAP_ADDR);
	dieBlock = (struct dieArray*)(DIE_MAP_ADDR);
	ciMap = (struct ciArray*)(CI_ADDR);

	if(blockMap->bmEntry[dieNo][dieBlock->dieEntry[dieNo].currentBlock].currentPage!=0xffff)
	{
		blockMap->bmEntry[dieNo][dieBlock->dieEntry[dieNo].currentBlock].currentPage++;
		pageMap->pmEntry[dieNo][(dieBlock->dieEntry[dieNo].currentBlock * PAGE_NUM_PER_BLOCK) + blockMap->bmEntry[dieNo][dieBlock->dieEntry[dieNo].currentBlock].currentPage].valid = 0;
		pmAddrForCurrentBlock = PAGE_MAP_ADDR + 2*sizeof(u32)*(dieNo*PAGE_NUM_PER_DIE + (dieBlock->dieEntry[dieNo].currentBlock)*PAGE_NUM_PER_BLOCK);

		for(pageCount=0; pageCount<blockMap->bmEntry[dieNo][dieBlock->dieEntry[dieNo].currentBlock].currentPage; pageCount++)
		{
			shifter = (u32*)(pmAddrForCurrentBlock + 2*sizeof(u32)*pageCount+sizeof(u32)); // to remove ppn
			pmDataBuf = (u32*)(tempBuffer + pageCount*sizeof(u32));
			*pmDataBuf = *shifter;
		}
		pmDataBuf = (u32*)(tempBuffer + PAGE_NUM_PER_BLOCK * sizeof(u32));
		*pmDataBuf = ++ciMap->ciEntry[dieNo];	// insert closed index

		WaitWayFree(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);
		SsdProgram(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM, ((dieBlock->dieEntry[dieNo].currentBlock * PAGE_NUM_PER_BLOCK)
											+ blockMap->bmEntry[dieNo][dieBlock->dieEntry[dieNo].currentBlock].currentPage), tempBuffer);
		WaitWayFree(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);
	}
}

void PageMapFlushForOpenBlock() //save page map of open block
{
	u32 dieNo;

	// close open-block by writing pageMap
	for(dieNo=0; dieNo<DIE_NUM; dieNo++)
	{
		PageMapFlushForCurrentBlock(dieNo, GC_BUFFER_ADDR);
		//adjust current page for next FindFreePage
		if(blockMap->bmEntry[dieNo][dieBlock->dieEntry[dieNo].currentBlock].currentPage == (PAGE_NUM_PER_BLOCK - 1))
		{
			//find free block
			xil_printf("[ Open block(%d die %d block) becomes closed block. ]\r\n", dieNo,dieBlock->dieEntry[dieNo].currentBlock);

			dieBlock->dieEntry[dieNo].currentBlock++;
			int i;
			for(i=dieBlock->dieEntry[dieNo].currentBlock ; i<(dieBlock->dieEntry[dieNo].currentBlock + BLOCK_NUM_PER_DIE) ; i++)
			{
				if((blockMap->bmEntry[dieNo][i % BLOCK_NUM_PER_DIE].free) && (!blockMap->bmEntry[dieNo][i % BLOCK_NUM_PER_DIE].bad))
				{
					blockMap->bmEntry[dieNo][i % BLOCK_NUM_PER_DIE].free = 0;
					dieBlock->dieEntry[dieNo].currentBlock = i % BLOCK_NUM_PER_DIE;

					blockMap->bmEntry[dieNo][dieBlock->dieEntry[dieNo].currentBlock].currentPage = 0xffff;
					break;
				}
			}
			if(i==(dieBlock->dieEntry[dieNo].currentBlock + BLOCK_NUM_PER_DIE))
			{
				dieBlock->dieEntry[dieNo].currentBlock = GarbageCollection(dieNo);
				--blockMap->bmEntry[dieNo][dieBlock->dieEntry[dieNo].currentBlock].currentPage;
				PageMapFlushForCurrentBlock(dieNo, GC_BUFFER_ADDR);
			}
		}
	}
	xil_printf("[ Close open-block by writing page map. ]\r\n");
}

void MetadataFlush()
{
	u32 tempBuffer, diePpn, dieNo;
	int loop;

	// flush blockmap, dieblcok, gcmap, cimap
	loop = sizeof(struct bmEntry) * BLOCK_NUM_PER_SSD + sizeof(struct dieEntry) * DIE_NUM
								+ sizeof(struct gcEntry) * DIE_NUM*(PAGE_NUM_PER_BLOCK + 1) + sizeof(u32) * DIE_NUM;
	dieNo = METADATA_BLOCK_PPN % DIE_NUM;
	diePpn = METADATA_BLOCK_PPN / DIE_NUM + BLOCK_NUM_PER_SSD / PAGE_SIZE + 1;
	tempBuffer = BLOCK_MAP_ADDR;

	while(loop>0)
	{
		WaitWayFree(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);
		SsdProgram(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM, diePpn, tempBuffer);
		WaitWayFree(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);

		diePpn++;
		tempBuffer += PAGE_SIZE;
		loop -= PAGE_SIZE;
	}

	xil_printf("[ Meta data flush is done. ]\r\n");
}

int CheckMetadata()
{
	u32* check4Byte = (u32*)(RAM_DISK_BASE_ADDR);
	u32 dieNo, diePpn;

	dieNo = METADATA_BLOCK_PPN % DIE_NUM;
	diePpn = METADATA_BLOCK_PPN / DIE_NUM + BLOCK_NUM_PER_SSD / PAGE_SIZE + 1;
	SsdRead(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM, diePpn, RAM_DISK_BASE_ADDR);
	WaitWayFree(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);

	if(*check4Byte != EMPTY_4BYTE)
		return 1;
	return 0;
}

void RecoverMetadata()
{
	u32 dieNo, blockNo, badBlockCount, diePpn;
	u32 tempBuffer = BLOCK_MAP_ADDR;

	int loop = sizeof(struct bmEntry) * BLOCK_NUM_PER_SSD + sizeof(struct dieEntry) * DIE_NUM
					+ sizeof(struct gcEntry) * DIE_NUM*(PAGE_NUM_PER_BLOCK + 1) + sizeof(u32) * DIE_NUM;

	dieNo = METADATA_BLOCK_PPN % DIE_NUM;
	diePpn = METADATA_BLOCK_PPN / DIE_NUM + BLOCK_NUM_PER_SSD / PAGE_SIZE + 1;

	while(loop > 0)
	{
		WaitWayFree(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);
		SsdRead(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM, diePpn, tempBuffer);
		WaitWayFree(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);

		diePpn++;
		tempBuffer += PAGE_SIZE;
		loop -= PAGE_SIZE;
	}
	BadBlockTableBackup();

	blockMap = (struct bmArray*)(BLOCK_MAP_ADDR);
	badBlockCount=0;
	for(blockNo=0; blockNo<BLOCK_NUM_PER_DIE; blockNo++)
		for(dieNo=0; dieNo<DIE_NUM; dieNo++)
			if(blockMap->bmEntry[dieNo][blockNo].bad)
				badBlockCount++;

	BAD_BLOCK_SIZE = badBlockCount * BLOCK_SIZE_MB;

	xil_printf("[ Meta data is recovered. ]\r\n");
}

void BadBlockTableBackup()
{
	u32 tempBuffer, diePpn, dieNo, blockNo;
	int loop;

	//read bad block marks
	loop = DIE_NUM *BLOCK_NUM_PER_DIE;
	dieNo = METADATA_BLOCK_PPN % DIE_NUM;
	diePpn = METADATA_BLOCK_PPN / DIE_NUM;
	blockNo = diePpn / PAGE_NUM_PER_BLOCK;
	tempBuffer = GC_BUFFER_ADDR;
	while(loop > 0)
	{
		SsdRead(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM, diePpn, tempBuffer);
		WaitWayFree(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);

		diePpn++;
		tempBuffer += PAGE_SIZE;
		loop -= PAGE_SIZE;
	}

	blockMap->bmEntry[dieNo][blockNo].eraseCnt++;
	WaitWayFree(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);
	SsdErase(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM, blockNo);
	WaitWayFree(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);

	// save bad block mark
	loop = DIE_NUM *BLOCK_NUM_PER_DIE;
	diePpn = METADATA_BLOCK_PPN / DIE_NUM;
	tempBuffer = GC_BUFFER_ADDR;
	while(loop>0)
	{
		SsdProgram(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM, diePpn, tempBuffer);
		WaitWayFree(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);

		diePpn++;
		tempBuffer += PAGE_SIZE;
		loop -= PAGE_SIZE;
	}

	xil_printf("[ Bad block table back-up is done. ]\r\n");
}

void RecoverPageMap()
{
	u32 pageNo, blockNo;
	int blockCount, dieCount, pageCount;
	u32 dieLpn, diePpn;
	u32* closedIndex;
	u32* shifter;

	pageMap = (struct pmArray*)(PAGE_MAP_ADDR);
	blockMap = (struct bmArray*)(BLOCK_MAP_ADDR);
	ciBufMap = (struct ciBufArray*)(CI_BUF_MAP_ADDR);

	dieBlock = (struct dieArray*)(DIE_MAP_ADDR);//test

	InitPageMap();

	for(dieCount=0; dieCount < DIE_NUM; dieCount++)
	{
		//	reset ciBufMap
		for(blockCount=0; blockCount<BLOCK_NUM_PER_DIE; ++blockCount)
			for(pageCount=0; pageCount<PAGE_NUM_PER_BLOCK; ++pageCount)
				ciBufMap->ciBufEntry[blockCount][pageCount] = 0x00000000;

		// recover pageMap
		for(blockCount=BLOCK_NUM_PER_DIE-1; blockCount >=0; --blockCount)
		{
			if((blockMap->bmEntry[dieCount][blockCount].free == 0) && (blockMap->bmEntry[dieCount][blockCount].currentPage != 0x0)
																		&& (blockMap->bmEntry[dieCount][blockCount].currentPage != 0xffff))
			{
				diePpn = blockCount*PAGE_NUM_PER_BLOCK + blockMap->bmEntry[dieCount][blockCount].currentPage;
				SsdRead(dieCount % CHANNEL_NUM, dieCount / CHANNEL_NUM, diePpn, RAM_DISK_BASE_ADDR);
				WaitWayFree(dieCount % CHANNEL_NUM, dieCount / CHANNEL_NUM);

				closedIndex = (u32*)(RAM_DISK_BASE_ADDR + sizeof(u32)*PAGE_NUM_PER_BLOCK);

				for(pageCount=blockMap->bmEntry[dieCount][blockCount].currentPage-1; pageCount >= 0; pageCount--)
				{
					//Check closed index
					shifter = (u32*)(RAM_DISK_BASE_ADDR + pageCount*sizeof(u32));
					dieLpn = (*shifter)>>1;

					if(dieLpn != 0x7fffffff)
					{
						blockNo = dieLpn / PAGE_NUM_PER_BLOCK;
						pageNo = dieLpn % PAGE_NUM_PER_BLOCK;

						if(ciBufMap->ciBufEntry[blockNo][pageNo] < *closedIndex)
						{
							if(pageMap->pmEntry[dieCount][dieLpn].ppn != 0xffffffff)
								pageMap->pmEntry[dieCount][pageMap->pmEntry[dieCount][dieLpn].ppn].valid = 0; //invalid previous data

							pageMap->pmEntry[dieCount][dieLpn].ppn = blockCount*PAGE_NUM_PER_BLOCK + pageCount;
							pageMap->pmEntry[dieCount][blockCount*PAGE_NUM_PER_BLOCK + pageCount].lpn = dieLpn;
							pageMap->pmEntry[dieCount][blockCount*PAGE_NUM_PER_BLOCK + pageCount].valid = 1;

							//Save closed index
							ciBufMap->ciBufEntry[blockNo][pageNo] = *closedIndex;
						}
						else
							pageMap->pmEntry[dieCount][blockCount*PAGE_NUM_PER_BLOCK + pageCount].valid = 0;
					}
				}
			}
		}
	}
	xil_printf("[ Page map is recovered. ]\r\n");
}
