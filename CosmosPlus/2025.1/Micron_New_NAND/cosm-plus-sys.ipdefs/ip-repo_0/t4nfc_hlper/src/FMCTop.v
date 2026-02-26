//////////////////////////////////////////////////////////////////////////////////
// NVMCTop for Cosmos OpenSSD
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
// Design Name: NVMC top
// Module Name: NVMCTop
// File Name: MCTop.v
//
// Version: v1.0.0
//
// Description: Non volatile memory controller top
//
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.0
//   - first draft 
// * v1.1.0
//   - external brom interface
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module FMCTop
#
(
    parameter   NumberOfWays        = 8
)
(
    iClock              ,
    iReset              ,
    C_AWVALID           ,
    C_AWREADY           ,
    C_AWADDR            ,
    C_AWPROT            ,
    C_WVALID            ,
    C_WREADY            ,
    C_WDATA             ,
    C_WSTRB             ,
    C_BVALID            ,
    C_BREADY            ,
    C_BRESP             ,
    C_ARVALID           ,
    C_ARREADY           ,
    C_ARADDR            ,
    C_ARPROT            ,
    C_RVALID            ,
    C_RREADY            ,
    C_RDATA             ,
    C_RRESP             ,
    D_AWADDR            ,
    D_AWLEN             ,
    D_AWSIZE            ,
    D_AWBURST           ,
    D_AWCACHE           ,
    D_AWPROT            ,
    D_AWVALID           ,
    D_AWREADY           ,
    D_WDATA             ,
    D_WSTRB             ,
    D_WLAST             ,
    D_WVALID            ,
    D_WREADY            ,
    D_BRESP             ,
    D_BVALID            ,
    D_BREADY            ,
    D_ARADDR            ,
    D_ARLEN             ,
    D_ARSIZE            ,
    D_ARBURST           ,
    D_ARCACHE           ,
    D_ARPROT            ,
    D_ARVALID           ,
    D_ARREADY           ,
    D_RDATA             ,
    D_RRESP             ,
    D_RLAST             ,
    D_RVALID            ,
    D_RREADY            ,
    oOpcode             ,
    oTargetID           ,
    oSourceID           ,
    oAddress            ,
    oLength             ,
    oCMDValid           ,
    iCMDReady           ,
    oWriteData          ,
    oWriteLast          ,
    oWriteValid         ,
    iWriteReady         ,
    iReadData           ,
    iReadLast           ,
    iReadValid          ,
    oReadReady          ,
    iReadyBusy          ,
    oROMClock           ,
    oROMReset           ,
    oROMAddr            ,
    oROMRW              ,
    oROMEnable          ,
    oROMWData           ,
    iROMRData           ,
    oToECCWOpcode       ,
    oToECCWTargetID     ,
    oToECCWSourceID     ,
    oToECCWAddress      ,
    oToECCWLength       ,
    oToECCWCmdValid     ,
    iToECCWCmdReady     ,
    oToECCWData         ,
    oToECCWValid        ,
    oToECCWLast         ,
    iToECCWReady        ,
    oToECCROpcode       ,
    oToECCRTargetID     ,
    oToECCRSourceID     ,
    oToECCRAddress      ,
    oToECCRLength       ,
    oToECCRCmdValid     ,
    iToECCRCmdReady     ,
    iToECCRData         ,
    iToECCRValid        ,
    iToECCRLast         ,
    oToECCRReady        ,
    ifromECCWOpcode     ,
    ifromECCWTargetID   ,
    ifromECCWSourceID   ,
    ifromECCWAddress    ,
    ifromECCWLength     ,
    ifromECCWCmdValid   ,
    ofromECCWCmdReady   ,
    ifromECCWData       ,
    ifromECCWValid      ,
    ifromECCWLast       ,
    ofromECCWReady      ,
    ifromECCROpcode     ,
    ifromECCRTargetID   ,
    ifromECCRSourceID   ,
    ifromECCRAddress    ,
    ifromECCRLength     ,
    ifromECCRCmdValid   ,
    ofromECCRCmdReady   ,
    ofromECCRData       ,
    ofromECCRValid      ,
    ofromECCRLast       ,
    ifromECCRReady      ,
    O_DEBUG
);

    input                           iClock                  ;
    input                           iReset                  ;
    input                           C_AWVALID               ;
    output                          C_AWREADY               ;
    input   [31:0]                  C_AWADDR                ;
    input   [2:0]                   C_AWPROT                ;
    input                           C_WVALID                ;
    output                          C_WREADY                ;
    input   [31:0]                  C_WDATA                 ;
    input   [3:0]                   C_WSTRB                 ;
    output                          C_BVALID                ;
    input                           C_BREADY                ;
    output  [1:0]                   C_BRESP                 ;
    input                           C_ARVALID               ;
    output                          C_ARREADY               ;
    input   [31:0]                  C_ARADDR                ;
    input   [2:0]                   C_ARPROT                ;
    output                          C_RVALID                ;
    input                           C_RREADY                ;
    output  [31:0]                  C_RDATA                 ;
    output  [1:0]                   C_RRESP                 ;
    
    output  [31:0]                  D_AWADDR                ;
    output  [7:0]                   D_AWLEN                 ;
    output  [2:0]                   D_AWSIZE                ;
    output  [1:0]                   D_AWBURST               ;
    output  [3:0]                   D_AWCACHE               ;
    output  [2:0]                   D_AWPROT                ;
    output                          D_AWVALID               ;
    input                           D_AWREADY               ;
    output  [31:0]                  D_WDATA                 ;
    output  [3:0]                   D_WSTRB                 ;
    output                          D_WLAST                 ;
    output                          D_WVALID                ;
    input                           D_WREADY                ;
    input   [1:0]                   D_BRESP                 ;
    input                           D_BVALID                ;
    output                          D_BREADY                ;
    
    output  [31:0]                  D_ARADDR                ;
    output  [7:0]                   D_ARLEN                 ;
    output  [2:0]                   D_ARSIZE                ;
    output  [1:0]                   D_ARBURST               ;
    output  [3:0]                   D_ARCACHE               ;
    output  [2:0]                   D_ARPROT                ;
    output                          D_ARVALID               ;
    input                           D_ARREADY               ;
    input   [31:0]                  D_RDATA                 ;
    input   [1:0]                   D_RRESP                 ;
    input                           D_RLAST                 ;
    input                           D_RVALID                ;
    output                          D_RREADY                ;
    
    output  [5:0]                   oOpcode                 ;
    output  [4:0]                   oTargetID               ;
    output  [4:0]                   oSourceID               ;
    output  [31:0]                  oAddress                ;
    output  [15:0]                  oLength                 ;
    output                          oCMDValid               ;
    input                           iCMDReady               ;
    output  [31:0]                  oWriteData              ;
    output                          oWriteLast              ;
    output                          oWriteValid             ;
    input                           iWriteReady             ;
    input   [31:0]                  iReadData               ;
    input                           iReadLast               ;
    input                           iReadValid              ;
    output                          oReadReady              ;
    input   [NumberOfWays - 1:0]    iReadyBusy              ;
    
    output                          oROMClock               ;
    output                          oROMReset               ;
    output  [31:0]                  oROMAddr                ;
    output                          oROMRW                  ;
    output                          oROMEnable              ;
    output  [31:0]                  oROMWData               ;
    input   [31:0]                  iROMRData               ;
    
    output  [5:0]                   oToECCWOpcode           ;
    output  [4:0]                   oToECCWTargetID         ;
    output  [4:0]                   oToECCWSourceID         ;
    output  [31:0]                  oToECCWAddress          ;
    output  [15:0]                  oToECCWLength           ;
    output                          oToECCWCmdValid         ;
    input                           iToECCWCmdReady         ;
    output  [31:0]                  oToECCWData             ;
    output                          oToECCWValid            ;
    output                          oToECCWLast             ;
    input                           iToECCWReady            ;
    output  [5:0]                   oToECCROpcode           ;
    output  [4:0]                   oToECCRTargetID         ;
    output  [4:0]                   oToECCRSourceID         ;
    output  [31:0]                  oToECCRAddress          ;
    output  [15:0]                  oToECCRLength           ;
    output                          oToECCRCmdValid         ;
    input                           iToECCRCmdReady         ;
    input   [31:0]                  iToECCRData             ;
    input                           iToECCRValid            ;
    input                           iToECCRLast             ;
    output                          oToECCRReady            ;
    
    input   [5:0]                   ifromECCWOpcode         ;
    input   [4:0]                   ifromECCWTargetID       ;
    input   [4:0]                   ifromECCWSourceID       ;
    input   [31:0]                  ifromECCWAddress        ;
    input   [15:0]                  ifromECCWLength         ;
    input                           ifromECCWCmdValid       ;
    output                          ofromECCWCmdReady       ;
    input   [31:0]                  ifromECCWData           ;
    input                           ifromECCWValid          ;
    input                           ifromECCWLast           ;
    output                          ofromECCWReady          ;
    input  [5:0]                    ifromECCROpcode         ;
    input  [4:0]                    ifromECCRTargetID       ;
    input  [4:0]                    ifromECCRSourceID       ;
    input  [31:0]                   ifromECCRAddress        ;
    input  [15:0]                   ifromECCRLength         ;
    input                           ifromECCRCmdValid       ;
    output                          ofromECCRCmdReady       ;
    output   [31:0]                 ofromECCRData           ;
    output                          ofromECCRValid          ;
    output                          ofromECCRLast           ;
    input                           ifromECCRReady          ;
    
    output  [31:0]                  O_DEBUG                 ;
    
    wire    [31:0]                  wCWriteAddress          ;
    wire    [31:0]                  wCReadAddress           ;
    wire    [31:0]                  wCWriteData             ;
    wire    [31:0]                  wCReadData              ;
    wire                            wCWriteValid            ;
    wire                            wCReadValid             ;
    wire                            wCWriteAck              ;
    wire                            wCReadAck               ;
    
    wire    [31:0]                  wDWChCmpt2DMAAddress    ;
    wire    [15:0]                  wDWChCmpt2DMALength     ;
    wire                            wDWChCmpt2DMACmdValid   ;
    wire                            wDWChCmpt2DMACmdReady   ;
    wire    [31:0]                  wDWChCmpt2DMAData       ;
    wire                            wDWChCmpt2DMAWValid     ;
    wire                            wDWChCmpt2DMAWLast      ;
    wire                            wDWChCmpt2DMAWReady     ;
    
    wire    [31:0]                  wDRChCmpt2DMAAddress    ;
    wire    [15:0]                  wDRChCmpt2DMALength     ;
    wire                            wDRChCmpt2DMACmdValid   ;
    wire                            wDRChCmpt2DMACmdReady   ;
    wire    [31:0]                  wDRChCmpt2DMAData       ;
    wire                            wDRChCmpt2DMARValid     ;
    wire                            wDRChCmpt2DMARLast      ;
    wire                            wDRChCmpt2DMARReady     ;
    
    wire    [5:0]                   wDWChDisp2ScrambOpcode  ;
    wire    [4:0]                   wDWChDisp2ScrambTargetID;
    wire    [4:0]                   wDWChDisp2ScrambSourceID;
    wire    [31:0]                  wDWChDisp2ScrambAddress ;
    wire    [15:0]                  wDWChDisp2ScrambLength  ;
    wire                            wDWChDisp2ScrambCmdValid;
    wire                            wDWChDisp2ScrambCmdReady;
    wire    [31:0]                  wDWChDisp2ScrambData    ;
    wire                            wDWChDisp2ScrambWValid  ;
    wire                            wDWChDisp2ScrambWLast   ;
    wire                            wDWChDisp2ScrambWReady  ;
    
    wire    [5:0]                   wDRChDisp2ScrambOpcode  ;
    wire    [4:0]                   wDRChDisp2ScrambTargetID;
    wire    [4:0]                   wDRChDisp2ScrambSourceID;
    wire    [31:0]                  wDRChDisp2ScrambAddress ;
    wire    [15:0]                  wDRChDisp2ScrambLength  ;
    wire                            wDRChDisp2ScrambCmdValid;
    wire                            wDRChDisp2ScrambCmdReady;
    wire    [31:0]                  wDRChDisp2ScrambData    ;
    wire                            wDRChDisp2ScrambRValid  ;
    wire                            wDRChDisp2ScrambRLast   ;
    wire                            wDRChDisp2ScrambRReady  ;
    
    wire    [5:0]                   wDWChPCGOpcode          ;
    wire    [4:0]                   wDWChPCGTargetID        ;
    wire    [4:0]                   wDWChPCGSourceID        ;
    wire    [31:0]                  wDWChPCGAddress         ;
    wire    [15:0]                  wDWChPCGLength          ;
    wire                            wDWChPCGCmdValid        ;
    wire                            wDWChPCGCmdReady        ;
    wire    [31:0]                  wDWChPCGData            ;
    wire                            wDWChPCGWValid          ;
    wire                            wDWChPCGWLast           ;
    wire                            wDWChPCGWReady          ;
    
    wire    [5:0]                   wDRChPCGOpcode          ;
    wire    [4:0]                   wDRChPCGTargetID        ;
    wire    [4:0]                   wDRChPCGSourceID        ;
    wire    [31:0]                  wDRChPCGAddress         ;
    wire    [15:0]                  wDRChPCGLength          ;
    wire                            wDRChPCGCmdValid        ;
    wire                            wDRChPCGCmdReady        ;
    wire    [31:0]                  wDRChPCGData            ;
    wire                            wDRChPCGRValid          ;
    wire                            wDRChPCGRLast           ;
    wire                            wDRChPCGRReady          ;
    
    wire    [NumberOfWays - 1:0]    wPCGBypassedReadyBusy   ;
    
    AXI4LiteSlaveInterface
    #
    (
        .AddressWidth       (32                     ),
        .DataWidth          (32                     )
    )
    Inst_AXI4LiteSlaveInterface
    (
        .ACLK               (iClock                 ),
        .ARESETN            (!iReset                ),
        .AWVALID            (C_AWVALID              ),
        .AWREADY            (C_AWREADY              ),
        .AWADDR             (C_AWADDR               ),
        .AWPROT             (C_AWPROT               ),
        .WVALID             (C_WVALID               ),
        .WREADY             (C_WREADY               ),
        .WDATA              (C_WDATA                ),
        .WSTRB              (C_WSTRB                ),
        .BVALID             (C_BVALID               ),
        .BREADY             (C_BREADY               ),
        .BRESP              (C_BRESP                ),
        .ARVALID            (C_ARVALID              ),
        .ARREADY            (C_ARREADY              ),
        .ARADDR             (C_ARADDR               ),
        .ARPROT             (C_ARPROT               ),
        .RVALID             (C_RVALID               ),
        .RREADY             (C_RREADY               ),
        .RDATA              (C_RDATA                ),
        .RRESP              (C_RRESP                ),
        .oWriteAddress      (wCWriteAddress         ),
        .oReadAddress       (wCReadAddress          ),
        .oWriteData         (wCWriteData            ),
        .iReadData          (wCReadData             ),
        .oWriteValid        (wCWriteValid           ),
        .oReadValid         (wCReadValid            ),
        .iWriteAck          (wCWriteAck             ),
        .iReadAck           (wCReadAck              )
    );
    
    AXI4MasterInterface
    #
    (
        .AddressWidth       (32                     ),
        .DataWidth          (32                     ),
        .InnerIFLengthWidth (16                     ),
        .MaxDivider         (32                     )
    )
    Inst_AXI4MasterInterface
    (
        .ACLK               (iClock                 ),
        .ARESETN            (!iReset                ),
        .M_AWADDR           (D_AWADDR               ),
        .M_AWLEN            (D_AWLEN                ),
        .M_AWSIZE           (D_AWSIZE               ),
        .M_AWBURST          (D_AWBURST              ),
        .M_AWCACHE          (D_AWCACHE              ),
        .M_AWPROT           (D_AWPROT               ),
        .M_AWVALID          (D_AWVALID              ),
        .M_AWREADY          (D_AWREADY              ),
        .M_WDATA            (D_WDATA                ),
        .M_WSTRB            (D_WSTRB                ),
        .M_WLAST            (D_WLAST                ),
        .M_WVALID           (D_WVALID               ),
        .M_WREADY           (D_WREADY               ),
        .M_BRESP            (D_BRESP                ),
        .M_BVALID           (D_BVALID               ),
        .M_BREADY           (D_BREADY               ),
        .M_ARADDR           (D_ARADDR               ),
        .M_ARLEN            (D_ARLEN                ),
        .M_ARSIZE           (D_ARSIZE               ),
        .M_ARBURST          (D_ARBURST              ),
        .M_ARCACHE          (D_ARCACHE              ),
        .M_ARPROT           (D_ARPROT               ),
        .M_ARVALID          (D_ARVALID              ),
        .M_ARREADY          (D_ARREADY              ),
        .M_RDATA            (D_RDATA                ),
        .M_RRESP            (D_RRESP                ),
        .M_RLAST            (D_RLAST                ),
        .M_RVALID           (D_RVALID               ),
        .M_RREADY           (D_RREADY               ),
        .iWriteAddress      (wDWChCmpt2DMAAddress   ),
        .iWriteBeats        (wDWChCmpt2DMALength    ),
        .iWriteCommandReq   (wDWChCmpt2DMACmdValid  ),
        .oWriteCommandAck   (wDWChCmpt2DMACmdReady  ),
        .iWriteData         (wDWChCmpt2DMAData      ),
        .iWriteLast         (wDWChCmpt2DMAWLast     ),
        .iWriteValid        (wDWChCmpt2DMAWValid    ),
        .oWriteReady        (wDWChCmpt2DMAWReady    ),
        .iReadAddress       (wDRChCmpt2DMAAddress   ),
        .iReadBeats         (wDRChCmpt2DMALength    ),
        .iReadCommandReq    (wDRChCmpt2DMACmdValid  ),
        .oReadCommandAck    (wDRChCmpt2DMACmdReady  ),
        .oReadData          (wDRChCmpt2DMAData      ),
        .oReadLast          (wDRChCmpt2DMARLast     ),
        .oReadValid         (wDRChCmpt2DMARValid    ),
        .iReadReady         (wDRChCmpt2DMARReady    )
    );
    
    Completion
    #
    (
        .AddressWidth       (32                     ),
        .DataWidth          (32                     ),
        .InnerIFLengthWidth (16                     ),
        .ThisID             (1                      ),
        .NumberOfWays       (NumberOfWays           )
    )
    Inst_Completion
    (
        .iClock             (iClock                 ),
        .iReset             (iReset                 ),
        .iSrcOpcode         (ifromECCWOpcode        ),
        .iSrcTargetID       (ifromECCWTargetID      ),
        .iSrcSourceID       (ifromECCWSourceID      ),
        .iSrcAddress        (ifromECCWAddress       ),
        .iSrcLength         (ifromECCWLength        ),
        .iSrcCmdValid       (ifromECCWCmdValid      ),
        .oSrcCmdReady       (ofromECCWCmdReady      ),
        .iSrcWriteData      (ifromECCWData          ),
        .iSrcWriteValid     (ifromECCWValid         ),
        .iSrcWriteLast      (ifromECCWLast          ),
        .oSrcWriteReady     (ofromECCWReady         ),
        .oDstOpcode         (                       ),
        .oDstTargetID       (                       ),
        .oDstSourceID       (                       ),
        .oDstAddress        (wDWChCmpt2DMAAddress   ),
        .oDstLength         (wDWChCmpt2DMALength    ),
        .oDstCmdValid       (wDWChCmpt2DMACmdValid  ),
        .iDstCmdReady       (wDWChCmpt2DMACmdReady  ),
        .oDstWriteData      (wDWChCmpt2DMAData      ),
        .oDstWriteValid     (wDWChCmpt2DMAWValid    ),
        .oDstWriteLast      (wDWChCmpt2DMAWLast     ),
        .iDstWriteReady     (wDWChCmpt2DMAWReady    ),
        .iNANDReadyBusy     (iReadyBusy             )
    );
    
    assign  wDRChCmpt2DMAAddress    =   ifromECCRAddress        ;
    assign  wDRChCmpt2DMALength     =   ifromECCRLength         ;
    assign  wDRChCmpt2DMACmdValid   =   ifromECCRCmdValid       ;
    assign  ofromECCRCmdReady       =   wDRChCmpt2DMACmdReady   ;
    assign  ofromECCRData           =   wDRChCmpt2DMAData       ;
    assign  ofromECCRValid          =   wDRChCmpt2DMARValid     ;
    assign  ofromECCRLast           =   wDRChCmpt2DMARLast      ;
    assign  wDRChCmpt2DMARReady     =   ifromECCRReady          ;
    
    ScrambleDecoder
    #
    (
        .AddressWidth       (32                     ),
        .DataWidth          (32                     ),
        .InnerIFLengthWidth (16                     ),
        .ThisID             (3                      )
    )
    Inst_ScrambleDecoder
    (
        .iClock             (iClock                     ),
        .iReset             (iReset                     ),
        .iSrcOpcode         (wDWChDisp2ScrambOpcode     ),
        .iSrcTargetID       (wDWChDisp2ScrambTargetID   ),
        .iSrcSourceID       (wDWChDisp2ScrambSourceID   ),
        .iSrcAddress        (wDWChDisp2ScrambAddress    ),
        .iSrcLength         (wDWChDisp2ScrambLength     ),
        .iSrcCmdValid       (wDWChDisp2ScrambCmdValid   ),
        .oSrcCmdReady       (wDWChDisp2ScrambCmdReady   ),
        .oDstOpcode         (oToECCWOpcode              ),
        .oDstTargetID       (oToECCWTargetID            ),
        .oDstSourceID       (oToECCWSourceID            ),
        .oDstAddress        (oToECCWAddress             ),
        .oDstLength         (oToECCWLength              ),
        .oDstCmdValid       (oToECCWCmdValid            ),
        .iDstCmdReady       (iToECCWCmdReady            ),
        .iSrcWriteData      (wDWChDisp2ScrambData       ),
        .iSrcWriteValid     (wDWChDisp2ScrambWValid     ),
        .iSrcWriteLast      (wDWChDisp2ScrambWLast      ),
        .oSrcWriteReady     (wDWChDisp2ScrambWReady     ),
        .oDstWriteData      (oToECCWData                ),
        .oDstWriteValid     (oToECCWValid               ),
        .oDstWriteLast      (oToECCWLast                ),
        .iDstWriteReady     (iToECCWReady               )
    );
    
    ScrambleEncoder
    #
    (
        .AddressWidth       (32                     ),
        .DataWidth          (32                     ),
        .InnerIFLengthWidth (16                     ),
        .ThisID             (3                      )
    )
    Inst_ScrambleEncoder
    (
        .iClock             (iClock                     ),
        .iReset             (iReset                     ),
        .iSrcOpcode         (wDRChDisp2ScrambOpcode     ),
        .iSrcTargetID       (wDRChDisp2ScrambTargetID   ),
        .iSrcSourceID       (wDRChDisp2ScrambSourceID   ),
        .iSrcAddress        (wDRChDisp2ScrambAddress    ),
        .iSrcLength         (wDRChDisp2ScrambLength     ),
        .iSrcCmdValid       (wDRChDisp2ScrambCmdValid   ),
        .oSrcCmdReady       (wDRChDisp2ScrambCmdReady   ),
        .oDstOpcode         (oToECCROpcode              ),
        .oDstTargetID       (oToECCRTargetID            ),
        .oDstSourceID       (oToECCRSourceID            ),
        .oDstAddress        (oToECCRAddress             ),
        .oDstLength         (oToECCRLength              ),
        .oDstCmdValid       (oToECCRCmdValid            ),
        .iDstCmdReady       (iToECCRCmdReady            ),
        .oSrcReadData       (wDRChDisp2ScrambData       ),
        .oSrcReadValid      (wDRChDisp2ScrambRValid     ),
        .oSrcReadLast       (wDRChDisp2ScrambRLast      ),
        .iSrcReadReady      (wDRChDisp2ScrambRReady     ),
        .iDstReadData       (iToECCRData                ),
        .iDstReadValid      (iToECCRValid               ),
        .iDstReadLast       (iToECCRLast                ),
        .oDstReadReady      (oToECCRReady               )
    );
    
    DispRequestDispatcher
    #
    (
        .NumberOfWays       (NumberOfWays           )
    )
    Inst_Dispatcher
    (
        .iClock             (iClock                     ),
        .iReset             (iReset                     ),
        .iCPLWriteAddress   (wCWriteAddress             ),
        .iCPLReadAddress    (wCReadAddress              ),
        .iCPLWriteData      (wCWriteData                ),
        .oCPLReadData       (wCReadData                 ),
        .iCPLWriteValid     (wCWriteValid               ),
        .iCPLReadValid      (wCReadValid                ),
        .oCPLWriteAck       (wCWriteAck                 ),
        .oCPLReadAck        (wCReadAck                  ),
        .oDPLWOpcode        (wDWChDisp2ScrambOpcode     ),
        .oDPLWTargetID      (wDWChDisp2ScrambTargetID   ),
        .oDPLWSourceID      (wDWChDisp2ScrambSourceID   ),
        .oDPLWAddress       (wDWChDisp2ScrambAddress    ),
        .oDPLWLength        (wDWChDisp2ScrambLength     ),
        .oDPLWCmdValid      (wDWChDisp2ScrambCmdValid   ),
        .iDPLWCmdReady      (wDWChDisp2ScrambCmdReady   ),
        .oDPLWriteData      (wDWChDisp2ScrambData       ),
        .oDPLWriteValid     (wDWChDisp2ScrambWValid     ),
        .oDPLWriteLast      (wDWChDisp2ScrambWLast      ),
        .iDPLWriteReady     (wDWChDisp2ScrambWReady     ),
        .oDPLROpcode        (wDRChDisp2ScrambOpcode     ),
        .oDPLRTargetID      (wDRChDisp2ScrambTargetID   ),
        .oDPLRSourceID      (wDRChDisp2ScrambSourceID   ),
        .oDPLRAddress       (wDRChDisp2ScrambAddress    ),
        .oDPLRLength        (wDRChDisp2ScrambLength     ),
        .oDPLRCmdValid      (wDRChDisp2ScrambCmdValid   ),
        .iDPLRCmdReady      (wDRChDisp2ScrambCmdReady   ),
        .iDPLReadData       (wDRChDisp2ScrambData       ),
        .iDPLReadValid      (wDRChDisp2ScrambRValid     ),
        .iDPLReadLast       (wDRChDisp2ScrambRLast      ),
        .oDPLReadReady      (wDRChDisp2ScrambRReady     ),
        .oLLNFCOpcode       (wDWChPCGOpcode             ),
        .oLLNFCTargetID     (wDWChPCGTargetID           ),
        .oLLNFCSourceID     (wDWChPCGSourceID           ),
        .oLLNFCAddress      (wDWChPCGAddress            ),
        .oLLNFCLength       (wDWChPCGLength             ),
        .oLLNFCCmdValid     (wDWChPCGCmdValid           ),
        .iLLNFCCmdReady     (wDWChPCGCmdReady           ),
        .oLLNFCWriteData    (wDWChPCGData               ),
        .oLLNFCWriteValid   (wDWChPCGWValid             ),
        .oLLNFCWriteLast    (wDWChPCGWLast              ),
        .iLLNFCWriteReady   (wDWChPCGWReady             ),
        .iLLNFCReadData     (wDRChPCGData               ),
        .iLLNFCReadValid    (wDRChPCGRValid             ),
        .iLLNFCReadLast     (wDRChPCGRLast              ),
        .oLLNFCReadReady    (wDRChPCGRReady             ),
        .iBPWaysReadybusy   (wPCGBypassedReadyBusy      ),
        .oIMEMClock         (oROMClock                  ),
        .oIMEMReset         (oROMReset                  ),
        .oIMEMAddr          (oROMAddr                   ),
        .oIMEMRW            (oROMRW                     ),
        .oIMEMEnable        (oROMEnable                 ),
        .oIMEMWData         (oROMWData                  ),
        .iIMEMRData         (iROMRData                  )
    );
    
    assign wDRChPCGCmdReady     = 0;
    
    assign oOpcode                  = wDWChPCGOpcode    ;
    assign oTargetID                = wDWChPCGTargetID  ;   
    assign oSourceID                = wDWChPCGSourceID  ;   
    assign oAddress                 = wDWChPCGAddress   ;   
    assign oLength                  = wDWChPCGLength    ;   
    assign oCMDValid                = wDWChPCGCmdValid  ;   
    assign wDWChPCGCmdReady         = iCMDReady         ;
    assign oWriteData               = wDWChPCGData      ;   
    assign oWriteLast               = wDWChPCGWLast     ;   
    assign oWriteValid              = wDWChPCGWValid    ;   
    assign wDWChPCGWReady           = iWriteReady       ;
    assign wDRChPCGData             = iReadData         ;
    assign wDRChPCGRLast            = iReadLast         ;
    assign wDRChPCGRValid           = iReadValid        ;
    assign oReadReady               = wDRChPCGRReady    ;   
    assign wPCGBypassedReadyBusy    = iReadyBusy        ;
    
    assign O_DEBUG = 32'b0;

endmodule
