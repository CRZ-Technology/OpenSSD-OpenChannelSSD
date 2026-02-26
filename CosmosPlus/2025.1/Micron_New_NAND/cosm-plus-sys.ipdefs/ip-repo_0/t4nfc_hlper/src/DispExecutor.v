//////////////////////////////////////////////////////////////////////////////////
// DispExecutor for Cosmos OpenSSD
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
// Design Name: DispExecutor
// Module Name: DispExecutor
// File Name: DispExecutor.v
//
// Version: v1.0.0
//
// Description: Request dispatcher microcode executor
//
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.0
//   - first draft
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module DispExecutor
(
    iClock                  ,
    iReset                  ,
    oIMEMAddress            ,
    oIMEMWriteData          ,
    iIMEMReadData           ,
    oIMEMEn                 ,
    oIMEMWEnable            ,
    iSPPopBundleValid       ,
    oSPPopBundleReady       ,
    oSPWriteAddress         ,
    oSPWriteData            ,
    oSPWriteValid           ,
    iSPWriteAck             ,
    oSPReadAddress          ,
    iSPReadData             ,
    oSPReadValid            ,
    iSPReadAck              ,
    oBufWriteAddress        ,
    oBufWordWriteData       ,
    oBufHalfWordWriteData   ,
    oBufWordWriteValid      ,
    oBufHalfWordWriteValid  ,
    oBufIssueCmdValid       ,
    iBufIssueCmdReady
);
    input           iClock                  ;
    input           iReset                  ;
    output  [31:0]  oIMEMAddress            ;
    output  [31:0]  oIMEMWriteData          ;
    input   [31:0]  iIMEMReadData           ;
    output          oIMEMEn                 ;
    output          oIMEMWEnable            ;
    input           iSPPopBundleValid       ;
    output          oSPPopBundleReady       ;
    output  [31:0]  oSPWriteAddress         ;
    output  [31:0]  oSPWriteData            ;
    output          oSPWriteValid           ;
    input           iSPWriteAck             ;
    output  [31:0]  oSPReadAddress          ;
    input   [31:0]  iSPReadData             ;
    output          oSPReadValid            ;
    input           iSPReadAck              ;
    output  [1:0]   oBufWriteAddress        ;
    output  [31:0]  oBufWordWriteData       ;
    output  [15:0]  oBufHalfWordWriteData   ;
    output          oBufWordWriteValid      ;
    output          oBufHalfWordWriteValid  ;
    output          oBufIssueCmdValid       ;
    input           iBufIssueCmdReady       ;

    reg     [31:0]  rProgramCounter         ;
    wire            wWriteWaitCompleted     ;
    wire            wIsHalt                 ;
    
    reg             rBufWordWriteValid      ;
    reg             rBufHalfWordWriteValid  ;
    
    wire    [15:0]  wImmediate16            ;
    wire    [3:0]   wRegDst                 ;
    wire    [2:0]   wRegTgt                 ;
    wire    [5:0]   wRegSrc                 ;
    wire    [2:0]   wArithOp                ;
    wire            wIOIssue                ;
    wire    [3:0]   wCondition              ;
    
    wire            wBranchTaken            ;
    
    reg     [31:0]  rGPRegisterB            ;
    reg     [31:0]  rGPRegisterC            ;
    reg     [31:0]  rGPRegisterD            ;
    reg     [31:0]  rGPRegisterE            ;
    reg     [31:0]  rGPRegisterF            ;
    reg     [31:0]  rGPRegisterG            ;
    reg     [31:0]  rGPRegisterH            ;
    
    wire            wALUEnable              ;
    reg     [31:0]  rALUOperand0            ;
    reg     [31:0]  rALUOperand1            ;
    wire    [31:0]  wALUResult              ;
    wire    [3:0]   wALUFlags               ;

    localparam      State_Halt          = 3'b000;
    localparam      State_LeavingHalt   = 3'b001;
    localparam      State_Fetch         = 3'b011;
    localparam      State_Decode        = 3'b010;
    localparam      State_Execute       = 3'b110;
    localparam      State_WriteWait     = 3'b111;
    localparam      State_EnteringHalt  = 3'b101;
    
    reg     [2:0]   rCurState               ;
    reg     [2:0]   rNextState              ;
    
    always @ (posedge iClock)
        if (iReset)
            rCurState <= State_Halt;
        else
            rCurState <= rNextState;
    
    always @ (*)
        case (rCurState)
        State_Halt:
            rNextState <= (iSPPopBundleValid)?State_LeavingHalt:State_Halt;
        State_LeavingHalt:
            rNextState <= State_Fetch;
        State_Fetch:
            rNextState <= State_Decode;
        State_Decode:
            rNextState <= State_Execute;
        State_Execute:
            if (wIsHalt)
                rNextState <= State_EnteringHalt;
            else if (wBranchTaken)
                rNextState <= State_Fetch;
            else
                rNextState <= State_WriteWait;
        State_WriteWait:
            rNextState <= (wWriteWaitCompleted)?State_Fetch:State_WriteWait;
        State_EnteringHalt:
            rNextState <= State_Halt;
        default:
            rNextState <= State_Halt;
        endcase
    
    assign oIMEMEn          = 1'b1;
    assign oIMEMWEnable     = 1'b0;
    assign oIMEMWriteData   = 32'b0;
    
    wire    [31:0]  wSignExtendedImm16to32;
    
    assign  wSignExtendedImm16to32  = {{16{wImmediate16[15]}}, wImmediate16};
    
    assign oIMEMAddress = rProgramCounter;
    
    always @ (posedge iClock)
        if (iReset)
            rProgramCounter <= 32'b0;
        else
            case (rCurState)
            State_LeavingHalt:
                rProgramCounter <= iSPReadData;
            State_Execute:
                if (wBranchTaken)
                    rProgramCounter <= rProgramCounter + wSignExtendedImm16to32;
            State_WriteWait:
                if (wWriteWaitCompleted)
                    rProgramCounter <= rProgramCounter + 3'd4;
            endcase
    
    assign oSPPopBundleReady    = (rCurState == State_EnteringHalt);
    
    assign oSPWriteAddress      = 32'b0;
    assign oSPWriteData         = 32'b0;
    assign oSPWriteValid        = 1'b0;
    
    assign {wIOIssue, wArithOp, wRegDst}    = iIMEMReadData[29:22];
    assign wRegTgt                          = iIMEMReadData[21:19];
    assign wRegSrc                          = (iIMEMReadData[31:30] == 2'b00)?iIMEMReadData[21:16]:{4'b0, iIMEMReadData[18:16]};
    
    assign wCondition                       = iIMEMReadData[29:26];
    
    assign wBranchTaken                     = (iIMEMReadData[31:30] == 2'b10) && ((wCondition & wALUFlags) == wCondition);
    
    assign wIsHalt                          = (iIMEMReadData[31:30] == 2'b11);
    
    assign oSPReadValid                     = ((rCurState == State_Halt) && iSPPopBundleValid)?1'b1:((rCurState == State_Decode) && (wRegSrc[5]));
    assign oSPReadAddress                   = (rCurState == State_Halt)?32'b0:{27'b0, wRegSrc[4:0]};
    
    assign wImmediate16                     = iIMEMReadData[15:0];
    
    always @ (*)
        if (wRegSrc[5])
            rALUOperand0 <= iSPReadData;
        else if (wRegSrc[4])
            rALUOperand0 <= 32'b0;
        else if (wRegSrc[3])
            rALUOperand0 <= 32'b0;
        else
            case (wRegSrc[2:0])
            0:rALUOperand0 <= 32'b0;
            1:rALUOperand0 <= rGPRegisterB;
            2:rALUOperand0 <= rGPRegisterC;
            3:rALUOperand0 <= rGPRegisterD;
            4:rALUOperand0 <= rGPRegisterE;
            5:rALUOperand0 <= rGPRegisterF;
            6:rALUOperand0 <= rGPRegisterG;
            7:rALUOperand0 <= rGPRegisterH;
            endcase
    
    always @ (*)
        if (iIMEMReadData[31:30] == 2'b00)
            rALUOperand1 <= wImmediate16;
        else
            case (wRegTgt[2:0])
            0:rALUOperand1 <= 32'b0;
            1:rALUOperand1 <= rGPRegisterB;
            2:rALUOperand1 <= rGPRegisterC;
            3:rALUOperand1 <= rGPRegisterD;
            4:rALUOperand1 <= rGPRegisterE;
            5:rALUOperand1 <= rGPRegisterF;
            6:rALUOperand1 <= rGPRegisterG;
            7:rALUOperand1 <= rGPRegisterH;
            endcase
    
    assign wALUEnable = (rCurState == State_Execute) && (iIMEMReadData[31] == 1'b0);
    
    DispALU
    Inst_ALU
    (
        .iClock         (iClock         ),
        .iReset         (iReset         ),
        .iEnable        (wALUEnable     ),
        .iOperand0      (rALUOperand0   ),
        .iOperand1      (rALUOperand1   ),
        .oResult        (wALUResult     ),
        .iArithOpcode   (wArithOp       ),
        .oCarry         (wALUFlags[3]   ),
        .oNegative      (wALUFlags[2]   ),
        .oOverflow      (wALUFlags[1]   ),
        .oZero          (wALUFlags[0]   )
    );
    
    assign wWriteWaitCompleted      = (wIOIssue)?iBufIssueCmdReady:1'b1;
    
    assign oBufHalfWordWriteData    = wALUResult;
    assign oBufWordWriteData        = wALUResult;
    
    always @ (posedge iClock)
        if (iReset)
            rBufWordWriteValid <= 1'b0;
        else
            if (rNextState == State_WriteWait)
            begin
                if ((iIMEMReadData[31] == 1'b0) && wRegDst[3])
                begin
                    if (wRegDst[2])
                        rBufWordWriteValid <= 1'b1;
                end
            end
            else
                rBufWordWriteValid <= 1'b0;
    
    always @ (posedge iClock)
        if (iReset)
            rBufHalfWordWriteValid <= 1'b0;
        else
            if (rNextState == State_WriteWait)
            begin
                if ((iIMEMReadData[31] == 1'b0) && wRegDst[3])
                begin
                    if (!wRegDst[2])
                        rBufHalfWordWriteValid <= 1'b1;
                end
            end
            else
                rBufHalfWordWriteValid <= 1'b0;
    
    assign oBufHalfWordWriteValid   = rBufHalfWordWriteValid;
    assign oBufWordWriteValid       = rBufWordWriteValid    ;
    assign oBufWriteAddress         = wRegDst[1:0];
    
    assign oBufIssueCmdValid        = (rCurState == State_WriteWait) && wIOIssue;
    
    always @ (posedge iClock)
        if (iReset)
        begin
            rGPRegisterB <= 32'b0;
            rGPRegisterC <= 32'b0;
            rGPRegisterD <= 32'b0;
            rGPRegisterE <= 32'b0;
            rGPRegisterF <= 32'b0;
            rGPRegisterG <= 32'b0;
            rGPRegisterH <= 32'b0;
        end
        else
            if (rCurState == State_WriteWait)
            begin
                if (!wRegDst[3])
                begin
                    case (wRegDst[2:0])
                    1:rGPRegisterB <= wALUResult;
                    2:rGPRegisterC <= wALUResult;
                    3:rGPRegisterD <= wALUResult;
                    4:rGPRegisterE <= wALUResult;
                    5:rGPRegisterF <= wALUResult;
                    6:rGPRegisterG <= wALUResult;
                    7:rGPRegisterH <= wALUResult;
                    endcase
                end
            end
    
endmodule
