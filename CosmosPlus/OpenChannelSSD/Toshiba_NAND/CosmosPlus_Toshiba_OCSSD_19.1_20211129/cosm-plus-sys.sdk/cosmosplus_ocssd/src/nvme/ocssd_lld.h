//////////////////////////////////////////////////////////////////////////////////
// ocssd_lld.h for Cosmos+ OpenSSD
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
// File Name: ocssd_lld.h
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

#ifndef SRC_NVME_OCSSD_LLD_H_
#define SRC_NVME_OCSSD_LLD_H_

typedef struct _OCSSD_METADATA_BUFFER
{
	unsigned int d[128][4096 / 4];
} OCSSD_METADATA_BUFFER, *P_OCSSD_METADATA_BUFFER;

OCSSD_PHYSICAL_PAGE_ADDRESS * GetPPAs(NVME_IO_COMMAND *nvmeIOCmd, unsigned int numOfPPAs);
unsigned int * GetMetadataFromHost(NVME_IO_COMMAND *nvmeIOCmd, unsigned int numOfPPAs);

#endif /* SRC_NVME_OCSSD_LLD_H_ */
