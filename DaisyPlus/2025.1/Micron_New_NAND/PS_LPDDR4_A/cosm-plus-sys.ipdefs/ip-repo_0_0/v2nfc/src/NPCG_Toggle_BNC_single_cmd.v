//////////////////////////////////////////////////////////////////////////////////
// NPCG_Toggle_BNC_single_cmd for Cosmos OpenSSD
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
// Engineer: Kibin Park <kbpark@enc.hanyang.ac.kr>
// 
// Project Name: Cosmos OpenSSD
// Design Name: NPCG_Toggle_BNC_single_cmd
// Module Name: NPCG_Toggle_BNC_single_cmd
// File Name: NPCG_Toggle_BNC_single_cmd.v
//
// Version: v1.0.0
//
// Description: single word command FSM
//
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.0
//   - first draft
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module NPCG_Toggle_BNC_single_cmd
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
    oPM_CAData       
);
    input                           iSystemClock            ;
    input                           iReset                  ;
    input   [5:0]                   iOpcode                 ;
    input   [4:0]                   iTargetID               ;
    input   [4:0]                   iSourceID               ;
    input   [15:0]                  iLength                 ;
    input                           iCMDValid               ;
    output                          oCMDReady               ;
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

    reg [NumberOfWays - 1:0]    rTargetWay          ;
    reg [15:0]                  rColAddress         ;
    reg [23:0]                  rRowAddress         ;
    reg [15:0]                  rLength             ;
    wire                        wModuleTriggered;
    wire                        wTMStart    ;
    
    reg [7:0]                   rPMTrigger  ;
    reg [2:0]                   rPCommandOption ;
    reg [15:0]                  rNumOfData  ;
    
    reg [7:0]                   rCAData     ;
    reg                         rPMCommandOrAddress ;

    localparam  State_Idle                      = 4'b0000   ;
    localparam  State_NCALIssue                 = 4'b0001   ;
    localparam  State_NCmdWrite0                = 4'b0110   ;
    localparam  State_NTMIssue                  = 4'b1110   ;
    localparam  State_WaitDone                  = 4'b1010   ;
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
            rNextState <= (wModuleTriggered)?State_NCALIssue:State_Idle;
        State_NCALIssue:
            if (iPM_Ready[6:0] == 7'b1111111)
            begin
                rNextState <= State_NCmdWrite0;
            end
            else
                rNextState <= State_NCALIssue;
        State_NCmdWrite0:
            rNextState <= State_NTMIssue;
        State_NTMIssue:
            rNextState <= (wTMStart)?State_WaitDone:State_NTMIssue;
        State_WaitDone:
            rNextState <= (oLastStep)?State_Idle:State_WaitDone;
        default:
            rNextState <= State_Idle;
        endcase
    
    assign wModuleTriggered = (iCMDValid && iTargetID == 5'b00101 && iOpcode[5:0] == 6'b010000);
    assign wTMStart = (rCurState == State_NTMIssue) & iPM_LastStep[3];
    assign oCMDReady = (rCurState == State_Idle);
    
    always @ (posedge iSystemClock)
        if (iReset)
        begin
            rTargetWay          <= {(NumberOfWays){1'b0}};
            rColAddress         <= 16'b0;
            rRowAddress         <= 24'b0;
            rLength             <= 16'b0;
        end
        else
            if (wModuleTriggered && (rCurState == State_Idle))
            begin
                rTargetWay          <= iWaySelect       ;
                rColAddress         <= iColAddress      ;
                rRowAddress         <= iRowAddress      ;
                rLength             <= iLength          ;
            end
    
    always @ (*)
        case (rCurState)
        State_NCALIssue:
            rPMTrigger <= 8'b00001000;
        State_NTMIssue:
            rPMTrigger <= 8'b00000001;
        default:
            rPMTrigger <= 0;
        endcase
    
    always @ (*)
        case (rCurState)
        State_NTMIssue:
            rPCommandOption[2:0] <= 3'b110;
        default:
            rPCommandOption[2:0] <= 0;
        endcase
    
    always @ (*)
        case (rCurState)
        State_NCALIssue:
            rNumOfData[15:0] <= 16'd0; // 1 cmd
        State_NTMIssue:
            rNumOfData[15:0] <= 16'd3; // 40 ns
        default:
            rNumOfData[15:0] <= 0;
        endcase
    
    always @ (*)
        case (rCurState)
        State_NCmdWrite0:
            rPMCommandOrAddress <= 1'b0;
        default:
            rPMCommandOrAddress <= 1'b0;
        endcase
    
    always @ (posedge iSystemClock)
        if (iReset)
            rCAData <= 0;
        else
            case (rNextState)
            State_NCmdWrite0:
                rCAData <= rLength[7:0];
            default:
                rCAData <= 0;
            endcase
    
    assign oStart               = wModuleTriggered;
    assign oLastStep            = (rCurState == State_WaitDone) & iPM_LastStep[0];

    assign oPM_PCommand         = rPMTrigger;
    assign oPM_PCommandOption   = rPCommandOption;//1'b0;
    assign oPM_TargetWay        = rTargetWay;
    assign oPM_NumOfData        = rNumOfData; //16'd6;
    assign oPM_CASelect         = rPMCommandOrAddress;
    assign oPM_CAData           = rCAData;

endmodule
