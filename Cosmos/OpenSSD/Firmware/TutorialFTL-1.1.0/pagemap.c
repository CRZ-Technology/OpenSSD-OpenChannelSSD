//////////////////////////////////////////////////////////////////////////////////
// page_map.c for Cosmos OpenSSD
// Copyright (c) 2014 Hanyang University ENC Lab.
// Contributed by Yong Ho Song <yhsong@enc.hanyang.ac.kr>
//                Gyeongyong Lee <gylee@enc.hanyang.ac.kr>
//				  Jaewook Kwak <jwkwak@enc.hanyang.ac.kr>
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
// Module Name: Page Mapping
// File Name: page_map.c
//
// Version: v1.2.0
//
// Description:
//   - initialize map tables
//   - read/write request
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.2.0
//   - add a function to check bad block
//
// * v1.1.1
//   - replace bitwise operation with decimal operation
//
// * v1.1.0
//   - support static bad block management
//
// * v1.0.0
//   - First draft
//////////////////////////////////////////////////////////////////////////////////

#include "pageMap.h"

#include <assert.h>

#include "lld.h"

u32 BAD_BLOCK_SIZE;

void InitPageMap()
{
	pageMap = (struct pmArray*)(PAGE_MAP_ADDR);

	// page status initialization, allows lpn, ppn access
	int i, j;
	for(i=0 ; i<DIE_NUM ; i++)
	{
		for(j=0 ; j<PAGE_NUM_PER_DIE ; j++)
		{
			pageMap->pmEntry[i][j].ppn = 0x7fffffff;
			pageMap->pmEntry[i][j].valid = 0x1;
		}
	}

	xil_printf("[ ssd page map initialized. ]\r\n");
}

void InitBlockMap()
{
	blockMap = (struct bmArray*)(BLOCK_MAP_ADDR);

	CheckBadBlock();

	// block status initialization, allows only physical access
	int i, j;
	for(i=0 ; i<BLOCK_NUM_PER_DIE ; i++)
	{
		for(j=0 ; j<DIE_NUM ; j++)
		{
			blockMap->bmEntry[j][i].free = 0x1;
			blockMap->bmEntry[j][i].currentPage = 0x0;
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
		// initially, 0-th block of each die is allocated for storage start point
		blockMap->bmEntry[i][0].free = 0x0;
		blockMap->bmEntry[i][0].currentPage = 0x3fffffff;
	}
	//block0 of die0 is metadata block
	blockMap->bmEntry[0][1].free = 0;
	blockMap->bmEntry[0][1].currentPage = 0x3fffffff;

	xil_printf("[ ssd block map initialized. ]\r\n");
}

void InitDieBlock()
{
	dieBlock = (struct dieArray*)(DIE_MAP_ADDR);

	int i;
	for(i=0 ; i<DIE_NUM ; i++)
	{
		if(i==0) // prevent to write at meta data block
			dieBlock->dieEntry[i].currentBlock = 1;
		else
			dieBlock->dieEntry[i].currentBlock = 0;
	}

	xil_printf("[ ssd die map initialized. ]\r\n");
}

void CheckBadBlock()
{
	blockMap = (struct bmArray*)(BLOCK_MAP_ADDR);
	u32 dieNo, diePpn, blockNo, tempBuffer, badBlockCount;
	u8* shifter;
	u8* markPointer;
	int loop;

	markPointer = (u8*)(RAM_DISK_BASE_ADDR + BAD_BLOCK_MARK_POSITION);

	//read badblock marks
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
	if(*shifter == EMPTY_BYTE)	//check whether badblock marks exist
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
				shifter= (u8*)(RAM_DISK_BASE_ADDR + blockNo + dieNo *BLOCK_NUM_PER_DIE );//gather badblock mark at GC buffer
				*shifter = blockMap->bmEntry[dieNo][blockNo].bad;
			}

		// save bad block mark
		loop = DIE_NUM *BLOCK_NUM_PER_DIE;
		dieNo = METADATA_BLOCK_PPN % DIE_NUM;
		diePpn = METADATA_BLOCK_PPN / DIE_NUM;
		blockNo = diePpn / PAGE_NUM_PER_BLOCK;

		SsdErase(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM, blockNo);
		WaitWayFree(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);

		tempBuffer = RAM_DISK_BASE_ADDR;
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

int FindFreePage(u32 dieNo)
{
	blockMap = (struct bmArray*)(BLOCK_MAP_ADDR);
	dieBlock = (struct dieArray*)(DIE_MAP_ADDR);

	if(blockMap->bmEntry[dieNo][dieBlock->dieEntry[dieNo].currentBlock].currentPage == PAGE_NUM_PER_BLOCK-1)
	{
		dieBlock->dieEntry[dieNo].currentBlock++;

		int i;
		for(i=dieBlock->dieEntry[dieNo].currentBlock ; i<(dieBlock->dieEntry[dieNo].currentBlock+BLOCK_NUM_PER_DIE) ; i++)
		{
			if((blockMap->bmEntry[dieNo][i % BLOCK_NUM_PER_DIE].free) && (!blockMap->bmEntry[dieNo][i % BLOCK_NUM_PER_DIE].bad))
			{
				blockMap->bmEntry[dieNo][i % BLOCK_NUM_PER_DIE].free = 0x0;
				dieBlock->dieEntry[dieNo].currentBlock = i % BLOCK_NUM_PER_DIE;

				return (dieBlock->dieEntry[dieNo].currentBlock * PAGE_NUM_PER_BLOCK);
			}
		}

		// no free space anymore
		assert(!"[WARNING] There are no free blocks. Abort terminate this ssd. [WARNING]\r\n");
	}
	else
	{
		blockMap->bmEntry[dieNo][dieBlock->dieEntry[dieNo].currentBlock].currentPage++;
		return ((dieBlock->dieEntry[dieNo].currentBlock * PAGE_NUM_PER_BLOCK) + blockMap->bmEntry[dieNo][dieBlock->dieEntry[dieNo].currentBlock].currentPage);
	}
}

int PrePmRead(P_HOST_CMD hostCmd, u32 bufferAddr)
{
	u32 lpn;
	u32 dieNo;
	u32 dieLpn;

	pageMap = (struct pmArray*)(PAGE_MAP_ADDR);

	if((((hostCmd->reqInfo.CurSect)%SECTOR_NUM_PER_PAGE) != 0)
			|| ((hostCmd->reqInfo.CurSect / SECTOR_NUM_PER_PAGE) == (((hostCmd->reqInfo.CurSect)+(hostCmd->reqInfo.ReqSect))/SECTOR_NUM_PER_PAGE)))
	{
		lpn = hostCmd->reqInfo.CurSect / SECTOR_NUM_PER_PAGE;
		dieNo = lpn % DIE_NUM;
		dieLpn = lpn / DIE_NUM;

		if(pageMap->pmEntry[dieNo][dieLpn].ppn != 0x7fffffff)
		{
			WaitWayFree(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);
			SsdRead(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM, pageMap->pmEntry[dieNo][dieLpn].ppn, bufferAddr);
			WaitWayFree(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);
		}
	}

	if(((((hostCmd->reqInfo.CurSect)+(hostCmd->reqInfo.ReqSect))% SECTOR_NUM_PER_PAGE) != 0)
			&& ((hostCmd->reqInfo.CurSect / SECTOR_NUM_PER_PAGE) != (((hostCmd->reqInfo.CurSect)+(hostCmd->reqInfo.ReqSect))/SECTOR_NUM_PER_PAGE)))
	{
		lpn = ((hostCmd->reqInfo.CurSect)+(hostCmd->reqInfo.ReqSect))/SECTOR_NUM_PER_PAGE;
		dieNo = lpn % DIE_NUM;
		dieLpn = lpn / DIE_NUM;

		if(pageMap->pmEntry[dieNo][dieLpn].ppn != 0x7fffffff)
		{
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

	while(loop > 0)
	{
		dieNo = lpn % DIE_NUM;
		dieLpn = lpn / DIE_NUM;

		if(pageMap->pmEntry[dieNo][dieLpn].ppn != 0x7fffffff)
		{
			WaitWayFree(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);
			SsdRead(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM, pageMap->pmEntry[dieNo][dieLpn].ppn, tempBuffer);
		}

		lpn++;
		tempBuffer += PAGE_SIZE;
		loop -= SECTOR_NUM_PER_PAGE;
	}

	int i;
	for(i=0 ; i<DIE_NUM ; ++i)
		WaitWayFree(i%CHANNEL_NUM, i/CHANNEL_NUM);

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

	pageMap = (struct pmArray*)(PAGE_MAP_ADDR);
	blockMap = (struct bmArray*)(BLOCK_MAP_ADDR);

	while(loop > 0)
	{
		dieNo = lpn % DIE_NUM;
		dieLpn = lpn / DIE_NUM;
		freePageNo = FindFreePage(dieNo);


		WaitWayFree(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM);
		SsdProgram(dieNo % CHANNEL_NUM, dieNo / CHANNEL_NUM, freePageNo, tempBuffer);
		
		// invalidation update
		if(pageMap->pmEntry[dieNo][dieLpn].ppn != 0x7fffffff)
			pageMap->pmEntry[dieNo][pageMap->pmEntry[dieNo][dieLpn].ppn].valid = 0;
		
		pageMap->pmEntry[dieNo][dieLpn].ppn = freePageNo;

		lpn++;
		tempBuffer += PAGE_SIZE;
		loop -= SECTOR_NUM_PER_PAGE;
	}

	int i;
	for(i=0 ; i<DIE_NUM ; ++i)
		WaitWayFree(i%CHANNEL_NUM, i/CHANNEL_NUM);

	return 0;
}
