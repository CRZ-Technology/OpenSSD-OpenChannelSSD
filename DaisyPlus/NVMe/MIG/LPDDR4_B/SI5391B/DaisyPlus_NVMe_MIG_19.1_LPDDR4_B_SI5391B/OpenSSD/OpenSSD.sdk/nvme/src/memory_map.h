//////////////////////////////////////////////////////////////////////////////////
// memory_map.h for Cosmos+ OpenSSD
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
// Module Name: Static Memory Allocator
// File Name: memory_map.h
//
// Version: v1.0.0
//
// Description:
//	 - allocate DRAM address space (0x0010_0000 ~ 0x3FFF_FFFF) to each module
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.0
//   - First draft
//////////////////////////////////////////////////////////////////////////////////

#ifndef MEMORY_MAP_H_
#define MEMORY_MAP_H_

#define DRAM_START_ADDR				0x00100000

#define MEMORY_SEGMENTS_START_ADDR		DRAM_START_ADDR
#define MEMORY_SEGMENTS_END_ADDR		0x001FFFFF

#define NVME_MANAGEMENT_START_ADDR		0x00200000
#define NVME_MANAGEMENT_END_ADDR		0x0FFFFFFF

#define DUMMY_RD_WR_ADDR                (0x40000000 - 0x1000) // Reserved for NVMe IP.

// Uncached & Unbuffered
//for data buffer
#define DATA_BUFFER_BASE_ADDR 			0x40000000ul
#define DRAM_END_ADDR				    0x7FFFFFFF

#define DDR4_BUFFER_BASE_ADDR (XPAR_MIG_0_BASEADDR)

#endif /* MEMORY_MAP_H_ */
