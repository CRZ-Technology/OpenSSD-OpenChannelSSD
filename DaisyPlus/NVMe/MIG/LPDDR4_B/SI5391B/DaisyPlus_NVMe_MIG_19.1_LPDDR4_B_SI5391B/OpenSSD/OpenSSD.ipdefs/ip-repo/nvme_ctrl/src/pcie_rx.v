
/*
----------------------------------------------------------------------------------
Copyright (c) 2013-2014

  Embedded and Network Computing Lab.
  Open SSD Project
  Hanyang University

All rights reserved.

----------------------------------------------------------------------------------

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

  1. Redistributions of source code must retain the above copyright
     notice, this list of conditions and the following disclaimer.

  2. Redistributions in binary form must reproduce the above copyright
     notice, this list of conditions and the following disclaimer in the
     documentation and/or other materials provided with the distribution.

  3. All advertising materials mentioning features or use of this source code
     must display the following acknowledgement:
     This product includes source code developed 
     by the Embedded and Network Computing Lab. and the Open SSD Project.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

----------------------------------------------------------------------------------

http://enclab.hanyang.ac.kr/
http://www.openssd-project.org/
http://www.hanyang.ac.kr/

----------------------------------------------------------------------------------
*/


`timescale 1ns / 1ps


module pcie_rx # (
	parameter	C_PCIE_DATA_WIDTH			= 512,

	parameter KEEP_WIDTH                                 = C_PCIE_DATA_WIDTH / 32, 
	parameter TCQ                                        = 1,

	parameter [1:0]  AXISTEN_IF_WIDTH               = (C_PCIE_DATA_WIDTH == 512) ? 2'b11:(C_PCIE_DATA_WIDTH == 256) ? 2'b10 : (C_PCIE_DATA_WIDTH == 128) ? 2'b01 : 2'b00, 

	parameter              AXI4_CQ_TUSER_WIDTH = 183,
	parameter              AXI4_CC_TUSER_WIDTH = 81,
	parameter              AXI4_RQ_TUSER_WIDTH = 137,
	parameter              AXI4_RC_TUSER_WIDTH = 161
)
(
	input									pcie_user_clk,
	input									pcie_user_rst_n,

  // Completer Request Interface
  input        [C_PCIE_DATA_WIDTH-1:0]    m_axis_cq_tdata,
  input                              m_axis_cq_tlast,
  input                              m_axis_cq_tvalid,
  input [AXI4_CQ_TUSER_WIDTH-1:0]    m_axis_cq_tuser,
  input          [KEEP_WIDTH-1:0]    m_axis_cq_tkeep,
  output                             m_axis_cq_tready,

  // Requester Completion Interface
  input         [C_PCIE_DATA_WIDTH-1:0]    m_axis_rc_tdata,
  input                               m_axis_rc_tlast,
  input                               m_axis_rc_tvalid,
  input           [KEEP_WIDTH-1:0]    m_axis_rc_tkeep,
  input  [AXI4_RC_TUSER_WIDTH-1:0]    m_axis_rc_tuser,
  output                              m_axis_rc_tready, 

  	input                     [5:0]   pcie_cq_np_req_count,
	output                            pcie_cq_np_req,

	//RX Message Interface
	input                            cfg_msg_received,
	input                    [4:0]   cfg_msg_received_type,
	input                    [7:0]   cfg_msg_data,

	output									pcie_mreq_err,
	output									pcie_cpld_err,
	output									pcie_cpld_len_err,

	output									mreq_fifo_wr_en,
	output	[C_PCIE_DATA_WIDTH-1:0]			mreq_fifo_wr_data,

	output  [7:0]                           req_be,

	output	[7:0]							cpld0_fifo_tag,
	output									cpld0_fifo_tag_last,
	output									cpld0_fifo_wr_en,
	output	[C_PCIE_DATA_WIDTH-1:0]			cpld0_fifo_wr_data,

	output	[7:0]							cpld1_fifo_tag,
	output									cpld1_fifo_tag_last,
	output									cpld1_fifo_wr_en,
	output	[C_PCIE_DATA_WIDTH-1:0]			cpld1_fifo_wr_data,

	output	[7:0]							cpld2_fifo_tag,
	output									cpld2_fifo_tag_last,
	output									cpld2_fifo_wr_en,
	output	[C_PCIE_DATA_WIDTH-1:0]			cpld2_fifo_wr_data
);


wire	[7:0]								w_cpld_fifo_tag;
wire										w_cpld_fifo_tag_last;
wire										w_cpld_fifo_wr_en;
wire	[C_PCIE_DATA_WIDTH-1:0]				w_cpld_fifo_wr_data;



pcie_rx_recv # (
	.C_PCIE_DATA_WIDTH						(C_PCIE_DATA_WIDTH)
)
pcie_rx_recv_inst0(
	.pcie_user_clk							(pcie_user_clk),
	.pcie_user_rst_n						(pcie_user_rst_n),

    // Target Request Interface
    .m_axis_cq_tdata                ( m_axis_cq_tdata ),
    .m_axis_cq_tlast                ( m_axis_cq_tlast ),
    .m_axis_cq_tvalid               ( m_axis_cq_tvalid ),
    .m_axis_cq_tuser                ( m_axis_cq_tuser ),
    .m_axis_cq_tkeep                ( m_axis_cq_tkeep ),
    .m_axis_cq_tready               ( m_axis_cq_tready ), 

    // Master Completion Interface
    .m_axis_rc_tdata                ( m_axis_rc_tdata ),
    .m_axis_rc_tkeep                ( m_axis_rc_tkeep ),
    .m_axis_rc_tlast                ( m_axis_rc_tlast ),
    .m_axis_rc_tvalid               ( m_axis_rc_tvalid ),
    .m_axis_rc_tuser                ( m_axis_rc_tuser ),
    .m_axis_rc_tready               ( m_axis_rc_tready ),

	.pcie_cq_np_req                                 ( pcie_cq_np_req ),
	.pcie_cq_np_req_count                           ( pcie_cq_np_req_count ), 

	.cfg_msg_received                               ( cfg_msg_received ), 
	.cfg_msg_received_type                          ( cfg_msg_received_type ), 
	.cfg_msg_data                                   ( cfg_msg_data ),
    
	.pcie_mreq_err							(pcie_mreq_err),
	.pcie_cpld_err							(pcie_cpld_err),
	.pcie_cpld_len_err						(pcie_cpld_len_err),

	.mreq_fifo_wr_en						(mreq_fifo_wr_en),
	.mreq_fifo_wr_data						(mreq_fifo_wr_data),

	.req_be                                (req_be),

	.cpld_fifo_tag							(w_cpld_fifo_tag),
	.cpld_fifo_tag_last						(w_cpld_fifo_tag_last),
	.cpld_fifo_wr_en						(w_cpld_fifo_wr_en),
	.cpld_fifo_wr_data						(w_cpld_fifo_wr_data)

);

pcie_rx_cpld_sel 
pcie_rx_cpld_sel_inst0(
	.pcie_user_clk							(pcie_user_clk),

	.cpld_fifo_tag							(w_cpld_fifo_tag),
	.cpld_fifo_tag_last						(w_cpld_fifo_tag_last),
	.cpld_fifo_wr_en						(w_cpld_fifo_wr_en),
	.cpld_fifo_wr_data						(w_cpld_fifo_wr_data),

	.cpld0_fifo_tag							(cpld0_fifo_tag),
	.cpld0_fifo_tag_last					(cpld0_fifo_tag_last),
	.cpld0_fifo_wr_en						(cpld0_fifo_wr_en),
	.cpld0_fifo_wr_data						(cpld0_fifo_wr_data),

	.cpld1_fifo_tag							(cpld1_fifo_tag),
	.cpld1_fifo_tag_last					(cpld1_fifo_tag_last),
	.cpld1_fifo_wr_en						(cpld1_fifo_wr_en),
	.cpld1_fifo_wr_data						(cpld1_fifo_wr_data),

	.cpld2_fifo_tag							(cpld2_fifo_tag),
	.cpld2_fifo_tag_last					(cpld2_fifo_tag_last),
	.cpld2_fifo_wr_en						(cpld2_fifo_wr_en),
	.cpld2_fifo_wr_data						(cpld2_fifo_wr_data)
);

endmodule
