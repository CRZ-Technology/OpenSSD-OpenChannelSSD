//////////////////////////////////////////////////////////////////////////////////
// NPCG_Toggle_BNC_P_program for Cosmos OpenSSD
// Copyright (c) 2015 Hanyang University ENC Lab.
// Contributed by Kibin Park <kbpark@enc.hanyang.ac.kr>
//                Ilyong Jung <iyjung@enc.hanyang.ac.kr>
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
// Engineer: Kibin Park <kbpark@enc.hanyang.ac.kr>, Ilyong Jung <iyjung@enc.hanyang.ac.kr>
// 
// Project Name: Cosmos OpenSSD
// Design Name: NPCG_Toggle_BNC_P_program
// Module Name: NPCG_Toggle_BNC_P_program
// File Name: NPCG_Toggle_BNC_P_program.v
//
// Version: v1.0.0
//
// Description: Page program execution FSM
//
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.0
//   - first draft
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module NPCG_Toggle_BNC_P_program
#
(
    parameter NumberOfWays    =   4
)
(
    iSystemClock        ,
    iReset              ,
    iOpcode             ,
    iTargetID           ,
    iSourceID           ,
    iLength             ,
    iCMDValid           ,
    oCMDReady           ,
    iWriteData          ,
    iWriteLast          ,
    iWriteValid         ,
    oWriteReady         ,
    iWaySelect          ,
    iColAddress         ,
    iRowAddress         ,
    oStart              ,
    oLastStep           ,
    iPM_Ready           ,
    iPM_LastStep        ,
    oPM_PCommand        ,
    oPM_PCommandOption  ,
    oPM_TargetWay       ,
    oPM_NumOfData       ,
    oPM_CASelect        ,
    oPM_CAData          ,
    oPM_WriteData       ,
    oPM_WriteLast       ,
    oPM_WriteValid      ,
    iPM_WriteReady
);
    input                           iSystemClock            ;
    input                           iReset                  ;
    input   [5:0]                   iOpcode                 ;
    input   [4:0]                   iTargetID               ;
    input   [4:0]                   iSourceID               ;
    input   [15:0]                  iLength                 ;
    input                           iCMDValid               ;
    output                          oCMDReady               ;
    input   [31:0]                  iWriteData              ;
    input                           iWriteLast              ;
    input                           iWriteValid             ;
    output                          oWriteReady             ;
    input   [NumberOfWays - 1:0]    iWaySelect              ;
    input   [15:0]                  iColAddress             ;
    input   [23:0]                  iRowAddress             ;
    output                          oStart                  ;
    output                          oLastStep               ;
    input   [7:0]                   iPM_Ready               ;
    input   [7:0]                   iPM_LastStep            ;
    output  [7:0]                   oPM_PCommand            ;
    output  [2:0]                   oPM_PCommandOption      ;
    output  [NumberOfWays - 1:0]    oPM_TargetWay           ;
    output  [15:0]                  oPM_NumOfData           ;
    output                          oPM_CASelect            ;
    output  [7:0]                   oPM_CAData              ;
    output  [31:0]                  oPM_WriteData           ;
    output                          oPM_WriteLast           ;
    output                          oPM_WriteValid          ;
    input                           iPM_WriteReady          ;

    reg [5:0]                   rOpcode     ;
    reg [4:0]                   rSourceID   ;
    
    reg [NumberOfWays - 1:0]    rTargetWay  ;
    reg [15:0]                  rColAddress ;
    reg [23:0]                  rRowAddress ;
    wire                        wModuleTriggered;
    
    reg [7:0]                   rPMTrigger  ;
    reg [2:0]                   rPCommandOption ;
    reg [15:0]                  rPMLength   ;
    reg [15:0]                  rTrfLength  ;
    
    reg [7:0]                   rCAData     ;
    reg                         rPMCommandOrAddress ;
    
    wire                        wDoesCmd85NotChangeRow  ;
    wire                        wMultiPlaneCommit       ;
    wire [1:0]                  wCmdPageSelect          ; // 00: None, 01: LSB, 10: CSB, 11: MSB
    wire                        wPageOption             ;
    // wCmdPageSelect == 00 && wPageOption == 1 -> pSLC mode
    // wCmdPageSelect != 00 && wPageOption == 1 -> Select Next Page
    
    wire                        wCmd80_0_Or85_1     ;
    wire                        wCmdDoNotTransfer   ;
    wire                        wCmdDoNotCommit     ;
    
    assign {wDoesCmd85NotChangeRow, wMultiPlaneCommit, wCmdPageSelect, wPageOption} = rSourceID[4:0];
    assign {wCmd80_0_Or85_1, wCmdDoNotTransfer, wCmdDoNotCommit} = rOpcode[2:0];

    localparam  State_Idle          = 4'b0000   ;
    localparam  State_NCALIssue0    = 4'b0001   ;
    localparam  State_NCmdWritePSel = 4'b0011   ;
    localparam  State_NCmdWrite0    = 4'b0010   ;
    localparam  State_NAddrWrite0   = 4'b0110   ;
    localparam  State_NAddrWrite1   = 4'b0111   ;
    localparam  State_NAddrWrite2   = 4'b0101   ;
    localparam  State_NAddrWrite3   = 4'b0100   ;
    localparam  State_NAddrWrite4   = 4'b1100   ;
    localparam  State_WaitTADL      = 4'b1101   ;
    localparam  State_DOIssue       = 4'b1111   ;
    localparam  State_NCALIssue1    = 4'b1110   ;
    localparam  State_NCmdWrite1    = 4'b1010   ;
    localparam  State_NTimerIssue   = 4'b1011   ;
    localparam  State_WaitDone      = 4'b1001   ;
    
    reg [3:0]   rCurState   ;
    reg [3:0]   rNextState  ;

    always @ (posedge iSystemClock)
        if (iReset)
            rCurState <= State_Idle;
        else
            rCurState <= rNextState;

    always @ (*)
        case (rCurState)
        State_Idle:
            rNextState <= (wModuleTriggered)?State_NCALIssue0:State_Idle;
        State_NCALIssue0:
        begin
            if (iPM_Ready[6:0] == 7'b1111111)
            begin
                if (wCmdPageSelect == 2'b00 && wPageOption == 1'b0)
                    rNextState <= State_NCmdWrite0; // normal mode
                else
                    rNextState <= State_NCmdWritePSel; // pSLC mode or TLC FSP mode
            end
            else
                rNextState <= State_NCALIssue0;
        end
        State_NCmdWritePSel:
            rNextState <= State_NCmdWrite0;
        State_NCmdWrite0:
            rNextState <= State_NAddrWrite0;
        State_NAddrWrite0:
            rNextState <= State_NAddrWrite1;
        State_NAddrWrite1:
            if (wCmd80_0_Or85_1 && wDoesCmd85NotChangeRow)
                rNextState <= State_WaitTADL;
            else
                rNextState <= State_NAddrWrite2;
        State_NAddrWrite2:
            rNextState <= State_NAddrWrite3;
        State_NAddrWrite3:
            rNextState <= State_NAddrWrite4;
        State_NAddrWrite4:
            rNextState <= State_WaitTADL;
        State_WaitTADL:
            if (iPM_LastStep[3])
            begin
                if (wCmdDoNotTransfer)
                begin
                    if (wCmdDoNotCommit)
                        rNextState <= State_NTimerIssue;
                    else
                        rNextState <= State_NCALIssue1;
                end
                else
                    rNextState <= State_DOIssue;
            end
            else
                rNextState <= State_WaitTADL;
        State_DOIssue:
            if (iPM_LastStep[0])
            begin
                if (wCmdDoNotCommit)
                    rNextState <= State_NTimerIssue;
                else
                    rNextState <= State_NCALIssue1;
            end
            else
                rNextState <= State_DOIssue;
        State_NCALIssue1:
            if (wCmdDoNotTransfer)
                rNextState <= (iPM_LastStep[0])? State_NCmdWrite1:State_NCALIssue1;
            else
                rNextState <= (iPM_LastStep[2])? State_NCmdWrite1:State_NCALIssue1;
        State_NCmdWrite1:
            rNextState <= State_NTimerIssue;
        State_NTimerIssue:
            if (wCmdDoNotCommit)
            begin
                if (wCmdDoNotTransfer)
                    rNextState <= (iPM_LastStep[0])? State_WaitDone:State_NTimerIssue;
                else
                    rNextState <= (iPM_LastStep[2])? State_WaitDone:State_NTimerIssue;
            end
            else
                rNextState <= (iPM_LastStep[3])? State_WaitDone:State_NTimerIssue;
        State_WaitDone:
            rNextState <= (iPM_LastStep[0])?State_Idle:State_WaitDone;
        default:
            rNextState <= State_Idle;
        endcase
    
    assign wModuleTriggered = (iCMDValid && iTargetID == 5'b00101 && iOpcode[5:3] == 3'b001);
    assign oCMDReady = (rCurState == State_Idle);
    
    always @ (posedge iSystemClock)
        if (iReset)
            rOpcode <= 6'b0;
        else
            if (wModuleTriggered && (rCurState == State_Idle))
                rOpcode <= iOpcode;
    
    always @ (posedge iSystemClock)
        if (iReset)
            rSourceID <= 6'b0;
        else
            if (wModuleTriggered && (rCurState == State_Idle))
                rSourceID <= iSourceID;
    
    always @ (posedge iSystemClock)
        if (iReset)
        begin
            rTargetWay  <= {(NumberOfWays){1'b0}};
            rColAddress <= 16'b0;
            rRowAddress <= 24'b0;
            rTrfLength  <= 16'b0;
        end
        else
            if (wModuleTriggered && (rCurState == State_Idle))
            begin
                rTargetWay  <= iWaySelect   ;
                rColAddress <= iColAddress  ;
                rRowAddress <= iRowAddress  ;
                rTrfLength  <= iLength;
            end
    
    always @ (*)
        case (rCurState)
        State_NCALIssue0:
            rPMTrigger <= 8'b0000_1000;
        State_DOIssue:
            rPMTrigger <= 8'b0000_0100;
        State_NCALIssue1:
            rPMTrigger <= 8'b0000_1000;
        State_WaitTADL:
            rPMTrigger <= 8'b0000_0001;
        State_NTimerIssue:
            rPMTrigger <= 8'b0000_0001;
        default:
            rPMTrigger <= 0;
        endcase
    
    always @ (*)
        case (rCurState)
        State_DOIssue:
            rPCommandOption[2:0] <= 3'b001; // DDR
        State_WaitTADL:
            rPCommandOption[2:0] <= 3'b111;
        State_NTimerIssue:
            rPCommandOption[2:0] <= 3'b110;
        default:
            rPCommandOption[2:0] <= 0;
        endcase
    
    always @ (*)
        case (rCurState)
        State_NCALIssue0:
        begin
            if (wCmd80_0_Or85_1 && wDoesCmd85NotChangeRow)
            begin
                if (wCmdPageSelect == 2'b00 && wPageOption == 1'b0)
                    rPMLength <= 16'd2; // 1 cmd + 2 addr = 3 (=> 2)
                else
                    rPMLength <= 16'd3; // 2 cmd + 2 addr = 4 (=> 3)
            end
            else
            begin
                if (wCmdPageSelect == 2'b00 && wPageOption == 1'b0)
                    rPMLength <= 16'd5; // 1 cmd + 5 addr = 6 (=> 5)
                else
                    rPMLength <= 16'd6; // 2 cmd + 5 addr = 7 (=> 6)
            end
        end
        State_DOIssue:
            rPMLength <= rTrfLength;
        State_NCALIssue1:
            rPMLength <= 16'd0; // 1 cmd = 1 (=> 0)
        State_WaitTADL:
            rPMLength <= 16'd31; // 320 ns
        State_NTimerIssue:
            rPMLength <= 16'd10; // 110 ns
        default:
            rPMLength <= 0;
        endcase
        
    always @ (*)
        case (rCurState)
        State_NCmdWritePSel:
            rPMCommandOrAddress <= 1'b0;
        State_NCmdWrite0:
            rPMCommandOrAddress <= 1'b0;
        State_NCmdWrite1:
            rPMCommandOrAddress <= 1'b0;
        State_NAddrWrite0:
            rPMCommandOrAddress <= 1'b1;
        State_NAddrWrite1:
            rPMCommandOrAddress <= 1'b1;
        State_NAddrWrite2:
            rPMCommandOrAddress <= 1'b1;
        State_NAddrWrite3:
            rPMCommandOrAddress <= 1'b1;
        State_NAddrWrite4:
            rPMCommandOrAddress <= 1'b1;
        default:
            rPMCommandOrAddress <= 0;
        endcase
    
    always @ (*)
        if (iReset)
            rCAData <= 8'b0;
        else
            case (rCurState)
            State_NCmdWritePSel:
                rCAData <= (wCmdPageSelect == 2'b00 && wPageOption == 1'b1)?8'hA2:{6'b0, wCmdPageSelect}; // pSLC mode or TLC FSP mode
            State_NCmdWrite0:
                if (wCmd80_0_Or85_1)
                    rCAData <= 8'h85;
                else
                    rCAData <= 8'h80;
            State_NAddrWrite0:
                rCAData <= rColAddress[7:0];
            State_NAddrWrite1:
                rCAData <= rColAddress[15:8];
            State_NAddrWrite2:
                rCAData <= rRowAddress[7:0];
            State_NAddrWrite3:
                rCAData <= rRowAddress[15:8];
            State_NAddrWrite4:
                rCAData <= rRowAddress[23:16];
            State_NCmdWrite1:
                if (wCmdPageSelect != 2'b00 && wPageOption == 1'b1) // select next page
                    rCAData <= 8'h1A;
                else if (wMultiPlaneCommit) // multi-plane commit
                    rCAData <= 8'h11;
                else
                    rCAData <= 8'h10;
            default:
                rCAData <= 0;
            endcase
    
    assign oStart = wModuleTriggered;
    assign oLastStep    = iPM_LastStep[0] & (rCurState == State_WaitDone);
    
    assign oPM_PCommand         = rPMTrigger;
    assign oPM_PCommandOption   = rPCommandOption;//1'b1; // DDR
    assign oPM_TargetWay        = rTargetWay;
    assign oPM_NumOfData        = rPMLength ;
    assign oPM_CASelect         = rPMCommandOrAddress;
    assign oPM_CAData           = rCAData;
    assign oPM_WriteData        = iWriteData;
    assign oPM_WriteLast        = iWriteLast;
    assign oPM_WriteValid       = iWriteValid;
    assign oWriteReady          = iPM_WriteReady;
    
endmodule
