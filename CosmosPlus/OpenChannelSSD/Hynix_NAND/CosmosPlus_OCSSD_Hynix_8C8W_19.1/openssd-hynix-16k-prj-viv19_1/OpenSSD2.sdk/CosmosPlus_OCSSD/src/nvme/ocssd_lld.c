//////////////////////////////////////////////////////////////////////////////////
// ocssd_lld.c for Cosmos+ OpenSSD
// Copyright (c) 2017 Hanyang University ENC Lab.
// Contributed by Yong Ho Song <yhsong@enc.hanyang.ac.kr>
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
// Engineer: Sangjin Lee <sjlee@enc.hanyang.ac.kr>
//
// Project Name: Cosmos+ OpenSSD
// Design Name: Cosmos+ Firmware
// Module Name: Open-Channel SSD Low Level Driver
// File Name: ocssd_lld.c
//
// Version: v1.0.0
//
// Description:
//   - defines functions to support Open-Channel SSDs
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.0
//   - First draft
//////////////////////////////////////////////////////////////////////////////////

#include "xil_printf.h"
#include "debug.h"
#include "io_access.h"

#include "nvme.h"
#include "host_lld.h"
#include "../request_schedule.h"

OCSSD_PHYSICAL_PAGE_ADDRESS * GetPPAs(NVME_IO_COMMAND *nvmeIOCmd, unsigned int numOfPPAs)
{
	OCSSD_PHYSICAL_PAGE_ADDRESS *ppas;

	if(numOfPPAs > 1)
	{
		set_direct_rx_dma(OCSSD_PPA_LIST_ADDR, nvmeIOCmd->dword11, nvmeIOCmd->dword10, sizeof(OCSSD_PHYSICAL_PAGE_ADDRESS) * numOfPPAs);
		check_direct_rx_dma_done();
		ppas = (OCSSD_PHYSICAL_PAGE_ADDRESS *)OCSSD_PPA_LIST_ADDR;
	}
	else
	{
		ppas = (OCSSD_PHYSICAL_PAGE_ADDRESS *)&(nvmeIOCmd->dword10);
		PRINT_PPA(1, ppas);
	}

	return ppas;
}

unsigned int * GetMetadataFromHost(NVME_IO_COMMAND *nvmeIOCmd, unsigned int numOfPPAs)
{
	//xil_printf("MPTR = 0x%08X_%08X\r\n", nvmeIOCmd->MPTR[1], nvmeIOCmd->MPTR[0]);
	set_direct_rx_dma(OCSSD_METADATA_WRITE_ADDR, nvmeIOCmd->MPTR[1], nvmeIOCmd->MPTR[0], numOfPPAs * OCSSD_METADATA_SIZE);
	//check_direct_rx_dma_done();

	return (void *)OCSSD_METADATA_WRITE_ADDR;
}

