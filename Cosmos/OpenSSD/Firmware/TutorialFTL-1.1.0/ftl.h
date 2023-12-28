//////////////////////////////////////////////////////////////////////////////////
// ftl.h for Cosmos OpenSSD
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
//		     Jaewook Kwak <jwkwak@enc.hanyang.ac.kr>
//
// Project Name: Cosmos OpenSSD
// Design Name: Tutorial FTL
// Module Name: Flash Translation Layer
// File Name: ftl.h
//
// Version: v1.0.2
//
// Description:
//   - define NAND flash and SSD parameters
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.2
//   - add constant to calculate ssd size
//
// * v1.0.1
//   - replace bitwise operation with decimal operation
//
// * v1.0.0
//   - First draft
//////////////////////////////////////////////////////////////////////////////////

#ifndef	FTL_H_
#define	FTL_H_

#define	SECTOR_SIZE_FTL			512

#define	PAGE_SIZE				8192  //8KB
#define	PAGE_NUM_PER_BLOCK		256
#define	BLOCK_NUM_PER_DIE		4096
#define	BLOCK_SIZE_MB			((PAGE_SIZE * PAGE_NUM_PER_BLOCK) / (1024 * 1024))

#define	CHANNEL_NUM				4
#define	WAY_NUM					4
#define	DIE_NUM					(CHANNEL_NUM * WAY_NUM)

#define	SECTOR_NUM_PER_PAGE		(PAGE_SIZE / SECTOR_SIZE_FTL)

#define	PAGE_NUM_PER_DIE		(PAGE_NUM_PER_BLOCK * BLOCK_NUM_PER_DIE)
#define	PAGE_NUM_PER_CHANNEL	(PAGE_NUM_PER_DIE * WAY_NUM)
#define	PAGE_NUM_PER_SSD		(PAGE_NUM_PER_CHANNEL * CHANNEL_NUM)

#define	BLOCK_NUM_PER_CHANNEL	(BLOCK_NUM_PER_DIE * WAY_NUM)
#define	BLOCK_NUM_PER_SSD		(BLOCK_NUM_PER_CHANNEL * CHANNEL_NUM)

#define SSD_SIZE				(BLOCK_NUM_PER_SSD * BLOCK_SIZE_MB) //MB
#define FREE_BLOCK_SIZE			(DIE_NUM * BLOCK_SIZE_MB)	//MB
#define METADATA_BLOCK_SIZE		(1 * BLOCK_SIZE_MB)	//MB

void InitNandReset();
void InitFtlMapTable();

#endif /* FTL_H_ */
