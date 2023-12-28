//////////////////////////////////////////////////////////////////////////////////
// ftl.c for Cosmos OpenSSD
// Copyright (c) 2014 Hanyang University ENC Lab.
// Contributed by Yong Ho Song <yhsong@enc.hanyang.ac.kr>
//                Gyeongyong Lee <gylee@enc.hanyang.ac.kr>
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
//
// Project Name: Cosmos OpenSSD
// Design Name: Tutorial FTL
// Module Name: Flash Translation Layer
// File Name: ftl.c
//
// Version: v1.0.0
//
// Description:
//   - initial nand reset
//   - initialize map tables
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.0
//   - First draft
//////////////////////////////////////////////////////////////////////////////////

#include "ftl.h"

#include "lld.h"
#include "pageMap.h"

void InitNandReset()
{
	int i, j;

	//	reset SSD
	for(i=0; i<CHANNEL_NUM; ++i)
	{
		for(j=0; j<WAY_NUM; ++j)
		{
			WaitWayFree(i, j);
			SsdReset(i, j);
		}
	}
	
	//	change SSD mode
	for(i=0; i<CHANNEL_NUM; ++i)
	{
		for(j=0; j<WAY_NUM; ++j)
		{
			WaitWayFree(i, j);
			SsdModeChange(i, j);
		}
	}

	print("\n[ ssd NAND device reset complete. ]\r\n");
}

void InitFtlMapTable()
{
	InitPageMap();
	InitBlockMap();
	InitDieBlock();
}

