//////////////////////////////////////////////////////////////////////////////////
// nvme_io_cmd.h for Cosmos+ OpenSSD
// Copyright (c) 2016 Hanyang University ENC Lab.
// Contributed by Yong Ho Song <yhsong@enc.hanyang.ac.kr>
//				  Youngjin Jo <yjjo@enc.hanyang.ac.kr>
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
// Module Name: NVMe IO Command Handler
// File Name: nvme_io_cmd.h
//
// Version: v1.1.0.oc
//
// Description:
//   - declares functions for handling NVMe IO commands
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.1.0.oc
//   - Supports Open-Channel SSD v1.2
//
// * v1.0.0
//   - First draft
//////////////////////////////////////////////////////////////////////////////////

#ifndef __NVME_IO_CMD_H_
#define __NVME_IO_CMD_H_

void handle_nvme_io_read(unsigned int cmdSlotTag, NVME_IO_COMMAND *nvmeIOCmd, NVME_COMPLETION *nvmeCPL);

void handle_nvme_io_write(unsigned int cmdSlotTag, NVME_IO_COMMAND *nvmeIOCmd, NVME_COMPLETION *nvmeCPL);

int protect_bbt(unsigned int cmdSlotTag, unsigned int numOfPPAs, NVME_COMPLETION *nvmeCPL, OCSSD_PHYSICAL_PAGE_ADDRESS *ppas);

void handle_ocssd_io_erase(unsigned int cmdSlotTag, NVME_IO_COMMAND *nvmeIOCmd, NVME_COMPLETION *nvmeCPL);

void handle_ocssd_io_write(unsigned int cmdSlotTag, NVME_IO_COMMAND *nvmeIOCmd, NVME_COMPLETION *nvmeCPL);

void handle_ocssd_io_read(unsigned int cmdSlotTag, NVME_IO_COMMAND *nvmeIOCmd, NVME_COMPLETION *nvmeCPL);

void handle_nvme_io_cmd(NVME_COMMAND *nvmeCmd);

#endif	//__NVME_IO_CMD_H_
