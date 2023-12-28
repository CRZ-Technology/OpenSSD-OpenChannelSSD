//////////////////////////////////////////////////////////////////////////////////
// identify.h for Cosmos OpenSSD
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
// Design Name: Identify
// File Name: identify.h
//
// Version: v1.0.0
//
// Description:
//   - Generate device identify data for windows driver.
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.0
//   - First draft
//////////////////////////////////////////////////////////////////////////////////

#include "xbasic_types.h"
#include "xparameters.h"

#include "host_controller.h"

#ifndef __IDENTIFY_H__
#define __IDENTIFY_H__

#pragma pack(push, identify_device_data_struct, 1)

typedef struct _IDENTIFY_DEVICE_DATA
{
	struct
	{
		u16 Reserved1				: 1;
		u16 Retired3				: 1;
		u16 ResponseIncomplete		: 1;
		u16 Retired2				: 3;
		u16 FixedDevice				: 1;
		u16 RemovableMedia			: 1;
		u16 Retired1				: 7;
		u16 DeviceType				: 1;
	}GeneralConfiguration;							// word 0

	u16 NumCylinders;							// word 1
	u16 ReservedWord2;							// word 2
	u16 NumHeads;								// word 3
	u16 Retired1[2];							// word 4-5
	u16 NumSectorsPerTrack;						// word 6
	u16 VendorUnique1[3]; 						// word 7-9
	u8  SerialNumber[20];						// word 10-19
	u16 Retired2[2];							// word 20-21
	u16 Obsolete1;								// word 22
	u8  FirmwareRevision[8];					// word 23-26
	u8  ModelNumber[40];						// word 27-46
	u8  MaximumBlockTransfer;					// word 47
	u8  VendorUnique2;
	u16 ReservedWord48;							//word 48

	struct
	{
		u8 ReservedByte49;

		u8 DmaSupported				: 1;
		u8 LbaSupported				: 1;
		u8 IordyDisable				: 1;
		u8 IordySupported			: 1;
		u8 Reserved1				: 1;
		u8 StandybyTimerSupport		: 1;
		u8 Reserved2				: 2;

		u16 ReservedWord50;
	}Capabilities;									// word 49-50

	u16 ObsoleteWords51[2];


	u16 TranslationFieldsValid:3;
	u16 Reserved3:13;							// word 53

	u16 NumberOfCurrentCylinders;				// word 54
	u16 NumberOfCurrentHeads;					// word 55
	u16 CurrentSectorsPerTrack;					// word 56
	u32  CurrentSectorCapacity;					// word 57


	u8  CurrentMultiSectorSetting;				// word 59
	u8  MultiSectorSettingValid		: 1;
	u8  ReservedByte59				: 7;

	u32  UserAddressableSectors;				// word 60-61

	u16 ObsoleteWord62;

	u16 MultiWordDMASupport			: 8;		// word 63
	u16 MultiWordDMAActive			: 8;

	u16 AdvancedPIOModes			: 8; 		// word 64
	u16 ReservedByte64				: 8;

	u16 MinimumMWXferCycleTime;
	u16 RecommendedMWXferCycleTime;
	u16 MinimumPIOCycleTime;
	u16 MinimumPIOCycleTimeIORDY;

	u16 ReservedWords69[6];

	u16 QueueDepth					: 5;		// word 75
	u16 ReservedWord75				: 11;

	u16 ReservedWords76[4];
	u16 MajorRevision;
	u16 MinorRevision;

	struct
	{
		u16 SmartCommands			: 1;		// Word 82
		u16 SecurityMode			: 1;
		u16 RemovableMediaFeature	: 1;
		u16 PowerManagement			: 1;
		u16 Reserved1				: 1;
		u16 WriteCache				: 1;
		u16 LookAhead				: 1;
		u16 ReleaseInterrupt		: 1;
		u16 ServiceInterrupt		: 1;
		u16 DeviceReset				: 1;
		u16 HostProtectedArea		: 1;
		u16 Obsolete1				: 1;
		u16 WriteBuffer				: 1;
		u16 ReadBuffer				: 1;
		u16 Nop						: 1;
		u16 Obsolete2				: 1;

		u16 DownloadMicrocode		: 1;		// Word 83
		u16 DmaQueued				: 1;
		u16 Cfa						: 1;
		u16 AdvancedPm				: 1;
		u16 Msn						: 1;
		u16 PowerUpInStandby		: 1;
		u16 ManualPowerUp			: 1;
		u16 Reserved2				: 1;
		u16 SetMax					: 1;
		u16 Acoustics				: 1;
		u16 BigLba					: 1;
		u16 DeviceConfigOverlay		: 1;
		u16 FlushCache				: 1;
		u16 FlushCacheExt			: 1;
		u16 Resrved3				: 2;

		u16 SmartErrorLog			: 1;		// Word 84
		u16 SmartSelfTest			: 1;
		u16 MediaSerialNumber		: 1;
		u16 MediaCardPassThrough	: 1;
		u16 StreamingFeature		: 1;
		u16 GpLogging				: 1;
		u16 WriteFua				: 1;
		u16 WriteQueuedFua			: 1;
		u16 WWN64Bit				: 1;
		u16 URGReadStream			: 1;
		u16 URGWriteStream			: 1;
		u16 ReservedForTechReport	: 2;
		u16 IdleWithUnloadFeature	: 1;
		u16 Reserved4				: 2;
	}CommandSetSupport;

	struct
	{
		u16 SmartCommands			: 1;		// Word 85
		u16 SecurityMode			: 1;
		u16 RemovableMediaFeature	: 1;
		u16 PowerManagement			: 1;
		u16 Reserved1				: 1;
		u16 WriteCache				: 1;
		u16 LookAhead				: 1;
		u16 ReleaseInterrupt		: 1;
		u16 ServiceInterrupt		: 1;
		u16 DeviceReset				: 1;
		u16 HostProtectedArea		: 1;
		u16 Obsolete1				: 1;
		u16 WriteBuffer				: 1;
		u16 ReadBuffer				: 1;
		u16 Nop						: 1;
		u16 Obsolete2				: 1;

		u16 DownloadMicrocode		: 1;		// Word 86
		u16 DmaQueued				: 1;
		u16 Cfa						: 1;
		u16 AdvancedPm				: 1;
		u16 Msn						: 1;
		u16 PowerUpInStandby		: 1;
		u16 ManualPowerUp			: 1;
		u16 Reserved2				: 1;
		u16 SetMax					: 1;
		u16 Acoustics				: 1;
		u16 BigLba					: 1;
		u16 DeviceConfigOverlay		: 1;
		u16 FlushCache				: 1;
		u16 FlushCacheExt			: 1;
		u16 Resrved3				: 2;

		u16 SmartErrorLog			: 1;		// Word 87
		u16 SmartSelfTest			: 1;
		u16 MediaSerialNumber		: 1;
		u16 MediaCardPassThrough	: 1;
		u16 StreamingFeature		: 1;
		u16 GpLogging				: 1;
		u16 WriteFua				: 1;
		u16 WriteQueuedFua			: 1;
		u16 WWN64Bit				: 1;
		u16 URGReadStream			: 1;
		u16 URGWriteStream			: 1;
		u16 ReservedForTechReport	: 2;
		u16 IdleWithUnloadFeature	: 1;
		u16 Reserved4				: 2;
	}CommandSetActive;


	u16 UltraDMASupport	: 8;					// word 88
	u16 UltraDMAActive	: 8;


	u16 ReservedWord89[4];

	u16 HardwareResetResult;
	u16 CurrentAcousticValue		: 8;		// word 94
	u16 RecommendedAcousticValue	: 8;
	u16 ReservedWord95[5];

	u32  Max48BitLBA[2];						// word 100-103

	u16 StreamingTransferTime;
	u16 ReservedWord105;
	struct
	{
		u16 LogicalSectorsPerPhysicalSector 		: 4;
		u16 Reserved0								: 8;
		u16 LogicalSectorLongerThan256Words 		: 1;
		u16 MultipleLogicalSectorsPerPhysicalSector : 1;
		u16 Reserved1								: 2;
	}PhysicalLogicalSectorSize;						// word 106

	u16 InterSeekDelay;							//word 107
	u16 WorldWideName[4];						//words 108-111
	u16 ReservedForWorldWideName128[4];			//words 112-115
	u16 ReservedForTlcTechnicalReport;			//word 116
	u16 WordsPerLogicalSector[2];				//words 117-118

	struct
	{
		u16 ReservedForDrqTechnicalReport 	: 1;
		u16 WriteReadVerifySupported 		: 1;
		u16 Reserved0						: 11;
		u16 Reserved1						: 2;
	}CommandSetSupportExt;							//word 119

	struct
	{
		u16 ReservedForDrqTechnicalReport	: 1;
		u16 WriteReadVerifyEnabled			: 1;
		u16 Reserved0 						: 11;
		u16 Reserved1						: 2;
	}CommandSetActiveExt;							//word 120

	u16 ReservedForExpandedSupportandActive[6];


	u16 MsnSupport		: 2;					//word 127
	u16 ReservedWord127	: 14;


	struct
	{
		u16 SecuritySupported				: 1;
		u16 SecurityEnabled					: 1;
		u16 SecurityLocked					: 1;
		u16 SecurityFrozen					: 1;
		u16 SecurityCountExpired 			: 1;
		u16 EnhancedSecurityEraseSupported	: 1;
		u16 Reserved0						: 2;
		u16 SecurityLevel					: 1;
		u16 Reserved1						: 7;
	}SecurityStatus;								//word 128

	u16 ReservedWord129[31];

	struct
	{
		u16 MaximumCurrentInMA		: 12;
		u16 CfaPowerMode1Disabled	: 1;
		u16 CfaPowerMode1Required	: 1;
		u16 Reserved0				: 1;
		u16 Word160Supported		: 1;
	}CfaPowerMode1;									//word 160

	u16 ReservedForCfaWord161[8];				//Words 161-168

	struct
	{
		u16 SupportsTrim	: 1;
		u16 Reserved0		: 15;
	}DataSetManagementFeature;						//Word 169

	u16 ReservedForCfaWord170[6];				//Words 170-175

	u16 CurrentMediaSerialNumber[30];			//Words 176-205

	u16 ReservedWord206;						//Word 206
	u16 ReservedWord207[2];						//Words 207-208

	struct
	{
		u16 AlignmentOfLogicalWithinPhysical	: 14;
		u16 Word209Supported					: 1;
		u16 Reserved0							: 1;
	}BlockAlignment;								//Word 209


	u16 WriteReadVerifySectorCountMode3Only[2];	//Words 210-211
	u16 WriteReadVerifySectorCountMode2Only[2];	//Words 212-213

	struct
	{
		u16 NVCachePowerModeEnabled		: 1;
		u16 Reserved0					: 3;
		u16 NVCacheFeatureSetEnabled	: 1;
		u16 Reserved1					: 3;
		u16 NVCachePowerModeVersion		: 4;
		u16 NVCacheFeatureSetVersion	: 4;
	}NVCacheCapabilities;							//Word 214
	u16 NVCacheSizeLSW;							//Word 215
	u16 NVCacheSizeMSW;							//Word 216
	u16 NominalMediaRotationRate;				//Word 217; value 0001h means non-rotating media.
	u16 ReservedWord218;						//Word 218
	struct
	{
		u8 NVCacheEstimatedTimeToSpinUpInSeconds;
		u8 Reserved;
	}NVCacheOptions;								//Word 219

	u16 ReservedWord220[35];					//Words 220-254

	u16 Signature	: 8;						//Word 255
	u16 CheckSum	: 8;
			
}IDENTIFY_DEVICE_DATA, *P_IDENTIFY_DEVICE_DATA;

#pragma pack (pop, identify_device_data_struct)

u8 GetIdentifyDataCheckSum(P_IDENTIFY_DEVICE_DATA IdentifyData);

void InitIdentifyData(P_IDENTIFY_DEVICE_DATA IdentifyData);

void SetIdentifyData(P_IDENTIFY_DEVICE_DATA IdentifyData, P_HOST_CMD hostCmd );

void IdentifyDataByteOrderCopy( u32 *little, u32 *big, u32 size);

#endif /* __IDENTIFY_H__ */