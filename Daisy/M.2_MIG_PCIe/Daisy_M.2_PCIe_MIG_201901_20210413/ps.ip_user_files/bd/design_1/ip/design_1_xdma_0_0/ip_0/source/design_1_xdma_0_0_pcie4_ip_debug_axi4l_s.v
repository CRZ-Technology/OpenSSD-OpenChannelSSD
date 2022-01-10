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
// File       : design_1_xdma_0_0_pcie4_ip_debug_axi4l_s.v
// Version    : 1.3 
//-----------------------------------------------------------------------------
//------------------------------------------------------------------------------

`timescale 1ns/1ns

//AXI4-LITE slave interface to bridge the DRP like debugging trace interface

module design_1_xdma_0_0_pcie4_ip_debug_axi4l_s # (

    parameter S_AXI_ADDR_WIDTH = 32,
    parameter S_AXI_DATA_WIDTH = 32
)(
  //--------------  AXI Interface Signals         --------------
  input                             AXI_aclk,
  input                             AXI_aresetn,
  
 (* mark_debug = "TRUE" *) input  [S_AXI_ADDR_WIDTH-1:0]     S_AXI_araddr,
 (* mark_debug = "TRUE" *) output reg                        S_AXI_arready,
 (* mark_debug = "TRUE" *) input                             S_AXI_arvalid,
 (* mark_debug = "TRUE" *) input  [2:0]                      S_AXI_arprot,
  
  input [S_AXI_ADDR_WIDTH-1:0]      S_AXI_awaddr,
  output reg                        S_AXI_awready,
  input                             S_AXI_awvalid,
  input  [2:0]                      S_AXI_awprot,
  
  output [1:0]                      S_AXI_bresp,  
  input                             S_AXI_bready,
  output reg                        S_AXI_bvalid,
  
  output [S_AXI_DATA_WIDTH-1:0]     S_AXI_rdata,
  input                             S_AXI_rready,
  output reg                        S_AXI_rvalid,
  output [1:0]                      S_AXI_rresp,
  
  input  [S_AXI_DATA_WIDTH-1:0]     S_AXI_wdata,
  output reg                        S_AXI_wready,
  input                             S_AXI_wvalid,
  input  [S_AXI_DATA_WIDTH/8-1:0]   S_AXI_wstrb,

  //trace memory access interface (DRP like interface)
  output                            trc_rst_n,
  output                            trc_clk,
 (* mark_debug = "TRUE" *) output                            trc_en, //trace enable
 (* mark_debug = "TRUE" *) output                            trc_wr, //trace write enable //TODO 
 (* mark_debug = "TRUE" *) output reg [16:0]                 trc_addr, //address width compatible with XSDB
 (* mark_debug = "TRUE" *) output [15:0]                     trc_di, //trace write data input
 (* mark_debug = "TRUE" *) input  [15:0]                     trc_do, 
 (* mark_debug = "TRUE" *) input                             trc_rdy

);


localparam IDLE_ST = 3'h0;
localparam WR_ST   = 3'h1;
localparam WR_DATA = 3'h2;
localparam WR_WT   = 3'h3;
localparam WR_RESP = 3'h4;
localparam RD_ST   = 3'h5;
localparam RD_WT   = 3'h6;

reg [2:0] cur_st = IDLE_ST;
reg [2:0] nxt_st ;
reg [2:0] pre_st = IDLE_ST;

//Dummy write interface
wire trc_wr_done ;


assign S_AXI_rdata = {16'h0,trc_do};

always @ (posedge AXI_aclk) 
    if(~AXI_aresetn) begin
        pre_st <= IDLE_ST;
        cur_st <= IDLE_ST;
    end else begin
        pre_st <= cur_st;
        cur_st <= nxt_st;
    end

always @ (*) begin
    nxt_st = cur_st;
    case(cur_st) 
        IDLE_ST : begin
            if (S_AXI_awvalid) 
                nxt_st = WR_ST;
            else if (S_AXI_arvalid) 
                nxt_st = RD_ST;
        end
        WR_ST: nxt_st = WR_DATA;
        WR_DATA: begin
            if(S_AXI_wvalid)
                nxt_st = WR_WT;
        end
        WR_WT:
            if ( trc_wr_done || S_AXI_bresp[0] )
                nxt_st = WR_RESP;
        WR_RESP:
            if(S_AXI_bvalid & S_AXI_bready & S_AXI_arvalid) 
                nxt_st = RD_ST;
            else if (S_AXI_bvalid & S_AXI_bready & !S_AXI_arvalid)
                nxt_st = IDLE_ST;
        RD_ST:
            nxt_st = RD_WT;
        RD_WT: 
            if(trc_rdy | S_AXI_rresp[0])
                nxt_st = IDLE_ST;
    endcase
end

/*******************************************************************************/
//AXI outputs
/*******************************************************************************/
always @ (posedge AXI_aclk)
    if (~AXI_aresetn)
        S_AXI_arready <= 1'b0;
    else if( cur_st == RD_ST) 
        S_AXI_arready <= 1'b1;
    else 
        S_AXI_arready <= 1'b0;

always @ (posedge AXI_aclk)
    if (~AXI_aresetn)
        S_AXI_awready <= 1'b0;
    else if( cur_st == WR_ST) 
        S_AXI_awready <= 1'b1;
    else 
        S_AXI_awready <= 1'b0;

always @ (posedge AXI_aclk)
    if (~AXI_aresetn)
        S_AXI_bvalid <= 1'b0;
    else if ( S_AXI_bvalid & S_AXI_bready) 
        S_AXI_bvalid <= 1'b0;
    else if ( cur_st == WR_RESP) 
        S_AXI_bvalid <= 1'b1;

always @ (posedge AXI_aclk)
    if (~AXI_aresetn)
        S_AXI_rvalid <= 1'b0;
    else if ( S_AXI_rvalid & S_AXI_rready) 
        S_AXI_rvalid <= 1'b0;
    else if ( cur_st == RD_WT & (trc_rdy | S_AXI_rresp[0]) ) 
        S_AXI_rvalid <= 1'b1;

always @ (posedge AXI_aclk) 
    if (~AXI_aresetn)
        S_AXI_wready <= 1'b0;
    else if (S_AXI_wready & S_AXI_wvalid ) 
        S_AXI_wready <= 1'b0;
    else if (cur_st == WR_DATA & S_AXI_wvalid)
        S_AXI_wready <= 1'b1;

//TODO: error response
assign S_AXI_rresp = 2'b0;
assign S_AXI_bresp = 2'b0;
/*******************************************************************************/
// TRACE access
/*******************************************************************************/
always @ (posedge AXI_aclk) 
begin
    if (~AXI_aresetn) 
        trc_addr <= 17'h0;
    else if (cur_st == WR_ST) 
        trc_addr <= S_AXI_awaddr[16:0];
    else if (cur_st == RD_ST)
        trc_addr <= S_AXI_araddr[16:0];
end

assign trc_en      = (cur_st == RD_ST);
assign trc_wr      = 1'b0;
assign trc_rst_n   = AXI_aresetn;
assign trc_clk     = AXI_aclk;
assign trc_wr_done = 1'b1;

endmodule
