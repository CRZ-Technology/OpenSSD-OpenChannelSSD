//////////////////////////////////////////////////////////////////////////////////
// SCFIFO_64x64_withCount for Cosmos OpenSSD
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
// Design Name: Single clock FIFO (128 width, 64 depth) wrapper
// Module Name: SCFIFO_128x64_withCount
// File Name: SCFIFO_128x64_withCount.v
//
// Version: v1.0.0
//
// Description: Standard FIFO, 1 cycle data out latency
//
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.0
//   - first draft 
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module SCFIFO_128x64_withCount
(
    input           iClock          ,
    input           iReset          ,

    input   [127:0] iPushData       ,
    input           iPushEnable     ,
    output          oIsFull         ,
    
    output  [127:0] oPopData        ,
    input           iPopEnable      ,
    output          oIsEmpty        ,
    
    output  [5:0]   oDataCount
);

    xpm_fifo_sync
    #(
        .DOUT_RESET_VALUE       ("0"),
        .ECC_MODE               ("no_ecc"),
        .FIFO_MEMORY_TYPE       ("auto"),
        .FIFO_READ_LATENCY      (1),
        .FIFO_WRITE_DEPTH       (64),
        .FULL_RESET_VALUE       (0),
        .PROG_EMPTY_THRESH      (10),
        .PROG_FULL_THRESH       (10),
        .RD_DATA_COUNT_WIDTH    (6),
        .READ_DATA_WIDTH        (128),
        .READ_MODE              ("std"),
        .SIM_ASSERT_CHK         (0), 
        .USE_ADV_FEATURES       ("0400"),
        .WAKEUP_TIME            (0),
        .WRITE_DATA_WIDTH       (128),
        .WR_DATA_COUNT_WIDTH    (1)
    )
    Inst_DPBSCFIFO128x64WC
    (
        .almost_empty   (                       ),
        .almost_full    (                       ),
        .data_valid     (                       ),
        .dbiterr        (                       ),
        .dout           (oPopData               ),
        .empty          (oIsEmpty               ),
        .full           (oIsFull                ),
        .overflow       (                       ),
        .prog_empty     (                       ),
        .prog_full      (                       ),
        .rd_data_count  (oDataCount             ),
        .rd_rst_busy    (                       ),
        .sbiterr        (                       ),
        .underflow      (                       ),
        .wr_ack         (                       ),
        .wr_data_count  (                       ),
        .wr_rst_busy    (                       ),
        .din            (iPushData              ),
        .injectdbiterr  (1'b0                   ),
        .injectsbiterr  (1'b0                   ),
        .rd_en          (iPopEnable             ),
        .rst            (iReset                 ),
        .sleep          (1'b0                   ),
        .wr_clk         (iClock                 ),
        .wr_en          (iPushEnable            )
    );

endmodule
