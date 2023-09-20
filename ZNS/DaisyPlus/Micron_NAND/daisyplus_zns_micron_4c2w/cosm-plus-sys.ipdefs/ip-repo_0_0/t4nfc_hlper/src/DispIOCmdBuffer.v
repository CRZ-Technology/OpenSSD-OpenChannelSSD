//////////////////////////////////////////////////////////////////////////////////
// DispIOCmdBuffer for Cosmos OpenSSD
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
// Design Name: DispIOCmdBuffer
// Module Name: DispIOCmdBuffer
// File Name: DispIOCmdBuffer.v
//
// Version: v1.0.0
//
// Description: Request dispatcher IO command buffer
//
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.0
//   - first draft
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module DispIOCmdBuffer
(
    iClock                  ,
    iReset                  ,
    iBufWriteAddress        ,
    iBufWordWriteData       ,
    iBufHalfWordWriteData   ,
    iBufWordWriteValid      ,
    iBufHalfWordWriteValid  ,
    iBufIssueCmdValid       ,
    oBufIssueCmdReady       ,
    oOutOpcode              ,
    oOutTargetID            ,
    oOutSourceID            ,
    oOutAddress             ,
    oOutLength              ,
    oOutCmdValid            ,
    iOutCmdReady
);
    input               iClock                  ;
    input               iReset                  ;
    
    input   [1:0]       iBufWriteAddress        ;
    input   [31:0]      iBufWordWriteData       ;
    input   [15:0]      iBufHalfWordWriteData   ;
    input               iBufWordWriteValid      ;
    input               iBufHalfWordWriteValid  ;
    input               iBufIssueCmdValid       ;
    output              oBufIssueCmdReady       ;
    
    output  [5:0]       oOutOpcode              ;
    output  [4:0]       oOutTargetID            ;
    output  [4:0]       oOutSourceID            ;
    output  [31:0]      oOutAddress             ;
    output  [15:0]      oOutLength              ;
    output              oOutCmdValid            ;
    input               iOutCmdReady            ;
    
    reg     [5:0]       rOutOpcode              ;
    reg     [4:0]       rOutTargetID            ;
    reg     [4:0]       rOutSourceID            ;
    reg     [31:0]      rOutAddress             ;
    reg     [15:0]      rOutLength              ;
    reg                 rOutCmdValid            ;
    wire                wOutCmdReady            ;
    
    wire    [5:0]       wPopOutOpcode           ;
    wire    [4:0]       wPopOutTargetID         ;
    wire    [4:0]       wPopOutSourceID         ;
    wire    [31:0]      wPopOutAddress          ;
    wire    [15:0]      wPopOutLength           ;
    wire                wPopOutCmdValid         ;
    wire                wPopOutCmdReady         ;
    
    always @ (posedge iClock)
        if (iReset)
        begin
            rOutOpcode      <= 6'b0;
            rOutTargetID    <= 5'b0;
            rOutSourceID    <= 5'b0;
            rOutAddress     <= 32'b0;
            rOutLength      <= 16'b0;
        end
        else
        begin
            if (iBufHalfWordWriteValid)
            begin
                case (iBufWriteAddress)
                2'b00:
                    rOutAddress[31:16] <= iBufHalfWordWriteData;
                2'b01:
                    rOutAddress[15:0] <= iBufHalfWordWriteData;
                2'b10:
                    {rOutOpcode, rOutTargetID, rOutSourceID} <= iBufHalfWordWriteData;
                2'b11:
                    rOutLength <= iBufHalfWordWriteData;
                endcase
            end
            else
            if (iBufWordWriteValid)
            begin
                case (iBufWriteAddress)
                2'b00:
                    rOutAddress[31:0] <= iBufWordWriteData;
                2'b01:
                    {rOutLength, rOutOpcode, rOutTargetID, rOutSourceID} <= iBufWordWriteData;
                2'b10:
                    {rOutAddress[15:0], rOutLength} <= iBufWordWriteData;
                2'b11:
                    {rOutAddress[15:0], rOutOpcode, rOutTargetID, rOutSourceID} <= iBufWordWriteData;
                endcase
            end
        end
    
    localparam  State_Idle          = 1'b0;
    localparam  State_IssueAndWait  = 1'b1;
    
    reg         rCurState;
    reg         rNextState;
    
    always @ (posedge iClock)
        if (iReset)
            rCurState <= State_Idle;
        else
            rCurState <= rNextState;
    
    always @ (*)
        case (rCurState)
        State_Idle:
            rNextState <= (iBufIssueCmdValid)?State_IssueAndWait:State_Idle;
        State_IssueAndWait:
            rNextState <= (wOutCmdReady)?State_Idle:State_IssueAndWait;
        endcase
    
    assign oBufIssueCmdReady = ((rCurState == State_IssueAndWait) && wOutCmdReady);
    
    always @ (posedge iClock)
        if (iReset)
            rOutCmdValid <= 1'b0;
        else
            if (rNextState == State_IssueAndWait)
                rOutCmdValid <= 1'b1;
            else
                rOutCmdValid <= 1'b0;
    
    wire    wWriteBufferFull        ;
    wire    wWriteBufferEmpty       ;
    wire    wWriteBufferPopSignal   ;
    
    AutoFIFOPopControl
    Inst_WriteBufferAutoPopControl
    (
        .iClock     (iClock                 ),
        .iReset     (iReset                 ),
        .oPopSignal (wWriteBufferPopSignal  ),
        .iEmpty     (wWriteBufferEmpty      ),
        .oValid     (wPopOutCmdValid        ),
        .iReady     (wPopOutCmdReady        )
    );
    
    assign wOutCmdReady = !wWriteBufferFull;
    
    SCFIFO_64x16DR_withCount
    Inst_WriteBufferFIFO
    (
        .iClock         (iClock                         ),
        .iReset         (iReset                         ),
        .iPushData      ({
                            rOutOpcode,
                            rOutTargetID,
                            rOutSourceID,
                            rOutAddress,
                            rOutLength
                        }),
        .iPushEnable    (rOutCmdValid & wOutCmdReady    ),
        .oIsFull        (wWriteBufferFull               ),
        .oPopData       ({
                            wPopOutOpcode,
                            wPopOutTargetID,
                            wPopOutSourceID,
                            wPopOutAddress,
                            wPopOutLength
                        }),
        .iPopEnable     (wWriteBufferPopSignal          ),
        .oIsEmpty       (wWriteBufferEmpty              ),
        .oDataCount     (                               )
    );
    
    assign oOutOpcode       = wPopOutOpcode     ;
    assign oOutTargetID     = wPopOutTargetID   ;
    assign oOutSourceID     = wPopOutSourceID   ;
    assign oOutAddress      = wPopOutAddress    ;
    assign oOutLength       = wPopOutLength     ;
    assign oOutCmdValid     = wPopOutCmdValid   ;
    assign wPopOutCmdReady  = iOutCmdReady      ;

endmodule
