//////////////////////////////////////////////////////////////////////////////////
// ata.h for Cosmos OpenSSD
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
// Design Name: ATA
// File Name: ata.h
//
// Version: v1.0.0
//
// Description:
//   - Defining IDE commands, parameters, statuses and errors.
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.0
//   - First draft
//////////////////////////////////////////////////////////////////////////////////

#ifndef __ATA_H__
#define __ATA_H__

// IDE command definitions
#define	IDE_COMMAND_NOP							0x00
#define	IDE_COMMAND_DATA_SET_MANAGEMENT			0x06
#define	IDE_COMMAND_ATAPI_RESET					0x08
#define	IDE_COMMAND_READ						0x20
#define	IDE_COMMAND_READ_EXT					0x24
#define	IDE_COMMAND_READ_DMA_EXT				0x25
#define	IDE_COMMAND_READ_DMA_QUEUED_EXT			0x26
#define	IDE_COMMAND_READ_MULTIPLE_EXT			0x29
#define	IDE_COMMAND_WRITE						0x30
#define	IDE_COMMAND_WRITE_EXT					0x34
#define	IDE_COMMAND_WRITE_DMA_EXT				0x35
#define	IDE_COMMAND_WRITE_DMA_QUEUED_EXT		0x36
#define	IDE_COMMAND_WRITE_MULTIPLE_EXT			0x39
#define	IDE_COMMAND_WRITE_DMA_FUA_EXT			0x3D
#define	IDE_COMMAND_WRITE_DMA_QUEUED_FUA_EXT	0x3E
#define	IDE_COMMAND_VERIFY						0x40
#define	IDE_COMMAND_VERIFY_EXT					0x42
#define	IDE_COMMAND_EXECUTE_DEVICE_DIAGNOSTIC	0x90
#define	IDE_COMMAND_SET_DRIVE_PARAMETERS		0x91
#define	IDE_COMMAND_ATAPI_PACKET				0xA0
#define	IDE_COMMAND_ATAPI_IDENTIFY				0xA1
#define	IDE_COMMAND_SMART						0xB0
#define	IDE_COMMAND_READ_MULTIPLE				0xC4
#define	IDE_COMMAND_WRITE_MULTIPLE				0xC5
#define	IDE_COMMAND_SET_MULTIPLE				0xC6
#define	IDE_COMMAND_READ_DMA					0xC8
#define	IDE_COMMAND_WRITE_DMA					0xCA
#define	IDE_COMMAND_WRITE_DMA_QUEUED			0xCC
#define	IDE_COMMAND_WRITE_MULTIPLE_FUA_EXT		0xCE
#define	IDE_COMMAND_GET_MEDIA_STATUS			0xDA
#define	IDE_COMMAND_DOOR_LOCK					0xDE
#define	IDE_COMMAND_DOOR_UNLOCK					0xDF
#define	IDE_COMMAND_STANDBY_IMMEDIATE			0xE0
#define	IDE_COMMAND_IDLE_IMMEDIATE				0xE1
#define	IDE_COMMAND_CHECK_POWER					0xE5
#define	IDE_COMMAND_SLEEP						0xE6
#define	IDE_COMMAND_FLUSH_CACHE					0xE7
#define	IDE_COMMAND_FLUSH_CACHE_EXT				0xEA
#define	IDE_COMMAND_IDENTIFY					0xEC
#define	IDE_COMMAND_MEDIA_EJECT					0xED
#define	IDE_COMMAND_SET_FEATURE					0xEF
#define	IDE_COMMAND_SECURITY_FREEZE_LOCK		0xF5
#define	IDE_COMMAND_NOT_VALID					0xFF

// Set features parameter list
#define	IDE_FEATURE_ENABLE_WRITE_CACHE			0x02
#define	IDE_FEATURE_SET_TRANSFER_MODE			0x03
#define	IDE_FEATURE_ENABLE_SATA_FEATURE			0x10
#define	IDE_FEATURE_DISABLE_MSN					0x31
#define	IDE_FEATURE_DISABLE_REVERT_TO_POWER_ON	0x66
#define	IDE_FEATURE_DISABLE_WRITE_CACHE			0x82
#define	IDE_FEATURE_DISABLE_SATA_FEATURE		0x90
#define	IDE_FEATURE_ENABLE_MSN					0x95

// IDE status definitions
#define	IDE_STATUS_ERROR						0x01
#define	IDE_STATUS_INDEX						0x02
#define	IDE_STATUS_CORRECTED_ERROR				0x04
#define	IDE_STATUS_DRQ							0x08
#define	IDE_STATUS_DSC							0x10
#define	IDE_STATUS_DRDY							0x40
#define	IDE_STATUS_IDLE							0x50
#define	IDE_STATUS_BUSY							0x80

// IDE error definitions
#define	IDE_ERROR_NOTHING						0x00
#define	IDE_ERROR_BAD_BLOCK						0x80
#define	IDE_ERROR_CRC_ERROR						IDE_ERROR_BAD_BLOCK
#define	IDE_ERROR_DATA_ERROR					0x40
#define	IDE_ERROR_MEDIA_CHANGE					0x20
#define	IDE_ERROR_ID_NOT_FOUND					0x10
#define	IDE_ERROR_MEDIA_CHANGE_REQ				0x08
#define	IDE_ERROR_COMMAND_ABORTED				0x04
#define	IDE_ERROR_END_OF_MEDIA					0x02
#define	IDE_ERROR_ILLEGAL_LENGTH				0x01
#define	IDE_ERROR_ADDRESS_NOT_FOUND				IDE_ERROR_ILLEGAL_LENGTH

#endif /* __ATA_H__ */