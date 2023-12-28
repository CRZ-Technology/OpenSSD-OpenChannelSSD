//////////////////////////////////////////////////////////////////////////////////
// enc_pcie.h for Cosmos OpenSSD
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
// Design Name: Ubuntu block device driver
// File Name: enc_pcie.h
//
// Version: v1.1.0
//
// Description:
//   - Ubuntu block device driver.
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.1.0
//   - Support shutdown command (not ATA command)
//   - Move sector count information from driver to device firmware
//
// * v1.0.0
//   - First draft
//////////////////////////////////////////////////////////////////////////////////

#ifndef __ENC_PCIE_H__
#define __ENC_PCIE_H__


#define ENC_PCIE_DEV_NAME "enc_pcie"
//#define ENC_PCIE_BAR_SIZE 1

#define PCI_VENDOR_ID_XILINX		0x10ee
#define PCI_DEVICE_ID_XILINX_PCIE	0x0505

#define ENC_SSD_DEV_NAME		"pcissd"
#define ENC_SSD_DEV_MAJOR		240
#define ENC_SSD_MAX_DEVICE		1
#define ENC_SSD_MAX_PARTITONS	16


#define ENC_SSD_SECTOR_SHIFT		9 //9bit shift (512)
#define ENC_SSD_SECTOR_SIZE		(1<<ENC_SSD_SECTOR_SHIFT)


#define PCIE_REQUEST_DEPTH		(1<<0)
#define PCIE_BIO_DEPTH			(1<<5)
#define PCIE_COMPLETION_DEPTH		(1<<0)

#define PCIE_REG_STATUS				(0x00 << 2)
#define PCIE_REG_INTRRUPT_SET			(0x01 << 2)
#define PCIE_REG_REQUEST_BASE_U			(0x02 << 2)
#define PCIE_REG_REQUEST_BASE_L			(0x03 << 2)
#define PCIE_REG_REQUEST_HEAD_SET		(0x04 << 2)
#define PCIE_REG_REQUEST_TAIL			(0x05 << 2)
#define PCIE_REG_COMPLETION_BASE_U		(0x06 << 2)
#define PCIE_REG_COMPLETION_BASE_L		(0x07 << 2)
#define PCIE_REG_COMPLETION_HEAD		(0x08 << 2)
#define PCIE_REG_COMPLETION_TAIL		(0x09 << 2)


#define	IDE_COMMAND_NOP								(0x00)
#define	IDE_COMMAND_DATA_SET_MANAGEMENT				(0x06)
#define	IDE_COMMAND_ATAPI_RESET						(0x08)
#define	IDE_COMMAND_READ							(0x20)
#define	IDE_COMMAND_READ_EXT						(0x24)
#define	IDE_COMMAND_READ_DMA_EXT					(0x25)
#define	IDE_COMMAND_READ_DMA_QUEUED_EXT				(0x26)
#define	IDE_COMMAND_READ_MULTIPLE_EXT				(0x29)
#define	IDE_COMMAND_WRITE							(0x30)
#define	IDE_COMMAND_WRITE_EXT						(0x34)
#define	IDE_COMMAND_WRITE_DMA_EXT					(0x35)
#define	IDE_COMMAND_WRITE_DMA_QUEUED_EXT			(0x36)
#define	IDE_COMMAND_WRITE_MULTIPLE_EXT				(0x39)
#define	IDE_COMMAND_WRITE_DMA_FUA_EXT				(0x3D)
#define	IDE_COMMAND_WRITE_DMA_QUEUED_FUA_EXT		(0x3E)
#define	IDE_COMMAND_VERIFY							(0x40)
#define	IDE_COMMAND_VERIFY_EXT						(0x42)
#define	IDE_COMMAND_EXECUTE_DEVICE_DIAGNOSTIC		(0x90)
#define	IDE_COMMAND_SET_DRIVE_PARAMETERS			(0x91)
#define	IDE_COMMAND_ATAPI_PACKET					(0xA0)
#define	IDE_COMMAND_ATAPI_IDENTIFY					(0xA1)
#define	IDE_COMMAND_SMART							(0xB0)
#define	IDE_COMMAND_READ_MULTIPLE					(0xC4)
#define	IDE_COMMAND_WRITE_MULTIPLE					(0xC5)
#define	IDE_COMMAND_SET_MULTIPLE					(0xC6)
#define	IDE_COMMAND_READ_DMA						(0xC8)
#define	IDE_COMMAND_WRITE_DMA						(0xCA)
#define	IDE_COMMAND_WRITE_DMA_QUEUED				(0xCC)
#define	IDE_COMMAND_WRITE_MULTIPLE_FUA_EXT			(0xCE)
#define	IDE_COMMAND_GET_MEDIA_STATUS				(0xDA)
#define	IDE_COMMAND_DOOR_LOCK						(0xDE)
#define	IDE_COMMAND_DOOR_UNLOCK						(0xDF)
#define	IDE_COMMAND_STANDBY_IMMEDIATE				(0xE0)
#define	IDE_COMMAND_IDLE_IMMEDIATE					(0xE1)
#define	IDE_COMMAND_CHECK_POWER						(0xE5)
#define	IDE_COMMAND_SLEEP							(0xE6)
#define	IDE_COMMAND_FLUSH_CACHE						(0xE7)
#define	IDE_COMMAND_FLUSH_CACHE_EXT					(0xEA)
#define	IDE_COMMAND_IDENTIFY						(0xEC)
#define	IDE_COMMAND_MEDIA_EJECT						(0xED)
#define	IDE_COMMAND_SET_FEATURE						(0xEF)
#define	IDE_COMMAND_SECURITY_FREEZE_LOCK			(0xF5)
#define	IDE_COMMAND_NOT_VALID						(0xFF)


#define COMMAND_STATUS_SUCCESS			(0x01)

#pragma pack(push, data_struct, 1)

struct host_controller_reg {
	__u32	ReqStart;
	__u32	RequestBaseAddrU;
	__u32	RequestBaseAddrL;
	__u32	CompletionBaseAddrU;
	__u32	CompletionBaseAddrL;
	__u32	Shutdown;
	__u32	SectorCount;
};

struct request_io {
	__u32	Cmd;
	__u32	CurSect;
	__u32	ReqSect;
	__u32	ScatterAddrU;
	__u32	ScatterAddrL;
	__u32	ScatterLen;
	__u64	reserve;
};

struct completion_io {
	__u32	Done;
	__u32	CmdStatus;
	__u32	ErrorStatus;
};

struct scatter_region {
	__u32	DmaAddrU;
	__u32	DmaAddrL;
	__u32	Reserve;
	__u32	Length;
};

#pragma pack(pop, data_struct)

struct ssd_dev {
	struct pci_dev *pDev;
	struct block_device *bdev;
	struct device *dmaDev;
	struct ssd_dev_queue *devQueue;
	struct dma_pool *smallPool;
	struct dma_pool *pagePool;
	struct dma_pool *bigPool;
	struct gendisk *disk;
	unsigned int irq;
	struct host_controller_reg __iomem *pciBar;
};



struct request_cmd {
	//unsigned char valid;
	unsigned char direction;
	struct bio *bio;
	struct request_io reqIO;
	volatile struct scatter_region *scatterVirtAddr;
	struct scatterlist *sgList;
};

struct ssd_dev_queue {
	struct ssd_dev *sDev;
	struct task_struct *threadRequest;
	struct request_queue *queue;
	struct request_cmd *requestList;
	volatile struct request_io *requestQueue;
	volatile struct completion_io *completionQueue;
	dma_addr_t requestDMAAddr;
	dma_addr_t completionDMAAddr;
	struct bio_list bioQueue;
	spinlock_t qLock;
	//spinlock_t rqLock;
	//volatile unsigned int requestHead;
	//volatile unsigned int requestTail;
	//volatile unsigned int completionHead;
	//volatile unsigned int completionTail;
	volatile unsigned int ReqStart;
};


#endif /* __ENC_PCIE_H__ */
