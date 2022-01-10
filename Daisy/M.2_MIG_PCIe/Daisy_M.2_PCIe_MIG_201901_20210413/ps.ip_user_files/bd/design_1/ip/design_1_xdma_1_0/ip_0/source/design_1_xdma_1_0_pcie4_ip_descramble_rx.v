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
// File       : design_1_xdma_1_0_pcie4_ip_descramble_rx.v
// Version    : 1.3 
//-----------------------------------------------------------------------------

`timescale 1 ps / 1 ps

//(* STRUCTURAL_NETLIST = "yes" *)
module design_1_xdma_1_0_pcie4_ip_descramble_rx #
(
parameter PL_LINK_CAP_MAX_LINK_WIDTH = 5'b00100  
)
(
  input pipe_clk,
  input [31:0]pipe_rx00_data,
  input [1:0]pipe_rx00_sync_header,
  input [2:0]pipe_rx00_status,
  input pipe_rx00_data_valid,
  input pipe_rx00_start_block,
  input [31:0]pipe_rx01_data,
  input [1:0]pipe_rx01_sync_header,
  input [2:0]pipe_rx01_status,
  input pipe_rx01_data_valid,
  input pipe_rx01_start_block,
  input [31:0]pipe_rx02_data,
  input [1:0]pipe_rx02_sync_header,
  input [2:0]pipe_rx02_status,
  input pipe_rx02_data_valid,
  input pipe_rx02_start_block,
  input [31:0]pipe_rx03_data,
  input [1:0]pipe_rx03_sync_header,
  input [2:0]pipe_rx03_status,
  input pipe_rx03_data_valid,
  input pipe_rx03_start_block,
  input [31:0]pipe_rx04_data,
  input [1:0]pipe_rx04_sync_header,
  input [2:0]pipe_rx04_status,
  input pipe_rx04_data_valid,
  input pipe_rx04_start_block,
  input [31:0]pipe_rx05_data,
  input [1:0]pipe_rx05_sync_header,
  input [2:0]pipe_rx05_status,
  input pipe_rx05_data_valid,
  input pipe_rx05_start_block,
  input [31:0]pipe_rx06_data,
  input [1:0]pipe_rx06_sync_header,
  input [2:0]pipe_rx06_status,
  input pipe_rx06_data_valid,
  input pipe_rx06_start_block,
  input [31:0]pipe_rx07_data,
  input [1:0]pipe_rx07_sync_header,
  input [2:0]pipe_rx07_status,
  input pipe_rx07_data_valid,
  input pipe_rx07_start_block,

  input [31:0]pipe_rx08_data,
  input [1:0]pipe_rx08_sync_header,
  input [2:0]pipe_rx08_status,
  input pipe_rx08_data_valid,
  input pipe_rx08_start_block,
  input [31:0]pipe_rx09_data,
  input [1:0]pipe_rx09_sync_header,
  input [2:0]pipe_rx09_status,
  input pipe_rx09_data_valid,
  input pipe_rx09_start_block,
  input [31:0]pipe_rx10_data,
  input [1:0]pipe_rx10_sync_header,
  input [2:0]pipe_rx10_status,
  input pipe_rx10_data_valid,
  input pipe_rx10_start_block,
  input [31:0]pipe_rx11_data,
  input [1:0]pipe_rx11_sync_header,
  input [2:0]pipe_rx11_status,
  input pipe_rx11_data_valid,
  input pipe_rx11_start_block,
  input [31:0]pipe_rx12_data,
  input [1:0]pipe_rx12_sync_header,
  input [2:0]pipe_rx12_status,
  input pipe_rx12_data_valid,
  input pipe_rx12_start_block,
  input [31:0]pipe_rx13_data,
  input [1:0]pipe_rx13_sync_header,
  input [2:0]pipe_rx13_status,
  input pipe_rx13_data_valid,
  input pipe_rx13_start_block,
  input [31:0]pipe_rx14_data,
  input [1:0]pipe_rx14_sync_header,
  input [2:0]pipe_rx14_status,
  input pipe_rx14_data_valid,
  input pipe_rx14_start_block,
  input [31:0]pipe_rx15_data,
  input [1:0]pipe_rx15_sync_header,
  input [2:0]pipe_rx15_status,
  input pipe_rx15_data_valid,
  input pipe_rx15_start_block,

  input [1:0]pipe_tx_rate_o

);




//lane0

reg           [1:0]   rx00_sync_header  = 2'b0;
reg           [2:0]   rx00_status      = 3'b0;
reg                   rx00_data_valid   = 1'b0;
reg                   rx00_start_block  = 1'b0;

(* mark_debug *)  wire          [31:0]  dbg_rx00_data;
(* mark_debug *)  wire          [1:0]   dbg_rx00_sync_header;
(* mark_debug *)  wire          [2:0]   dbg_rx00_status;
(* mark_debug *)  wire                  dbg_rx00_data_valid;
(* mark_debug *)  wire                  dbg_rx00_start_block; 

  
always @ (posedge pipe_clk)
  begin
    rx00_sync_header     <= pipe_rx00_sync_header;
    rx00_data_valid      <= pipe_rx00_data_valid;
    rx00_start_block     <= pipe_rx00_start_block;  
    rx00_status         <= pipe_rx00_status; end  

design_1_xdma_1_0_pcie4_ip_descramble #
(.GEN3_SCRAMBLER_SEED (23'h1dbfbc))
descrambler_rx0
(
  .clock(pipe_clk),
  .reset_n(pipe_tx_rate_o[1]),
  .data_in(pipe_rx00_data),
  .data_valid_in(pipe_rx00_data_valid),
  .start_block_in(pipe_rx00_start_block),
  .sync_header_in(pipe_rx00_sync_header),
  .data_out(dbg_rx00_data)
);

assign dbg_rx00_sync_header = rx00_sync_header;
assign dbg_rx00_data_valid  = rx00_data_valid;
assign dbg_rx00_start_block = rx00_start_block;
assign dbg_rx00_status     = rx00_status;



generate 
if ( PL_LINK_CAP_MAX_LINK_WIDTH > 5'b0001) begin

//lane1

reg           [1:0]   rx01_sync_header  = 2'b0;
reg           [2:0]   rx01_status      = 3'b0;
reg                   rx01_data_valid   = 1'b0;
reg                   rx01_start_block  = 1'b0;

(* mark_debug *)  wire          [31:0]  dbg_rx01_data;
(* mark_debug *)  wire          [1:0]   dbg_rx01_sync_header;
(* mark_debug *)  wire          [2:0]   dbg_rx01_status;
(* mark_debug *)  wire                  dbg_rx01_data_valid;
(* mark_debug *)  wire                  dbg_rx01_start_block; 

  
always @ (posedge pipe_clk)
  begin
    rx01_sync_header     <= pipe_rx01_sync_header;
    rx01_data_valid      <= pipe_rx01_data_valid;
    rx01_start_block     <= pipe_rx01_start_block;  
    rx01_status         <= pipe_rx01_status;
  end  

design_1_xdma_1_0_pcie4_ip_descramble #
(.GEN3_SCRAMBLER_SEED (23'h0607BB))
descrambler_rx1
(
  .clock(pipe_clk),
  .reset_n(pipe_tx_rate_o[1]),
  .data_in(pipe_rx01_data),
  .data_valid_in(pipe_rx01_data_valid),
  .start_block_in(pipe_rx01_start_block),
  .sync_header_in(pipe_rx01_sync_header),
  .data_out(dbg_rx01_data)
);

assign dbg_rx01_sync_header = rx01_sync_header;
assign dbg_rx01_data_valid  = rx01_data_valid;
assign dbg_rx01_start_block = rx01_start_block;
assign dbg_rx01_status     = rx01_status;

end
endgenerate

generate 
if ( PL_LINK_CAP_MAX_LINK_WIDTH >5'b0010) begin

//lane2

reg           [1:0]   rx02_sync_header  = 2'b0;
reg           [2:0]   rx02_status      = 3'b0;
reg                   rx02_data_valid   = 1'b0;
reg                   rx02_start_block  = 1'b0;

(* mark_debug *)  wire          [31:0]  dbg_rx02_data;
(* mark_debug *)  wire          [1:0]   dbg_rx02_sync_header;
(* mark_debug *)  wire          [2:0]   dbg_rx02_status;
(* mark_debug *)  wire                  dbg_rx02_data_valid;
(* mark_debug *)  wire                  dbg_rx02_start_block; 

  
always @ (posedge pipe_clk)
  begin
    rx02_sync_header     <= pipe_rx02_sync_header;
    rx02_data_valid      <= pipe_rx02_data_valid;
    rx02_start_block     <= pipe_rx02_start_block;  
    rx02_status         <= pipe_rx02_status;
  end  

design_1_xdma_1_0_pcie4_ip_descramble #
(.GEN3_SCRAMBLER_SEED (23'h1ec760))
descrambler_rx2
(
  .clock(pipe_clk),
  .reset_n(pipe_tx_rate_o[1]),
  .data_in(pipe_rx02_data),
  .data_valid_in(pipe_rx02_data_valid),
  .start_block_in(pipe_rx02_start_block),
  .sync_header_in(pipe_rx02_sync_header),
  .data_out(dbg_rx02_data)
);

assign dbg_rx02_sync_header = rx02_sync_header;
assign dbg_rx02_data_valid  = rx02_data_valid;
assign dbg_rx02_start_block = rx02_start_block;
assign dbg_rx02_status     = rx02_status;

//lane3

reg           [1:0]   rx03_sync_header  = 2'b0;
reg           [2:0]   rx03_status      = 3'b0;
reg                   rx03_data_valid   = 1'b0;
reg                   rx03_start_block  = 1'b0;

(* mark_debug *)  wire          [31:0]  dbg_rx03_data;
(* mark_debug *)  wire          [1:0]   dbg_rx03_sync_header;
(* mark_debug *)  wire          [2:0]   dbg_rx03_status;
(* mark_debug *)  wire                  dbg_rx03_data_valid;
(* mark_debug *)  wire                  dbg_rx03_start_block; 

  
always @ (posedge pipe_clk)
  begin
    rx03_sync_header     <= pipe_rx03_sync_header;
    rx03_data_valid      <= pipe_rx03_data_valid;
    rx03_start_block     <= pipe_rx03_start_block;  
    rx03_status         <= pipe_rx03_status;
  end  

design_1_xdma_1_0_pcie4_ip_descramble #
(.GEN3_SCRAMBLER_SEED (23'h18c0db))
descrambler_rx3
(
  .clock(pipe_clk),
  .reset_n(pipe_tx_rate_o[1]),
  .data_in(pipe_rx03_data),
  .data_valid_in(pipe_rx03_data_valid),
  .start_block_in(pipe_rx03_start_block),
  .sync_header_in(pipe_rx03_sync_header),
  .data_out(dbg_rx03_data)
);

assign dbg_rx03_sync_header = rx03_sync_header;
assign dbg_rx03_data_valid  = rx03_data_valid;
assign dbg_rx03_start_block = rx03_start_block;
assign dbg_rx03_status     = rx03_status;

end
endgenerate

generate 
if ( PL_LINK_CAP_MAX_LINK_WIDTH > 5'b100) begin

//lane4

reg           [1:0]   rx04_sync_header  = 2'b0;
reg           [2:0]   rx04_status      = 3'b0;
reg                   rx04_data_valid   = 1'b0;
reg                   rx04_start_block  = 1'b0;

(* mark_debug *)  wire          [31:0]  dbg_rx04_data;
(* mark_debug *)  wire          [1:0]   dbg_rx04_sync_header;
(* mark_debug *)  wire          [2:0]   dbg_rx04_status;
(* mark_debug *)  wire                  dbg_rx04_data_valid;
(* mark_debug *)  wire                  dbg_rx04_start_block; 

  
always @ (posedge pipe_clk)
  begin
    rx04_sync_header     <= pipe_rx04_sync_header;
    rx04_data_valid      <= pipe_rx04_data_valid;
    rx04_start_block     <= pipe_rx04_start_block;  
    rx04_status         <= pipe_rx04_status;
  end  

design_1_xdma_1_0_pcie4_ip_descramble #
(.GEN3_SCRAMBLER_SEED (23'h010F12))
descrambler_rx4
(
  .clock(pipe_clk),
  .reset_n(pipe_tx_rate_o[1]),
  .data_in(pipe_rx04_data),
  .data_valid_in(pipe_rx04_data_valid),
  .start_block_in(pipe_rx04_start_block),
  .sync_header_in(pipe_rx04_sync_header),
  .data_out(dbg_rx04_data)
);

assign dbg_rx04_sync_header = rx04_sync_header;
assign dbg_rx04_data_valid  = rx04_data_valid;
assign dbg_rx04_start_block = rx04_start_block;
assign dbg_rx04_status     = rx04_status;


//lane5

reg           [1:0]   rx05_sync_header  = 2'b0;
reg           [2:0]   rx05_status      = 3'b0;
reg                   rx05_data_valid   = 1'b0;
reg                   rx05_start_block  = 1'b0;

(* mark_debug *)  wire          [31:0]  dbg_rx05_data;
(* mark_debug *)  wire          [1:0]   dbg_rx05_sync_header;
(* mark_debug *)  wire          [2:0]   dbg_rx05_status;
(* mark_debug *)  wire                  dbg_rx05_data_valid;
(* mark_debug *)  wire                  dbg_rx05_start_block; 

  
always @ (posedge pipe_clk)
  begin
    rx05_sync_header     <= pipe_rx05_sync_header;
    rx05_data_valid      <= pipe_rx05_data_valid;
    rx05_start_block     <= pipe_rx05_start_block;  
    rx05_status         <= pipe_rx05_status;
  end  

design_1_xdma_1_0_pcie4_ip_descramble #
(.GEN3_SCRAMBLER_SEED (23'h19CFC9))
descrambler_rx5
(
  .clock(pipe_clk),
  .reset_n(pipe_tx_rate_o[1]),
  .data_in(pipe_rx05_data),
  .data_valid_in(pipe_rx05_data_valid),
  .start_block_in(pipe_rx05_start_block),
  .sync_header_in(pipe_rx05_sync_header),
  .data_out(dbg_rx05_data)
);

assign dbg_rx05_sync_header = rx05_sync_header;
assign dbg_rx05_data_valid  = rx05_data_valid;
assign dbg_rx05_start_block = rx05_start_block;
assign dbg_rx05_status     = rx05_status;

//lane6

reg           [1:0]   rx06_sync_header  = 2'b0;
reg           [2:0]   rx06_status      = 3'b0;
reg                   rx06_data_valid   = 1'b0;
reg                   rx06_start_block  = 1'b0;

(* mark_debug *)  wire          [31:0]  dbg_rx06_data;
(* mark_debug *)  wire          [1:0]   dbg_rx06_sync_header;
(* mark_debug *)  wire          [2:0]   dbg_rx06_status;
(* mark_debug *)  wire                  dbg_rx06_data_valid;
(* mark_debug *)  wire                  dbg_rx06_start_block; 

  
always @ (posedge pipe_clk)
  begin
    rx06_sync_header     <= pipe_rx06_sync_header;
    rx06_data_valid      <= pipe_rx06_data_valid;
    rx06_start_block     <= pipe_rx06_start_block;  
    rx06_status         <= pipe_rx06_status;
  end  

design_1_xdma_1_0_pcie4_ip_descramble #
(.GEN3_SCRAMBLER_SEED (23'h0277CE))
descrambler_rx6
(
  .clock(pipe_clk),
  .reset_n(pipe_tx_rate_o[1]),
  .data_in(pipe_rx06_data),
  .data_valid_in(pipe_rx06_data_valid),
  .start_block_in(pipe_rx06_start_block),
  .sync_header_in(pipe_rx06_sync_header),
  .data_out(dbg_rx06_data)
);

assign dbg_rx06_sync_header = rx06_sync_header;
assign dbg_rx06_data_valid  = rx06_data_valid;
assign dbg_rx06_start_block = rx06_start_block;
assign dbg_rx06_status     = rx06_status;

//lane7

reg           [1:0]   rx07_sync_header  = 2'b0;
reg           [2:0]   rx07_status      = 3'b0;
reg                   rx07_data_valid   = 1'b0;
reg                   rx07_start_block  = 1'b0;

(* mark_debug *)  wire          [31:0]  dbg_rx07_data;
(* mark_debug *)  wire          [1:0]   dbg_rx07_sync_header;
(* mark_debug *)  wire          [2:0]   dbg_rx07_status;
(* mark_debug *)  wire                  dbg_rx07_data_valid;
(* mark_debug *)  wire                  dbg_rx07_start_block; 

  
always @ (posedge pipe_clk)
  begin
    rx07_sync_header     <= pipe_rx07_sync_header;
    rx07_data_valid      <= pipe_rx07_data_valid;
    rx07_start_block     <= pipe_rx07_start_block;  
    rx07_status          <= pipe_rx07_status;
  end  

design_1_xdma_1_0_pcie4_ip_descramble #
(.GEN3_SCRAMBLER_SEED (23'h1BB807))
descrambler_rx7
(
  .clock(pipe_clk),
  .reset_n(pipe_tx_rate_o[1]),
  .data_in(pipe_rx07_data),
  .data_valid_in(pipe_rx07_data_valid),
  .start_block_in(pipe_rx07_start_block),
  .sync_header_in(pipe_rx07_sync_header),
  .data_out(dbg_rx07_data)
);

assign dbg_rx07_sync_header = rx07_sync_header;
assign dbg_rx07_data_valid  = rx07_data_valid;
assign dbg_rx07_start_block = rx07_start_block;
assign dbg_rx07_status     = rx07_status;

end
endgenerate

generate 
if ( PL_LINK_CAP_MAX_LINK_WIDTH > 5'b1000) begin


//lane8

reg           [1:0]   rx08_sync_header  = 2'b0;
reg           [2:0]   rx08_status      = 3'b0;
reg                   rx08_data_valid   = 1'b0;
reg                   rx08_start_block  = 1'b0;

(* mark_debug *)  wire          [31:0]  dbg_rx08_data;
(* mark_debug *)  wire          [1:0]   dbg_rx08_sync_header;
(* mark_debug *)  wire          [2:0]   dbg_rx08_status;
(* mark_debug *)  wire                  dbg_rx08_data_valid;
(* mark_debug *)  wire                  dbg_rx08_start_block; 

  
always @ (posedge pipe_clk)
  begin
    rx08_sync_header     <= pipe_rx08_sync_header;
    rx08_data_valid      <= pipe_rx08_data_valid;
    rx08_start_block     <= pipe_rx08_start_block;  
    rx08_status         <= pipe_rx08_status; end  

design_1_xdma_1_0_pcie4_ip_descramble #
(.GEN3_SCRAMBLER_SEED (23'h1dbfbc))
descrambler_rx8
(
  .clock(pipe_clk),
  .reset_n(pipe_tx_rate_o[1]),
  .data_in(pipe_rx08_data),
  .data_valid_in(pipe_rx08_data_valid),
  .start_block_in(pipe_rx08_start_block),
  .sync_header_in(pipe_rx08_sync_header),
  .data_out(dbg_rx08_data)
);

assign dbg_rx08_sync_header = rx08_sync_header;
assign dbg_rx08_data_valid  = rx08_data_valid;
assign dbg_rx08_start_block = rx08_start_block;
assign dbg_rx08_status     = rx08_status;


//lane9

reg           [1:0]   rx09_sync_header  = 2'b0;
reg           [2:0]   rx09_status      = 3'b0;
reg                   rx09_data_valid   = 1'b0;
reg                   rx09_start_block  = 1'b0;

(* mark_debug *)  wire          [31:0]  dbg_rx09_data;
(* mark_debug *)  wire          [1:0]   dbg_rx09_sync_header;
(* mark_debug *)  wire          [2:0]   dbg_rx09_status;
(* mark_debug *)  wire                  dbg_rx09_data_valid;
(* mark_debug *)  wire                  dbg_rx09_start_block; 

  
always @ (posedge pipe_clk)
  begin
    rx09_sync_header     <= pipe_rx09_sync_header;
    rx09_data_valid      <= pipe_rx09_data_valid;
    rx09_start_block     <= pipe_rx09_start_block;  
    rx09_status         <= pipe_rx09_status;
  end  

design_1_xdma_1_0_pcie4_ip_descramble #
(.GEN3_SCRAMBLER_SEED (23'h0607BB))
descrambler_rx9
(
  .clock(pipe_clk),
  .reset_n(pipe_tx_rate_o[1]),
  .data_in(pipe_rx09_data),
  .data_valid_in(pipe_rx09_data_valid),
  .start_block_in(pipe_rx09_start_block),
  .sync_header_in(pipe_rx09_sync_header),
  .data_out(dbg_rx09_data)
);

assign dbg_rx09_sync_header = rx09_sync_header;
assign dbg_rx09_data_valid  = rx09_data_valid;
assign dbg_rx09_start_block = rx09_start_block;
assign dbg_rx09_status     = rx09_status;


//lane10

reg           [1:0]   rx10_sync_header  = 2'b0;
reg           [2:0]   rx10_status      = 3'b0;
reg                   rx10_data_valid   = 1'b0;
reg                   rx10_start_block  = 1'b0;

(* mark_debug *)  wire          [31:0]  dbg_rx10_data;
(* mark_debug *)  wire          [1:0]   dbg_rx10_sync_header;
(* mark_debug *)  wire          [2:0]   dbg_rx10_status;
(* mark_debug *)  wire                  dbg_rx10_data_valid;
(* mark_debug *)  wire                  dbg_rx10_start_block; 

  
always @ (posedge pipe_clk)
  begin
    rx10_sync_header     <= pipe_rx10_sync_header;
    rx10_data_valid      <= pipe_rx10_data_valid;
    rx10_start_block     <= pipe_rx10_start_block;  
    rx10_status         <= pipe_rx10_status;
  end  

design_1_xdma_1_0_pcie4_ip_descramble #
(.GEN3_SCRAMBLER_SEED (23'h1ec760))
descrambler_rx10
(
  .clock(pipe_clk),
  .reset_n(pipe_tx_rate_o[1]),
  .data_in(pipe_rx10_data),
  .data_valid_in(pipe_rx10_data_valid),
  .start_block_in(pipe_rx10_start_block),
  .sync_header_in(pipe_rx10_sync_header),
  .data_out(dbg_rx10_data)
);

assign dbg_rx10_sync_header = rx10_sync_header;
assign dbg_rx10_data_valid  = rx10_data_valid;
assign dbg_rx10_start_block = rx10_start_block;
assign dbg_rx10_status     = rx10_status;

//lane11

reg           [1:0]   rx11_sync_header  = 2'b0;
reg           [2:0]   rx11_status      = 3'b0;
reg                   rx11_data_valid   = 1'b0;
reg                   rx11_start_block  = 1'b0;

(* mark_debug *)  wire          [31:0]  dbg_rx11_data;
(* mark_debug *)  wire          [1:0]   dbg_rx11_sync_header;
(* mark_debug *)  wire          [2:0]   dbg_rx11_status;
(* mark_debug *)  wire                  dbg_rx11_data_valid;
(* mark_debug *)  wire                  dbg_rx11_start_block; 

  
always @ (posedge pipe_clk)
  begin
    rx11_sync_header     <= pipe_rx11_sync_header;
    rx11_data_valid      <= pipe_rx11_data_valid;
    rx11_start_block     <= pipe_rx11_start_block;  
    rx11_status         <= pipe_rx11_status;
  end  

design_1_xdma_1_0_pcie4_ip_descramble #
(.GEN3_SCRAMBLER_SEED (23'h18c0db))
descrambler_rx11
(
  .clock(pipe_clk),
  .reset_n(pipe_tx_rate_o[1]),
  .data_in(pipe_rx11_data),
  .data_valid_in(pipe_rx11_data_valid),
  .start_block_in(pipe_rx11_start_block),
  .sync_header_in(pipe_rx11_sync_header),
  .data_out(dbg_rx11_data)
);

assign dbg_rx11_sync_header = rx11_sync_header;
assign dbg_rx11_data_valid  = rx11_data_valid;
assign dbg_rx11_start_block = rx11_start_block;
assign dbg_rx11_status     = rx11_status;


//lane12

reg           [1:0]   rx12_sync_header  = 2'b0;
reg           [2:0]   rx12_status      = 3'b0;
reg                   rx12_data_valid   = 1'b0;
reg                   rx12_start_block  = 1'b0;

(* mark_debug *)  wire          [31:0]  dbg_rx12_data;
(* mark_debug *)  wire          [1:0]   dbg_rx12_sync_header;
(* mark_debug *)  wire          [2:0]   dbg_rx12_status;
(* mark_debug *)  wire                  dbg_rx12_data_valid;
(* mark_debug *)  wire                  dbg_rx12_start_block; 

  
always @ (posedge pipe_clk)
  begin
    rx12_sync_header     <= pipe_rx12_sync_header;
    rx12_data_valid      <= pipe_rx12_data_valid;
    rx12_start_block     <= pipe_rx12_start_block;  
    rx12_status         <= pipe_rx12_status;
  end  

design_1_xdma_1_0_pcie4_ip_descramble #
(.GEN3_SCRAMBLER_SEED (23'h010F12))
descrambler_rx12
(
  .clock(pipe_clk),
  .reset_n(pipe_tx_rate_o[1]),
  .data_in(pipe_rx12_data),
  .data_valid_in(pipe_rx12_data_valid),
  .start_block_in(pipe_rx12_start_block),
  .sync_header_in(pipe_rx12_sync_header),
  .data_out(dbg_rx12_data)
);

assign dbg_rx12_sync_header = rx12_sync_header;
assign dbg_rx12_data_valid  = rx12_data_valid;
assign dbg_rx12_start_block = rx12_start_block;
assign dbg_rx12_status     = rx12_status;


//lane13

reg           [1:0]   rx13_sync_header  = 2'b0;
reg           [2:0]   rx13_status      = 3'b0;
reg                   rx13_data_valid   = 1'b0;
reg                   rx13_start_block  = 1'b0;

(* mark_debug *)  wire          [31:0]  dbg_rx13_data;
(* mark_debug *)  wire          [1:0]   dbg_rx13_sync_header;
(* mark_debug *)  wire          [2:0]   dbg_rx13_status;
(* mark_debug *)  wire                  dbg_rx13_data_valid;
(* mark_debug *)  wire                  dbg_rx13_start_block; 

  
always @ (posedge pipe_clk)
  begin
    rx13_sync_header     <= pipe_rx13_sync_header;
    rx13_data_valid      <= pipe_rx13_data_valid;
    rx13_start_block     <= pipe_rx13_start_block;  
    rx13_status         <= pipe_rx13_status;
  end  

design_1_xdma_1_0_pcie4_ip_descramble #
(.GEN3_SCRAMBLER_SEED (23'h19CFC9))
descrambler_rx13
(
  .clock(pipe_clk),
  .reset_n(pipe_tx_rate_o[1]),
  .data_in(pipe_rx13_data),
  .data_valid_in(pipe_rx13_data_valid),
  .start_block_in(pipe_rx13_start_block),
  .sync_header_in(pipe_rx13_sync_header),
  .data_out(dbg_rx13_data)
);

assign dbg_rx13_sync_header = rx13_sync_header;
assign dbg_rx13_data_valid  = rx13_data_valid;
assign dbg_rx13_start_block = rx13_start_block;
assign dbg_rx13_status     = rx13_status;

//lane14

reg           [1:0]   rx14_sync_header  = 2'b0;
reg           [2:0]   rx14_status      = 3'b0;
reg                   rx14_data_valid   = 1'b0;
reg                   rx14_start_block  = 1'b0;

(* mark_debug *)  wire          [31:0]  dbg_rx14_data;
(* mark_debug *)  wire          [1:0]   dbg_rx14_sync_header;
(* mark_debug *)  wire          [2:0]   dbg_rx14_status;
(* mark_debug *)  wire                  dbg_rx14_data_valid;
(* mark_debug *)  wire                  dbg_rx14_start_block; 

  
always @ (posedge pipe_clk)
  begin
    rx14_sync_header     <= pipe_rx14_sync_header;
    rx14_data_valid      <= pipe_rx14_data_valid;
    rx14_start_block     <= pipe_rx14_start_block;  
    rx14_status         <= pipe_rx14_status;
  end  

design_1_xdma_1_0_pcie4_ip_descramble #
(.GEN3_SCRAMBLER_SEED (23'h0277CE))
descrambler_rx14
(
  .clock(pipe_clk),
  .reset_n(pipe_tx_rate_o[1]),
  .data_in(pipe_rx14_data),
  .data_valid_in(pipe_rx14_data_valid),
  .start_block_in(pipe_rx14_start_block),
  .sync_header_in(pipe_rx14_sync_header),
  .data_out(dbg_rx14_data)
);

assign dbg_rx14_sync_header = rx14_sync_header;
assign dbg_rx14_data_valid  = rx14_data_valid;
assign dbg_rx14_start_block = rx14_start_block;
assign dbg_rx14_status     = rx14_status;

//lane15

reg           [1:0]   rx15_sync_header  = 2'b0;
reg           [2:0]   rx15_status      = 3'b0;
reg                   rx15_data_valid   = 1'b0;
reg                   rx15_start_block  = 1'b0;

(* mark_debug *)  wire          [31:0]  dbg_rx15_data;
(* mark_debug *)  wire          [1:0]   dbg_rx15_sync_header;
(* mark_debug *)  wire          [2:0]   dbg_rx15_status;
(* mark_debug *)  wire                  dbg_rx15_data_valid;
(* mark_debug *)  wire                  dbg_rx15_start_block; 

  
always @ (posedge pipe_clk)
  begin
    rx15_sync_header     <= pipe_rx15_sync_header;
    rx15_data_valid      <= pipe_rx15_data_valid;
    rx15_start_block     <= pipe_rx15_start_block;  
    rx15_status          <= pipe_rx15_status;
  end  

design_1_xdma_1_0_pcie4_ip_descramble #
(.GEN3_SCRAMBLER_SEED (23'h1BB807))
descrambler_rx15
(
  .clock(pipe_clk),
  .reset_n(pipe_tx_rate_o[1]),
  .data_in(pipe_rx15_data),
  .data_valid_in(pipe_rx15_data_valid),
  .start_block_in(pipe_rx15_start_block),
  .sync_header_in(pipe_rx15_sync_header),
  .data_out(dbg_rx15_data)
);

assign dbg_rx15_sync_header = rx15_sync_header;
assign dbg_rx15_data_valid  = rx15_data_valid;
assign dbg_rx15_start_block = rx15_start_block;
assign dbg_rx15_status     = rx15_status;

end 
endgenerate

//////////////////////////////////////////////////////

endmodule
