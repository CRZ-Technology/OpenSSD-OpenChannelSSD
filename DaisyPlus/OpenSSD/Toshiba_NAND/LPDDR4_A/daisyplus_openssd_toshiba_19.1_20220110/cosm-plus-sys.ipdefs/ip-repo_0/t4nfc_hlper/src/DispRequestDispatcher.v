//////////////////////////////////////////////////////////////////////////////////
// DispRequestDispatcher for Cosmos OpenSSD
// Copyright (c) 2015 Hanyang University ENC Lab.
// Contributed by Kibin Park <kbpark@enc.hanyang.ac.kr>
//                Yong Ho Song <yhsong@enc.hanyang.ac.kr>
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
// Engineer: Kibin Park <kbpark@enc.hanyang.ac.kr>
// 
// Project Name: Cosmos OpenSSD
// Design Name: DispRequestDispatcher
// Module Name: DispRequestDispatcher
// File Name: DispRequestDispatcher.v
//
// Version: v2.0.0
//
// Description: Central way controller
//
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v2.0.0
//   - first draft (upgrade from Dispatcher 1.0)
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module DispRequestDispatcher
#
(
    parameter NumberOfWays          = 4
)
(
    iClock              ,
    iReset              ,
    iCPLWriteAddress    ,
    iCPLReadAddress     ,
    iCPLWriteData       ,
    oCPLReadData        ,
    iCPLWriteValid      ,
    iCPLReadValid       ,
    oCPLWriteAck        ,
    oCPLReadAck         ,
    oDPLWOpcode         ,
    oDPLWTargetID       ,
    oDPLWSourceID       ,
    oDPLWAddress        ,
    oDPLWLength         ,
    oDPLWCmdValid       ,
    iDPLWCmdReady       ,
    oDPLWriteData       ,
    oDPLWriteValid      ,
    oDPLWriteLast       ,
    iDPLWriteReady      ,
    oDPLROpcode         ,
    oDPLRTargetID       ,
    oDPLRSourceID       ,
    oDPLRAddress        ,
    oDPLRLength         ,
    oDPLRCmdValid       ,
    iDPLRCmdReady       ,
    iDPLReadData        ,
    iDPLReadValid       ,
    iDPLReadLast        ,
    oDPLReadReady       ,
    oLLNFCOpcode        ,
    oLLNFCTargetID      ,
    oLLNFCSourceID      ,
    oLLNFCAddress       ,
    oLLNFCLength        ,
    oLLNFCCmdValid      ,
    iLLNFCCmdReady      ,
    oLLNFCWriteData     ,
    oLLNFCWriteValid    ,
    oLLNFCWriteLast     ,
    iLLNFCWriteReady    ,
    iLLNFCReadData      ,
    iLLNFCReadValid     ,
    iLLNFCReadLast      ,
    oLLNFCReadReady     ,
    oIMEMClock          ,
    oIMEMReset          ,
    oIMEMAddr           ,
    oIMEMRW             ,
    oIMEMEnable         ,
    oIMEMWData          ,
    iIMEMRData          ,
    iBPWaysReadybusy
);
    input                               iClock                  ;
    input                               iReset                  ;
    
    // Command-path Layer Interface
    input   [31:0]                      iCPLWriteAddress        ;
    input   [31:0]                      iCPLReadAddress         ;
    input   [31:0]                      iCPLWriteData           ;
    output  [31:0]                      oCPLReadData            ;
    input                               iCPLWriteValid          ;
    input                               iCPLReadValid           ;
    output                              oCPLWriteAck            ;
    output                              oCPLReadAck             ;
    
    // Data-path Layer Interface    
    output  [5:0]                       oDPLWOpcode             ;
    output  [4:0]                       oDPLWTargetID           ;
    output  [4:0]                       oDPLWSourceID           ;
    output  [31:0]                      oDPLWAddress            ;
    output  [15:0]                      oDPLWLength             ;
    output                              oDPLWCmdValid           ;
    input                               iDPLWCmdReady           ;
    output  [31:0]                      oDPLWriteData           ;
    output                              oDPLWriteValid          ;
    output                              oDPLWriteLast           ;
    input                               iDPLWriteReady          ;
    
    output  [5:0]                       oDPLROpcode             ;
    output  [4:0]                       oDPLRTargetID           ;
    output  [4:0]                       oDPLRSourceID           ;
    output  [31:0]                      oDPLRAddress            ;
    output  [15:0]                      oDPLRLength             ;
    output                              oDPLRCmdValid           ;
    input                               iDPLRCmdReady           ;
    input   [31:0]                      iDPLReadData            ;
    input                               iDPLReadValid           ;
    input                               iDPLReadLast            ;
    output                              oDPLReadReady           ;
    
    // Low-level NFC Interface
    output  [5:0]                       oLLNFCOpcode            ;
    output  [4:0]                       oLLNFCTargetID          ;
    output  [4:0]                       oLLNFCSourceID          ;
    output  [39:0]                      oLLNFCAddress           ;
    output  [15:0]                      oLLNFCLength            ;
    output                              oLLNFCCmdValid          ;
    input                               iLLNFCCmdReady          ;
    
    output  [31:0]                      oLLNFCWriteData         ;
    output                              oLLNFCWriteValid        ;
    output                              oLLNFCWriteLast         ;
    input                               iLLNFCWriteReady        ;
    
    input   [31:0]                      iLLNFCReadData          ;
    input                               iLLNFCReadValid         ;
    input                               iLLNFCReadLast          ;
    output                              oLLNFCReadReady         ;
    
    // uCode Instruction Memory Interface
    output                              oIMEMClock              ;
    output                              oIMEMReset              ;
    output  [31:0]                      oIMEMAddr               ;
    output                              oIMEMRW                 ;
    output                              oIMEMEnable             ;
    output  [31:0]                      oIMEMWData              ;
    input   [31:0]                      iIMEMRData              ;
    
    input   [NumberOfWays - 1:0]        iBPWaysReadybusy        ;
    
    wire    [31:0]                      wIDWriteAddress         ;
    wire    [31:0]                      wIDWriteData            ;
    wire                                wIDWriteValid           ;
    wire                                wIDWriteAck             ;
    wire    [31:0]                      wIDReadAddress          ;
    wire    [31:0]                      wIDReadData             ;
    wire                                wIDReadValid            ;
    wire                                wIDReadAck              ;
    
    wire    [31:0]                      wConfWriteAddress       ;
    wire    [31:0]                      wConfWriteData          ;
    wire                                wConfWriteValid         ;
    wire                                wConfWriteAck           ;
    wire    [31:0]                      wConfReadAddress        ;
    wire    [31:0]                      wConfReadData           ;
    wire                                wConfReadValid          ;
    wire                                wConfReadAck            ;
    
    wire    [31:0]                      wExtWriteAddress        ;
    wire    [31:0]                      wExtWriteData           ;
    wire                                wExtWriteValid          ;
    wire                                wExtWriteAck            ;
    wire    [31:0]                      wExtReadAddress         ;
    wire    [31:0]                      wExtReadData            ;
    wire                                wExtReadValid           ;
    wire                                wExtReadAck             ;
    
    wire    [31:0]                      wCoreAccWriteAddress    ;
    wire    [31:0]                      wCoreAccWriteData       ;
    wire                                wCoreAccWriteValid      ;
    wire                                wCoreAccWriteAck        ;
    wire    [31:0]                      wCoreAccReadAddress     ;
    wire    [31:0]                      wCoreAccReadData        ;
    wire                                wCoreAccReadValid       ;
    wire                                wCoreAccReadAck         ;
    
    wire    [31:0]                      wSigBPWriteAddress      ;
    wire    [31:0]                      wSigBPWriteData         ;
    wire                                wSigBPWriteValid        ;
    wire                                wSigBPWriteAck          ;
    wire    [31:0]                      wSigBPReadAddress       ;
    wire    [31:0]                      wSigBPReadData          ;
    wire                                wSigBPReadValid         ;
    wire                                wSigBPReadAck           ;
    
    wire    [31:0]                      wSPadWriteAddress       ;
    wire    [31:0]                      wSPadWriteData          ;
    wire                                wSPadWriteValid         ;
    wire                                wSPadWriteAck           ;
    wire    [31:0]                      wSPadReadAddress        ;
    wire    [31:0]                      wSPadReadData           ;
    wire                                wSPadReadValid          ;
    wire                                wSPadReadAck            ;
    
    wire                                wSPPushBundleReady      ;
    
    wire    [31:0]                      wSPEXEWriteAddress      ;
    wire    [31:0]                      wSPEXEWriteData         ;
    wire                                wSPEXEWriteValid        ;
    wire                                wSPEXEWriteAck          ;
    wire    [31:0]                      wSPEXEReadAddress       ;
    wire    [31:0]                      wSPEXEReadData          ;
    wire                                wSPEXEReadValid         ;
    wire                                wSPEXEReadAck           ;
    wire    [31:0]                      wSPQueueCount           ;
    
    wire                                wSPPopBundleValid       ;
    wire                                wSPPopBundleReady       ;
    
    wire    [1:0]                       wBufWriteAddress        ;
    wire    [31:0]                      wBufWordWriteData       ;
    wire    [15:0]                      wBufHalfWordWriteData   ;
    wire                                wBufWordWriteValid      ;
    wire                                wBufHalfWordWriteValid  ;
    wire                                wBufIssueCmdValid       ;
    wire                                wBufIssueCmdReady       ;
    
    wire                                wTrigger                ;
    
    DispAddressDecoder
    Inst_AddressDecoder
    (
        .iClock                 (iClock                         ),
        .iReset                 (iReset                         ),
        .iCPLWriteAddress       ({16'b0, iCPLWriteAddress[15:0]}),
        .iCPLWriteData          (iCPLWriteData                  ),
        .iCPLWriteValid         (iCPLWriteValid                 ),
        .oCPLWriteAck           (oCPLWriteAck                   ),
        .iCPLReadAddress        ({16'b0, iCPLReadAddress[15:0]} ),
        .oCPLReadData           (oCPLReadData                   ),
        .iCPLReadValid          (iCPLReadValid                  ),
        .oCPLReadAck            (oCPLReadAck                    ),
        .oIDWriteAddress        (wIDWriteAddress                ),
        .oIDWriteData           (wIDWriteData                   ),
        .oIDWriteValid          (wIDWriteValid                  ),
        .iIDWriteAck            (wIDWriteAck                    ),
        .oIDReadAddress         (wIDReadAddress                 ),
        .iIDReadData            (wIDReadData                    ),
        .oIDReadValid           (wIDReadValid                   ),
        .iIDReadAck             (wIDReadAck                     ),
        .oConfWriteAddress      (wConfWriteAddress              ),
        .oConfWriteData         (wConfWriteData                 ),
        .oConfWriteValid        (wConfWriteValid                ),
        .iConfWriteAck          (wConfWriteAck                  ),
        .oConfReadAddress       (wConfReadAddress               ),
        .iConfReadData          (wConfReadData                  ),
        .oConfReadValid         (wConfReadValid                 ),
        .iConfReadAck           (wConfReadAck                   ),
        .oExtWriteAddress       (wExtWriteAddress               ),
        .oExtWriteData          (wExtWriteData                  ),
        .oExtWriteValid         (wExtWriteValid                 ),
        .iExtWriteAck           (wExtWriteAck                   ),
        .oExtReadAddress        (wExtReadAddress                ),
        .iExtReadData           (wExtReadData                   ),
        .oExtReadValid          (wExtReadValid                  ),
        .iExtReadAck            (wExtReadAck                    ),
        .oCoreAccWriteAddress   (wCoreAccWriteAddress           ),
        .oCoreAccWriteData      (wCoreAccWriteData              ),
        .oCoreAccWriteValid     (wCoreAccWriteValid             ),
        .iCoreAccWriteAck       (wCoreAccWriteAck               ),
        .oCoreAccReadAddress    (wCoreAccReadAddress            ),
        .iCoreAccReadData       (wCoreAccReadData               ),
        .oCoreAccReadValid      (wCoreAccReadValid              ),
        .iCoreAccReadAck        (wCoreAccReadAck                ),
        .oSigBPWriteAddress     (wSigBPWriteAddress             ),
        .oSigBPWriteData        (wSigBPWriteData                ),
        .oSigBPWriteValid       (wSigBPWriteValid               ),
        .iSigBPWriteAck         (wSigBPWriteAck                 ),
        .oSigBPReadAddress      (wSigBPReadAddress              ),
        .iSigBPReadData         (wSigBPReadData                 ),
        .oSigBPReadValid        (wSigBPReadValid                ),
        .iSigBPReadAck          (wSigBPReadAck                  ),
        .oSPadWriteAddress      (wSPadWriteAddress              ),
        .oSPadWriteData         (wSPadWriteData                 ),
        .oSPadWriteValid        (wSPadWriteValid                ),
        .iSPadWriteAck          (wSPadWriteAck                  ),
        .oSPadReadAddress       (wSPadReadAddress               ),
        .iSPadReadData          (wSPadReadData                  ),
        .oSPadReadValid         (wSPadReadValid                 ),
        .iSPadReadAck           (wSPadReadAck                   )
    );
    
    DispRegID
    Inst_RegID
    (
        .iClock             (iClock                 ),
        .iReset             (iReset                 ),
        .iWriteAddress      (wIDWriteAddress        ),
        .iWriteData         (wIDWriteData           ),
        .iWriteValid        (wIDWriteValid          ),
        .oWriteAck          (wIDWriteAck            ),
        .iReadAddress       (wIDReadAddress         ),
        .oReadData          (wIDReadData            ),
        .iReadValid         (wIDReadValid           ),
        .oReadAck           (wIDReadAck             ),
        .iPushBundleReady   (wSPPushBundleReady     ),
        .iSPQueueCount      (wSPQueueCount          )
    );
    
    DispRegConf
    Inst_RegConf
    (
        .iClock         (iClock                 ),
        .iReset         (iReset                 ),
        .iWriteAddress  (wConfWriteAddress      ),
        .iWriteData     (wConfWriteData         ),
        .iWriteValid    (wConfWriteValid        ),
        .oWriteAck      (wConfWriteAck          ),
        .iReadAddress   (wConfReadAddress       ),
        .oReadData      (wConfReadData          ),
        .iReadValid     (wConfReadValid         ),
        .oReadAck       (wConfReadAck           )
    );
    
    DispRegExt
    Inst_RegExt
    (
        .iClock                 (iClock                                 ),
        .iReset                 (iReset                                 ),
        .iWriteAddress          (wExtWriteAddress                       ),
        .iWriteData             (wExtWriteData                          ),
        .iWriteValid            (wExtWriteValid                         ),
        .oWriteAck              (wExtWriteAck                           ),
        .iReadAddress           (wExtReadAddress                        ),
        .oReadData              (wExtReadData                           ),
        .iReadValid             (wExtReadValid                          ),
        .oReadAck               (wExtReadAck                            ),
        .iLLNFCCmdReady         (iLLNFCCmdReady                         ),
        .iLLNFCWriteHandshake   (oLLNFCWriteValid & iLLNFCWriteReady    ),
        .iLLNFCReadHandshake    (iLLNFCReadValid & oLLNFCReadReady      ),
        .iDPLWCCmdReady         (iDPLWCmdReady                          ),
        .iDPLWCDataHandshake    (oDPLWriteValid & iDPLWriteReady        ),
        .iDPLRCCmdReady         (iDPLRCmdReady                          ),
        .iDPLRCDataHandshake    (iDPLReadValid & oDPLReadReady          ),
        .iNANDReadyBusy         (iBPWaysReadybusy                       )
    );
    
    DispRegCoreAcc
    Inst_RegCoreAcc
    (
        .iClock         (iClock                 ),
        .iReset         (iReset                 ),
        .iWriteAddress  (wCoreAccWriteAddress   ),
        .iWriteData     (wCoreAccWriteData      ),
        .iWriteValid    (wCoreAccWriteValid     ),
        .oWriteAck      (wCoreAccWriteAck       ),
        .iReadAddress   (wCoreAccReadAddress    ),
        .oReadData      (wCoreAccReadData       ),
        .iReadValid     (wCoreAccReadValid      ),
        .oReadAck       (wCoreAccReadAck        ),
        .oSPadTrigger   (wTrigger               )
    );
    
    DispRegSigBP
    #
    (
        .NumberOfWays(NumberOfWays)
    )
    Inst_RegSigBP
    (
        .iClock         (iClock                 ),
        .iReset         (iReset                 ),
        .iWriteAddress  (wSigBPWriteAddress     ),
        .iWriteData     (wSigBPWriteData        ),
        .iWriteValid    (wSigBPWriteValid       ),
        .oWriteAck      (wSigBPWriteAck         ),
        .iReadAddress   (wSigBPReadAddress      ),
        .oReadData      (wSigBPReadData         ),
        .iReadValid     (wSigBPReadValid        ),
        .oReadAck       (wSigBPReadAck          ),
        .iWaysReadyBusy (iBPWaysReadybusy       )
    );
    
    DispScratchpad
    Inst_RegSPD
    (
        .iClock                 (iClock                 ),
        .iReset                 (iReset                 ),
        .iCPLPushBundleValid    (wTrigger               ),
        .oCPLPushBundleReady    (wSPPushBundleReady     ),
        .iCPLWriteAddress       (wSPadWriteAddress      ),
        .iCPLWriteData          (wSPadWriteData         ),
        .iCPLWriteValid         (wSPadWriteValid        ),
        .oCPLWriteAck           (wSPadWriteAck          ),
        .iCPLReadAddress        (wSPadReadAddress       ),
        .oCPLReadData           (wSPadReadData          ),
        .iCPLReadValid          (wSPadReadValid         ),
        .oCPLReadAck            (wSPadReadAck           ),
        .oSPPopBundleValid      (wSPPopBundleValid      ),
        .iSPPopBundleReady      (wSPPopBundleReady      ),
        .iSPWriteAddress        (wSPEXEWriteAddress     ),
        .iSPWriteData           (wSPEXEWriteData        ),
        .iSPWriteValid          (wSPEXEWriteValid       ),
        .oSPWriteAck            (wSPEXEWriteAck         ),
        .iSPReadAddress         (wSPEXEReadAddress      ),
        .oSPReadData            (wSPEXEReadData         ),
        .iSPReadValid           (wSPEXEReadValid        ),
        .oSPReadAck             (wSPEXEReadAck          ),
        .oSPQueueCount          (wSPQueueCount          )
    );
    
    DispExecutor
    Inst_Executor
    (
        .iClock                 (iClock                 ),
        .iReset                 (iReset                 ),
        .oIMEMAddress           (oIMEMAddr              ),
        .oIMEMWriteData         (oIMEMWData             ),
        .iIMEMReadData          (iIMEMRData             ),
        .oIMEMEn                (oIMEMEnable            ),
        .oIMEMWEnable           (oIMEMRW                ),
        .iSPPopBundleValid      (wSPPopBundleValid      ),
        .oSPPopBundleReady      (wSPPopBundleReady      ),
        .oSPWriteAddress        (wSPEXEWriteAddress     ),
        .oSPWriteData           (wSPEXEWriteData        ),
        .oSPWriteValid          (wSPEXEWriteValid       ),
        .iSPWriteAck            (wSPEXEWriteAck         ),
        .oSPReadAddress         (wSPEXEReadAddress      ),
        .iSPReadData            (wSPEXEReadData         ),
        .oSPReadValid           (wSPEXEReadValid        ),
        .iSPReadAck             (wSPEXEReadAck          ),
        .oBufWriteAddress       (wBufWriteAddress       ),
        .oBufWordWriteData      (wBufWordWriteData      ),
        .oBufHalfWordWriteData  (wBufHalfWordWriteData  ),
        .oBufWordWriteValid     (wBufWordWriteValid     ),
        .oBufHalfWordWriteValid (wBufHalfWordWriteValid ),
        .oBufIssueCmdValid      (wBufIssueCmdValid      ),
        .iBufIssueCmdReady      (wBufIssueCmdReady      )
    );
    
    assign oIMEMClock = iClock;
    assign oIMEMReset = iReset;
    
    wire    [5:0]   wOutOpcode          ;
    wire    [4:0]   wOutTargetID        ;
    wire    [4:0]   wOutSourceID        ;
    wire    [31:0]  wOutAddress         ;
    wire    [15:0]  wOutLength          ;
    wire            rOutCmdValid        ;
    reg             rOutCmdReady        ;
    
    reg             rDPLWChCmdValid     ;
    reg             rDPLRChCmdValid     ;
    reg             rLLNFCChCmdValid    ;
    reg             rUpDDCmdValid       ;
    reg             rDownDDCmdValid     ;
    
    wire            wUpDDCmdReady       ;
    wire            wDownDDCmdReady     ;
    
    DispIOCmdBuffer
    Inst_IOCmdBuffer
    (
        .iClock                 (iClock                 ),
        .iReset                 (iReset                 ),
        .iBufWriteAddress       (wBufWriteAddress       ),
        .iBufWordWriteData      (wBufWordWriteData      ),
        .iBufHalfWordWriteData  (wBufHalfWordWriteData  ),
        .iBufWordWriteValid     (wBufWordWriteValid     ),
        .iBufHalfWordWriteValid (wBufHalfWordWriteValid ),
        .iBufIssueCmdValid      (wBufIssueCmdValid      ),
        .oBufIssueCmdReady      (wBufIssueCmdReady      ),
        .oOutOpcode             (wOutOpcode             ),
        .oOutTargetID           (wOutTargetID           ),
        .oOutSourceID           (wOutSourceID           ),
        .oOutAddress            (wOutAddress            ),
        .oOutLength             (wOutLength             ),
        .oOutCmdValid           (rOutCmdValid           ),
        .iOutCmdReady           (rOutCmdReady           )
    );
    
    always @ (*)
        case (wOutTargetID[4:3])
        2'b00:rLLNFCChCmdValid <= 1'b0          ;
        2'b01:rLLNFCChCmdValid <= 1'b0          ;
        2'b10:rLLNFCChCmdValid <= 1'b0          ;
        2'b11:rLLNFCChCmdValid <= rOutCmdValid  ;
        endcase
    always @ (*)
        case (wOutTargetID[4:3])
        2'b00:rDPLWChCmdValid <= 1'b0           ;
        2'b01:rDPLWChCmdValid <= rOutCmdValid   ;
        2'b10:rDPLWChCmdValid <= 1'b0           ;
        2'b11:rDPLWChCmdValid <= 1'b0           ;
        endcase
    always @ (*)
        case (wOutTargetID[4:3])
        2'b00:rDPLRChCmdValid <= 1'b0           ;
        2'b01:rDPLRChCmdValid <= 1'b0           ;
        2'b10:rDPLRChCmdValid <= rOutCmdValid   ;
        2'b11:rDPLRChCmdValid <= 1'b0           ;
        endcase
    always @ (*)
        case (wOutTargetID[4:3])
        2'b00:
        begin
            if (wOutTargetID[2] == 1'b0)
            begin
                rUpDDCmdValid   <= rOutCmdValid ; // DPL Write Channel from LLNFC Read Channel (Up)
                rDownDDCmdValid <= 1'b0         ;
            end
            else
            begin
                rUpDDCmdValid     <= 1'b0       ;
                rDownDDCmdValid <= rOutCmdValid ; // LLNFC Write Channel from DPL Read Channel (Down)
            end
        end
        2'b01:
        begin
            rUpDDCmdValid     <= 1'b0           ;
            rDownDDCmdValid   <= 1'b0           ;
        end
        2'b10:
        begin
            rUpDDCmdValid     <= 1'b0           ;
            rDownDDCmdValid   <= 1'b0           ;
        end
        2'b11:
        begin
            rUpDDCmdValid     <= 1'b0           ;
            rDownDDCmdValid   <= 1'b0           ;
        end
        endcase
        
    always @ (*)
        case (wOutTargetID[4:3])
        2'b00:
        begin
            if (wOutTargetID[2] == 1'b0)
                rOutCmdReady <= wUpDDCmdReady   ; // DPL Write Channel from LLNFC Read Channel (Up)
            else
                rOutCmdReady <= wDownDDCmdReady ; // LLNFC Write Channel from DPL Read Channel (Down)
        end
        2'b01:rOutCmdReady <= iDPLWCmdReady     ;
        2'b10:rOutCmdReady <= iDPLRCmdReady     ;
        2'b11:rOutCmdReady <= iLLNFCCmdReady    ;
        endcase
    
    DispDataDriver
    #
    (
        .DataWidth      (32),
        .LengthWidth    (16)
    )
    Inst_DataDriver_FromLLNFCToDPL_UpDD
    (
        .CLK        (iClock             ),
        .RESET      (iReset             ),
        .SRCLEN     (wOutLength         ),
        .SRCVALID   (rUpDDCmdValid      ),
        .SRCREADY   (wUpDDCmdReady      ),
        .DATA       (iLLNFCReadData     ),
        .DVALID     (iLLNFCReadValid    ),
        .DREADY     (oLLNFCReadReady    ),
        .XDATA      (oDPLWriteData      ),
        .XDVALID    (oDPLWriteValid     ),
        .XDREADY    (iDPLWriteReady     ),
        .XDLAST     (oDPLWriteLast      )
    );
    
    DispDataDriver
    #
    (
        .DataWidth      (32),
        .LengthWidth    (16)
    )
    Inst_DataDriver_FromDPLToLLNFC_DownDD
    (
        .CLK        (iClock             ),
        .RESET      (iReset             ),
        .SRCLEN     (wOutLength         ),
        .SRCVALID   (rDownDDCmdValid    ),
        .SRCREADY   (wDownDDCmdReady    ),
        .DATA       (iDPLReadData       ),
        .DVALID     (iDPLReadValid      ),
        .DREADY     (oDPLReadReady      ),
        .XDATA      (oLLNFCWriteData    ),
        .XDVALID    (oLLNFCWriteValid   ),
        .XDREADY    (iLLNFCWriteReady   ),
        .XDLAST     (oLLNFCWriteLast    )
    );
    
    assign  oLLNFCCmdValid      = rLLNFCChCmdValid          ;
    assign  oDPLWCmdValid       = rDPLWChCmdValid           ;
    assign  oDPLRCmdValid       = rDPLRChCmdValid           ;
    
    assign  oDPLWOpcode         = wOutOpcode                ;
    assign  oDPLWTargetID       = {2'b0, wOutTargetID[2:0]} ;
    assign  oDPLWSourceID       = wOutSourceID              ;
    assign  oDPLWAddress        = wOutAddress               ;
    assign  oDPLWLength         = wOutLength                ;
    
    assign  oDPLROpcode         = wOutOpcode                ;
    assign  oDPLRTargetID       = {2'b0, wOutTargetID[2:0]} ;
    assign  oDPLRSourceID       = wOutSourceID              ;
    assign  oDPLRAddress        = wOutAddress               ;
    assign  oDPLRLength         = wOutLength                ;
    
    assign  oLLNFCOpcode        = wOutOpcode                ;
    assign  oLLNFCTargetID      = {2'b0, wOutTargetID[2:0]} ;
    assign  oLLNFCSourceID      = wOutSourceID              ;
    assign  oLLNFCAddress       = wOutAddress               ;
    assign  oLLNFCLength        = wOutLength                ;
    
endmodule