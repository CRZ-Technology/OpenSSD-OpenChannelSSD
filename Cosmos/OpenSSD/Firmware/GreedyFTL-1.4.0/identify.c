//////////////////////////////////////////////////////////////////////////////////
// identify.c for Cosmos OpenSSD
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
// File Name: identify.c
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
#include "xil_io.h"
#include "xil_cache.h"
#include "xil_exception.h"
#include "string.h"

#include "ata.h"
#include "host_controller.h"
#include "identify.h"





u8 GetIdentifyDataCheckSum(P_IDENTIFY_DEVICE_DATA IdentifyData)
{
	u16 ChkSum;
	u16* Data;
	u32 i;

	Data = (u16*)IdentifyData;
	ChkSum = 0;
	for (i = 0; i < (sizeof(IDENTIFY_DEVICE_DATA) / 2) - 1; i++) {
			ChkSum += (u16)((*Data & (u16)0x00FF) + (*Data >> 8));
			Data++;
	}

	ChkSum += (*Data & 0xFF00) >> 8;
	ChkSum &= 0xFF;
	ChkSum = 0x100 - ChkSum;

	return (u8)(ChkSum & 0xFF);
}

void InitIdentifyData(P_IDENTIFY_DEVICE_DATA IdentifyData)
{
	u16* Data;
	u32 i;

	Data = (u16*)IdentifyData;

	for (i = 0; i < (sizeof(IDENTIFY_DEVICE_DATA) / 2); i++) {
		Data[i] = 0;
	}

															//typedef struct _IDENTIFY_DEVICE_DATA {
															//    struct
															//	  {
															//        u16 Reserved1 : 1;
															//        u16 Retired3 : 1;
															//        u16 ResponseIncomplete : 1;
															//        u16 Retired2 : 3;
	IdentifyData->GeneralConfiguration.FixedDevice = 1;		//        u16 FixedDevice : 1;
															//        u16 RemovableMedia : 1;
															//        u16 Retired1 : 7;
															//        u16 DeviceType : 1;
															//    }GeneralConfiguration;                     	// word 0
															//
	IdentifyData->NumCylinders = 0x3FFF;					//    u16 NumCylinders;                        // word 1
	IdentifyData->ReservedWord2 = 0xC837;					//    u16 ReservedWord2;
	IdentifyData->NumHeads = 0x0010;						//    u16 NumHeads;                            // word 3
															//    u16 Retired1[2];
	IdentifyData->NumSectorsPerTrack = 0x003F;				//    u16 NumSectorsPerTrack;                  // word 6
															//    u16 VendorUnique1[3];

	memcpy(IdentifyData->SerialNumber, 
						"              ENC001", 
						20);								//    u8  SerialNumber[20];                    // word 10-19


															//    u16 Retired2[2]; //Retired2[1] is cache size, but it is not used in recent ATA spec.
															//    u16 Obsolete1;
	memcpy(IdentifyData->FirmwareRevision, 
						"02210.A3", 
						8);									//    u8  FirmwareRevision[8];                 // word 23-26
	
	memcpy(IdentifyData->ModelNumber, 
						"ENC-TIGER001                            ", 
						40);								//    u8  ModelNumber[40];                     // word 27-46
	IdentifyData->MaximumBlockTransfer = 0x10;				//    u8  MaximumBlockTransfer;                // word 47
	IdentifyData->VendorUnique2 = 0x80;						//    u8  VendorUnique2;
															//    u16 ReservedWord48;
															//
															//	  struct
															//    {
	//IdentifyData->Capabilities.ReservedByte49 = 0xff;		//        u8 ReservedByte49;
	IdentifyData->Capabilities.DmaSupported = 1;			//        u8 DmaSupported : 1;
	IdentifyData->Capabilities.LbaSupported = 1;			//        u8 LbaSupported : 1;
	IdentifyData->Capabilities.IordyDisable = 1;			//        u8 IordyDisable : 1;
	IdentifyData->Capabilities.IordySupported = 1;			//        u8 IordySupported : 1;
	//IdentifyData->Capabilities.Reserved1 = 1;				//        u8 Reserved1 : 1;
	//IdentifyData->Capabilities.StandybyTimerSupport = 1;	//        u8 StandybyTimerSupport : 1;
	//IdentifyData->Capabilities.Reserved2 = 0x3;				//        u8 Reserved2 : 2;
	IdentifyData->Capabilities.ReservedWord50 = 0x4000;		//        u16 ReservedWord50;
															//    }Capabilities;                              // word 49-50        
															//
															//    u16 ObsoleteWords51[2];
															//
	IdentifyData->TranslationFieldsValid = 7;				//    u16 TranslationFieldsValid:3;            // word 53
															//
															//    u16 Reserved3:13;
															//
	IdentifyData->NumberOfCurrentCylinders = 0x3FFF;		//    u16 NumberOfCurrentCylinders;            // word 54
	IdentifyData->NumberOfCurrentHeads = 0x0010;			//    u16 NumberOfCurrentHeads;                // word 55
	IdentifyData->CurrentSectorsPerTrack = 0x003F;			//    u16 CurrentSectorsPerTrack;              // word 56
	IdentifyData->CurrentSectorCapacity = 0x00FBFC10;		//    u32  CurrentSectorCapacity;               // word 57
	IdentifyData->CurrentMultiSectorSetting = 0x10;			//    u8  CurrentMultiSectorSetting;           // word 58
	IdentifyData->MultiSectorSettingValid = 1;				//    u8  MultiSectorSettingValid : 1;
															//
															//    u8  ReservedByte59 : 7;
															//
	IdentifyData->UserAddressableSectors = 0x0003ffff;		//    u32  UserAddressableSectors;              // word 60-61
	//512MB														//
															//    u16 ObsoleteWord62;
															//
	IdentifyData->MultiWordDMASupport = 7;					//    u16 MultiWordDMASupport : 8;				// word 63
															//    u16 MultiWordDMAActive : 8;
	IdentifyData->AdvancedPIOModes = 3;						//    u16 AdvancedPIOModes : 8;				// word 64
															//    u16 ReservedByte64 : 8;
	IdentifyData->MinimumMWXferCycleTime = 0x0078;			//    u16 MinimumMWXferCycleTime;              // word 65
	IdentifyData->RecommendedMWXferCycleTime = 0x0078;		//    u16 RecommendedMWXferCycleTime;
	IdentifyData->MinimumPIOCycleTime = 0x0078;				//    u16 MinimumPIOCycleTime;
	IdentifyData->MinimumPIOCycleTimeIORDY = 0x0078;		//    u16 MinimumPIOCycleTimeIORDY;
															//
	//IdentifyData->ReservedWords69[0] = 0x4020;				//    u16 ReservedWords69[6];                  // word 69
															//
															//
	IdentifyData->QueueDepth = 0x1E;						//    u16 QueueDepth : 5;                      // word 75
															//
															//    u16 ReservedWord75 : 11;
	IdentifyData->ReservedWords76[0] = 0x050e;				//    u16 ReservedWords76[4];                  // word 76
	IdentifyData->ReservedWords76[2] = 0x0048;				//	 76: SerialATA Capabilities, 78-79: Serial ATA features supported & enabled
	IdentifyData->ReservedWords76[3] = 0x0040;				//
	IdentifyData->MajorRevision = 0x01FC;					//    u16 MajorRevision;                       // word 80
	IdentifyData->MinorRevision = 0x0029;					//    u16 MinorRevision;                       // word 81
															//
															//    struct
															//    {
															//        // Word 82
	//IdentifyData->CommandSetSupport.SmartCommands = 1;	//        u16 SmartCommands : 1;
	IdentifyData->CommandSetSupport.SecurityMode = 1;		//        u16 SecurityMode : 1;
															//        u16 RemovableMediaFeature : 1;
	IdentifyData->CommandSetSupport.PowerManagement = 1;	//        u16 PowerManagement : 1;
															//        u16 Reserved1 : 1;
	IdentifyData->CommandSetSupport.WriteCache = 1;			//        u16 WriteCache : 1;
	IdentifyData->CommandSetSupport.LookAhead = 1;			//        u16 LookAhead : 1;
															//        u16 ReleaseInterrupt : 1;
															//        u16 ServiceInterrupt : 1;
															//        u16 DeviceReset : 1;
	IdentifyData->CommandSetSupport.HostProtectedArea = 1;	//        u16 HostProtectedArea : 1;
															//        u16 Obsolete1 : 1;
	IdentifyData->CommandSetSupport.WriteBuffer = 1;		//        u16 WriteBuffer : 1;
	IdentifyData->CommandSetSupport.ReadBuffer = 1;			//        u16 ReadBuffer : 1;
	IdentifyData->CommandSetSupport.Nop = 1;				//        u16 Nop : 1;
															//        u16 Obsolete2 : 1;
															//
															//        // Word 83
	//IdentifyData->CommandSetSupport.DownloadMicrocode = 1;	//        u16 DownloadMicrocode : 1;
															//        u16 DmaQueued : 1;
															//        u16 Cfa : 1;
															//        u16 AdvancedPm : 1;
															//        u16 Msn : 1;
															//        u16 PowerUpInStandby : 1;
															//        u16 ManualPowerUp : 1;
															//        u16 Reserved2 : 1;
	IdentifyData->CommandSetSupport.SetMax = 1;				//        u16 SetMax : 1;
															//        u16 Acoustics : 1;
	IdentifyData->CommandSetSupport.BigLba = 1;				//        u16 BigLba : 1;
	IdentifyData->CommandSetSupport.DeviceConfigOverlay = 1;//        u16 DeviceConfigOverlay : 1;
	IdentifyData->CommandSetSupport.FlushCache = 1;			//        u16 FlushCache : 1;
	IdentifyData->CommandSetSupport.FlushCacheExt = 1;		//        u16 FlushCacheExt : 1;
	IdentifyData->CommandSetSupport.Resrved3 = 1;			//        u16 Resrved3 : 2;
															//
															//        // Word 84
															//        u16 SmartErrorLog : 1;
															//        u16 SmartSelfTest : 1;
															//        u16 MediaSerialNumber : 1;
															//        u16 MediaCardPassThrough : 1;
															//        u16 StreamingFeature : 1;
															//        u16 GpLogging : 1;
	IdentifyData->CommandSetSupport.WriteFua = 1;			//        u16 WriteFua : 1;
															//        u16 WriteQueuedFua : 1;
															//        u16 WWN64Bit : 1;
															//        u16 URGReadStream : 1;
															//        u16 URGWriteStream : 1;
															//        u16 ReservedForTechReport : 2;
															//        u16 IdleWithUnloadFeature : 1;
	IdentifyData->CommandSetSupport.Reserved4 = 1;			//        u16 Reserved4 : 2;
															//
															//    }CommandSetSupport;                        
															//
															//    struct
															//	  {
															//        // Word 85
	//IdentifyData->CommandSetActive.SmartCommands = 1;		//        u16 SmartCommands : 1;
															//        u16 SecurityMode : 1;
															//        u16 RemovableMediaFeature : 1;
	IdentifyData->CommandSetActive.PowerManagement = 1;		//        u16 PowerManagement : 1;
															//        u16 Reserved1 : 1;
	IdentifyData->CommandSetActive.WriteCache = 1;			//        u16 WriteCache : 1;
	IdentifyData->CommandSetActive.LookAhead = 1;			//        u16 LookAhead : 1;
															//        u16 ReleaseInterrupt : 1;
															//        u16 ServiceInterrupt : 1;
															//        u16 DeviceReset : 1;
	IdentifyData->CommandSetActive.HostProtectedArea = 1;	//        u16 HostProtectedArea : 1;
															//        u16 Obsolete1 : 1;
	IdentifyData->CommandSetActive.WriteBuffer = 1;			//        u16 WriteBuffer : 1;
	IdentifyData->CommandSetActive.ReadBuffer = 1;			//        u16 ReadBuffer : 1;
	IdentifyData->CommandSetActive.Nop = 1;					//        u16 Nop : 1;
															//        u16 Obsolete2 : 1;
															//
															//        // Word 86
	//IdentifyData->CommandSetActive.DownloadMicrocode = 1;	//        u16 DownloadMicrocode : 1;
															//        u16 DmaQueued : 1;
															//        u16 Cfa : 1;
															//        u16 AdvancedPm : 1;
															//        u16 Msn : 1;
															//        u16 PowerUpInStandby : 1;
															//        u16 ManualPowerUp : 1;
															//        u16 Reserved2 : 1;
															//        u16 SetMax : 1;
															//        u16 Acoustics : 1;
	IdentifyData->CommandSetActive.BigLba = 0;				//        u16 BigLba : 1;
	IdentifyData->CommandSetActive.DeviceConfigOverlay = 1;	//        u16 DeviceConfigOverlay : 1;
	IdentifyData->CommandSetActive.FlushCache = 1;			//        u16 FlushCache : 1;
	IdentifyData->CommandSetActive.FlushCacheExt = 1;		//        u16 FlushCacheExt : 1;
	IdentifyData->CommandSetActive.Resrved3 = 2;			//        u16 Resrved3 : 2;
															//
															//        // Word 87
	//IdentifyData->CommandSetActive.SmartErrorLog = 1;		//        u16 SmartErrorLog : 1;
	//IdentifyData->CommandSetActive.SmartSelfTest = 1;		//        u16 SmartSelfTest : 1;
															//        u16 MediaSerialNumber : 1;
															//        u16 MediaCardPassThrough : 1;
															//        u16 StreamingFeature : 1;
	//IdentifyData->CommandSetActive.GpLogging = 1;			//        u16 GpLogging : 1;
	IdentifyData->CommandSetActive.WriteFua = 1;			//        u16 WriteFua : 1;
															//        u16 WriteQueuedFua : 1;
	IdentifyData->CommandSetActive.WWN64Bit = 1;			//        u16 WWN64Bit : 1;
															//        u16 URGReadStream : 1;
															//        u16 URGWriteStream : 1;
															//        u16 ReservedForTechReport : 2;
	//IdentifyData->CommandSetActive.IdleWithUnloadFeature = 1;	//        u16 IdleWithUnloadFeature : 1;
	IdentifyData->CommandSetActive.Reserved4 = 1;			//        u16 Reserved4 : 2;
															//
															//    }CommandSetActive;                          
															//
	IdentifyData->UltraDMASupport = 0x7F;					//    u16 UltraDMASupport : 8;                 // word 88
	IdentifyData->UltraDMAActive = 0x40;					//    u16 UltraDMAActive  : 8;
															//
	IdentifyData->ReservedWord89[0] = 0x8000;				//    u16 ReservedWord89[4];
	IdentifyData->ReservedWord89[1] = 0x8000;
	IdentifyData->ReservedWord89[2] = 0xFFFE;
															//    u16 HardwareResetResult;                 // word 93
															//    u16 CurrentAcousticValue : 8;
															//    u16 RecommendedAcousticValue : 8;
															//    u16 ReservedWord95[5];
	//IdentifyData->Max48BitLBA[0] = 0x00000400;														//
//	IdentifyData->Max48BitLBA[0] = 0xFFF80003;				//    u32  Max48BitLBA[2];                      // word 100-103
	//IdentifyData->Max48BitLBA[1] = 0x00000000;
															//
															//    u16 StreamingTransferTime;
	IdentifyData->ReservedWord105 = 0x0008;				//        u16 ReservedWord105;
															//        struct
															//		  {
															//             u16 LogicalSectorsPerPhysicalSector : 4;
															//             u16 Reserved0 : 8;
															//             u16 LogicalSectorLongerThan256Words : 1;
															//             u16 MultipleLogicalSectorsPerPhysicalSector : 1;
	IdentifyData->PhysicalLogicalSectorSize.Reserved1 = 1;	//             u16 Reserved1 : 2;
															//        }PhysicalLogicalSectorSize;                            // word 106
															//
	IdentifyData->InterSeekDelay = 0x0000;					//        u16 InterSeekDelay;                                          //word 107
															//        u16 WorldWideName[4];                                        //words 108-111
															//        u16 ReservedForWorldWideName128[4];          //words 112-115
															//        u16 ReservedForTlcTechnicalReport;           //word 116
															//        u16 WordsPerLogicalSector[2];                        //words 117-118
															//        
															//        struct
															//        {
															//             u16 ReservedForDrqTechnicalReport : 1;
															//             u16 WriteReadVerifySupported : 1;
	IdentifyData->CommandSetSupportExt.Reserved0 = 7;		//             u16 Reserved0 : 11;
	IdentifyData->CommandSetSupportExt.Reserved1 = 1;		//             u16 Reserved1 : 2;
															//        }CommandSetSupportExt;                                            //word 119
															//
															//        struct
															//        {
															//             u16 ReservedForDrqTechnicalReport : 1;
															//             u16 WriteReadVerifyEnabled : 1;
	IdentifyData->CommandSetActiveExt.Reserved0 = 7;		//             u16 Reserved0 : 11;
	IdentifyData->CommandSetActiveExt.Reserved1 = 1;		//             u16 Reserved1 : 2;
															//        }CommandSetActiveExt;                          //word 120
															//                
															//        u16 ReservedForExpandedSupportandActive[6];
															//        
															//        u16 MsnSupport : 2;                          //word 127
															//        u16 ReservedWord127 : 14;
															//
															//        struct                                            //word 128
															//        {
	IdentifyData->SecurityStatus.SecuritySupported =1;		//             u16 SecuritySupported : 1;
															//             u16 SecurityEnabled : 1;
															//             u16 SecurityLocked : 1;
															//             u16 SecurityFrozen : 1;
															//             u16 SecurityCountExpired : 1;
	IdentifyData->SecurityStatus.EnhancedSecurityEraseSupported = 1;	//       u16 EnhancedSecurityEraseSupported : 1;
															//             u16 Reserved0 : 2;
															//             u16 SecurityLevel : 1;
															//             u16 Reserved1 : 7;
															//        }SecurityStatus;
															//
															//    u16 ReservedWord129[31];
															//    
															//    struct                                       //word 160
															//	  {
															//        u16 MaximumCurrentInMA : 12;
															//        u16 CfaPowerMode1Disabled : 1;
															//        u16 CfaPowerMode1Required : 1;
															//        u16 Reserved0 : 1;
															//        u16 Word160Supported : 1;
															//    }CfaPowerMode1;
															//
															//    u16 ReservedForCfaWord161[8];                //Words 161-168
															//
															//    struct                                    //Word 169
															//	  {
	//IdentifyData->DataSetManagementFeature.SupportsTrim = 1;	//        u16 SupportsTrim : 1;
															//        u16 Reserved0    : 15;
															//    }DataSetManagementFeature;
															//
															//    u16 ReservedForCfaWord170[6];                //Words 170-175
															//
															//    u16 CurrentMediaSerialNumber[30];            //Words 176-205
															//    
	IdentifyData->ReservedWord206 = 0x003D;				//    u16 ReservedWord206;                         //Word 206
															//    u16 ReservedWord207[2];                      //Words 207-208
															//    
															//    struct                                 //Word 209
															//    {
															//        u16 AlignmentOfLogicalWithinPhysical: 14;
															//        u16 Word209Supported: 1;
															//        u16 Reserved0: 1;
															//    }BlockAlignment;
															//    
															//    
															//    u16 WriteReadVerifySectorCountMode3Only[2]; //Words 210-211
															//    u16 WriteReadVerifySectorCountMode2Only[2]; //Words 212-213
															//    
															//    struct
															//    {
															//        u16 NVCachePowerModeEnabled: 1;
															//        u16 Reserved0: 3;
															//        u16 NVCacheFeatureSetEnabled: 1;
															//        u16 Reserved1: 3;
															//        u16 NVCachePowerModeVersion: 4;
															//        u16 NVCacheFeatureSetVersion: 4;
															//    }NVCacheCapabilities;                  //Word 214
															//    u16 NVCacheSizeLSW;                  //Word 215
															//    u16 NVCacheSizeMSW;                  //Word 216
	IdentifyData->NominalMediaRotationRate = 0x0001;		//    u16 NominalMediaRotationRate;        //Word 217; value 0001h means non-rotating media.
															//    u16 ReservedWord218;                 //Word 218
															//    struct
															//    {
															//        u8 NVCacheEstimatedTimeToSpinUpInSeconds;
															//        u8 Reserved;
															//    }NVCacheOptions;                       //Word 219
															//    
	IdentifyData->ReservedWord220[2] = 0x101F;				//    u16 ReservedWord220[35];             //Words 220-254
	IdentifyData->ReservedWord220[14] = 0x0001;
	IdentifyData->ReservedWord220[15] = 0x0400;
															//    
	IdentifyData->Signature = 0xA5;							//    u16 Signature : 8;                   //Word 255
															//    u16 CheckSum : 8;
															//        
															//}IDENTIFY_DEVICE_DATA, *PIDENTIFY_DEVICE_DATA;


	IdentifyData->CheckSum = GetIdentifyDataCheckSum(IdentifyData);
}

void SetIdentifyData(P_IDENTIFY_DEVICE_DATA IdentifyData, P_HOST_CMD hostCmd )
{
	u8 cmd = hostCmd->reqInfo.Cmd;
	u8 feature = (u8)hostCmd->reqInfo.CurSect;
	if( cmd == IDE_COMMAND_SECURITY_FREEZE_LOCK )
	{
		IdentifyData->SecurityStatus.SecurityFrozen = 1;
	}
	else if( cmd == IDE_COMMAND_SET_FEATURE )
	{
		if( feature == IDE_FEATURE_ENABLE_WRITE_CACHE )
			IdentifyData->CommandSetActive.WriteCache = 1;
		else if( feature == IDE_FEATURE_DISABLE_REVERT_TO_POWER_ON )
			IdentifyData->CfaPowerMode1.CfaPowerMode1Disabled = 1;
		else if( feature == 0xCC )
			IdentifyData->CfaPowerMode1.CfaPowerMode1Disabled = 0;
		else if( feature == IDE_FEATURE_DISABLE_WRITE_CACHE)
			IdentifyData->CommandSetActive.WriteCache = 0;
		else
			xil_printf("not support feature:%x\r\n", feature);
	}
	IdentifyData->CheckSum = GetIdentifyDataCheckSum(IdentifyData);
}

void IdentifyDataByteOrderCopy( u32 * host, u32 * device, u32 size)
{
	u32 i;
	u32 tmp;
	for( i = 0; i < size; i += 4 ) {
		tmp = (*device & 0xFFFF0000) >> 16;
		tmp |= (*device & 0x0000FFFF) << 16;
		//*host = tmp;
		Xil_Out32((u32)host, tmp);
		device++;
		host++;
	}
}


