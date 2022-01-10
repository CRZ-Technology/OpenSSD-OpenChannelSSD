//-----------------------------------------------------------------------------
//
// (c) Copyright 2012-2012 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
//-----------------------------------------------------------------------------
//
// Project    : UltraScale+ FPGA PCI Express v4.0 Integrated Block
// File       : design_1_xdma_0_0_pcie4_ip_descramble_tx.v
// Version    : 1.3 
//-----------------------------------------------------------------------------

`timescale 1 ps / 1 ps

//(* STRUCTURAL_NETLIST = "yes" *)
module design_1_xdma_0_0_pcie4_ip_descramble_tx #
(
parameter PL_LINK_CAP_MAX_LINK_WIDTH = 5'b00100  
)
(
  input pipe_clk,
  input [31:0]pipe_tx00_data,
  input [1:0]pipe_tx00_sync_header,
  input [2:0]pipe_tx00_status,
  input pipe_tx00_data_valid,
  input pipe_tx00_start_block,
  input [31:0]pipe_tx01_data,
  input [1:0]pipe_tx01_sync_header,
  input [2:0]pipe_tx01_status,
  input pipe_tx01_data_valid,
  input pipe_tx01_start_block,
  input [31:0]pipe_tx02_data,
  input [1:0]pipe_tx02_sync_header,
  input [2:0]pipe_tx02_status,
  input pipe_tx02_data_valid,
  input pipe_tx02_start_block,
  input [31:0]pipe_tx03_data,
  input [1:0]pipe_tx03_sync_header,
  input [2:0]pipe_tx03_status,
  input pipe_tx03_data_valid,
  input pipe_tx03_start_block,
  input [31:0]pipe_tx04_data,
  input [1:0]pipe_tx04_sync_header,
  input [2:0]pipe_tx04_status,
  input pipe_tx04_data_valid,
  input pipe_tx04_start_block,
  input [31:0]pipe_tx05_data,
  input [1:0]pipe_tx05_sync_header,
  input [2:0]pipe_tx05_status,
  input pipe_tx05_data_valid,
  input pipe_tx05_start_block,
  input [31:0]pipe_tx06_data,
  input [1:0]pipe_tx06_sync_header,
  input [2:0]pipe_tx06_status,
  input pipe_tx06_data_valid,
  input pipe_tx06_start_block,
  input [31:0]pipe_tx07_data,
  input [1:0]pipe_tx07_sync_header,
  input [2:0]pipe_tx07_status,
  input pipe_tx07_data_valid,
  input pipe_tx07_start_block,

  input [31:0]pipe_tx08_data,
  input [1:0]pipe_tx08_sync_header,
  input [2:0]pipe_tx08_status,
  input pipe_tx08_data_valid,
  input pipe_tx08_start_block,
  input [31:0]pipe_tx09_data,
  input [1:0]pipe_tx09_sync_header,
  input [2:0]pipe_tx09_status,
  input pipe_tx09_data_valid,
  input pipe_tx09_start_block,
  input [31:0]pipe_tx10_data,
  input [1:0]pipe_tx10_sync_header,
  input [2:0]pipe_tx10_status,
  input pipe_tx10_data_valid,
  input pipe_tx10_start_block,
  input [31:0]pipe_tx11_data,
  input [1:0]pipe_tx11_sync_header,
  input [2:0]pipe_tx11_status,
  input pipe_tx11_data_valid,
  input pipe_tx11_start_block,
  input [31:0]pipe_tx12_data,
  input [1:0]pipe_tx12_sync_header,
  input [2:0]pipe_tx12_status,
  input pipe_tx12_data_valid,
  input pipe_tx12_start_block,
  input [31:0]pipe_tx13_data,
  input [1:0]pipe_tx13_sync_header,
  input [2:0]pipe_tx13_status,
  input pipe_tx13_data_valid,
  input pipe_tx13_start_block,
  input [31:0]pipe_tx14_data,
  input [1:0]pipe_tx14_sync_header,
  input [2:0]pipe_tx14_status,
  input pipe_tx14_data_valid,
  input pipe_tx14_start_block,
  input [31:0]pipe_tx15_data,
  input [1:0]pipe_tx15_sync_header,
  input [2:0]pipe_tx15_status,
  input pipe_tx15_data_valid,
  input pipe_tx15_start_block,


  input [1:0]pipe_tx_rate_o

);




//lane0

reg           [1:0]   tx00_sync_header  = 2'b0;
reg           [2:0]   tx00_status      = 3'b0;
reg                   tx00_data_valid   = 1'b0;
reg                   tx00_start_block  = 1'b0;

(* mark_debug *)  wire          [31:0]  dbg_tx00_data;
(* mark_debug *)  wire          [1:0]   dbg_tx00_sync_header;
(* mark_debug *)  wire          [2:0]   dbg_tx00_status;
(* mark_debug *)  wire                  dbg_tx00_data_valid;
(* mark_debug *)  wire                  dbg_tx00_start_block; 

  
always @ (posedge pipe_clk)
  begin
    tx00_sync_header     <= pipe_tx00_sync_header;
    tx00_data_valid      <= pipe_tx00_data_valid;
    tx00_start_block     <= pipe_tx00_start_block;  
    tx00_status         <= pipe_tx00_status; end  

design_1_xdma_0_0_pcie4_ip_descramble #
(.GEN3_SCRAMBLER_SEED (23'h1dbfbc))
descrambler_tx0
(
  .clock(pipe_clk),
  .reset_n(pipe_tx_rate_o[1]),
  .data_in(pipe_tx00_data),
  .data_valid_in(pipe_tx00_data_valid),
  .start_block_in(pipe_tx00_start_block),
  .sync_header_in(pipe_tx00_sync_header),
  .data_out(dbg_tx00_data)
);

assign dbg_tx00_sync_header = tx00_sync_header;
assign dbg_tx00_data_valid  = tx00_data_valid;
assign dbg_tx00_start_block = tx00_start_block;
assign dbg_tx00_status     = tx00_status;



generate 
if ( PL_LINK_CAP_MAX_LINK_WIDTH > 5'b0001) begin

//lane1

reg           [1:0]   tx01_sync_header  = 2'b0;
reg           [2:0]   tx01_status      = 3'b0;
reg                   tx01_data_valid   = 1'b0;
reg                   tx01_start_block  = 1'b0;

(* mark_debug *)  wire          [31:0]  dbg_tx01_data;
(* mark_debug *)  wire          [1:0]   dbg_tx01_sync_header;
(* mark_debug *)  wire          [2:0]   dbg_tx01_status;
(* mark_debug *)  wire                  dbg_tx01_data_valid;
(* mark_debug *)  wire                  dbg_tx01_start_block; 

  
always @ (posedge pipe_clk)
  begin
    tx01_sync_header     <= pipe_tx01_sync_header;
    tx01_data_valid      <= pipe_tx01_data_valid;
    tx01_start_block     <= pipe_tx01_start_block;  
    tx01_status         <= pipe_tx01_status;
  end  

design_1_xdma_0_0_pcie4_ip_descramble #
(.GEN3_SCRAMBLER_SEED (23'h0607BB))
descrambler_tx1
(
  .clock(pipe_clk),
  .reset_n(pipe_tx_rate_o[1]),
  .data_in(pipe_tx01_data),
  .data_valid_in(pipe_tx01_data_valid),
  .start_block_in(pipe_tx01_start_block),
  .sync_header_in(pipe_tx01_sync_header),
  .data_out(dbg_tx01_data)
);

assign dbg_tx01_sync_header = tx01_sync_header;
assign dbg_tx01_data_valid  = tx01_data_valid;
assign dbg_tx01_start_block = tx01_start_block;
assign dbg_tx01_status     = tx01_status;

end
endgenerate

generate 
if ( PL_LINK_CAP_MAX_LINK_WIDTH >5'b0010) begin

//lane2

reg           [1:0]   tx02_sync_header  = 2'b0;
reg           [2:0]   tx02_status      = 3'b0;
reg                   tx02_data_valid   = 1'b0;
reg                   tx02_start_block  = 1'b0;

(* mark_debug *)  wire          [31:0]  dbg_tx02_data;
(* mark_debug *)  wire          [1:0]   dbg_tx02_sync_header;
(* mark_debug *)  wire          [2:0]   dbg_tx02_status;
(* mark_debug *)  wire                  dbg_tx02_data_valid;
(* mark_debug *)  wire                  dbg_tx02_start_block; 

  
always @ (posedge pipe_clk)
  begin
    tx02_sync_header     <= pipe_tx02_sync_header;
    tx02_data_valid      <= pipe_tx02_data_valid;
    tx02_start_block     <= pipe_tx02_start_block;  
    tx02_status         <= pipe_tx02_status;
  end  

design_1_xdma_0_0_pcie4_ip_descramble #
(.GEN3_SCRAMBLER_SEED (23'h1ec760))
descrambler_tx2
(
  .clock(pipe_clk),
  .reset_n(pipe_tx_rate_o[1]),
  .data_in(pipe_tx02_data),
  .data_valid_in(pipe_tx02_data_valid),
  .start_block_in(pipe_tx02_start_block),
  .sync_header_in(pipe_tx02_sync_header),
  .data_out(dbg_tx02_data)
);

assign dbg_tx02_sync_header = tx02_sync_header;
assign dbg_tx02_data_valid  = tx02_data_valid;
assign dbg_tx02_start_block = tx02_start_block;
assign dbg_tx02_status     = tx02_status;

//lane3

reg           [1:0]   tx03_sync_header  = 2'b0;
reg           [2:0]   tx03_status      = 3'b0;
reg                   tx03_data_valid   = 1'b0;
reg                   tx03_start_block  = 1'b0;

(* mark_debug *)  wire          [31:0]  dbg_tx03_data;
(* mark_debug *)  wire          [1:0]   dbg_tx03_sync_header;
(* mark_debug *)  wire          [2:0]   dbg_tx03_status;
(* mark_debug *)  wire                  dbg_tx03_data_valid;
(* mark_debug *)  wire                  dbg_tx03_start_block; 

  
always @ (posedge pipe_clk)
  begin
    tx03_sync_header     <= pipe_tx03_sync_header;
    tx03_data_valid      <= pipe_tx03_data_valid;
    tx03_start_block     <= pipe_tx03_start_block;  
    tx03_status         <= pipe_tx03_status;
  end  

design_1_xdma_0_0_pcie4_ip_descramble #
(.GEN3_SCRAMBLER_SEED (23'h18c0db))
descrambler_tx3
(
  .clock(pipe_clk),
  .reset_n(pipe_tx_rate_o[1]),
  .data_in(pipe_tx03_data),
  .data_valid_in(pipe_tx03_data_valid),
  .start_block_in(pipe_tx03_start_block),
  .sync_header_in(pipe_tx03_sync_header),
  .data_out(dbg_tx03_data)
);

assign dbg_tx03_sync_header = tx03_sync_header;
assign dbg_tx03_data_valid  = tx03_data_valid;
assign dbg_tx03_start_block = tx03_start_block;
assign dbg_tx03_status     = tx03_status;

end
endgenerate

generate 
if ( PL_LINK_CAP_MAX_LINK_WIDTH > 5'b0100) begin

//lane4

reg           [1:0]   tx04_sync_header  = 2'b0;
reg           [2:0]   tx04_status      = 3'b0;
reg                   tx04_data_valid   = 1'b0;
reg                   tx04_start_block  = 1'b0;

(* mark_debug *)  wire          [31:0]  dbg_tx04_data;
(* mark_debug *)  wire          [1:0]   dbg_tx04_sync_header;
(* mark_debug *)  wire          [2:0]   dbg_tx04_status;
(* mark_debug *)  wire                  dbg_tx04_data_valid;
(* mark_debug *)  wire                  dbg_tx04_start_block; 

  
always @ (posedge pipe_clk)
  begin
    tx04_sync_header     <= pipe_tx04_sync_header;
    tx04_data_valid      <= pipe_tx04_data_valid;
    tx04_start_block     <= pipe_tx04_start_block;  
    tx04_status         <= pipe_tx04_status;
  end  

design_1_xdma_0_0_pcie4_ip_descramble #
(.GEN3_SCRAMBLER_SEED (23'h010F12))
descrambler_tx4
(
  .clock(pipe_clk),
  .reset_n(pipe_tx_rate_o[1]),
  .data_in(pipe_tx04_data),
  .data_valid_in(pipe_tx04_data_valid),
  .start_block_in(pipe_tx04_start_block),
  .sync_header_in(pipe_tx04_sync_header),
  .data_out(dbg_tx04_data)
);

assign dbg_tx04_sync_header = tx04_sync_header;
assign dbg_tx04_data_valid  = tx04_data_valid;
assign dbg_tx04_start_block = tx04_start_block;
assign dbg_tx04_status     = tx04_status;


//lane5

reg           [1:0]   tx05_sync_header  = 2'b0;
reg           [2:0]   tx05_status      = 3'b0;
reg                   tx05_data_valid   = 1'b0;
reg                   tx05_start_block  = 1'b0;

(* mark_debug *)  wire          [31:0]  dbg_tx05_data;
(* mark_debug *)  wire          [1:0]   dbg_tx05_sync_header;
(* mark_debug *)  wire          [2:0]   dbg_tx05_status;
(* mark_debug *)  wire                  dbg_tx05_data_valid;
(* mark_debug *)  wire                  dbg_tx05_start_block; 

  
always @ (posedge pipe_clk)
  begin
    tx05_sync_header     <= pipe_tx05_sync_header;
    tx05_data_valid      <= pipe_tx05_data_valid;
    tx05_start_block     <= pipe_tx05_start_block;  
    tx05_status         <= pipe_tx05_status;
  end  

design_1_xdma_0_0_pcie4_ip_descramble #
(.GEN3_SCRAMBLER_SEED (23'h19CFC9))
descrambler_tx5
(
  .clock(pipe_clk),
  .reset_n(pipe_tx_rate_o[1]),
  .data_in(pipe_tx05_data),
  .data_valid_in(pipe_tx05_data_valid),
  .start_block_in(pipe_tx05_start_block),
  .sync_header_in(pipe_tx05_sync_header),
  .data_out(dbg_tx05_data)
);

assign dbg_tx05_sync_header = tx05_sync_header;
assign dbg_tx05_data_valid  = tx05_data_valid;
assign dbg_tx05_start_block = tx05_start_block;
assign dbg_tx05_status     = tx05_status;

//lane6

reg           [1:0]   tx06_sync_header  = 2'b0;
reg           [2:0]   tx06_status      = 3'b0;
reg                   tx06_data_valid   = 1'b0;
reg                   tx06_start_block  = 1'b0;

(* mark_debug *)  wire          [31:0]  dbg_tx06_data;
(* mark_debug *)  wire          [1:0]   dbg_tx06_sync_header;
(* mark_debug *)  wire          [2:0]   dbg_tx06_status;
(* mark_debug *)  wire                  dbg_tx06_data_valid;
(* mark_debug *)  wire                  dbg_tx06_start_block; 

  
always @ (posedge pipe_clk)
  begin
    tx06_sync_header     <= pipe_tx06_sync_header;
    tx06_data_valid      <= pipe_tx06_data_valid;
    tx06_start_block     <= pipe_tx06_start_block;  
    tx06_status         <= pipe_tx06_status;
  end  

design_1_xdma_0_0_pcie4_ip_descramble #
(.GEN3_SCRAMBLER_SEED (23'h0277CE))
descrambler_tx6
(
  .clock(pipe_clk),
  .reset_n(pipe_tx_rate_o[1]),
  .data_in(pipe_tx06_data),
  .data_valid_in(pipe_tx06_data_valid),
  .start_block_in(pipe_tx06_start_block),
  .sync_header_in(pipe_tx06_sync_header),
  .data_out(dbg_tx06_data)
);

assign dbg_tx06_sync_header = tx06_sync_header;
assign dbg_tx06_data_valid  = tx06_data_valid;
assign dbg_tx06_start_block = tx06_start_block;
assign dbg_tx06_status     = tx06_status;

//lane7

reg           [1:0]   tx07_sync_header  = 2'b0;
reg           [2:0]   tx07_status      = 3'b0;
reg                   tx07_data_valid   = 1'b0;
reg                   tx07_start_block  = 1'b0;

(* mark_debug *)  wire          [31:0]  dbg_tx07_data;
(* mark_debug *)  wire          [1:0]   dbg_tx07_sync_header;
(* mark_debug *)  wire          [2:0]   dbg_tx07_status;
(* mark_debug *)  wire                  dbg_tx07_data_valid;
(* mark_debug *)  wire                  dbg_tx07_start_block; 

  
always @ (posedge pipe_clk)
  begin
    tx07_sync_header     <= pipe_tx07_sync_header;
    tx07_data_valid      <= pipe_tx07_data_valid;
    tx07_start_block     <= pipe_tx07_start_block;  
    tx07_status          <= pipe_tx07_status;
  end  

design_1_xdma_0_0_pcie4_ip_descramble #
(.GEN3_SCRAMBLER_SEED (23'h1BB807))
descrambler_tx7
(
  .clock(pipe_clk),
  .reset_n(pipe_tx_rate_o[1]),
  .data_in(pipe_tx07_data),
  .data_valid_in(pipe_tx07_data_valid),
  .start_block_in(pipe_tx07_start_block),
  .sync_header_in(pipe_tx07_sync_header),
  .data_out(dbg_tx07_data)
);

assign dbg_tx07_sync_header = tx07_sync_header;
assign dbg_tx07_data_valid  = tx07_data_valid;
assign dbg_tx07_start_block = tx07_start_block;
assign dbg_tx07_status     = tx07_status;

end endgenerate

generate 
if ( PL_LINK_CAP_MAX_LINK_WIDTH > 5'b1000) begin


//lane8

reg           [1:0]   tx08_sync_header  = 2'b0;
reg           [2:0]   tx08_status      = 3'b0;
reg                   tx08_data_valid   = 1'b0;
reg                   tx08_start_block  = 1'b0;

(* mark_debug *)  wire          [31:0]  dbg_tx08_data;
(* mark_debug *)  wire          [1:0]   dbg_tx08_sync_header;
(* mark_debug *)  wire          [2:0]   dbg_tx08_status;
(* mark_debug *)  wire                  dbg_tx08_data_valid;
(* mark_debug *)  wire                  dbg_tx08_start_block; 

  
always @ (posedge pipe_clk)
  begin
    tx08_sync_header     <= pipe_tx08_sync_header;
    tx08_data_valid      <= pipe_tx08_data_valid;
    tx08_start_block     <= pipe_tx08_start_block;  
    tx08_status         <= pipe_tx08_status; end  

design_1_xdma_0_0_pcie4_ip_descramble #
(.GEN3_SCRAMBLER_SEED (23'h1dbfbc))
descrambler_tx8
(
  .clock(pipe_clk),
  .reset_n(pipe_tx_rate_o[1]),
  .data_in(pipe_tx08_data),
  .data_valid_in(pipe_tx08_data_valid),
  .start_block_in(pipe_tx08_start_block),
  .sync_header_in(pipe_tx08_sync_header),
  .data_out(dbg_tx08_data)
);

assign dbg_tx08_sync_header = tx08_sync_header;
assign dbg_tx08_data_valid  = tx08_data_valid;
assign dbg_tx08_start_block = tx08_start_block;
assign dbg_tx08_status     = tx08_status;


//lane9

reg           [1:0]   tx09_sync_header  = 2'b0;
reg           [2:0]   tx09_status      = 3'b0;
reg                   tx09_data_valid   = 1'b0;
reg                   tx09_start_block  = 1'b0;

(* mark_debug *)  wire          [31:0]  dbg_tx09_data;
(* mark_debug *)  wire          [1:0]   dbg_tx09_sync_header;
(* mark_debug *)  wire          [2:0]   dbg_tx09_status;
(* mark_debug *)  wire                  dbg_tx09_data_valid;
(* mark_debug *)  wire                  dbg_tx09_start_block; 

  
always @ (posedge pipe_clk)
  begin
    tx09_sync_header     <= pipe_tx09_sync_header;
    tx09_data_valid      <= pipe_tx09_data_valid;
    tx09_start_block     <= pipe_tx09_start_block;  
    tx09_status         <= pipe_tx09_status;
  end  

design_1_xdma_0_0_pcie4_ip_descramble #
(.GEN3_SCRAMBLER_SEED (23'h0607BB))
descrambler_tx9
(
  .clock(pipe_clk),
  .reset_n(pipe_tx_rate_o[1]),
  .data_in(pipe_tx09_data),
  .data_valid_in(pipe_tx09_data_valid),
  .start_block_in(pipe_tx09_start_block),
  .sync_header_in(pipe_tx09_sync_header),
  .data_out(dbg_tx09_data)
);

assign dbg_tx09_sync_header = tx09_sync_header;
assign dbg_tx09_data_valid  = tx09_data_valid;
assign dbg_tx09_start_block = tx09_start_block;
assign dbg_tx09_status     = tx09_status;


//lane10

reg           [1:0]   tx10_sync_header  = 2'b0;
reg           [2:0]   tx10_status      = 3'b0;
reg                   tx10_data_valid   = 1'b0;
reg                   tx10_start_block  = 1'b0;

(* mark_debug *)  wire          [31:0]  dbg_tx10_data;
(* mark_debug *)  wire          [1:0]   dbg_tx10_sync_header;
(* mark_debug *)  wire          [2:0]   dbg_tx10_status;
(* mark_debug *)  wire                  dbg_tx10_data_valid;
(* mark_debug *)  wire                  dbg_tx10_start_block; 

  
always @ (posedge pipe_clk)
  begin
    tx10_sync_header     <= pipe_tx10_sync_header;
    tx10_data_valid      <= pipe_tx10_data_valid;
    tx10_start_block     <= pipe_tx10_start_block;  
    tx10_status         <= pipe_tx10_status;
  end  

design_1_xdma_0_0_pcie4_ip_descramble #
(.GEN3_SCRAMBLER_SEED (23'h1ec760))
descrambler_tx10
(
  .clock(pipe_clk),
  .reset_n(pipe_tx_rate_o[1]),
  .data_in(pipe_tx10_data),
  .data_valid_in(pipe_tx10_data_valid),
  .start_block_in(pipe_tx10_start_block),
  .sync_header_in(pipe_tx10_sync_header),
  .data_out(dbg_tx10_data)
);

assign dbg_tx10_sync_header = tx10_sync_header;
assign dbg_tx10_data_valid  = tx10_data_valid;
assign dbg_tx10_start_block = tx10_start_block;
assign dbg_tx10_status     = tx10_status;

//lane11

reg           [1:0]   tx11_sync_header  = 2'b0;
reg           [2:0]   tx11_status      = 3'b0;
reg                   tx11_data_valid   = 1'b0;
reg                   tx11_start_block  = 1'b0;

(* mark_debug *)  wire          [31:0]  dbg_tx11_data;
(* mark_debug *)  wire          [1:0]   dbg_tx11_sync_header;
(* mark_debug *)  wire          [2:0]   dbg_tx11_status;
(* mark_debug *)  wire                  dbg_tx11_data_valid;
(* mark_debug *)  wire                  dbg_tx11_start_block; 

  
always @ (posedge pipe_clk)
  begin
    tx11_sync_header     <= pipe_tx11_sync_header;
    tx11_data_valid      <= pipe_tx11_data_valid;
    tx11_start_block     <= pipe_tx11_start_block;  
    tx11_status         <= pipe_tx11_status;
  end  

design_1_xdma_0_0_pcie4_ip_descramble #
(.GEN3_SCRAMBLER_SEED (23'h18c0db))
descrambler_tx11
(
  .clock(pipe_clk),
  .reset_n(pipe_tx_rate_o[1]),
  .data_in(pipe_tx11_data),
  .data_valid_in(pipe_tx11_data_valid),
  .start_block_in(pipe_tx11_start_block),
  .sync_header_in(pipe_tx11_sync_header),
  .data_out(dbg_tx11_data)
);

assign dbg_tx11_sync_header = tx11_sync_header;
assign dbg_tx11_data_valid  = tx11_data_valid;
assign dbg_tx11_start_block = tx11_start_block;
assign dbg_tx11_status     = tx11_status;



//lane12

reg           [1:0]   tx12_sync_header  = 2'b0;
reg           [2:0]   tx12_status      = 3'b0;
reg                   tx12_data_valid   = 1'b0;
reg                   tx12_start_block  = 1'b0;

(* mark_debug *)  wire          [31:0]  dbg_tx12_data;
(* mark_debug *)  wire          [1:0]   dbg_tx12_sync_header;
(* mark_debug *)  wire          [2:0]   dbg_tx12_status;
(* mark_debug *)  wire                  dbg_tx12_data_valid;
(* mark_debug *)  wire                  dbg_tx12_start_block; 

  
always @ (posedge pipe_clk)
  begin
    tx12_sync_header     <= pipe_tx12_sync_header;
    tx12_data_valid      <= pipe_tx12_data_valid;
    tx12_start_block     <= pipe_tx12_start_block;  
    tx12_status         <= pipe_tx12_status;
  end  

design_1_xdma_0_0_pcie4_ip_descramble #
(.GEN3_SCRAMBLER_SEED (23'h010F12))
descrambler_tx12
(
  .clock(pipe_clk),
  .reset_n(pipe_tx_rate_o[1]),
  .data_in(pipe_tx12_data),
  .data_valid_in(pipe_tx12_data_valid),
  .start_block_in(pipe_tx12_start_block),
  .sync_header_in(pipe_tx12_sync_header),
  .data_out(dbg_tx12_data)
);

assign dbg_tx12_sync_header = tx12_sync_header;
assign dbg_tx12_data_valid  = tx12_data_valid;
assign dbg_tx12_start_block = tx12_start_block;
assign dbg_tx12_status     = tx12_status;


//lane13

reg           [1:0]   tx13_sync_header  = 2'b0;
reg           [2:0]   tx13_status      = 3'b0;
reg                   tx13_data_valid   = 1'b0;
reg                   tx13_start_block  = 1'b0;

(* mark_debug *)  wire          [31:0]  dbg_tx13_data;
(* mark_debug *)  wire          [1:0]   dbg_tx13_sync_header;
(* mark_debug *)  wire          [2:0]   dbg_tx13_status;
(* mark_debug *)  wire                  dbg_tx13_data_valid;
(* mark_debug *)  wire                  dbg_tx13_start_block; 

  
always @ (posedge pipe_clk)
  begin
    tx13_sync_header     <= pipe_tx13_sync_header;
    tx13_data_valid      <= pipe_tx13_data_valid;
    tx13_start_block     <= pipe_tx13_start_block;  
    tx13_status         <= pipe_tx13_status;
  end  

design_1_xdma_0_0_pcie4_ip_descramble #
(.GEN3_SCRAMBLER_SEED (23'h19CFC9))
descrambler_tx13
(
  .clock(pipe_clk),
  .reset_n(pipe_tx_rate_o[1]),
  .data_in(pipe_tx13_data),
  .data_valid_in(pipe_tx13_data_valid),
  .start_block_in(pipe_tx13_start_block),
  .sync_header_in(pipe_tx13_sync_header),
  .data_out(dbg_tx13_data)
);

assign dbg_tx13_sync_header = tx13_sync_header;
assign dbg_tx13_data_valid  = tx13_data_valid;
assign dbg_tx13_start_block = tx13_start_block;
assign dbg_tx13_status     = tx13_status;

//lane14

reg           [1:0]   tx14_sync_header  = 2'b0;
reg           [2:0]   tx14_status      = 3'b0;
reg                   tx14_data_valid   = 1'b0;
reg                   tx14_start_block  = 1'b0;

(* mark_debug *)  wire          [31:0]  dbg_tx14_data;
(* mark_debug *)  wire          [1:0]   dbg_tx14_sync_header;
(* mark_debug *)  wire          [2:0]   dbg_tx14_status;
(* mark_debug *)  wire                  dbg_tx14_data_valid;
(* mark_debug *)  wire                  dbg_tx14_start_block; 

  
always @ (posedge pipe_clk)
  begin
    tx14_sync_header     <= pipe_tx14_sync_header;
    tx14_data_valid      <= pipe_tx14_data_valid;
    tx14_start_block     <= pipe_tx14_start_block;  
    tx14_status         <= pipe_tx14_status;
  end  

design_1_xdma_0_0_pcie4_ip_descramble #
(.GEN3_SCRAMBLER_SEED (23'h0277CE))
descrambler_tx14
(
  .clock(pipe_clk),
  .reset_n(pipe_tx_rate_o[1]),
  .data_in(pipe_tx14_data),
  .data_valid_in(pipe_tx14_data_valid),
  .start_block_in(pipe_tx14_start_block),
  .sync_header_in(pipe_tx14_sync_header),
  .data_out(dbg_tx14_data)
);

assign dbg_tx14_sync_header = tx14_sync_header;
assign dbg_tx14_data_valid  = tx14_data_valid;
assign dbg_tx14_start_block = tx14_start_block;
assign dbg_tx14_status     = tx14_status;

//lane15

reg           [1:0]   tx15_sync_header  = 2'b0;
reg           [2:0]   tx15_status      = 3'b0;
reg                   tx15_data_valid   = 1'b0;
reg                   tx15_start_block  = 1'b0;

(* mark_debug *)  wire          [31:0]  dbg_tx15_data;
(* mark_debug *)  wire          [1:0]   dbg_tx15_sync_header;
(* mark_debug *)  wire          [2:0]   dbg_tx15_status;
(* mark_debug *)  wire                  dbg_tx15_data_valid;
(* mark_debug *)  wire                  dbg_tx15_start_block; 

  
always @ (posedge pipe_clk)
  begin
    tx15_sync_header     <= pipe_tx15_sync_header;
    tx15_data_valid      <= pipe_tx15_data_valid;
    tx15_start_block     <= pipe_tx15_start_block;  
    tx15_status          <= pipe_tx15_status;
  end  

design_1_xdma_0_0_pcie4_ip_descramble #
(.GEN3_SCRAMBLER_SEED (23'h1BB807))
descrambler_tx15
(
  .clock(pipe_clk),
  .reset_n(pipe_tx_rate_o[1]),
  .data_in(pipe_tx15_data),
  .data_valid_in(pipe_tx15_data_valid),
  .start_block_in(pipe_tx15_start_block),
  .sync_header_in(pipe_tx15_sync_header),
  .data_out(dbg_tx15_data)
);

assign dbg_tx15_sync_header = tx15_sync_header;
assign dbg_tx15_data_valid  = tx15_data_valid;
assign dbg_tx15_start_block = tx15_start_block;
assign dbg_tx15_status     = tx15_status;

end
endgenerate

//////////////////////////////////////////////////////

endmodule
