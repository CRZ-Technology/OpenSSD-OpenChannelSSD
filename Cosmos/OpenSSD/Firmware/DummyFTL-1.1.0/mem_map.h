//////////////////////////////////////////////////////////////////////////////////
// mem_map.h for Cosmos OpenSSD
// Copyright (c) 2014 Hanyang University ENC Lab.
// Contributed by Yong Ho Song <yhsong@enc.hanyang.ac.kr>
//                Youngjin Jo <yjjo@enc.hanyang.ac.kr>
//                Sangjin Lee <sjlee@enc.hanyang.ac.kr>
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
// Engineer: Sangjin Lee <sjlee@enc.hanyang.ac.kr>
//
// Project Name: Cosmos OpenSSD
// Design Name: Memory Map
// File Name: mem_map.h
//
// Version: v1.0.0
//
// Description:
//   - Defining memory maps.
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.0
//   - First draft
//////////////////////////////////////////////////////////////////////////////////

#include "xbasic_types.h"
#include "xparameters.h"

#ifndef	__MEM_MAP_H__
#define	__MEM_MAP_H__

//SRAM
#define SRAM0_BASE_ADDR						XPAR_PS7_RAM_0_S_AXI_BASEADDR//192KB
#define SRAM0_HIGH_ADDR						XPAR_PS7_RAM_0_S_AXI_HIGHADDR
#define SRAM1_BASE_ADDR						XPAR_PS7_RAM_1_S_AXI_BASEADDR//63KB
#define SRAM1_HIGH_ADDR						XPAR_PS7_RAM_1_S_AXI_HIGHADDR

//DRAM
#define DRAM0_BASE_ADDR						XPAR_PS7_DDR_0_S_AXI_BASEADDR//1023MB
#define DRAM0_HIGH_ADDR						XPAR_PS7_DDR_0_S_AXI_HIGHADDR

//BRAM
#define BRAM0_BASE_ADDR						XPAR_BRAM_0_BASEADDR//64KB
#define BRAM0_HIGH_ADDR						XPAR_BRAM_0_HIGHADDR

//PCIe IP
#define PCIE0_CONFIG_BASE_ADDR				XPAR_AXIPCIE_0_BASEADDR//64KB
#define PCIE0_CONFIG_HIGH_ADDR				XPAR_AXIPCIE_0_HIGHADDR
#define PCIE0_AXI_MAPPING_ADDR0_BASE_ADDR	XPAR_AXIPCIE_0_AXIBAR_0//64KB
#define PCIE0_AXI_MAPPING_ADDR0_HIGH_ADDR	XPAR_AXIPCIE_0_AXIBAR_HIGHADDR_0
#define PCIE0_PCIEBAR0_TO_AXI_BASE_ADDR		XPAR_AXIPCIE_0_PCIEBAR2AXIBAR_0

//DMA IP
#define CMDA0_CONFIG_BASE_ADDR				XPAR_AXICDMA_0_BASEADDR//64KB
#define CMDA0_CONFIG_HIGH_ADDR				XPAR_AXICDMA_0_HIGHADDR

#endif	/* __MEM_MAP_H__ */
