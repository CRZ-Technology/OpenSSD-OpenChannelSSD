//////////////////////////////////////////////////////////////////////////////////
// ftl_config.h for Cosmos+ OpenSSD
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
// Module Name: Flash Translation Layer Configuration Manager
// File Name: ftl_config.h
//
// Version: v1.0.0
//
// Description:
//   - define parameters, data structure and functions of flash translation layer configuration manager
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.0
//   - First draft
//////////////////////////////////////////////////////////////////////////////////

#ifndef FTL_CONFIG_H_
#define FTL_CONFIG_H_

#include "nsc_driver.h"
#include "xparameters.h"
#include "nvme/nvme.h"

//checks NSC connection, initializes base address
#ifdef	XPAR_T4NFC_HLPER_7_BASEADDR
#define NSC_7_CONNECTED	1
#define NSC_7_UCODEADDR XPAR_AXI_BRAM_CTRL_7_S_AXI_BASEADDR
#define NSC_7_BASEADDR	XPAR_T4NFC_HLPER_7_BASEADDR
#else
#define NSC_7_CONNECTED	0
#define NSC_7_UCODEADDR 0
#define NSC_7_BASEADDR	0
#endif
#ifdef	XPAR_T4NFC_HLPER_6_BASEADDR
#define NSC_6_CONNECTED	1
#define NSC_6_UCODEADDR XPAR_AXI_BRAM_CTRL_6_S_AXI_BASEADDR
#define NSC_6_BASEADDR	XPAR_T4NFC_HLPER_6_BASEADDR
#else
#define NSC_6_CONNECTED	0
#define NSC_6_UCODEADDR 0
#define NSC_6_BASEADDR	0
#endif
#ifdef	XPAR_T4NFC_HLPER_5_BASEADDR
#define NSC_5_CONNECTED	1
#define NSC_5_UCODEADDR XPAR_AXI_BRAM_CTRL_5_S_AXI_BASEADDR
#define NSC_5_BASEADDR	XPAR_T4NFC_HLPER_5_BASEADDR
#else
#define NSC_5_CONNECTED	0
#define NSC_5_UCODEADDR 0
#define NSC_5_BASEADDR	0
#endif
#ifdef	XPAR_T4NFC_HLPER_4_BASEADDR
#define NSC_4_CONNECTED	1
#define NSC_4_UCODEADDR XPAR_AXI_BRAM_CTRL_4_S_AXI_BASEADDR
#define NSC_4_BASEADDR	XPAR_T4NFC_HLPER_4_BASEADDR
#else
#define NSC_4_CONNECTED	0
#define NSC_4_UCODEADDR 0
#define NSC_4_BASEADDR	0
#endif
#ifdef	XPAR_T4NFC_HLPER_3_BASEADDR
#define NSC_3_CONNECTED	1
#define NSC_3_UCODEADDR XPAR_AXI_BRAM_CTRL_3_S_AXI_BASEADDR
#define NSC_3_BASEADDR	XPAR_T4NFC_HLPER_3_BASEADDR
#else
#define NSC_3_CONNECTED	0
#define NSC_3_UCODEADDR 0
#define NSC_3_BASEADDR	0
#endif
#ifdef	XPAR_T4NFC_HLPER_2_BASEADDR
#define NSC_2_CONNECTED	1
#define NSC_2_UCODEADDR XPAR_AXI_BRAM_CTRL_2_S_AXI_BASEADDR
#define NSC_2_BASEADDR	XPAR_T4NFC_HLPER_2_BASEADDR
#else
#define NSC_2_CONNECTED	0
#define NSC_2_UCODEADDR 0
#define NSC_2_BASEADDR	0
#endif
#ifdef	XPAR_T4NFC_HLPER_1_BASEADDR
#define NSC_1_CONNECTED	1
#define NSC_1_UCODEADDR XPAR_AXI_BRAM_CTRL_1_S_AXI_BASEADDR
#define NSC_1_BASEADDR	XPAR_T4NFC_HLPER_1_BASEADDR
#else
#define NSC_1_CONNECTED	0
#define NSC_1_UCODEADDR 0
#define NSC_1_BASEADDR	0
#endif
#ifdef	XPAR_T4NFC_HLPER_0_BASEADDR
#define NSC_0_CONNECTED	1
#define NSC_0_UCODEADDR XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR
#define NSC_0_BASEADDR	XPAR_T4NFC_HLPER_0_BASEADDR
#else
#define NSC_0_CONNECTED	0
#define NSC_0_UCODEADDR 0
#define NSC_0_BASEADDR	0
#endif

//number of connected (=AXI mapped) NSC
#define NUMBER_OF_CONNECTED_CHANNEL (NSC_7_CONNECTED + NSC_6_CONNECTED + NSC_5_CONNECTED + NSC_4_CONNECTED + NSC_3_CONNECTED + NSC_2_CONNECTED + NSC_1_CONNECTED + NSC_0_CONNECTED)


//--------------------------------
//NAND flash memory specifications
//--------------------------------

#define	BYTES_PER_DATA_REGION_OF_NAND_ROW		16384
#define	BYTES_PER_SPARE_REGION_OF_NAND_ROW		2208
#define BYTES_PER_NAND_ROW						(BYTES_PER_DATA_REGION_OF_NAND_ROW + BYTES_PER_SPARE_REGION_OF_NAND_ROW)

#define	ROWS_PER_SLC_BLOCK			256
#define	ROWS_PER_MLC_BLOCK			512

#define	MAIN_BLOCKS_PER_LUN			2048
#define EXTENDED_BLOCKS_PER_LUN		144
#define TOTAL_BLOCKS_PER_LUN		(MAIN_BLOCKS_PER_LUN + EXTENDED_BLOCKS_PER_LUN)

#define	MAIN_ROWS_PER_SLC_LUN		(ROWS_PER_SLC_BLOCK * MAIN_BLOCKS_PER_LUN)
#define	MAIN_ROWS_PER_MLC_LUN		(ROWS_PER_MLC_BLOCK * MAIN_BLOCKS_PER_LUN)

#define	LUNS_PER_DIE				1

#define	MAIN_BLOCKS_PER_DIE			(MAIN_BLOCKS_PER_LUN * LUNS_PER_DIE)
#define TOTAL_BLOCKS_PER_DIE		(TOTAL_BLOCKS_PER_LUN * LUNS_PER_DIE)

#define BAD_BLOCK_MARK_PAGE0		0										//first row of a block
#define BAD_BLOCK_MARK_PAGE1		(ROWS_PER_MLC_BLOCK - 1)				//last row of a block
#define BAD_BLOCK_MARK_BYTE0 		0										//first byte of data region of the row
#define BAD_BLOCK_MARK_BYTE1 		(BYTES_PER_DATA_REGION_OF_NAND_ROW)		//first byte of spare region of the row




//------------------------------------
//NAND storage controller specifications
//------------------------------------

//supported maximum channel/way structure
#define	NSC_MAX_CHANNELS				(NUMBER_OF_CONNECTED_CHANNEL)
#define	NSC_MAX_WAYS					8

//row -> page
#define	BYTES_PER_DATA_REGION_OF_PAGE			16384
#define BYTES_PER_SPARE_REGION_OF_PAGE			256
// (BYTES_PER_SPARE_REGION_OF_NAND_ROW - BYTES_PER_SPARE_REGION_OF_PAGE) bytes are used by ECC engine (Parity data)
#define	PAGES_PER_SLC_BLOCK			(ROWS_PER_SLC_BLOCK)
#define	PAGES_PER_MLC_BLOCK			(ROWS_PER_MLC_BLOCK)

//ECC encoder/decoder specification
#define ECC_CHUNKS_PER_PAGE				32
#define BIT_ERROR_THRESHOLD_PER_CHUNK	24
#define ERROR_INFO_WORD_COUNT 			11


//------------------------------
//NVMe Controller Specifications
//------------------------------

#define	BYTES_PER_NVME_BLOCK		4096
#define NVME_BLOCKS_PER_PAGE		(BYTES_PER_DATA_REGION_OF_PAGE / BYTES_PER_NVME_BLOCK)



//------------------
//FTL configurations
//------------------

#define	SLC_MODE				1
#define	MLC_MODE				2

//************************************************************************
#define	BITS_PER_FLASH_CELL		SLC_MODE	//user configurable factor
#define	USER_BLOCKS_PER_LUN		2048		//user configurable factor
#define	USER_CHANNELS		(NUMBER_OF_CONNECTED_CHANNEL)		//user configurable factor
#define	USER_WAYS				2//8			//user configurable factor
//************************************************************************

#define	BYTES_PER_DATA_REGION_OF_SLICE		16384		//slice is a mapping unit of FTL
#define	BYTES_PER_SPARE_REGION_OF_SLICE		256

#define SLICES_PER_PAGE				(BYTES_PER_DATA_REGION_OF_PAGE / BYTES_PER_DATA_REGION_OF_SLICE)	//a slice directs a page, full page mapping
#define NVME_BLOCKS_PER_SLICE		(BYTES_PER_DATA_REGION_OF_SLICE / BYTES_PER_NVME_BLOCK)

#define	USER_DIES					(USER_CHANNELS * USER_WAYS)

#define	USER_PAGES_PER_BLOCK		(PAGES_PER_SLC_BLOCK * BITS_PER_FLASH_CELL)
#define	USER_PAGES_PER_LUN			(USER_PAGES_PER_BLOCK * USER_BLOCKS_PER_LUN)
#define	USER_PAGES_PER_DIE			(USER_PAGES_PER_LUN * LUNS_PER_DIE)
#define	USER_PAGES_PER_CHANNEL		(USER_PAGES_PER_DIE * USER_WAYS)
#define	USER_PAGES_PER_SSD			(USER_PAGES_PER_CHANNEL * USER_CHANNELS)

#define	SLICES_PER_BLOCK			(USER_PAGES_PER_BLOCK * SLICES_PER_PAGE)
#define	SLICES_PER_LUN				(USER_PAGES_PER_LUN * SLICES_PER_PAGE)
#define	SLICES_PER_DIE				(USER_PAGES_PER_DIE * SLICES_PER_PAGE)
#define	SLICES_PER_CHANNEL			(USER_PAGES_PER_CHANNEL * SLICES_PER_PAGE)
#define	SLICES_PER_SSD				(USER_PAGES_PER_SSD * SLICES_PER_PAGE)

#define	USER_BLOCKS_PER_DIE			(USER_BLOCKS_PER_LUN * LUNS_PER_DIE)
#define	USER_BLOCKS_PER_CHANNEL		(USER_BLOCKS_PER_DIE * USER_WAYS)
#define	USER_BLOCKS_PER_SSD			(USER_BLOCKS_PER_CHANNEL * USER_CHANNELS)

#define	MB_PER_BLOCK						((BYTES_PER_DATA_REGION_OF_SLICE * SLICES_PER_BLOCK) / (1024 * 1024))
#define MB_PER_SSD							(USER_BLOCKS_PER_SSD * MB_PER_BLOCK)
#define MB_PER_MIN_FREE_BLOCK_SPACE			(USER_DIES * MB_PER_BLOCK)
#define MB_PER_METADATA_BLOCK_SPACE			(USER_DIES * MB_PER_BLOCK)
#define MB_PER_OVER_PROVISION_BLOCK_SPACE	((USER_BLOCKS_PER_SSD / 10) * MB_PER_BLOCK)


void InitFTL();
void InitChCtlReg();
void InitNandArray();
void CheckConfigRestriction();

extern unsigned int storageCapacity_L;
extern T4REGS chCtlReg[USER_CHANNELS];

#endif /* FTL_CONFIG_H_ */
