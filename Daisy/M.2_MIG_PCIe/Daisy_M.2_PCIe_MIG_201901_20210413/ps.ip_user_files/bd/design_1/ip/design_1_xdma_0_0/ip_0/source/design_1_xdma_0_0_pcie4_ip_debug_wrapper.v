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
// File       : design_1_xdma_0_0_pcie4_ip_debug_wrapper.v
// Version    : 1.3 
//-----------------------------------------------------------------------------
//------------------------------------------------------------------------------

`timescale  1 ns / 1 ps

module design_1_xdma_0_0_pcie4_ip_debug_wrapper # (

  	parameter PHY_LANE = 8
	)(
  //reset state debugging probes
  input                  sys_rst,
  input                  sys_clk,
  input                  user_reset,
  input [2:0]            reset_state,
  //ltssm debugging probes
  input                  user_clk,
  input [5:0]            ltssm,
  input [4:0]            cfg_negotiated_width, 
  input [2:0]            cfg_current_speed,
  //Receiver detect probes
  input                  pclk,
  input                  prst_n,
  input                  txdetectrx,
  input [1:0]            powerdown,
  input [PHY_LANE-1:0]   phystatus,
  input [PHY_LANE*3-1:0] rxstatus,
  //debugging rst and clock for axi_jtag 
  input                  AXI_aclk,
  input                  AXI_aresetn
  );

// wire AXI_aclk;
//(* mark_debug = "TRUE" *) wire AXI_aresetn;
(* mark_debug = "TRUE" *) wire [ 31 : 0 ] AXI_awaddr;
(* mark_debug = "TRUE" *) wire [ 2 : 0  ] AXI_awprot;
(* mark_debug = "TRUE" *) wire            AXI_awvalid;
(* mark_debug = "TRUE" *) wire            AXI_awready;
(* mark_debug = "TRUE" *) wire [ 31 : 0 ] AXI_wdata;
(* mark_debug = "TRUE" *) wire [ 3 : 0  ] AXI_wstrb;
(* mark_debug = "TRUE" *) wire            AXI_wvalid;
(* mark_debug = "TRUE" *) wire            AXI_wready;
(* mark_debug = "TRUE" *) wire [ 1 : 0  ] AXI_bresp;
(* mark_debug = "TRUE" *) wire            AXI_bvalid;
(* mark_debug = "TRUE" *) wire            AXI_bready;
(* mark_debug = "TRUE" *) wire [ 31 : 0 ] AXI_araddr;
(* mark_debug = "TRUE" *) wire [ 2 : 0  ] AXI_arprot;
(* mark_debug = "TRUE" *) wire            AXI_arvalid;
(* mark_debug = "TRUE" *) wire            AXI_arready;
(* mark_debug = "TRUE" *) wire [ 31 : 0 ] AXI_rdata;
(* mark_debug = "TRUE" *) wire [ 1 : 0  ] AXI_rresp;
(* mark_debug = "TRUE" *) wire            AXI_rvalid;
(* mark_debug = "TRUE" *) wire            AXI_rready;

wire        trc_clk;
(* mark_debug = "TRUE" *) wire        trc_rst_n;
(* mark_debug = "TRUE" *) wire        trc_en;
(* mark_debug = "TRUE" *) wire        trc_wr;
(* mark_debug = "TRUE" *) wire [16:0] trc_addr;
(* mark_debug = "TRUE" *) wire [15:0] trc_do;
(* mark_debug = "TRUE" *) wire [15:0] trc_di;
(* mark_debug = "TRUE" *) wire        trc_rdy;

//assign AXI_aclk    = sys_clk;
//assign AXI_aresetn = ~sys_rst;

// // CDC ltssm from user clock to axi_jtag clock domain 
//(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)         reg     [5:0]     ltssm_state_reg0  =6'b0;
//(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)         reg     [5:0]     ltssm_state_reg1  =6'b0;
//(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)         reg     [5:0]     ltssm_state_reg2  =6'b0;
//
// // CDC pipe signals from pipe clock to axi_jtag clock domain 
//
//(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)   reg                  txdetectrx_reg0    = 1'b0;
//(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)   reg                  txdetectrx_reg1    = 1'b0;
//
//(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)   reg [PHY_LANE*3-1:0] rxstatus_reg0 = 'b0;
//(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)   reg [PHY_LANE*3-1:0] rxstatus_reg1 = 'b0;
//
//(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)   reg [PHY_LANE-1:0]   phystatus_reg0 = 'b0;
//(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)   reg [PHY_LANE-1:0]   phystatus_reg1 = 'b0;
//
// // CDC reset state machine signals from sys clock to axi_jtag clock domain 
//
//(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)   reg  [2:0]           reset_state_reg0 = 3'b0;
//(* ASYNC_REG = "TRUE", SHIFT_EXTRACT = "NO" *)   reg  [2:0]           reset_state_reg1 = 3'b0;



//always @ (posedge sys_clk )
//   begin
//   // ltssm_state_reg0            <= ltssm;
//    txdetectrx_reg0             </axi txdetectrx;
//    rxstatus_reg0               <= rxstatus;
//    phystatus_reg0              <= phystatus;
//    reset_state_reg0            <= reset_state;
//    
//    //ltssm_state_reg1            <= ltssm_state_reg0;
//    txdetectrx_reg1             <= txdetectrx_reg0;
//    rxstatus_reg1               <= rxstatus_reg0;
//    phystatus_reg1              <= phystatus_reg0;
//    reset_state_reg1            <= reset_state_reg0;
//    
//    //ltssm_state_reg2            <= ltssm_state_reg1;
//end





//assign trc_rst_n = ~sys_rst;
//assign trc_clk   = sys_clk;

design_1_xdma_0_0_pcie4_ip_debug_probes #(
    .PHY_LANE (PHY_LANE)  
  ) debug_probes_inst(
  //reset state debugging probes
	.user_clk            (user_clk),                //input                  user_clk,
	.user_reset          (user_reset),              //input                  user_reset,
	.sys_rst             (sys_rst),
    .sys_clk             (sys_clk),
	.reset_state         (reset_state),             //input [2:0]            reset_state,
	                                                ////ltssm debugging probes
	.ltssm               (ltssm),                   //input [5:0]            ltssm,
	.cfg_negotiated_width(cfg_negotiated_width),    //input [3:0]            cfg_negotiated_width), 
	.cfg_current_speed   (cfg_current_speed),       //input [2:0]            cfg_current_speed,
	                                                ////Receiver detect probes
	.pclk                (pclk),                    //input                  pclk,
	.prst_n              (prst_n),                  //input                  prst_n,
	.txdetectrx          (txdetectrx),              //input                  txdetectrx,
	.powerdown           (powerdown),               //input [1:0]            powerdown,
	.phystatus           (phystatus),               //input [PHY_LANE-1:0]   phystatus,
	.rxstatus            (rxstatus),                //input [PHY_LANE*3-1:0] rxstatus,                      
	                                                ////trace memory access interface (DRP like interface)
	.trc_rst_n           (trc_rst_n),               //input                  trc_rst_n,
	.trc_clk             (trc_clk),                 //input                  trc_clk,
	.trc_en              (trc_en),                  //input                  trc_en, //trace enable
	//.trc_wr              (trc_wr),                  ////input                  trc_wr, //trace write enable //TODO: add write
	                                                ////support 
	.trc_addr            (trc_addr),                //input [16:0]           trc_addr, //address width compatible with XSDB
	//.trc_di              (trc_di),                  ////input [15:0]         trc_di, //trace write data input
	.trc_do              (trc_do),                  //output [15:0]          trc_do, 
	.trc_rdy             (trc_rdy)                  //output                 trc_rdy                            
  );

design_1_xdma_0_0_pcie4_ip_debug_axi4l_s debug_axi4l_s_inst (

  //--------------  AXI Interface Signals         --------------
 .AXI_aclk      (AXI_aclk),      // input                             AXI_aclk,
 .AXI_aresetn   (AXI_aresetn),   // input                             AXI_aresetn,
                                    
 .S_AXI_araddr  (AXI_araddr),  // input  [S_AXI_ADDR_WIDTH-1:0]     S_AXI_araddr,
 .S_AXI_arready (AXI_arready), // output reg                        S_AXI_arready,
 .S_AXI_arvalid (AXI_arvalid), // input                             S_AXI_arvalid,
 .S_AXI_arprot  (AXI_arprot),  // input  [2:0]                      S_AXI_arprot,
                                    
 .S_AXI_awaddr  (AXI_awaddr),  // input [S_AXI_ADDR_WIDTH-1:0]      S_AXI_awaddr,
 .S_AXI_awready (AXI_awready), // output reg                        S_AXI_awready,
 .S_AXI_awvalid (AXI_awvalid), // input                             S_AXI_awvalid,
 .S_AXI_awprot  (AXI_awprot),  // input  [2:0]                      S_AXI_awprot,
                                    
 .S_AXI_bresp   (AXI_bresp),   // output     [1:0]                  S_AXI_bresp,
 .S_AXI_bready  (AXI_bready),  // input                             S_AXI_bready,
 .S_AXI_bvalid  (AXI_bvalid),  // output reg                        S_AXI_bvalid,
                                    
 .S_AXI_rdata   (AXI_rdata),   // output     [S_AXI_DATA_WIDTH-1:0] S_AXI_rdata,
 .S_AXI_rready  (AXI_rready),  // input                             S_AXI_rready,
 .S_AXI_rvalid  (AXI_rvalid),  // output reg                        S_AXI_rvalid,
 .S_AXI_rresp   (AXI_rresp),   // output reg [1:0]                  S_AXI_rresp,
                                    
 .S_AXI_wdata   (AXI_wdata),   // input  [S_AXI_DATA_WIDTH-1:0]     S_AXI_wdata,
 .S_AXI_wready  (AXI_wready),  // output reg                        S_AXI_wready,
 .S_AXI_wvalid  (AXI_wvalid),  // input                             S_AXI_wvalid,
 .S_AXI_wstrb   (AXI_wstrb),   // input  [S_AXI_DATA_WIDTH/8-1:0]   S_AXI_wstrb,
                                 // trace memory access interface (DRP like interface)
 .trc_rst_n     (trc_rst_n),     // output                            trc_rst_n
 .trc_clk       (trc_clk),       // output                            trc_clk,
 .trc_en        (trc_en),        // output                            trc_en,        // trace enable
 .trc_wr        (trc_wr),        // output                            trc_wr,        // trace write enable                                 // TODO
 .trc_addr      (trc_addr),      // output reg [16:0]                 trc_addr,      // address width compatible with XSDB
 .trc_di        (trc_di),        //                                                  // out [15:0]                    trc_di,            // trace write data input
 .trc_do        (trc_do),        // input  [15:0]                     trc_do,
 .trc_rdy       (trc_rdy)        // input                             trc_rdy

);

design_1_xdma_0_0_pcie4_ip_jtag jtag_axi4l_m_inst (

  .aclk          (AXI_aclk),          // input wire aclk
  .aresetn       (AXI_aresetn),       // input wire aresetn
  .m_axi_awaddr  (AXI_awaddr),  // output wire [31 : 0] m_axi_awaddr
  .m_axi_awprot  (AXI_awprot),  // output wire [2 : 0] m_axi_awprot
  .m_axi_awvalid (AXI_awvalid), // output wire m_axi_awvalid
  .m_axi_awready (AXI_awready), // input wire m_axi_awready
  .m_axi_wdata   (AXI_wdata),   // output wire [31 : 0] m_axi_wdata
  .m_axi_wstrb   (AXI_wstrb),   // output wire [3 : 0] m_axi_wstrb
  .m_axi_wvalid  (AXI_wvalid),  // output wire m_axi_wvalid
  .m_axi_wready  (AXI_wready),  // input wire m_axi_wready
  .m_axi_bresp   (AXI_bresp),   // input wire [1 : 0] m_axi_bresp
  .m_axi_bvalid  (AXI_bvalid),  // input wire m_axi_bvalid
  .m_axi_bready  (AXI_bready),  // output wire m_axi_bready
  .m_axi_araddr  (AXI_araddr),  // output wire [31 : 0] m_axi_araddr
  .m_axi_arprot  (AXI_arprot),  // output wire [2 : 0] m_axi_arprot
  .m_axi_arvalid (AXI_arvalid), // output wire m_axi_arvalid
  .m_axi_arready (AXI_arready), // input wire m_axi_arready
  .m_axi_rdata   (AXI_rdata),   // input wire [31 : 0] m_axi_rdata
  .m_axi_rresp   (AXI_rresp),   // input wire [1 : 0] m_axi_rresp
  .m_axi_rvalid  (AXI_rvalid),  // input wire m_axi_rvalid
  .m_axi_rready  (AXI_rready)   // output wire m_axi_rready            
);

//debugging simulation
//translate off
initial begin
	#4840;
	force AXI_arvalid = 1'b1;
	force AXI_araddr  = 32'h1020;
    while(~AXI_arready) @(posedge AXI_aclk);
	force AXI_arvalid = 1'b0;
	while (~AXI_rvalid) @(posedge AXI_aclk);
	$display("%t get data %h, with response %h", $realtime, AXI_rdata, AXI_rresp);
	force AXI_rready = 1'b1;
	@(posedge AXI_aclk);
	force AXI_rready = 1'b0;
	repeat(20) @(posedge AXI_aclk);
//	$finish;

end
//translate on
endmodule

