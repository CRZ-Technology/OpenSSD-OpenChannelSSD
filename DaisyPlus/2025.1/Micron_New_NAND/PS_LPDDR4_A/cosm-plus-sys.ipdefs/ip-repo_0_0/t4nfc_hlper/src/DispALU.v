//////////////////////////////////////////////////////////////////////////////////
// DispALU for Cosmos OpenSSD
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
// Design Name: DispALU
// Module Name: DispALU
// File Name: DispALU.v
//
// Version: v1.0.0
//
// Description: Request dispatcher microcode executor arithmetic logic unit
//
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.0
//   - first draft
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module DispALU
(
    iClock          ,
    iReset          ,
    iEnable         ,
    iOperand0       ,
    iOperand1       ,
    oResult         ,
    iArithOpcode    ,
    oCarry          ,
    oNegative       ,
    oOverflow       ,
    oZero
);
    input           iClock          ;
    input           iReset          ;
    input           iEnable         ;
    input   [31:0]  iOperand0       ;
    input   [31:0]  iOperand1       ;
    output  [31:0]  oResult         ;
    input   [2:0]   iArithOpcode    ;
    output          oCarry          ;
    output          oNegative       ;
    output          oOverflow       ;
    output          oZero           ;
    
    reg     [31:0]  rResult         ;
    wire            wCarry          ;
    wire            wNegative       ;
    wire            wOverflow       ;
    reg             rZero           ;
    
    reg     [32:0]  rCmpResult      ;
    
    always @ (posedge iClock)
        if (iReset)
            rResult <= 33'b0;
        else
            if (iEnable)
                case (iArithOpcode)
                3'd000:
                    rResult <= iOperand0 + iOperand1;
                3'd001:
                    rResult <= iOperand0 - iOperand1;
                3'd002:
                    rResult <= rResult;
                3'd003:
                    rResult <= iOperand0 & iOperand1;
                3'd004:
                    rResult <= iOperand0 | iOperand1;
                3'd005:
                    rResult <= iOperand0 ^ iOperand1;
                3'd006:
                    rResult <= iOperand0 << iOperand1;
                3'd007:
                    rResult <= iOperand0 >> iOperand1;
                default:
                    rResult <= 32'b0;
                endcase
    
    always @ (posedge iClock)
        if (iReset)
        begin
            {rZero, rCmpResult} <= 34'b0;
        end
        else
        begin
            if (iEnable)
                case (iArithOpcode)
                3'd002:
                begin
                    rZero <= (iOperand0 == iOperand1)?1'b1:1'b0;
                    rCmpResult <= iOperand0 - iOperand1;
                end
                endcase
        end
    
    assign wOverflow    = rCmpResult[32] ^ rCmpResult[31];
    assign wNegative    = rCmpResult[31];
    assign wCarry       = rCmpResult[32];
    
    assign oResult      = rResult;
    assign oCarry       = wCarry;
    assign oNegative    = wNegative;
    assign oOverflow    = wOverflow;
    assign oZero        = rZero;

endmodule
