
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


module pcie_tans_if # (
	parameter	C_PCIE_DATA_WIDTH			= 512,
	parameter	C_PCIE_ADDR_WIDTH			= 48, //modified

	parameter KEEP_WIDTH                                 = C_PCIE_DATA_WIDTH / 32, 
	parameter TCQ                                        = 1,

	parameter [1:0]  AXISTEN_IF_WIDTH               = (C_PCIE_DATA_WIDTH == 512) ? 2'b11:(C_PCIE_DATA_WIDTH == 256) ? 2'b10 : (C_PCIE_DATA_WIDTH == 128) ? 2'b01 : 2'b00, 

	parameter              AXI4_CQ_TUSER_WIDTH = 183,
	parameter              AXI4_CC_TUSER_WIDTH = 81,
	parameter              AXI4_RQ_TUSER_WIDTH = 137,
	parameter              AXI4_RC_TUSER_WIDTH = 161

)
(

//PCIe user clock
	input									pcie_user_clk,
	input									pcie_user_rst_n,

//PCIe rx interface
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
	output	[C_PCIE_DATA_WIDTH-1:0]			cpld2_fifo_wr_data,

//PCIe tx interface
	input									tx_cpld_req,
	input	[7:0]							tx_cpld_tag,
	input	[15:0]							tx_cpld_req_id,
	input	[12:2]							tx_cpld_len,
	input	[6:0]							tx_cpld_laddr,
	input	[63:0]							tx_cpld_data,
	input   [2:0]                           tx_cpld_tc,             // Memory Read TC
	input   [2:0]                           tx_cpld_attr,           // Memory Read Attribute
	input   [1:0]                           tx_cpld_at,             // Address Translation 
	input   [7:0]                           tx_cpld_be,
	output									tx_cpld_req_ack,

	input									tx_mrd0_req,
	input	[7:0]							tx_mrd0_tag,
	input	[12:2]							tx_mrd0_len,
	input	[C_PCIE_ADDR_WIDTH-1:2]			tx_mrd0_addr,
	output									tx_mrd0_req_ack,

	input									tx_mrd1_req,
	input	[7:0]							tx_mrd1_tag,
	input	[12:2]							tx_mrd1_len,
	input	[C_PCIE_ADDR_WIDTH-1:2]			tx_mrd1_addr,
	output									tx_mrd1_req_ack,

	input									tx_mrd2_req,
	input	[7:0]							tx_mrd2_tag,
	input	[12:2]							tx_mrd2_len,
	input	[C_PCIE_ADDR_WIDTH-1:2]			tx_mrd2_addr,
	output									tx_mrd2_req_ack,

	input									tx_mwr0_req,
	input	[7:0]							tx_mwr0_tag,
	input	[12:2]							tx_mwr0_len,
	input	[C_PCIE_ADDR_WIDTH-1:2]			tx_mwr0_addr,
	output									tx_mwr0_req_ack,
	output									tx_mwr0_rd_en,
	input	[C_PCIE_DATA_WIDTH-1:0]			tx_mwr0_rd_data,
	output									tx_mwr0_data_last,

	input									tx_mwr1_req,
	input	[7:0]							tx_mwr1_tag,
	input	[12:2]							tx_mwr1_len,
	input	[C_PCIE_ADDR_WIDTH-1:2]			tx_mwr1_addr,
	output									tx_mwr1_req_ack,
	output									tx_mwr1_rd_en,
	input	[C_PCIE_DATA_WIDTH-1:0]			tx_mwr1_rd_data,
	output									tx_mwr1_data_last,

	output									pcie_mreq_err,
	output									pcie_cpld_err,
	output									pcie_cpld_len_err,

	// AXI-S Completer Competion Interface
	output wire   [C_PCIE_DATA_WIDTH-1:0]   s_axis_cc_tdata,
	output wire          [KEEP_WIDTH-1:0]   s_axis_cc_tkeep,
	output wire                             s_axis_cc_tlast,
	output wire                             s_axis_cc_tvalid,
	output wire [AXI4_CC_TUSER_WIDTH-1:0]   s_axis_cc_tuser,
	input                                   s_axis_cc_tready,

	// AXI-S Requester Request Interface
	output wire   [C_PCIE_DATA_WIDTH-1:0]   s_axis_rq_tdata,
	output wire          [KEEP_WIDTH-1:0]   s_axis_rq_tkeep,
	output wire                             s_axis_rq_tlast,
	output wire                             s_axis_rq_tvalid,
	output wire [AXI4_RQ_TUSER_WIDTH-1:0]   s_axis_rq_tuser,
	input                                   s_axis_rq_tready,

	// TX Message Interface
	input                            cfg_msg_transmit_done,
	output                       cfg_msg_transmit,
	output               [2:0]   cfg_msg_transmit_type,
	output              [31:0]   cfg_msg_transmit_data,

	//Tag availability and Flow control Information
	input                    [5:0]   pcie_rq_tag,
	input                            pcie_rq_tag_vld,
	input                    [1:0]   pcie_tfc_nph_av,
	input                    [1:0]   pcie_tfc_npd_av,
	input                            pcie_tfc_np_pl_empty,
	input                    [3:0]   pcie_rq_seq_num,
	input                            pcie_rq_seq_num_vld,

	//Cfg Flow Control Information  
	input	[11:0]							fc_cpld,
	input	[7:0]							fc_cplh,
	input	[11:0]							fc_npd,
	input	[7:0]							fc_nph,
	input	[11:0]							fc_pd,
	input	[7:0]							fc_ph,
	output	[2:0]							fc_sel,


	// Completer Request Interface
	input   [C_PCIE_DATA_WIDTH-1:0]   m_axis_cq_tdata,
	input                             m_axis_cq_tlast,
	input                             m_axis_cq_tvalid,
	input [AXI4_CQ_TUSER_WIDTH-1:0]   m_axis_cq_tuser,
	input          [KEEP_WIDTH-1:0]   m_axis_cq_tkeep,
	output                            m_axis_cq_tready,

	// Requester Completion Interface
	input   [C_PCIE_DATA_WIDTH-1:0]   m_axis_rc_tdata,
	input                             m_axis_rc_tlast,
	input                             m_axis_rc_tvalid,
	input [AXI4_RC_TUSER_WIDTH-1:0]   m_axis_rc_tuser,
	input          [KEEP_WIDTH-1:0]   m_axis_rc_tkeep,
	output                            m_axis_rc_tready,

	input                     [5:0]   pcie_cq_np_req_count,
	output                            pcie_cq_np_req,

	//RX Message Interface
	input                            cfg_msg_received,
	input                    [4:0]   cfg_msg_received_type,
	input                    [7:0]   cfg_msg_data
);

wire										w_tx_cpld_gnt;
wire										w_tx_mrd_gnt;
wire										w_tx_mwr_gnt;

pcie_fc_cntl
pcie_fc_cntl_inst0
(
	.pcie_user_clk							(pcie_user_clk),
	.pcie_user_rst_n						(pcie_user_rst_n),

	.fc_cpld								(fc_cpld),
	.fc_cplh								(fc_cplh),
	.fc_npd									(fc_npd),
	.fc_nph									(fc_nph),
	.fc_pd									(fc_pd),
	.fc_ph									(fc_ph),
	.fc_sel									(fc_sel),

	.tx_cpld_gnt							(w_tx_cpld_gnt),
	.tx_mrd_gnt								(w_tx_mrd_gnt),
	.tx_mwr_gnt								(w_tx_mwr_gnt)
);

pcie_rx # (
	.C_PCIE_DATA_WIDTH						(C_PCIE_DATA_WIDTH)
)
pcie_rx_inst0(
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

	.req_be                               (req_be),

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

pcie_tx # (
	.C_PCIE_DATA_WIDTH						(C_PCIE_DATA_WIDTH)
)
pcie_tx_inst0(
	.pcie_user_clk							(pcie_user_clk),
	.pcie_user_rst_n						(pcie_user_rst_n),
	
	.tx_cpld_gnt							(w_tx_cpld_gnt),
	.tx_mrd_gnt								(w_tx_mrd_gnt),
	.tx_mwr_gnt								(w_tx_mwr_gnt),

    .s_axis_cc_tdata              ( s_axis_cc_tdata ),
    .s_axis_cc_tkeep              ( s_axis_cc_tkeep ),
    .s_axis_cc_tlast              ( s_axis_cc_tlast ),
    .s_axis_cc_tvalid             ( s_axis_cc_tvalid ),
    .s_axis_cc_tuser              ( s_axis_cc_tuser ),
    .s_axis_cc_tready             ( s_axis_cc_tready ), 
    
    .s_axis_rq_tdata              ( s_axis_rq_tdata ),
    .s_axis_rq_tkeep              ( s_axis_rq_tkeep ),
    .s_axis_rq_tlast              ( s_axis_rq_tlast ),
    .s_axis_rq_tvalid             ( s_axis_rq_tvalid ),
    .s_axis_rq_tuser              ( s_axis_rq_tuser ),
    .s_axis_rq_tready             ( s_axis_rq_tready ), 

	.cfg_msg_transmit_done                          ( cfg_msg_transmit_done ), 
	.cfg_msg_transmit                               ( cfg_msg_transmit ),
	.cfg_msg_transmit_type                          ( cfg_msg_transmit_type ), 
	.cfg_msg_transmit_data                          ( cfg_msg_transmit_data ), 

	.pcie_tfc_nph_av                                ( pcie_tfc_nph_av ),
	.pcie_tfc_npd_av                                ( pcie_tfc_npd_av ),
	.pcie_rq_tag                                    ( pcie_rq_tag ),
	.pcie_rq_tag_vld                                ( pcie_rq_tag_vld ),
	.pcie_tfc_np_pl_empty                           ( 1'b0 ),
	.pcie_rq_seq_num                                ( pcie_rq_seq_num ),
	.pcie_rq_seq_num_vld                            ( pcie_rq_seq_num_vld ), 

	.tx_cpld_req							(tx_cpld_req),
	.tx_cpld_tag							(tx_cpld_tag),
	.tx_cpld_req_id							(tx_cpld_req_id),
	.tx_cpld_len							(tx_cpld_len),
	.tx_cpld_laddr							(tx_cpld_laddr),
	.tx_cpld_data							(tx_cpld_data),
	.tx_cpld_tc						     	(tx_cpld_tc),
	.tx_cpld_attr							(tx_cpld_attr),
	.tx_cpld_at							    (tx_cpld_at),
	.tx_cpld_be							    (tx_cpld_be),
	.tx_cpld_req_ack						(tx_cpld_req_ack),
	
	.tx_mrd0_req							(tx_mrd0_req),
	.tx_mrd0_tag							(tx_mrd0_tag),
	.tx_mrd0_len							(tx_mrd0_len),
	.tx_mrd0_addr							(tx_mrd0_addr),
	.tx_mrd0_req_ack						(tx_mrd0_req_ack),
	
	.tx_mrd1_req							(tx_mrd1_req),
	.tx_mrd1_tag							(tx_mrd1_tag),
	.tx_mrd1_len							(tx_mrd1_len),
	.tx_mrd1_addr							(tx_mrd1_addr),
	.tx_mrd1_req_ack						(tx_mrd1_req_ack),
	
	.tx_mrd2_req							(tx_mrd2_req),
	.tx_mrd2_tag							(tx_mrd2_tag),
	.tx_mrd2_len							(tx_mrd2_len),
	.tx_mrd2_addr							(tx_mrd2_addr),
	.tx_mrd2_req_ack						(tx_mrd2_req_ack),
	
	.tx_mwr0_req							(tx_mwr0_req),
	.tx_mwr0_tag							(tx_mwr0_tag),
	.tx_mwr0_len							(tx_mwr0_len),
	.tx_mwr0_addr							(tx_mwr0_addr),
	.tx_mwr0_req_ack						(tx_mwr0_req_ack),
	.tx_mwr0_rd_en							(tx_mwr0_rd_en),
	.tx_mwr0_rd_data						(tx_mwr0_rd_data),
	.tx_mwr0_data_last						(tx_mwr0_data_last),
	
	.tx_mwr1_req							(tx_mwr1_req),
	.tx_mwr1_tag							(tx_mwr1_tag),
	.tx_mwr1_len							(tx_mwr1_len),
	.tx_mwr1_addr							(tx_mwr1_addr),
	.tx_mwr1_req_ack						(tx_mwr1_req_ack),
	.tx_mwr1_rd_en							(tx_mwr1_rd_en),
	.tx_mwr1_rd_data						(tx_mwr1_rd_data),
	.tx_mwr1_data_last						(tx_mwr1_data_last)
);


endmodule

