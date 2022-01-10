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
// File       : design_1_xdma_0_0_pcie4_ip_debug_probes.v
// Version    : 1.3 
//-----------------------------------------------------------------------------
//------------------------------------------------------------------------------

`timescale  1 ns / 1 ps

module design_1_xdma_0_0_pcie4_ip_debug_probes # (

    parameter C_MAJOR_VERSION     = 2016,
    parameter C_MINOR_VERSION     = 1,
    parameter C_CORE_MAJOR_VER    = 1,
    parameter C_CORE_MINOR_VER    = 0,
    parameter C_XSDB_SLAVE_TYPE   = 16'h0901,
    parameter C_XSDB_CSE_DRV_VER  = 16'h0001,
    parameter C_XSDB_CORE_TYPE    = 16'h0009,
    parameter C_XSDB_CG_VER       = 16'h0000,
    parameter C_XSDB_CG_ALPHA_VER = 16'h0000, // TODO: test reg is currently disabled 
    parameter C_XSDB_EDA_VER      = 16'h1001, // VIVADO 2016.1    
    parameter C_XSDB_NEXT_SLAVE   = 16'h0,
    parameter PHY_LANE            = 1          //Number of lanes
  ) (
  //reset state debugging probes
  input                  user_clk,
  input                  sys_rst,
  input                  sys_clk,
  input                  user_reset,
  input [2:0]            reset_state,
  //ltssm debugging probes
  //input                  core_clk,
  input [5:0]            ltssm,
  input [4:0]            cfg_negotiated_width, //TODO add support
  input [2:0]            cfg_current_speed,
  //Receiver detect probes
  input                  pclk,
  input                  prst_n,
  input                  txdetectrx,
  input [1:0]            powerdown,
  input [PHY_LANE-1:0]   phystatus,
  input [PHY_LANE*3-1:0] rxstatus,
  
  //trace memory access interface (DRP like interface)
  input                  trc_rst_n,
  input                  trc_clk,
  input                  trc_en, //trace enable
  //input                  trc_wr, //trace write enable //TODO: add write
  //support 
  input [16:0]           trc_addr, //address width compatible with XSDB
  //input [15:0]           trc_di, //trace write data input
  output [15:0]          trc_do, 
  output                 trc_rdy
  );

genvar i;

wire reset_trc_mem_rd;
wire ltssm_trc_mem_rd;
wire rxdet_trc_mem_rd;

/*******************************************************************************/
// Reset state capture
//TODO: How to reset, rtl uses cold_reset
/*******************************************************************************/
localparam NUM_RESET_STATE            = 8;
//localparam RST_ST_RESET               = 3'b000;
//localparam RST_ST_MGMT_RESET_DEASSERT = 3'b001;
//localparam RST_ST_PHY_RDY             = 3'b100;
//localparam RST_ST_RESET_DEASSERT      = 3'b101;
localparam RST_ST_TRC_DWIDTH = 16;
reg [2:0]  cur_reset_st = 3'b0;
reg [2:0]  pre_reset_st = 3'b0;
wire       reset_st_en;   //enable store the state transition
reg [15:0] reset_st_tmr;  //reset state timer
wire [RST_ST_TRC_DWIDTH-1:0]     reset_st_trc;


always @ (posedge sys_clk, posedge sys_rst) 
begin
    if(sys_rst) begin
        pre_reset_st <= 3'b0;
        cur_reset_st <= 3'b0;
    end else begin
        pre_reset_st <= cur_reset_st;
        cur_reset_st <= reset_state;
    end
end

assign reset_st_en = | (cur_reset_st ^ pre_reset_st); // detect state transaction

always @ (posedge sys_clk, posedge sys_rst) 
begin
    if (sys_rst)
        reset_st_tmr <= 16'b0;
    else 
        reset_st_tmr <= reset_st_en ? 16'b0 :
                       (& reset_st_tmr) ? reset_st_tmr : reset_st_tmr + 1'b1;
end

xpm_memory_dpdistram # (
  // Common module parameters
  .MEMORY_SIZE        (NUM_RESET_STATE*RST_ST_TRC_DWIDTH),   //positive integer
  .CLOCKING_MODE      (1),      //integer; 0=common, 1=independent
  .MEMORY_INIT_FILE   ("none"), //string; "none" or "<filename>.mem" 
  .MESSAGE_CONTROL    (0),      //do not change

  // Port A module parameters
  .WRITE_DATA_WIDTH_A (RST_ST_TRC_DWIDTH),     //positive integer
  .READ_DATA_WIDTH_A  (RST_ST_TRC_DWIDTH),     //positive integer
  .BYTE_WRITE_WIDTH_A (RST_ST_TRC_DWIDTH),     //integer; 8, 9, or WRITE_DATA_WIDTH_A value
  .ADDR_WIDTH_A       (3),      //positive integer
  .READ_RESET_VALUE_A ({RST_ST_TRC_DWIDTH{1'b0}}),  //vector of READ_DATA_WIDTH_A bits
  .READ_LATENCY_A     (2),      //non-negative integer

  // Port B module parameters
  .READ_DATA_WIDTH_B  (16),  //positive integer
  .ADDR_WIDTH_B       (3),      //positive integer
  .READ_RESET_VALUE_B ({16{1'b0}}),  //vector of READ_DATA_WIDTH_B bits
  .READ_LATENCY_B     (2)       //non-negative integer

) reset_state_mem_inst (
  // Port A module ports
  .clka   (sys_clk),
  .rsta   (sys_rst),
  .ena    (reset_st_en), 
  .regcea (1'b1),  //do not change
  .wea    (reset_st_en),
  .addra  (pre_reset_st),
  .dina   ({4'b0, 1'b0, pre_reset_st, 4'b0, 1'b0, cur_reset_st}),
  .douta  (),

  // Port B module ports
  .clkb   (trc_clk),
  .rstb   (~trc_rst_n),
  .enb    (reset_trc_mem_rd),
  .regceb (1'b1),  //do not change
  .addrb  (trc_addr[2:0]),
  .doutb  (reset_st_trc)

);


/*******************************************************************************/
// LTSSM trace capturing
// 1. Capture each state transistion
// 2. Record each transistion into a capture trace 32bit
//    ltssm_trace              = {
//                    ltssm_st_dur[15:0], // 16 bit scaled state duration
//                    ltssm_pre_st[5:0] , // previous state 
//                    ltssm_cur_st[5:0]   // current state
//                    }
// 3. store trace into BRAM
// 4. side-band probes
//         a. ltssm_trans_cnt // LTSSM transistion count, point to the latest
//         recorded debugging trace
//
/*******************************************************************************/
localparam MAX_NUM_LTSSM_TRACE = 512;
localparam LTSSM_TMEM_AWIDTH   = 9;   //LTSSM trace memory address width
localparam LTSSM_ST_WIDTH      = 6;
localparam LTSSM_WDATA_WIDTH   = 16;

reg [LTSSM_ST_WIDTH-1:0] cur_ltssm_st = 6'b0;
reg [LTSSM_ST_WIDTH-1:0] pre_ltssm_st = 6'b0;

reg  [LTSSM_TMEM_AWIDTH-1:0] ltssm_trace_cnt = {LTSSM_TMEM_AWIDTH{1'b0}};

wire ltssm_en;
//reg [1:0] ltssm_override;

(* mark_debug = "TRUE" *) wire                             ltssm_mem_rd;
(* mark_debug = "TRUE" *) wire [LTSSM_TMEM_AWIDTH -1:0]    ltssm_mem_raddr; // Yi Wang
(* mark_debug = "TRUE" *) wire [15:0]                      ltssm_mem_rdata;

(* mark_debug = "TRUE" *) wire                             ltssm_mem_wr;
(* mark_debug = "TRUE" *) wire [LTSSM_TMEM_AWIDTH-1:0]     ltssm_mem_waddr;
(* mark_debug = "TRUE" *) wire [LTSSM_WDATA_WIDTH-1:0]     ltssm_mem_wdata;

assign ltssm_en        = | (cur_ltssm_st ^ pre_ltssm_st);
assign ltssm_mem_wr    = ltssm_en;
assign ltssm_mem_waddr = ltssm_trace_cnt;
assign ltssm_mem_wdata = { 
                           
                           2'b0, //ltssm_override,                           
                           cur_ltssm_st,
                           2'b0,
                           pre_ltssm_st
                          
                           };

assign ltssm_mem_raddr = trc_addr[LTSSM_TMEM_AWIDTH -1:0]; //Yi Wang
assign ltssm_mem_rd    = ltssm_trc_mem_rd;

always @ (posedge user_clk,posedge sys_rst) begin
 if (sys_rst) begin
   cur_ltssm_st <= 6'b0;
   pre_ltssm_st <= 6'b0;
 end else if ((cur_ltssm_st == 6'b1) & (ltssm != 6'h2) ) begin
   cur_ltssm_st <= 6'b1;
   pre_ltssm_st <= 6'b1;
 end else begin
   cur_ltssm_st <= ltssm;
   pre_ltssm_st <= cur_ltssm_st;
 end
end

// always @(posedge user_clk,posedge sys_rst)
// begin
//   if (sys_rst) begin
//    ltssm_trace_cnt   <= {LTSSM_TMEM_AWIDTH{1'b0}};
//    //ltssm_override    <= 1'b0;
//   end else if (ltssm_en) begin
//     if  (ltssm_trace_cnt <= 'd254) begin
//      ltssm_trace_cnt   <= ltssm_trace_cnt + 1'b1;
//     // ltssm_override    <= ltssm_override;
//     end else if (ltssm_trace_cnt == 'd255) begin
//       ltssm_trace_cnt   <= 'd128;
//       //ltssm_override    <= ltssm_override + 1'b1;
//     end
//   end
//   else begin
//     ltssm_trace_cnt   <= ltssm_trace_cnt;
//     //ltssm_override    <= ltssm_override;
//   end
// end  
 always @(posedge user_clk,posedge sys_rst)
 begin
   if (sys_rst) begin
    ltssm_trace_cnt   <= {LTSSM_TMEM_AWIDTH{1'b0}};
   end else begin
      ltssm_trace_cnt   <= (ltssm_en & (~&ltssm_trace_cnt)) ? (ltssm_trace_cnt + 1'b1) :ltssm_trace_cnt;
   end
 end  
 
xpm_memory_sdpram # (

  // Common module parameters
  .MEMORY_SIZE        (MAX_NUM_LTSSM_TRACE*LTSSM_WDATA_WIDTH),   //positive integer
  .MEMORY_PRIMITIVE   ("blockram"),      //integer; 0=auto, 1=distributed, 2=block
  .CLOCKING_MODE      ("independent_clock"),      //integer; 0=common, 1=independent
  .ECC_MODE           (0),      //do not change
  .MEMORY_INIT_FILE   ("none"), //string; "none" or "<filename>.mem" 
  //.WAKEUP_TIME        (0),      //do not change
  .MESSAGE_CONTROL    (0),      //do not change

  // Port A module parameters
  //.WRITE_DATA_WIDTH_A (32),     //positive integer
 // .BYTE_WRITE_WIDTH_A (32),     //integer; 8, 9, or WRITE_DATA_WIDTH_A value
  .WRITE_DATA_WIDTH_A (LTSSM_WDATA_WIDTH),     //positive integer
  .BYTE_WRITE_WIDTH_A (LTSSM_WDATA_WIDTH),     //integer; 8, 9, or WRITE_DATA_WIDTH_A value
  .ADDR_WIDTH_A       (LTSSM_TMEM_AWIDTH),      //positive integer

  // Port B module parameters
  .READ_DATA_WIDTH_B  (16),     //positive integer
  .ADDR_WIDTH_B       (LTSSM_TMEM_AWIDTH),      //positive integer
  .READ_RESET_VALUE_B (16'b0),  //vector of READ_DATA_WIDTH_B bits
  .READ_LATENCY_B     (2)       //non-negative integer

) ltssm_trace_mem_inst (

  // Common module ports
  .sleep          (1'b0),  //do not change

  // Port A module ports
  .clka           (user_clk),
  .ena            (ltssm_mem_wr),
  .wea            (ltssm_mem_wr),
  .addra          (ltssm_mem_waddr),
  .dina           (ltssm_mem_wdata),
  .injectsbiterra (1'b0),  //do not change
  .injectdbiterra (1'b0),  //do not change

  // Port B module ports
  .clkb           (trc_clk),
  .rstb           (~trc_rst_n),
  .enb            (ltssm_mem_rd),
  .regceb         (1'b1),  //do not change
  .addrb          (ltssm_mem_raddr),
  .doutb          (ltssm_mem_rdata),
  .sbiterrb       (),      //do not change
  .dbiterrb       ()       //do not change

);

/*******************************************************************************/
// Receiver detection probes
// Per-lane based trace format
// rxdet_lane_trace               = {
//            rxdet_dur[7:0], //time duration txdetectrx <-> phystuatus
//            rxstatus[2:0], //          
//                      }
/*******************************************************************************/
localparam MAX_NUM_RXDET_TRACE    = 4;
localparam RXDET_TRACE_MEM_AWIDTH = 2;
localparam RXDET_TRACE_DWIDTH     = 16;

reg  [1:0] rxdet_iter_cnt          = 2'b0; //Receiver detection iteration count
reg  [7:0] rxdet_dur               = 8'b0; //Receiver detection state duration
reg  [PHY_LANE-1:0] rxdet_phystatus_rcved; //Per lane flag indicates valid phystatus reveived during receiver detection                
wire       rxdet_on;
wire       rxdet_start;
wire       rxdet_end;
wire [RXDET_TRACE_DWIDTH-1:0] rxdet_trace[PHY_LANE-1:0];
wire [RXDET_TRACE_DWIDTH-1:0] rxdet_lane_trace[PHY_LANE-1:0]; // per lane based receiver dection traces
reg  [RXDET_TRACE_DWIDTH-1:0] rxdet_lane_trace_r[PHY_LANE-1:0]; // per lane based receiver dection traces
wire [PHY_LANE-1:0] rxdet_lane_wen; //per lane based trace write enable


reg  rxdet_on_d = 1'b0;

assign rxdet_on       = txdetectrx & (powerdown[1] & ~powerdown[0]); 
assign rxdet_start    = rxdet_on & (~rxdet_on_d); 
assign rxdet_end      = (~rxdet_on) & rxdet_on_d;
assign rxdet_lane_wen = ({PHY_LANE{rxdet_on}} & phystatus) |  //valid rxdetection   
                        ({PHY_LANE{rxdet_end}} & ~rxdet_phystatus_rcved); //phystatus timeout

always @ (posedge pclk)
    rxdet_on_d <= rxdet_on;

always @ (posedge pclk) 
    rxdet_dur <= (rxdet_start | ~prst_n) ?  8'b0 : (rxdet_dur + 1'b1);

always @ (posedge pclk)
	if (~prst_n)
		rxdet_iter_cnt <= 2'b0;
	else
		rxdet_iter_cnt <= (~(&rxdet_iter_cnt) & rxdet_end ) ? (rxdet_iter_cnt + 1'b1) :
                                                           rxdet_iter_cnt;

generate  begin 
    for (i=0;i<PHY_LANE;i=i+1) begin : GEN_RXDET_TRC_MEM
	  always @ (posedge pclk)
	  	if (~prst_n | rxdet_start)
			rxdet_phystatus_rcved[i] <= 1'b0;
		else if (phystatus[i] & rxdet_on)
			rxdet_phystatus_rcved[i] <= 1'b1;

	  assign rxdet_trace[i] = { rxdet_dur[7:0], // detection durtion
                      		    3'b0,
                      		    phystatus[i],            // valid flag
					  		    1'b0,
                      		    rxstatus[i*3+:3]
                      		  }; 

  xpm_memory_dpdistram # (
      // Common module parameters
      .MEMORY_SIZE        (MAX_NUM_RXDET_TRACE * RXDET_TRACE_DWIDTH),   //positive integer
      .CLOCKING_MODE      (1),      //integer; 0=common, 1=independent
      .MEMORY_INIT_FILE   ("none"), //string; "none" or "<filename>.mem" 
      .MESSAGE_CONTROL    (0),      //do not change
    
      // Port A module parameters
      .WRITE_DATA_WIDTH_A (RXDET_TRACE_DWIDTH),     //positive integer
      .READ_DATA_WIDTH_A  (RXDET_TRACE_DWIDTH),     //positive integer
      .BYTE_WRITE_WIDTH_A (RXDET_TRACE_DWIDTH),     //integer; 8, 9, or WRITE_DATA_WIDTH_A value
      .ADDR_WIDTH_A       (RXDET_TRACE_MEM_AWIDTH),      //positive integer
      .READ_RESET_VALUE_A ({RXDET_TRACE_DWIDTH{1'b0}}),  //vector of READ_DATA_WIDTH_A bits
      .READ_LATENCY_A     (2),      //non-negative integer
    
      // Port B module parameters
      .READ_DATA_WIDTH_B  (16),  //positive integer
      .ADDR_WIDTH_B       (RXDET_TRACE_MEM_AWIDTH),      //positive integer
      .READ_RESET_VALUE_B ({16{1'b0}}),  //vector of READ_DATA_WIDTH_B bits
      .READ_LATENCY_B     (2)       //non-negative integer
    
    ) rxdet_trc_mem_inst (
      // Port A module ports
      .clka   (pclk),
      .rsta   (~prst_n),
      .ena    (rxdet_lane_wen[i]),
      .regcea (1'b1),  //do not change
      .wea    (rxdet_lane_wen[i]),
      .addra  (rxdet_iter_cnt),
      .dina   (rxdet_trace[i]),
      .douta  (),
    
      // Port B module ports
      .clkb   (trc_clk),
      .rstb   (~trc_rst_n),
      .enb    (rxdet_trc_mem_rd),     //TODO
      .regceb (1'b1),  //do not change
      .addrb  (trc_addr[RXDET_TRACE_MEM_AWIDTH-1:0]),
      .doutb  (rxdet_lane_trace[i])
    );

     always @ (posedge trc_clk) begin
       if(~trc_rst_n) 
           rxdet_lane_trace_r[i] <= 16'b0;
       else 
           rxdet_lane_trace_r[i] <= rxdet_lane_trace[i];
     end

   end
end
endgenerate

/*******************************************************************************/
// Active probes, sync to the trc_clk domain
// 
/*******************************************************************************/
wire [4:0] cfg_negotiated_width_sync;
wire [2:0] cfg_current_speed_sync;

xpm_cdc_array_single # (
 .DEST_SYNC_FF   (3),
 .SIM_ASSERT_CHK (0),
 .SRC_INPUT_REG  (1),
 .VERSION        (0),
 .WIDTH          (5)
) negotiated_width_xpm_cdc_array_single_inst (
  .src_clk (user_clk),
  .src_in  (cfg_negotiated_width),
  .dest_clk(trc_clk) ,
  .dest_out(cfg_negotiated_width_sync)
);

xpm_cdc_array_single # (
 .DEST_SYNC_FF   (3),
 .SIM_ASSERT_CHK (0),
 .SRC_INPUT_REG  (1),
 .VERSION        (0),
 .WIDTH          (3)
) cur_speed_xpm_cdc_array_single_inst (
  .src_clk (user_clk),
  .src_in  (cfg_current_speed),
  .dest_clk(trc_clk) ,
  .dest_out(cfg_current_speed_sync)
);


/*******************************************************************************/
//read data mux
//Trace access memory:
// 0x00000 ~ 0x00FFF: reserved for static information
// 0x01000 ~ 0x01FFF: LTSSM trace memory
// 0x02000 ~ 0x02007: reset trace memory
// 0x03000 ~ 0x03FFF: Receiver detection trace
//              0x030i0 ~ 0x030iF : Receiver detection for lane i
// 0x04000 ~ 0x04FFF: probes for active signals
/*******************************************************************************/
reg   [3:0]  trc_rd_wdn; 
reg   [15:0] trc_rdt_muxed;
reg   [15:0] trc_rdt_reg;

assign trc_do           = trc_rdt_reg;
assign reset_trc_mem_rd = trc_rd_wdn[0] | trc_rd_wdn[1] | trc_rd_wdn[2];
assign ltssm_trc_mem_rd = trc_rd_wdn[0] | trc_rd_wdn[1] | trc_rd_wdn[2];
assign rxdet_trc_mem_rd = trc_rd_wdn[0] | trc_rd_wdn[1] | trc_rd_wdn[2];
assign trc_rdy          = trc_rd_wdn[3];

always @ (*) begin
    trc_rdt_muxed = 16'hdead;
    if(&trc_addr[16:4]) begin
        case (trc_addr[3:0])
            4'h0 : trc_rdt_muxed = C_XSDB_SLAVE_TYPE  ;
            4'h1 : trc_rdt_muxed = C_XSDB_CSE_DRV_VER ;
            4'h2 : trc_rdt_muxed = C_XSDB_CORE_TYPE   ;
            4'h3 : trc_rdt_muxed = C_XSDB_CG_VER      ;
            4'h4 : trc_rdt_muxed = C_XSDB_CG_ALPHA_VER;
            4'h5 : trc_rdt_muxed = C_XSDB_EDA_VER     ;
            4'h6 : trc_rdt_muxed = 16'habcd            ; //test register
            4'h7 : trc_rdt_muxed = C_XSDB_NEXT_SLAVE;
        endcase
    end else begin
        case (trc_addr[16:12]) 
            5'h1 : trc_rdt_muxed = ltssm_mem_rdata;
            5'h2 : trc_rdt_muxed = reset_st_trc;
            5'h3 : trc_rdt_muxed = rxdet_lane_trace_r[trc_addr[4+:4]];
            5'h4 : begin
              case(trc_addr[1:0]) 
			    2'h0 : trc_rdt_muxed = PHY_LANE;
                2'h1 : trc_rdt_muxed = cfg_negotiated_width_sync;
                2'h2 : trc_rdt_muxed = cfg_current_speed_sync;
              endcase
            end
        endcase
    end
end
        
always @ (posedge trc_clk) 
    if(~trc_rst_n)
        trc_rdt_reg <= 16'h0;
    else 
        trc_rdt_reg <= trc_rd_wdn[2] ? trc_rdt_muxed : trc_rdt_reg;

always @ (posedge trc_clk) begin
    if(~trc_rst_n) begin
        trc_rd_wdn <= 4'b0;
    end else if (trc_en & ~|(trc_rd_wdn)) begin
        trc_rd_wdn <= 4'b1;
    end else begin
        trc_rd_wdn[0] <=1'b0;
        trc_rd_wdn[3:1] <= trc_rd_wdn[2:0];
    end
end

function [7:0] binary2Onehot_3bit;
input [2:0] code_bin;
begin
    case(code_bin) 
        3'b000: binary2Onehot_3bit = 8'b00000001;
        3'b001: binary2Onehot_3bit = 8'b00000010;
        3'b010: binary2Onehot_3bit = 8'b00000100;
        3'b011: binary2Onehot_3bit = 8'b00001000;
        3'b100: binary2Onehot_3bit = 8'b00010000;
        3'b101: binary2Onehot_3bit = 8'b00100000;
        3'b110: binary2Onehot_3bit = 8'b01000000;
        3'b111: binary2Onehot_3bit = 8'b10000000;
     endcase
end
endfunction 

endmodule
