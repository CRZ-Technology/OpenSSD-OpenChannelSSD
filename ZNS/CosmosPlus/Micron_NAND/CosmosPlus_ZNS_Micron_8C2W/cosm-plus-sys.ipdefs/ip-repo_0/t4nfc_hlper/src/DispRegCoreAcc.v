//////////////////////////////////////////////////////////////////////////////////
// DispRegCoreAcc for Cosmos OpenSSD
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
// Design Name: DispRegCoreAcc
// Module Name: DispRegCoreAcc
// File Name: DispRegCoreAcc.v
//
// Version: v1.0.0
//
// Description: Register file (dispatcher core access)
//
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.0
//   - first draft
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module DispRegCoreAcc
(
    iClock          ,
    iReset          ,
    iWriteAddress   ,
    iWriteData      ,
    iWriteValid     ,
    oWriteAck       ,
    iReadAddress    ,
    oReadData       ,
    iReadValid      ,
    oReadAck        ,
    oSPadTrigger
);
    input           iClock          ;
    input           iReset          ;
    input  [31:0]   iWriteAddress   ;
    input  [31:0]   iWriteData      ;
    input           iWriteValid     ;
    output          oWriteAck       ;
    input  [31:0]   iReadAddress    ;
    output [31:0]   oReadData       ;
    input           iReadValid      ;
    output          oReadAck        ;
    output          oSPadTrigger    ;
    
    assign oWriteAck        = 1'b0;
    assign oReadData        = 32'b0;
    assign oReadAck         = 1'b1;
    assign oSPadTrigger     = ((iWriteAddress == 32'b0 && iWriteValid))?1'b1:1'b0;

endmodule
