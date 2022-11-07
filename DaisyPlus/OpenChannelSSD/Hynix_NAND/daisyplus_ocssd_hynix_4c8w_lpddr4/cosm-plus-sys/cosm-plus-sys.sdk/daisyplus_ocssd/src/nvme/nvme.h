//////////////////////////////////////////////////////////////////////////////////
// nvme.h for Cosmos+ OpenSSD
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
// Module Name: NVMe header
// File Name: nvme.h
//
// Version: v1.1.0.oc
//
// Description:
//   - defines parameters and data structures of the NVMe controller
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

#ifndef __NVME_H_
#define __NVME_H_

#define MAX_NUM_OF_IO_SQ	8//non zero-based
#define MAX_NUM_OF_IO_CQ	8//non zero-based

#define ADMIN_CMD_DRAM_DATA_BUFFER		0x08000000
#define NVME_IDENTIFICATION_ADDR		ADMIN_CMD_DRAM_DATA_BUFFER//4KB
#define NVME_IDENTIFICATION_SIZE		4096
#define NAMESPACE_IDENTIFICATION_ADDR	(NVME_IDENTIFICATION_ADDR + NVME_IDENTIFICATION_SIZE)//4KB
#define NAMESPACE_IDENTIFICATION_SIZE	4096
#define OCSSD_IDENTIFICATION_ADDR		(NAMESPACE_IDENTIFICATION_ADDR + NAMESPACE_IDENTIFICATION_SIZE)//4KB
#define OCSSD_IDENTIFICATION_SIZE		4096
#define OCSSD_PPA_LIST_ADDR				(OCSSD_IDENTIFICATION_ADDR + OCSSD_IDENTIFICATION_SIZE)//512B
#define OCSSD_PPA_LIST_SIZE				4096//3.5KB reserved
#define OCSSD_PRP_LIST_ADDR				(OCSSD_PPA_LIST_ADDR + OCSSD_PPA_LIST_SIZE)//2KB = 8 bytes * 256
#define OCSSD_PRP_LIST_SIZE				4096//2KB reserved
#define OCSSD_METADATA_WRITE_ADDR		(OCSSD_PRP_LIST_ADDR + OCSSD_PRP_LIST_SIZE)//1KB = 16 bytes * 64 PPAs
#define OCSSD_METADATA_WRITE_SIZE		4096//3KB reserved
#define OCSSD_METADATA_READ_ADDR		(OCSSD_METADATA_WRITE_ADDR + OCSSD_METADATA_WRITE_SIZE)//4MB = 4KB * 1024 OCSSD commands
#define OCSSD_METADATA_READ_SIZE		4194304

//at least ((64 + NUMBER_OF_BLOCKS_PER_LUN) * NUMBER_OF_LUNS_ON_DEVICE) byte required
//because of the limit of DMA engine, each BBT size must be equal to 4096's multiple
//Fundamental BBT size: 8256B //(64 + 8192)
//Calibrated BBT size: 12288B//8192 (=4096 * 2) < 8256 < 12288 (=4096 * 3)
//Total BBTs size: 786432B = 768KB//(12288 * 64)
#define OCSSD_BAD_BLOCKS_TABLE_ADDR		(OCSSD_METADATA_READ_ADDR + OCSSD_METADATA_READ_SIZE)//786432 = 768KB, ~0x010C_FFFF
#define OCSSD_BAD_BLOCKS_TABLE_SIZE		786432

#define STORAGE_CAPACITY_L				NUMBER_OF_SECTORS_ON_DEVICE//(4*8*2*4096*128*4) * 4KB = 512GB//not used
#define STORAGE_CAPACITY_H				0x00000000

#define MAX_NUM_OF_NLB					256//(1024 * 1024 / 4096)//1MB

#define NVME_METADATA_SIZE				16//bytes//
#define OCSSD_METADATA_SIZE				NVME_METADATA_SIZE
#define NUMBER_OF_UINT32_IN_NVME_METADATA	(NVME_METADATA_SIZE / 4)
#define NUMBER_OF_UINT32_IN_OCSSD_METADATA	(OCSSD_METADATA_SIZE / 4)

//BBT protection mode selection
//0: protection off
//1: if an OCSSD command that related to block 0 is issued, it fails
//2: if an OCSSD command that related to block X is issued, the device accesses block X + 1
#define BBT_PROTECTION_OFF				0
#define BBT_PROTECTION_FAIL				1
#define BBT_PROTECTION_HIDE				2
#define BBT_PROTECTION_MODE				BBT_PROTECTION_OFF

/*Parameters for Open-Channel SSDs*/
#define SECTOR_SIZE						4096
#define MINIMUM_DATA_UNIT_SIZE_FOR_ECC	4096
#define PAGE_SIZE						16384

#define NUMBER_OF_CHANNELS_ON_DEVICE	4//8
#define NUMBER_OF_LUNS_ON_DEVICE		32//64
#define NUMBER_OF_PLANES_ON_DEVICE		64//128
#define NUMBER_OF_BLOCKS_ON_DEVICE		261144//524288
#define NUMBER_OF_PAGES_ON_DEVICE		33554432//67108864
#define NUMBER_OF_SECTORS_ON_DEVICE		134217728//268435456

#define NUMBER_OF_LUNS_PER_CHANNEL		8
#define NUMBER_OF_PLANES_PER_CHANNEL	16
#define NUMBER_OF_BLOCKS_PER_CHANNEL	65536
#define NUMBER_OF_PAGES_PER_CHANNEL		8388608
#define NUMBER_OF_SECTORS_PER_CHANNEL	33554432

#define NUMBER_OF_PLANES_PER_LUN		2
#define NUMBER_OF_BLOCKS_PER_LUN		8192
#define NUMBER_OF_PAGES_PER_LUN			1048576
#define NUMBER_OF_SECTORS_PER_LUN		4194304

#define NUMBER_OF_BLOCKS_PER_PLANE		4096
#define NUMBER_OF_PAGES_PER_PLANE		524288
#define NUMBER_OF_SECTORS_PER_PLANE		2097152

#define NUMBER_OF_PAGES_PER_BLOCK		128
#define NUMBER_OF_SECTORS_PER_BLOCK		512

#define NUMBER_OF_SECTORS_PER_PAGE		4

#define PPA_CHANNEL_BIT_START			25
#define PPA_CHANNEL_BIT_LENGTH			3
#define PPA_LUN_BIT_START				22
#define PPA_LUN_BIT_LENGTH				3
#define PPA_PLANE_BIT_START				21
#define PPA_PLANE_BIT_LENGTH			1
#define PPA_BLOCK_BIT_START				9
#define PPA_BLOCK_BIT_LENGTH			12
#define PPA_PAGE_BIT_START				2
#define PPA_PAGE_BIT_LENGTH				7
#define PPA_SECTOR_BIT_START			0
#define PPA_SECTOR_BIT_LENGTH			2

/*Opcodes for Admin Commands */
#define ADMIN_DELETE_IO_SQ									0x00
#define ADMIN_CREATE_IO_SQ									0x01
#define ADMIN_GET_LOG_PAGE									0x02
#define ADMIN_DELETE_IO_CQ									0x04
#define ADMIN_CREATE_IO_CQ									0x05
#define ADMIN_IDENTIFY										0x06
#define ADMIN_ABORT											0x08
#define ADMIN_SET_FEATURES									0x09
#define ADMIN_GET_FEATURES									0x0A
#define ADMIN_ASYNCHRONOUS_EVENT_REQUEST					0x0C
#define ADMIN_FIRMWARE_ACTIVATE								0x10
#define ADMIN_FIRMWARE_IMAGE_DOWNLOAD						0x11
#define ADMIN_FORMAT_NVM									0x80
#define ADMIN_SECURITY_SEND									0x81
#define ADMIN_SECURITY_RECEIVE								0x82
//////////for debug//////////////
#define ADMIN_FLUSH_BBT										0xFD
#define ADMIN_COUNT_REQ_SIZE_START							0xFE
#define ADMIN_COUNT_REQ_SIZE_END							0xFF


/*Opcodes for IO Commands */
#define IO_NVM_FLUSH										0x00
#define IO_NVM_WRITE										0x01
#define IO_NVM_READ											0x02
#define IO_NVM_WRITE_UNCORRECTABLE							0x04
#define IO_NVM_COMPARE										0x05
#define IO_NVM_WRITE_ZEROS									0x08
#define IO_NVM_DATASET_MANAGEMENT							0x09

/* Opcodes for Open-channel SSD Admin Commands */
#define ADMIN_OCSSD_DEVICE_IDENTIFICATION					0xE2
#define ADMIN_OCSSD_SET_BAD_BLOCKS_TABLE					0xF1
#define ADMIN_OCSSD_GET_BAD_BLOCKS_TABLE					0xF2

/* Opcodes for Open-channel SSD IO Commands */
#define IO_OCSSD_PHYSICAL_BLOCK_ERASE						0x90
#define IO_OCSSD_PHYSICAL_PAGE_ADDRESS_WRITE				0x91
#define IO_OCSSD_PHYSICAL_PAGE_ADDRESS_READ					0x92
#define IO_OCSSD_PHYSICAL_PAGE_ADDRESS_RAW_WRITE			0x95
#define IO_OCSSD_PHYSICAL_PAGE_ADDRESS_RAW_READ				0x96

/*Status Code Type */
#define SCT_GENERIC_COMMAND_STATUS							0
#define SCT_COMMAND_SPECIFIC_STATUS							1
#define SCT_MEDIA_AND_DATA_INTEGRITY_ERRORS					2
#define SCT_VENDOR_SPECIFIC									7

/*Status Code - Generic Command Status Values */
#define SC_SUCCESSFUL_COMPLETION							0x00
#define SC_INVALID_COMMAND_OPCODE							0x01
#define SC_INVALID_FIELD_IN_COMMAND							0x02
#define SC_COMMAND_ID_CONFLICT								0x03
#define SC_DATA_TRANSFER_ERROR								0x04
#define SC_COMMANDS_ABORTED_DUE_TO_POWER_LOSS_NOTIFICATION	0x05
#define SC_INTERNAL_DEVICE_ERROR							0x06
#define SC_COMMAND_ABORT_REQUESTED							0x07
#define SC_COMMAND_ABORTED_DUE_TO_SQ_DELETION				0x08
#define SC_COMMAND_ABORTED_DUE_TO_FAILED_FUSED_COMMAND		0x09
#define SC_COMMAND_ABORTED_DUE_TO_MISSING_FUSED_COMMAND		0x0A
#define SC_INVALID_NAMESPACE_OR_FORMAT						0x0B
#define SC_COMMAND_SEQUENCE_ERROR							0x0C
#define SC_INVALID_SGL_SEGMENT_DESCRIPTOR					0x0D
#define SC_INVALID_NUMBER_OF_SGL_DESCRIPTORS				0x0E
#define SC_DATA_SGL_LENGTH_INVALID							0x0F
#define SC_METADATA_SGL_LENGTH_INVALID						0x10
#define SC_SGL_DESCRIPTOR_TYPE_INVALID						0x11
#define SC_INVALID_USE_OF_CONTROLLER_MEMORY_BUFFER			0x12
#define SC_PRP_OFFSET_INVALID								0x13
#define SC_ATOMIC_WRITE_UNIT_EXCEEDED						0x14
#define SC_SGL_OFFSET_INVALID								0x16
#define SC_SGL_SUB_TYPE_INVALID								0x17
#define SC_HOST_IDENTIFIER_INCONSISTENT_FORMAT				0x18
#define SC_KEEP_ALIVE_TIMEOUT_EXPIRED						0x19
#define SC_KEEP_ALIVE_TIMEOUT_INVALID						0x1A

/*Status Code - Generic Command Status Values, NVM Command Set */
#define SC_LBA_OUT_OF_RANGE									0x80
#define SC_CAPACITY_EXCEEDED								0x81
#define SC_NAMESPACE_NOT_READY								0x82
#define SC_RESERVATION_CONFLICT								0x83
#define SC_FORMAT_IN_PROGRESS								0x84

/*Status Code - Command Specific Status Values */
#define SC_COMPLETION_QUEUE_INVALID								0x00//Create I/O Submission Queue
#define SC_INVALID_QUEUE_IDENTIFIER								0x01//Create I/O Submission Queue, Create I/O Completion Queue, Delete I/O Completion Queue, Delete I/O Submission Queue
#define SC_INVALID_QUEUE_SIZE									0x02//Create I/O Submission Queue, Create I/O Completion Queue
#define SC_ABORT_COMMAND_LIMIT_EXCEEDED							0x03//Abort
#define SC_ASYNCHRONOUS_EVENT_REQUEST_LIMIT_EXCEEDED			0x05//Asynchronous Event Request
#define SC_INVALID_FIRMWARE_SLOT								0x06//Firmware Commit
#define SC_INVALID_FIRMWARE_IMAGE								0x07//Firmware Commit
#define SC_INVALID_INTERRUPT_VECTOR								0x08//Create I/O Completion Queue
#define SC_INVALID_LOG_PAGE										0x09//Get Log Page
#define SC_INVALID_FORMAT										0x0A//Format NVM, Namespace Management
#define SC_FIRMWARE_ACTIVATION_REQUIRES_CONVENTIONAL_RESET		0x0B//Firmware Commit
#define SC_INVALID_QUEUE_DELETION								0x0C//Delete I/O Completion Queue
#define SC_FEATURE_IDENTIFIER_NOT_SAVEABLE						0x0D//Set Features
#define SC_FEATURE_NOT_CHANGEABLE								0x0E//Set Features
#define SC_FEATURE_NOT_NAMESPACE_SPECIFIC						0x0F//Set Features
#define SC_FIRMWARE_ACTIVATION_REQUIRES_NVM_SUBSYSTEM_RESET		0x10//Firmware Commit
#define SC_FIRMWARE_ACTIVATION_REQUIRES_RESET					0x11//Firmware Commit
#define SC_FIRMWARE_ACTIVATION_REQUIRES_MAXIMUM_TIME_VIOLATION	0x12//Firmware Commit
#define SC_FIRMWARE_ACTIVATION_PROHIBITED						0x13//Firmware Commit
#define SC_OVERLAPPING_RANGE									0x14//Firmware Commit, Firmware Image Download,Set Features
#define SC_NAMESPACE_INSUFFICIENT_CAPACITY						0x15//Namespace Management
#define SC_NAMESPACE_IDENTIFIER_UNAVAILABLE						0x16//Namespace Management
#define SC_NAMESPACE_ALREADY_ATTACHED							0x18//Namespace Attachment
#define SC_NAMESPACE_IS_PRIVATE									0x19//Namespace Attachment
#define SC_NAMESPACE_NOT_ATTACHED								0x1A//Namespace Attachment
#define SC_THIN_PROVISIONING_NOT_SUPPORTED						0x1B//Namespace Management
#define SC_CONTROLLER_LIST_INVALID								0x1C//Namespace Attachment

/*Status Code - Command Specific Status Values, NVM Command Set */
#define SC_CONFLICTING_ATTRIBUTES							0x80//Dataset Management, Read, Write
#define SC_INVALID_PROTECTION_INFORMATION					0x81//Compare, Read, Write, Write Zeroes
#define SC_ATTEMPTED_WRITE_TO_READ_ONLY_RANGE				0x82//Dataset Management, Write, Write Uncorrectable, Write Zeroes

/*Status Code - Media and Data Integrity Error Values, NVM Command Set */
#define SC_WRITE_FAULT										0x80
#define SC_UNRECOVERED_READ_ERROR							0x81
#define SC_END_TO_END_GUARD_CHECK_ERROR						0x82
#define SC_END_TO_END_APPLICATION_TAG_CHECK_ERROR			0x83
#define SC_END_TO_END_REFERENCE_TAG_CHECK_ERROR				0x84
#define SC_COMPARE_FAILURE									0x85
#define SC_ACCESS_DENIED									0x86
#define SC_DEALLOCATED_OR_UNWRITTEN_LOGICAL_BLOCK			0x87
//for OCSSD v2.0
#define SC_OCSSD_OFFLINE_CHUNK								0xC0//Vector Chunk Reset
#define SC_OCSSD_INVALID_RESET								0xC1//Vector Chunk Reset
#define SC_OCSSD_WRITE_FAIL_WRITE_NEXT_UNIT					0xF0//Vector Chunk Write
#define SC_OCSSD_WRITE_FAIL_CHUNK_EARLY_CLOSE				0xF1//Vector Chunk Write
#define SC_OCSSD_OUT_OF_ORDER_WRITE							0xF2//Vector Chunk Write
#define SC_OCSSD_WRITE_FAULT								SC_WRITE_FAULT//Vector Chunk Write
#define SC_OCSSD_HIGH_ECC									0xD0//Vector Chunk Read

/* Set/Get Features - Features Identifiers */
#define ARBITRATION											0x01
#define POWER_MANAGEMENT									0x02
#define LBA_RANGE_TYPE										0x03
#define TEMPERATURE_THRESHOLD								0x04
#define ERROR_RECOVERY										0x05
#define VOLATILE_WRITE_CACHE								0x06
#define NUMBER_OF_QUEUES									0x07
#define INTERRUPT_COALESCING								0x08
#define INTERRUPT_VECTOR_CONFIGURATION						0x09
#define WRITE_ATOMICITY										0x0A
#define ASYNCHRONOUS_EVENT_CONFIGURATION					0x0B
#define Power_State_Transition								0x0C
#define Timestamp											0x0E
#define SOFTWARE_PROGRESS_MARKER							0x80

#define NVME_TASK_IDLE										0x0
#define NVME_TASK_WAIT_CC_EN								0x1
#define NVME_TASK_RUNNING									0x2
#define NVME_TASK_SHUTDOWN									0x3
#define NVME_TASK_WAIT_RESET								0x4
#define NVME_TASK_RESET										0x5
#pragma pack(push, 1)

typedef struct _HOST_ADDRESS
{
	unsigned int low32;
	unsigned int high32;
}HOST_ADDRESS;

typedef struct _PRP_LIST
{
	unsigned int totalCapacity;//in bytes
	unsigned int numberOfPRPs;
	HOST_ADDRESS *PRP;
}PRP_LIST;

typedef struct _NVME_COMMAND
{
	unsigned short qID;
	unsigned short cmdSlotTag;
	unsigned int cmdSeqNum;
	unsigned int cmdDword[16];
}NVME_COMMAND;

typedef struct _NVME_ADMIN_COMMAND
{
	union {
		unsigned int dword[16];
		struct {
			struct {
				unsigned char OPC;
				unsigned char FUSE			:2;
				unsigned char reserved0		:5;
				unsigned char PSDT			:1;
				unsigned short CID;
			};
			unsigned int NSID;
			unsigned int reserved1[2];
			unsigned int MPTR[2];
			unsigned int PRP1[2];
			unsigned int PRP2[2];
			unsigned int dword10;
			unsigned int dword11;
			unsigned int dword12;
			unsigned int dword13;
			unsigned int dword14;
			unsigned int dword15;
		};
	};
}NVME_ADMIN_COMMAND;

typedef struct _NVME_IO_COMMAND
{
	union {
		unsigned int dword[16];
		struct {
			struct {
				unsigned char OPC;
				unsigned char FUSE			:2;
				unsigned char reserved0		:5;
				unsigned char PSDT			:1;
				unsigned short CID;
			};
			unsigned int NSID;
			unsigned int reserved1[2];
			unsigned int MPTR[2];
			unsigned int PRP1[2];
			unsigned int PRP2[2];
			unsigned int dword10;
			unsigned int dword11;
			unsigned int dword12;
			unsigned int dword13;
			unsigned int dword14;
			unsigned int dword15;
		};
	};
}NVME_IO_COMMAND;

typedef struct _NVME_COMPLETION
{
	union {
		unsigned int dword[2];
		struct {
			union {
				unsigned short statusFieldWord;
				struct 
				{
					unsigned short reserved0		:1;
					unsigned short SC				:8;
					unsigned short SCT				:3;
					unsigned short reserved1		:2;
					unsigned short MORE				:1;
					unsigned short DNR				:1;
				}statusField;
			};
			
			unsigned int specific;
		};
	};
}NVME_COMPLETION;

typedef struct _ADMIN_SET_FEATURES_DW10
{
	union {
		unsigned int dword;
		struct {
			unsigned char FID;
			unsigned char reserved0[2];
			unsigned char reserved1			:7;
			unsigned char SV				:1;
		};
	};
} ADMIN_SET_FEATURES_DW10;

typedef struct _ADMIN_SET_FEATURES_NUMBER_OF_QUEUES_DW11
{
	union {
		unsigned int dword;
		struct {
			unsigned short NCQR;//zero-based value
			unsigned short NSQR;//zero-based value
		};
	};
} ADMIN_SET_FEATURES_NUMBER_OF_QUEUES_DW11;

typedef struct _ADMIN_SET_FEATURES_NUMBER_OF_QUEUES_COMPLETE
{
	union {
		unsigned int dword;
		struct {
			unsigned short NCQA;//zero-based value
			unsigned short NSQA;//zero-based value
		};
	};
} ADMIN_SET_FEATURES_NUMBER_OF_QUEUES_COMPLETE;


/* Get Features Command */
typedef struct _ADMIN_GET_FEATURES_DW10
{
	union {
		unsigned int dword;
		struct {
			unsigned char FID;
			unsigned char SEL				:3;
			unsigned char reserved0			:5;
			unsigned char reserved1[2];
		};
	};
} ADMIN_GET_FEATURES_DW10;

typedef struct _ADMIN_GET_FEATURES_NUMBER_OF_QUEUES_COMPLETE
{
	union {
		unsigned int dword;
		struct {
			unsigned short NCQA;//zero-based value
			unsigned short NSQA;//zero-based value
		};
	};
} ADMIN_GET_FEATURES_NUMBER_OF_QUEUES_COMPLETE;

/* Create I/O Completion Queue Command */
typedef struct _ADMIN_CREATE_IO_CQ_DW10
{
	union {
		unsigned int dword;
		struct {
			unsigned short QID;
			unsigned short QSIZE;
		};
	};
} ADMIN_CREATE_IO_CQ_DW10;

typedef struct _ADMIN_CREATE_IO_CQ_DW11
{
	union {
		unsigned int dword;
		struct {
			unsigned short PC				:1;
			unsigned short IEN				:1;
			unsigned short reserved0		:14;
			unsigned short IV;
		};
	};
} ADMIN_CREATE_IO_CQ_DW11;


/* Delete I/O Completion Queue Command */
typedef struct _ADMIN_DELETE_IO_CQ_DW10
{
	union {
		unsigned int dword;
		struct {
			unsigned short QID;
			unsigned short reserved0;
		};
	};
} ADMIN_DELETE_IO_CQ_DW10;



/* Create I/O Submission Queue Command */
typedef struct _ADMIN_CREATE_IO_SQ_DW10
{
	union {
		unsigned int dword;
		struct {
			unsigned short QID;
			unsigned short QSIZE;
		};
	};
} ADMIN_CREATE_IO_SQ_DW10;

typedef struct _ADMIN_CREATE_IO_SQ_DW11
{
	union {
		unsigned int dword;
		struct {
			unsigned short PC			:1;
			unsigned short QPRIO		:2;
			unsigned short reserved0	:13;
			unsigned short CQID;
		};
	};
} ADMIN_CREATE_IO_SQ_DW11;

/* Delete I/O Submission Queue Command */
typedef struct _ADMIN_DELETE_IO_SQ_DW10
{
	union {
		unsigned int dword;
		struct {
			unsigned short QID;
			unsigned short reserved0;
		};
	};
} ADMIN_DELETE_IO_SQ_DW10;

/* Identify Command */
typedef struct _ADMIN_IDENTIFY_COMMAND_DW10
{
	union {
		unsigned int dword;
		struct {
			unsigned int CNS			:1;
			unsigned int reserved0		:31;
		};
	};
} ADMIN_IDENTIFY_COMMAND_DW10;

/* Get Log Page Command */
typedef struct _ADMIN_GET_LOG_PAGE_DW10
{
	union {
		unsigned int dword;
		struct {
			unsigned char LID;
			unsigned char reserved0;
			unsigned short NUMD			:12;
			unsigned short reserved1	:4;
		};
	};
} ADMIN_GET_LOG_PAGE_DW10;

/* Identify - Power State Descriptor Data Structure */
typedef struct _ADMIN_IDENTIFY_POWER_STATE_DESCRIPTOR
{
	union {
		unsigned int dword[8];
		struct {
			unsigned short MP;
			unsigned short reserved0			:8;
			unsigned short MPS					:1;
			unsigned short NOPS					:1;
			unsigned short reserved1			:6;
			unsigned int ENLAT;
			unsigned int EXLAT;
			unsigned char RRT					:5;
			unsigned char reserved2				:3;
			unsigned char RRL					:5;
			unsigned char reserved3				:3;
			unsigned char RWT					:5;
			unsigned char reserved4				:3;
			unsigned char RWL					:5;
			unsigned char reserved5				:3;
			unsigned int reserved6[4];
		};
	};
} ADMIN_IDENTIFY_POWER_STATE_DESCRIPTOR;

/* Identify Controller Data Structure */
typedef struct _ADMIN_IDENTIFY_CONTROLLER
{
	unsigned short VID;
	unsigned short SSVID;
	unsigned char SN[20];
	unsigned char MN[40];
	unsigned char FR[8];
	unsigned char RAB;
	unsigned char IEEE[3];
	unsigned char CMIC;
	unsigned char MDTS;
	unsigned short CNTLID;
	unsigned char reserved0[176];

	struct
	{
		unsigned short supportsSecuritySendSecurityReceive		:1;
		unsigned short supportsFormatNVM						:1;
		unsigned short supportsFirmwareActivateFirmwareDownload	:1;
		unsigned short reserved0								:13;
	} OACS;

	unsigned char ACL;
	unsigned char AERL;

	struct
	{
		unsigned char firstFirmwareSlotReadOnly					:1;
		unsigned char supportedNumberOfFirmwareSlots			:3;
		unsigned char reserved0									:4;
	} FRMW;

	struct
	{
		unsigned char supportsSMARTHealthInformationLogPage		:1;
		unsigned char supportsCommandEffectsLogPage				:1;
		unsigned char reserved0									:6;
	} LPA;

	unsigned char ELPE;
	unsigned char NPSS;

	unsigned char AVSCC											:1;
	unsigned char reserved1										:7;

	unsigned char APSTA											:1;
	unsigned char reserved2										:7;

	unsigned char reserved3[246];

	struct
	{
		unsigned char requiredSubmissionQueueEntrySize			:4;
		unsigned char maximumSubmissionQueueEntrySize			:4;
	} SQES;

	struct
	{
		unsigned char requiredCompletionQueueEntrySize			:4;
		unsigned char maximumCompletionQueueEntrySize			:4;
	} CQES;

	unsigned char reserved4[2];
	unsigned int NN;

	struct
	{
		unsigned short supportsCompare							:1;
		unsigned short supportsWriteUncorrectable				:1;
		unsigned short supportsDataSetManagement				:1;
		unsigned short reserved0								:13;
	} ONCS;

	struct
	{
		unsigned short supportsCompareWrite						:1;
		unsigned short reserved0								:15;
	} FUSES;

	struct
	{
		unsigned char formatAppliesToAllNamespaces				:1;
		unsigned char secureEraseAppliesToAllNamespaces			:1;
		unsigned char supportsCryptographicErase				:1;
		unsigned char reserved0									:5;
	} FNA;

	struct
	{
		unsigned char present									:1;
		unsigned char reserved0									:7;
	} VWC;

	unsigned short AWUN;
	unsigned short AWUPF;

	unsigned char NVSCC											:1;
	unsigned char reserved5										:7;

	unsigned char reserved6;

	unsigned short ACWU;

	unsigned char reserved7[2];

	struct
	{
		unsigned int supportsSGL								:1;
		unsigned int reserved0									:15;
		unsigned int supportsSGLBitBucketDescriptor				:1;
		unsigned int reserved1									:15;
	} SGLS;


	unsigned char reserved8[164];
	unsigned char reserved9[1344];

	ADMIN_IDENTIFY_POWER_STATE_DESCRIPTOR PSDx[32];

	unsigned char VS[1024];
} ADMIN_IDENTIFY_CONTROLLER;

/* Identify - LBA Format Data Structure */
typedef struct _ADMIN_IDENTIFY_FORMAT_DATA
{
	unsigned short MS;
	unsigned char LBADS;
	unsigned char RP				:2;
	unsigned char reserved			:6;
} ADMIN_IDENTIFY_FORMAT_DATA;

/* Identify Namespace Data Structure */
typedef struct _ADMIN_IDENTIFY_NAMESPACE
{
	unsigned int NSZE[2];
	unsigned int NCAP[2];
	unsigned int NUSE[2];

	struct
	{
		unsigned char supportsThinProvisioning				:1;
		unsigned char reserved0								:7;
	} NSFEAT;

	unsigned char NLBAF;

	struct
	{
		unsigned char supportedCombination					:4;
		unsigned char supportsMetadataAtEndOfLBA			:1;
		unsigned char reserved0								:3;
	} FLBAS;

	struct
	{
		unsigned char supportsMetadataAsPartOfLBA			:1;
		unsigned char supportsMetadataAsSeperate			:1;
		unsigned char reserved0								:6;
	} MC;


	struct
	{
		unsigned char supportsProtectionType1				:1;
		unsigned char supportsProtectionType2				:1;
		unsigned char supportsProtectionType3				:1;
		unsigned char supportsProtectionFirst8				:1;
		unsigned char supportsProtectionLast8				:1;
		unsigned char reserved0								:3;
	} DPC;

	struct
	{
		unsigned char protectionEnabled						:3;
		unsigned char protectionInFirst8					:1;
		unsigned char reserved0								:4;
	} DPS;

	struct
	{
		unsigned char supportsMultipathIOSharing			:1;
		unsigned char reserved0								:7;
	} NMIC;

	struct
	{
		unsigned char supportsPersistThroughPowerLoss		:1;
		unsigned char supportsWriteExclusiveReservation		:1;
		unsigned char supportsWriteExclusiveRegistrants		:1;
		unsigned char supportsExclusiveAccessRegistrants	:1;
		unsigned char supportsWriteExclusiveAllRegistrants	:1;
		unsigned char supportsExclusiveAccessAllRegistrants	:1;
		unsigned char reserved0								:2;
	} RESCAP;

	unsigned char reserved0[88];
	unsigned char EUI64[8];

	ADMIN_IDENTIFY_FORMAT_DATA LBAFx[16];

	unsigned char reserved1[192];
	unsigned char VS[3712];
} ADMIN_IDENTIFY_NAMESPACE;

/* Multi-plane Operation Support Data Structure for Open-channel SSD */
typedef struct _ADMIN_OCSSD_MPOS
{
	unsigned char singlePlaneRead				:1;
	unsigned char dualPlaneRead					:1;
	unsigned char quadPlaneRead					:1;
	unsigned char reserved0						:5;
	unsigned char singlePlaneProgram			:1;
	unsigned char dualPlaneProgram				:1;
	unsigned char quadPlaneProgram				:1;
	unsigned char reserved1						:5;
	unsigned char singlePlaneErase				:1;
	unsigned char dualPlaneErase				:1;
	unsigned char quadPlaneErase				:1;
	unsigned short reserved2					:13;
} ADMIN_OCSSD_MPOS;

/* Media and Controller Capabilities Data Structure for Open-channel SSD */
typedef struct _ADMIN_OCSSD_MCCAP
{
	unsigned char SLCMode						:1;
	unsigned char commandSuspension				:1;
	unsigned char scrambleOnOff					:1;
	unsigned char encryption					:1;
	unsigned int reserved						:28;
} ADMIN_OCSSD_MCCAP;

/* MLC Page Pairing Information Byte Structure for Open-channel SSD */
typedef struct _ADMIN_OCSSD_MLC_PAIRING_INFORMATION_BYTE
{
	unsigned char lowerPageOffsetFromPreviousLowerPage		:4;
	unsigned char upperPageOffsetFromPairedLowerPage		:4;
} ADMIN_OCSSD_MLC_PAIRING_INFORMATION_BYTE;

/* MLC Page Pairing Table Data Structure for Open-channel SSD */
typedef struct _ADMIN_OCSSD_MLC_PAIRING_TABLE
{
	unsigned short num;
	ADMIN_OCSSD_MLC_PAIRING_INFORMATION_BYTE information[128];//'128' should be considered to use other NAND flash

} ADMIN_OCSSD_MLC_PAIRING_TABLE;

/* Media Type Specific Data Structure for Open-channel SSD */
typedef struct _ADMIN_OCSSD_MTS
{
	unsigned int idCodes[2];//ID codes for READ ID command//couldn't find 'READ ID' command on Open-channel SSD 1.2 spec
	ADMIN_OCSSD_MLC_PAIRING_TABLE mlcPagePairingTable;
	unsigned char TBD[758];
} ADMIN_OCSSD_MTS;

/*Group Description Data Structure for Open-channel SSD */
typedef struct _ADMIN_OCSSD_Group_Description
{
	unsigned char MTYPE;
	unsigned char FMTYPE;

	unsigned char reserved0[2];

	unsigned char numberOfChannels;
	unsigned char numberOfLUNs;
	unsigned char numberOfPlanes;

	unsigned char reserved1;

	unsigned short numberOfBlocks;
	unsigned short numberOfPages;
	unsigned short pageSize;
	unsigned short CSECS;
	unsigned short SOS;

	unsigned char reserved2[2];

	unsigned int TRDT;
	unsigned int TRDM;
	unsigned int TPRT;
	unsigned int TPRM;
	unsigned int TBET;
	unsigned int TBEM;
	ADMIN_OCSSD_MPOS MPOS;
	ADMIN_OCSSD_MCCAP MCCAP;
	unsigned short CPAR;

	unsigned char reserved3[10];

	ADMIN_OCSSD_MTS MTS;
} ADMIN_OCSSD_Group_Description;

/* Identify Open-channel SSD Device Data Structure */
typedef struct _ADMIN_OCSSD_IDENTIFICATION
{
	unsigned char version;
	unsigned char VNCMT;
	unsigned char CGRPS;

	unsigned char reserved0;

	struct
	{
		unsigned char badBlockTableManagement				:1;
		unsigned char hybridCommandSupport					:1;
		unsigned int reserved								:30;
	} CAP;

	struct
	{
		unsigned char hybridMode						:1;
		unsigned char errorCodeCorrectionMode			:1;
		unsigned int reserved							:30;
	} DOM;

	struct
	{
		unsigned char channelBitStart;
		unsigned char channelBitLength;
		unsigned char LUNBitStart;
		unsigned char LUNBitLength;
		unsigned char planeBitStart;
		unsigned char planeBitLength;
		unsigned char blockBitStart;
		unsigned char blockBitLength;
		unsigned char pageBitStart;
		unsigned char pageBitLength;
		unsigned char sectorBitStart;
		unsigned char sectorBitLength;
		unsigned char reserved[4];
	} PPAF;

	unsigned char reserved1[228];

	ADMIN_OCSSD_Group_Description groupDescription[4];
} ADMIN_OCSSD_IDENTIFICATION;

/* Bad Blocks Table Entry Structure of Get Bad Blocks Table Command for Open-channel SSD */
typedef struct _ADMIN_OCSSD_BAD_BLOCKS_TABLE_ENTRY
{
	unsigned char factoryBadBlock					:1;
	unsigned char grownBadBlock						:1;
	unsigned char deviceReservedBlock				:1;
	unsigned char hostReservedBadBlock				:1;
	unsigned char mediaManagerReservedBadBlock		:1;
	unsigned char reserved							:3;
}ADMIN_OCSSD_BAD_BLOCKS_TABLE_ENTRY;

/* Bad Blocks Table Structure of Get Bad Blocks Table Command for Open-channel SSD */
typedef struct _ADMIN_OCSSD_BAD_BLOCKS_TABLE
{
	unsigned char tableID[4];//="BBLT"
	unsigned short versionNumber;
	unsigned short revisionNumber;

	unsigned int reserved0;

	unsigned int totalNumberOfBlocksInThisLUN;//number of blocks per plane * number of planes
	unsigned int numberOfFactoryBadBlocks;
	unsigned int numberOfGrownBadBlocks;
	unsigned int numberOfDeviceReservedBlocks;
	unsigned int numberOfHostReservedBlocks;

	unsigned int reserved1[8];

	ADMIN_OCSSD_BAD_BLOCKS_TABLE_ENTRY badBlocksTableEntry[(4096 * 3) - 64];
} ADMIN_OCSSD_BAD_BLOCKS_TABLE;

/* Physical Page Address Structure of Command for Open-channel SSD */
typedef struct _OCSSD_PHYSICAL_PAGE_ADDRESS
{
	union {
		unsigned int dword[2];
		struct {
			unsigned char sector			:2;
			unsigned char page				:7;
			unsigned short block			:12;
			unsigned char plane				:1;
			unsigned char lun				:3;
			unsigned char channel			:2;
			unsigned int reserved0			:5;
			unsigned int reserved1			:32;
		};
	};
} OCSSD_PHYSICAL_PAGE_ADDRESS;

/* Set Bad Block Table Command */
typedef struct _OCSSD_SET_BAD_BLOCK_TABLE_COMMAND_DW12
{
	union
	{
		unsigned int dword;
		struct {
			unsigned short numberOfPPAs;//zero-based valude
			unsigned char updateValue;
			unsigned char reserved;
		};
	};
} OCSSD_SET_BAD_BLOCK_TABLE_COMMAND_DW12;

/* Physical Erase Command */
typedef struct _OCSSD_PHYSICAL_ERASE_COMMAND_DW12
{
	union {
		unsigned int dword;
		struct {
			unsigned char numberOfPPAs		:6;//zero-based value
			unsigned int reserved0			:26;
		};
	};
} OCSSD_PHYSICAL_ERASE_COMMAND_DW12;

typedef struct _OCSSD_PHYSICAL_ERASE_COMMAND_DW13
{
	union {
		unsigned int dword;
		struct {
			unsigned int reserved0;
		};
	};
} OCSSD_PHYSICAL_ERASE_COMMAND_DW13;

/* Physical Write Command */
typedef struct _OCSSD_PHYSICAL_WRITE_COMMAND_DW12
{
	union {
		unsigned int dword;
		struct {
			unsigned char numberOfPPAs		:6;//zero-based value
			unsigned short reserved0		:10;
			unsigned char planeMode			:2;
			unsigned char reserved1			:5;
			unsigned char suspendEnable		:1;
			unsigned char slcModeEnable		:1;
			unsigned char scrambleDisable	:1;
			unsigned char reserved2			:4;
			unsigned char forceUnitAccess	:1;
			unsigned char limitedRetry		:1;
		};
	};
} OCSSD_PHYSICAL_WRITE_COMMAND_DW12;

/* Physical Read Command */
typedef struct _OCSSD_PHYSICAL_READ_COMMAND_DW12
{
	union {
		unsigned int dword;
		struct {
			unsigned char numberOfPPAs		:6;//zero-based value
			unsigned short reserved0		:10;
			unsigned char planeMode			:2;
			unsigned char reserved1			:5;
			unsigned char suspendEnable		:1;
			unsigned char slcModeEnable		:1;
			unsigned char scrambleDisable	:1;
			unsigned char reserved2			:4;
			unsigned char forceUnitAccess	:1;
			unsigned char limitedRetry		:1;
		};
	};
} OCSSD_PHYSICAL_READ_COMMAND_DW12;


/* IO Write Command */
typedef struct _IO_WRITE_COMMAND_DW12
{
	union {
		unsigned int dword;
		struct {
			unsigned short NLB;//zero-based value
			unsigned short reserved0				:10;
			unsigned short PRINFO					:4;
			unsigned short FUA						:1;
			unsigned short LR						:1;
		};
	};
} IO_WRITE_COMMAND_DW12;

typedef struct _IO_WRITE_COMMAND_DW13
{
	union {
		unsigned int dword;
		struct {
			struct
			{
				unsigned char AccessFrequency			:4;
				unsigned char AccessLatency				:2;
				unsigned char SequentialRequest			:1;
				unsigned char Incompressible			:1;
			} DSM;
			unsigned char reserved0[3];
		};
	};
} IO_WRITE_COMMAND_DW13;

typedef struct _IO_WRITE_COMMAND_DW15
{
	union {
		unsigned int dword;
		struct {
			unsigned short ELBAT;
			unsigned short ELBATM;
		};
	};
} IO_WRITE_COMMAND_DW15;


/* IO Read Command */
typedef struct _IO_READ_COMMAND_DW12
{
	union {
		unsigned int dword;
		struct {
			unsigned short NLB;//zero-based value
			unsigned short reserved0				:10;
			unsigned short PRINFO					:4;
			unsigned short FUA						:1;
			unsigned short LR						:1;
		};
	};
} IO_READ_COMMAND_DW12;

typedef struct _IO_READ_COMMAND_DW13
{
	union {
		unsigned int dword;
		struct {
			struct
			{
				unsigned char AccessFrequency			:4;
				unsigned char AccessLatency				:2;
				unsigned char SequentialRequest			:1;
				unsigned char Incompressible			:1;
			} DSM;
			unsigned char reserved0[3];
		};
	};
} IO_READ_COMMAND_DW13;

typedef struct _IO_READ_COMMAND_DW15
{
	union {
		unsigned int dword;
		struct {
			unsigned short ELBAT;
			unsigned short ELBATM;
		};
	};
} IO_READ_COMMAND_DW15;


/* IO Dataset Management Command */
typedef struct _IO_DATASET_MANAGEMENT_COMMAND_DW10
{
	unsigned int NR							:8;
	unsigned int reserved0					:24;
} _IO_DATASET_MANAGEMENT_COMMAND_DW10;

typedef struct _IO_DATASET_MANAGEMENT_COMMAND_DW11
{
	unsigned int IDR						:1;
	unsigned int IDW						:1;
	unsigned int AD							:1;
	unsigned int reserved0					:29;
} _IO_DATASET_MANAGEMENT_COMMAND_DW11;

typedef struct _DATASET_MANAGEMENT_CONTEXT_ATTRIBUTES
{
	unsigned int AF							:4;
	unsigned int AL							:2;
	unsigned int reserved0					:2;
	unsigned int SR							:1;
	unsigned int SW							:1;
	unsigned int WP							:1;
	unsigned int reserved1					:13;
	unsigned int CommandAccessSize			:8;
} DATASET_MANAGEMENT_CONTEXT_ATTRIBUTES;

typedef struct _DATASET_MANAGEMENT_RANGE
{
    DATASET_MANAGEMENT_CONTEXT_ATTRIBUTES ContextAttributes;
	unsigned int lengthInLogicalBlocks;
	unsigned int startingLBA[2];
} DATASET_MANAGEMENT_RANGE;

#pragma pack(pop)


typedef struct _NVME_ADMIN_QUEUE_STATUS
{
	unsigned char enable;
	unsigned char sqValid;
	unsigned char cqValid;
	unsigned char irqEn;
} NVME_ADMIN_QUEUE_STATUS;

typedef struct _NVME_IO_SQ_STATUS
{
	unsigned char valid;
	unsigned char cqVector;
	unsigned short qSzie;
	unsigned int pcieBaseAddrL;
	unsigned int pcieBaseAddrH;
} NVME_IO_SQ_STATUS;

typedef struct _NVME_IO_CQ_STATUS
{
	unsigned char valid;
	unsigned char irqEn;
	unsigned short reserved0;
	unsigned short irqVector;
	unsigned short qSzie;
	unsigned int pcieBaseAddrL;
	unsigned int pcieBaseAddrH;
} NVME_IO_CQ_STATUS;

typedef struct _NVME_STATUS
{
	unsigned int status;
	unsigned int cacheEn;
	NVME_ADMIN_QUEUE_STATUS adminQueueInfo;
	unsigned short numOfIOSubmissionQueuesAllocated;//non zero-based value
	unsigned short numOfIOCompletionQueuesAllocated;//non zero-based value
	NVME_IO_SQ_STATUS ioSqInfo[MAX_NUM_OF_IO_SQ];
	NVME_IO_CQ_STATUS ioCqInfo[MAX_NUM_OF_IO_CQ];
} NVME_CONTEXT;



#endif	//__NVME_H_
