
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


`define PCI_EXP_EP_OUI                           24'h000A35
`define PCI_EXP_EP_DSN_1                         {{8'h1},`PCI_EXP_EP_OUI}
`define PCI_EXP_EP_DSN_2                         32'h00000001


module user_top # (
	parameter 	P_SLOT_TAG_WIDTH			= 10, //slot_modified
	parameter 	P_SLOT_WIDTH				= 1024, //slot_modified
	parameter	C_S0_AXI_ADDR_WIDTH			= 32,
	parameter	C_S0_AXI_DATA_WIDTH			= 32,
	parameter	C_S0_AXI_BASEADDR			= 32'hA0000000,
	parameter	C_S0_AXI_HIGHADDR			= 32'hA001FFFF,

	parameter	C_M0_AXI_ADDR_WIDTH			= 32,
	parameter	C_M0_AXI_DATA_WIDTH			= 64,
	parameter	C_M0_AXI_ID_WIDTH			= 1,
	parameter	C_M0_AXI_AWUSER_WIDTH		= 1,
	parameter	C_M0_AXI_WUSER_WIDTH		= 1,
	parameter	C_M0_AXI_BUSER_WIDTH		= 1,
	parameter	C_M0_AXI_ARUSER_WIDTH		= 1,
	parameter	C_M0_AXI_RUSER_WIDTH		= 1,

	parameter	C_PCIE_DATA_WIDTH			= 512,
	parameter	C_PCIE_ADDR_WIDTH			= 48, //modified

	// Do not override parameters below this line
	parameter KEEP_WIDTH                                 = C_PCIE_DATA_WIDTH / 32,
	parameter TCQ                                        = 1,
	//parameter [1:0]  AXISTEN_IF_WIDTH               = (C_PCIE_DATA_WIDTH == 256) ? 2'b10 : (C_PCIE_DATA_WIDTH == 128) ? 2'b01 : 2'b00,
	parameter [1:0]  AXISTEN_IF_WIDTH               = (C_PCIE_DATA_WIDTH == 512) ? 2'b11:(C_PCIE_DATA_WIDTH == 256) ? 2'b10 : (C_PCIE_DATA_WIDTH == 128) ? 2'b01 : 2'b00,
	//parameter [1:0]  AXISTEN_IF_WIDTH               = 2'b11,
	parameter        AXISTEN_IF_RQ_ALIGNMENT_MODE   = "FALSE",
	parameter        AXISTEN_IF_RC_ALIGNMENT_MODE   = "FALSE",
	parameter        AXISTEN_IF_CC_ALIGNMENT_MODE   = "FALSE",
	parameter        AXISTEN_IF_CQ_ALIGNMENT_MODE   = "FALSE",
	parameter              AXI4_CQ_TUSER_WIDTH = 183,
	parameter              AXI4_CC_TUSER_WIDTH = 81,
	parameter              AXI4_RQ_TUSER_WIDTH = 137,
	parameter              AXI4_RC_TUSER_WIDTH = 161,
	parameter        AXISTEN_IF_ENABLE_CLIENT_TAG   = 1,
	parameter        AXISTEN_IF_RQ_PARITY_CHECK     = 0,
	parameter        AXISTEN_IF_CC_PARITY_CHECK     = 0,
	parameter        AXISTEN_IF_RC_PARITY_CHECK     = 0,
	parameter        AXISTEN_IF_CQ_PARITY_CHECK     = 0,
	parameter        AXISTEN_IF_MC_RX_STRADDLE      = 0,
	parameter        AXISTEN_IF_ENABLE_RX_MSG_INTFC = 0,
	parameter [17:0] AXISTEN_IF_ENABLE_MSG_ROUTE    = 18'h2FFFF
)
(
////////////////////////////////////////////////////////////////
//AXI4-lite slave interface signals
	input									s0_axi_aclk,
	input									s0_axi_aresetn,

//Write address channel
	input	[C_S0_AXI_ADDR_WIDTH-1 : 0]		s0_axi_awaddr,
	output									s0_axi_awready,
	input									s0_axi_awvalid,
	input	[2 : 0]							s0_axi_awprot,

//Write data channel
	input									s0_axi_wvalid,
	output									s0_axi_wready,
	input	[C_S0_AXI_DATA_WIDTH-1 : 0]		s0_axi_wdata,
	input	[(C_S0_AXI_DATA_WIDTH/8)-1 : 0]	s0_axi_wstrb,

//Write response channel
	output									s0_axi_bvalid,
	input									s0_axi_bready,
	output	[1 : 0]							s0_axi_bresp,

//Read address channel
	input									s0_axi_arvalid,
	output									s0_axi_arready,
	input	[C_S0_AXI_ADDR_WIDTH-1 : 0]		s0_axi_araddr,
	input	[2 : 0]							s0_axi_arprot,

//Read data channel
	output									s0_axi_rvalid,
	input									s0_axi_rready,
	output	[C_S0_AXI_DATA_WIDTH-1 : 0]		s0_axi_rdata,
	output	[1 : 0]							s0_axi_rresp,

////////////////////////////////////////////////////////////////
//AXI4 master interface signals
	input									m0_axi_aclk,
	input									m0_axi_aresetn,

// Write address channel
	output	[C_M0_AXI_ID_WIDTH-1:0]			m0_axi_awid,
	output	[C_M0_AXI_ADDR_WIDTH-1:0]		m0_axi_awaddr,
	output	[7:0]							m0_axi_awlen,
	output	[2:0]							m0_axi_awsize,
	output	[1:0]							m0_axi_awburst,
	output	[1:0]							m0_axi_awlock,
	output	[3:0]							m0_axi_awcache,
	output	[2:0]							m0_axi_awprot,
	output	[3:0]							m0_axi_awregion,
	output	[3:0]							m0_axi_awqos,
	output	[C_M0_AXI_AWUSER_WIDTH-1:0]		m0_axi_awuser,
	output									m0_axi_awvalid,
	input									m0_axi_awready,

// Write data channel
	output	[C_M0_AXI_ID_WIDTH-1:0]			m0_axi_wid,
	output	[C_M0_AXI_DATA_WIDTH-1:0]		m0_axi_wdata,
	output	[(C_M0_AXI_DATA_WIDTH/8)-1:0]	m0_axi_wstrb,
	output									m0_axi_wlast,
	output	[C_M0_AXI_WUSER_WIDTH-1:0]		m0_axi_wuser,
	output									m0_axi_wvalid,
	input									m0_axi_wready,

// Write response channel
	input	[C_M0_AXI_ID_WIDTH-1:0]			m0_axi_bid,
	input	[1:0]							m0_axi_bresp,
	input									m0_axi_bvalid,
	input	[C_M0_AXI_BUSER_WIDTH-1:0]		m0_axi_buser,
	output									m0_axi_bready,

// Read address channel
	output	[C_M0_AXI_ID_WIDTH-1:0]			m0_axi_arid,
	output	[C_M0_AXI_ADDR_WIDTH-1:0]		m0_axi_araddr,
	output	[7:0]							m0_axi_arlen,
	output	[2:0]							m0_axi_arsize,
	output	[1:0]							m0_axi_arburst,
	output	[1:0]							m0_axi_arlock,
	output	[3:0]							m0_axi_arcache,
	output	[2:0]							m0_axi_arprot,
	output	[3:0]							m0_axi_arregion,
	output	[3:0] 							m0_axi_arqos,
	output	[C_M0_AXI_ARUSER_WIDTH-1:0]		m0_axi_aruser,
	output									m0_axi_arvalid,
	input									m0_axi_arready,

// Read data channel
	input	[C_M0_AXI_ID_WIDTH-1:0]			m0_axi_rid,
	input	[C_M0_AXI_DATA_WIDTH-1:0]		m0_axi_rdata,
	input	[1:0]							m0_axi_rresp,
	input									m0_axi_rlast,
	input	[C_M0_AXI_RUSER_WIDTH-1:0]		m0_axi_ruser,
	input									m0_axi_rvalid,
	output 									m0_axi_rready,


	input									pcie_perst_n,

	output									dev_irq_assert,

//PCIe Integrated Block Interface
	input									user_clk_out,
	input									user_reset_out,
	input									user_lnk_up,

  //----------------------------------------------------------------------------------------------------------------//
  //  AXI Interface                                                                                                 //
  //----------------------------------------------------------------------------------------------------------------//

  output                                     s_axis_rq_tlast,
  output              [C_PCIE_DATA_WIDTH-1:0]     s_axis_rq_tdata,
  output       [AXI4_RQ_TUSER_WIDTH-1:0]     s_axis_rq_tuser,
  output                [KEEP_WIDTH-1:0]     s_axis_rq_tkeep,
  input                                      s_axis_rq_tready,
  output                                     s_axis_rq_tvalid,

  input               [C_PCIE_DATA_WIDTH-1:0]     m_axis_rc_tdata,
  input        [AXI4_RC_TUSER_WIDTH-1:0]     m_axis_rc_tuser,
  input                                      m_axis_rc_tlast,
  input                 [KEEP_WIDTH-1:0]     m_axis_rc_tkeep,
  input                                      m_axis_rc_tvalid,
  output                                     m_axis_rc_tready,

  input               [C_PCIE_DATA_WIDTH-1:0]     m_axis_cq_tdata,
  input        [AXI4_CQ_TUSER_WIDTH-1:0]     m_axis_cq_tuser,
  input                                      m_axis_cq_tlast,
  input                 [KEEP_WIDTH-1:0]     m_axis_cq_tkeep,
  input                                      m_axis_cq_tvalid,
  output                                     m_axis_cq_tready,

  output              [C_PCIE_DATA_WIDTH-1:0]     s_axis_cc_tdata,
  output       [AXI4_CC_TUSER_WIDTH-1:0]     s_axis_cc_tuser,
  output                                     s_axis_cc_tlast,
  output                [KEEP_WIDTH-1:0]     s_axis_cc_tkeep,
  output                                     s_axis_cc_tvalid,
  input                                      s_axis_cc_tready,


  input                            [1:0]     pcie_tfc_nph_av,
  input                            [1:0]     pcie_tfc_npd_av,
  //----------------------------------------------------------------------------------------------------------------//
  //  Configuration (CFG) Interface                                                                                 //
  //----------------------------------------------------------------------------------------------------------------//


  input                            [3:0]     pcie_rq_seq_num,
  input                                      pcie_rq_seq_num_vld,
  input                            [5:0]     pcie_rq_tag,
  input                                      pcie_rq_tag_vld,
  output                                     pcie_cq_np_req,
  input                            [5:0]     pcie_cq_np_req_count,

  //----------------------------------------------------------------------------------------------------------------//
  // EP and RP                                                                                                      //
  //----------------------------------------------------------------------------------------------------------------//


  input                                      cfg_phy_link_down,
  input                            [2:0]     cfg_negotiated_width,
  input                            [1:0]     cfg_current_speed,
  input                            [1:0]     cfg_max_payload,
  input                            [2:0]     cfg_max_read_req,
  input                            [3:0]     cfg_function_status,
  input                           [11:0]     cfg_function_power_state,
  input                          [503:0]     cfg_vf_status,
  input                            [1:0]     cfg_link_power_state,

  // Error Reporting Interface
  input                                      cfg_err_cor_out,
  input                                      cfg_err_nonfatal_out,
  input                                      cfg_err_fatal_out,
  //input                                      cfg_local_error,

  input                            [5:0]     cfg_ltssm_state,
  input                                      cfg_rcb_status,
  input                            [1:0]     cfg_obff_enable,
  input                                      cfg_pl_status_change,

  // Management Interface
  output wire                     [9:0]     cfg_mgmt_addr,
  output wire                                cfg_mgmt_write,
  output wire                     [31:0]     cfg_mgmt_write_data,
  output wire                      [3:0]     cfg_mgmt_byte_enable,
  output wire                                cfg_mgmt_read,
  input                           [31:0]     cfg_mgmt_read_data,
  input                                      cfg_mgmt_read_write_done,
  input                                      cfg_msg_received,
  input                            [7:0]     cfg_msg_received_data,
  input                            [4:0]     cfg_msg_received_type,
  output                                     cfg_msg_transmit,
  output                           [2:0]     cfg_msg_transmit_type,
  output                          [31:0]     cfg_msg_transmit_data,
  input                                      cfg_msg_transmit_done,
  input                            [7:0]     cfg_fc_ph,
  input                           [11:0]     cfg_fc_pd,
  input                            [7:0]     cfg_fc_nph,
  input                           [11:0]     cfg_fc_npd,
  input                            [7:0]     cfg_fc_cplh,
  input                           [11:0]     cfg_fc_cpld,
  output                           [2:0]     cfg_fc_sel,

  output wire                     [63:0]     cfg_dsn,
  output                                     cfg_power_state_change_ack,
  input                                      cfg_power_state_change_interrupt,
  output wire                                cfg_err_cor_in,
  output wire                                cfg_err_uncor_in,

  input                            [1:0]     cfg_flr_in_process,
  output wire                      [1:0]     cfg_flr_done,
  input                            [251:0]   cfg_vf_flr_in_process,
  output wire                                cfg_vf_flr_done,
  output wire                      [7:0]     cfg_vf_flr_func_num,

  output wire                                cfg_link_training_enable,

  output wire                      [7:0]     cfg_ds_port_number,
  output wire                      [7:0]     cfg_ds_bus_number,
  output wire                      [4:0]     cfg_ds_device_number,
  output wire                      [2:0]     cfg_ds_function_number,
  //----------------------------------------------------------------------------------------------------------------//
  // EP Only                                                                                                        //
  //----------------------------------------------------------------------------------------------------------------//


  // Interrupt Interface Signals
  output                           [3:0]     cfg_interrupt_int,
  output wire                                cfg_interrupt_pending,
  input                                      cfg_interrupt_sent,

  input                                      cfg_interrupt_msi_enable,
  input                            [2:0]     cfg_interrupt_msi_mmenable,
  input                                      cfg_interrupt_msi_mask_update,
  input                           [31:0]     cfg_interrupt_msi_data,
  output wire                      [1:0]     cfg_interrupt_msi_select,
  output                          [31:0]     cfg_interrupt_msi_int,
  output wire                     [31:0]     cfg_interrupt_msi_pending_status,
  input                                      cfg_interrupt_msi_sent,
  input                                      cfg_interrupt_msi_fail,
  output wire                      [2:0]     cfg_interrupt_msi_attr,
  output wire                                cfg_interrupt_msi_tph_present,
  output wire                      [1:0]     cfg_interrupt_msi_tph_type,
  output wire                      [7:0]     cfg_interrupt_msi_tph_st_tag,
  output wire                      [7:0]     cfg_interrupt_msi_function_number,
  output wire                                cfg_interrupt_msi_pending_status_data_enable,

  input wire                                 cfg_interrupt_msix_enable,

// EP only
  input                                      cfg_hot_reset_in,
  output wire                                cfg_config_space_enable,
  output wire                                cfg_req_pm_transition_l23_ready,

// RP only
  output wire                                cfg_hot_reset_out,



	output									sys_rst_n,
	
	output	[3:0]							reset_count //1

);


wire										pcie_user_rst_n;

wire										w_pcie_user_logic_rst;

wire										w_pcie_link_up_sync;
wire	[5:0]								w_pl_ltssm_state_sync;
wire	[3:0]								w_cfg_command_sync;
wire	[2:0]								w_cfg_interrupt_mmenable_sync;
wire										w_cfg_interrupt_msienable_sync;
wire										w_cfg_interrupt_msixenable_sync;

wire										w_pcie_mreq_err_sync;
wire										w_pcie_cpld_err_sync;
wire										w_pcie_cpld_len_err_sync;

wire										w_nvme_cc_en_sync;
wire	[1:0]								w_nvme_cc_shn_sync;

wire	[1:0]								w_nvme_csts_shst;
wire										w_nvme_csts_rdy;

wire	[8:0]								w_sq_valid;
wire	[7:0]								w_io_sq1_size;
wire	[7:0]								w_io_sq2_size;
wire	[7:0]								w_io_sq3_size;
wire	[7:0]								w_io_sq4_size;
wire	[7:0]								w_io_sq5_size;
wire	[7:0]								w_io_sq6_size;
wire	[7:0]								w_io_sq7_size;
wire	[7:0]								w_io_sq8_size;
wire	[C_PCIE_ADDR_WIDTH-1:2]				w_io_sq1_bs_addr;
wire	[C_PCIE_ADDR_WIDTH-1:2]				w_io_sq2_bs_addr;
wire	[C_PCIE_ADDR_WIDTH-1:2]				w_io_sq3_bs_addr;
wire	[C_PCIE_ADDR_WIDTH-1:2]				w_io_sq4_bs_addr;
wire	[C_PCIE_ADDR_WIDTH-1:2]				w_io_sq5_bs_addr;
wire	[C_PCIE_ADDR_WIDTH-1:2]				w_io_sq6_bs_addr;
wire	[C_PCIE_ADDR_WIDTH-1:2]				w_io_sq7_bs_addr;
wire	[C_PCIE_ADDR_WIDTH-1:2]				w_io_sq8_bs_addr;
wire	[3:0]								w_io_sq1_cq_vec;
wire	[3:0]								w_io_sq2_cq_vec;
wire	[3:0]								w_io_sq3_cq_vec;
wire	[3:0]								w_io_sq4_cq_vec;
wire	[3:0]								w_io_sq5_cq_vec;
wire	[3:0]								w_io_sq6_cq_vec;
wire	[3:0]								w_io_sq7_cq_vec;
wire	[3:0]								w_io_sq8_cq_vec;

wire	[8:0]								w_cq_valid;
wire	[7:0]								w_io_cq1_size;
wire	[7:0]								w_io_cq2_size;
wire	[7:0]								w_io_cq3_size;
wire	[7:0]								w_io_cq4_size;
wire	[7:0]								w_io_cq5_size;
wire	[7:0]								w_io_cq6_size;
wire	[7:0]								w_io_cq7_size;
wire	[7:0]								w_io_cq8_size;
wire	[C_PCIE_ADDR_WIDTH-1:2]				w_io_cq1_bs_addr;
wire	[C_PCIE_ADDR_WIDTH-1:2]				w_io_cq2_bs_addr;
wire	[C_PCIE_ADDR_WIDTH-1:2]				w_io_cq3_bs_addr;
wire	[C_PCIE_ADDR_WIDTH-1:2]				w_io_cq4_bs_addr;
wire	[C_PCIE_ADDR_WIDTH-1:2]				w_io_cq5_bs_addr;
wire	[C_PCIE_ADDR_WIDTH-1:2]				w_io_cq6_bs_addr;
wire	[C_PCIE_ADDR_WIDTH-1:2]				w_io_cq7_bs_addr;
wire	[C_PCIE_ADDR_WIDTH-1:2]				w_io_cq8_bs_addr;
wire	[8:0]								w_io_cq_irq_en;
wire	[2:0]								w_io_cq1_iv;
wire	[2:0]								w_io_cq2_iv;
wire	[2:0]								w_io_cq3_iv;
wire	[2:0]								w_io_cq4_iv;
wire	[2:0]								w_io_cq5_iv;
wire	[2:0]								w_io_cq6_iv;
wire	[2:0]								w_io_cq7_iv;
wire	[2:0]								w_io_cq8_iv;


wire										w_nvme_cc_en;
wire	[1:0]								w_nvme_cc_shn;

wire										w_pcie_mreq_err;
wire										w_pcie_cpld_err;
wire										w_pcie_cpld_len_err;

wire	[1:0]								w_nvme_csts_shst_sync;
wire										w_nvme_csts_rdy_sync;

wire	[8:0]								w_sq_rst_n_sync;
wire	[8:0]								w_sq_valid_sync;
wire	[7:0]								w_io_sq1_size_sync;
wire	[7:0]								w_io_sq2_size_sync;
wire	[7:0]								w_io_sq3_size_sync;
wire	[7:0]								w_io_sq4_size_sync;
wire	[7:0]								w_io_sq5_size_sync;
wire	[7:0]								w_io_sq6_size_sync;
wire	[7:0]								w_io_sq7_size_sync;
wire	[7:0]								w_io_sq8_size_sync;
wire	[C_PCIE_ADDR_WIDTH-1:2]				w_io_sq1_bs_addr_sync;
wire	[C_PCIE_ADDR_WIDTH-1:2]				w_io_sq2_bs_addr_sync;
wire	[C_PCIE_ADDR_WIDTH-1:2]				w_io_sq3_bs_addr_sync;
wire	[C_PCIE_ADDR_WIDTH-1:2]				w_io_sq4_bs_addr_sync;
wire	[C_PCIE_ADDR_WIDTH-1:2]				w_io_sq5_bs_addr_sync;
wire	[C_PCIE_ADDR_WIDTH-1:2]				w_io_sq6_bs_addr_sync;
wire	[C_PCIE_ADDR_WIDTH-1:2]				w_io_sq7_bs_addr_sync;
wire	[C_PCIE_ADDR_WIDTH-1:2]				w_io_sq8_bs_addr_sync;
wire	[3:0]								w_io_sq1_cq_vec_sync;
wire	[3:0]								w_io_sq2_cq_vec_sync;
wire	[3:0]								w_io_sq3_cq_vec_sync;
wire	[3:0]								w_io_sq4_cq_vec_sync;
wire	[3:0]								w_io_sq5_cq_vec_sync;
wire	[3:0]								w_io_sq6_cq_vec_sync;
wire	[3:0]								w_io_sq7_cq_vec_sync;
wire	[3:0]								w_io_sq8_cq_vec_sync;

wire	[8:0]								w_cq_rst_n_sync;
wire	[8:0]								w_cq_valid_sync;
wire	[7:0]								w_io_cq1_size_sync;
wire	[7:0]								w_io_cq2_size_sync;
wire	[7:0]								w_io_cq3_size_sync;
wire	[7:0]								w_io_cq4_size_sync;
wire	[7:0]								w_io_cq5_size_sync;
wire	[7:0]								w_io_cq6_size_sync;
wire	[7:0]								w_io_cq7_size_sync;
wire	[7:0]								w_io_cq8_size_sync;
wire	[C_PCIE_ADDR_WIDTH-1:2]				w_io_cq1_bs_addr_sync;
wire	[C_PCIE_ADDR_WIDTH-1:2]				w_io_cq2_bs_addr_sync;
wire	[C_PCIE_ADDR_WIDTH-1:2]				w_io_cq3_bs_addr_sync;
wire	[C_PCIE_ADDR_WIDTH-1:2]				w_io_cq4_bs_addr_sync;
wire	[C_PCIE_ADDR_WIDTH-1:2]				w_io_cq5_bs_addr_sync;
wire	[C_PCIE_ADDR_WIDTH-1:2]				w_io_cq6_bs_addr_sync;
wire	[C_PCIE_ADDR_WIDTH-1:2]				w_io_cq7_bs_addr_sync;
wire	[C_PCIE_ADDR_WIDTH-1:2]				w_io_cq8_bs_addr_sync;
wire	[8:0]								w_io_cq_irq_en_sync;
wire	[2:0]								w_io_cq1_iv_sync;
wire	[2:0]								w_io_cq2_iv_sync;
wire	[2:0]								w_io_cq3_iv_sync;
wire	[2:0]								w_io_cq4_iv_sync;
wire	[2:0]								w_io_cq5_iv_sync;
wire	[2:0]								w_io_cq6_iv_sync;
wire	[2:0]								w_io_cq7_iv_sync;
wire	[2:0]								w_io_cq8_iv_sync;

wire	[(P_SLOT_TAG_WIDTH+2)+1:0]			w_hcmd_table_rd_addr; //slot_modified
wire	[31:0]								w_hcmd_table_rd_data;

wire										w_hcmd_sq_rd_en;
wire	[(P_SLOT_TAG_WIDTH+12)-1:0]			w_hcmd_sq_rd_data; //slot_modified
wire										w_hcmd_sq_empty_n;

wire										w_hcmd_cq_wr1_en;
wire	[(P_SLOT_TAG_WIDTH+28)-1:0]			w_hcmd_cq_wr1_data0; //slot_modified	
wire	[(P_SLOT_TAG_WIDTH+28)-1:0]			w_hcmd_cq_wr1_data1; //slot_modified
wire										w_hcmd_cq_wr1_rdy_n;

wire										w_dma_cmd_wr_en;
wire	[55:0]								w_dma_cmd_wr_data0; //modified
wire	[55:0]								w_dma_cmd_wr_data1; //modified
wire										w_dma_cmd_wr_rdy_n;

wire	[7:0]								w_dma_rx_direct_done_cnt;
wire	[7:0]								w_dma_tx_direct_done_cnt;
wire	[7:0]								w_dma_rx_done_cnt;
wire	[7:0]								w_dma_tx_done_cnt;

wire										w_pcie_rx_fifo_rd_en;
wire	[C_M0_AXI_DATA_WIDTH-1:0]			w_pcie_rx_fifo_rd_data;
wire										w_pcie_rx_fifo_free_en;
wire	[10:6]								w_pcie_rx_fifo_free_len; 
wire										w_pcie_rx_fifo_empty_n;

wire										w_pcie_tx_fifo_alloc_en;
wire	[10:6]								w_pcie_tx_fifo_alloc_len; 
wire										w_pcie_tx_fifo_wr_en;
wire	[C_M0_AXI_DATA_WIDTH-1:0]			w_pcie_tx_fifo_wr_data;
wire										w_pcie_tx_fifo_full_n;

wire										w_dma_rx_done_wr_en;
wire	[(P_SLOT_TAG_WIDTH+15)-1:0]			w_dma_rx_done_wr_data; //slot_modified
wire										w_dma_rx_done_wr_rdy_n;

wire										w_dev_rx_cmd_wr_en;
wire	[29:0]								w_dev_rx_cmd_wr_data;
wire										w_dev_rx_cmd_full_n;

wire										w_dev_tx_cmd_wr_en;
wire	[29:0]								w_dev_tx_cmd_wr_data;
wire										w_dev_tx_cmd_full_n;

wire   [3:0]                               w_reset_count;

  //----------------------------------------------------------------------------------------------------------------//
  // PCIe Block EP Tieoffs - Example PIO doesn't support the following outputs                                      //
  //----------------------------------------------------------------------------------------------------------------//
  assign cfg_mgmt_addr                       = 10'h0;                // Zero out CFG MGMT 19-bit address port
  assign cfg_mgmt_write                      = 1'b0;                 // Do not write CFG space
  assign cfg_mgmt_write_data                 = 32'h0;                // Zero out CFG MGMT input data bus
  assign cfg_mgmt_byte_enable                = 4'h0;                 // Zero out CFG MGMT byte enables
  assign cfg_mgmt_read                       = 1'b0;                 // Do not read CFG space
  assign cfg_dsn                             = {`PCI_EXP_EP_DSN_2, `PCI_EXP_EP_DSN_1};  // Assign the input DSN

  assign cfg_err_cor_in                      = 1'b0;                 // Never report Correctable Error
  assign cfg_err_uncor_in                    = 1'b0;                 // Never report UnCorrectable Error

  //assign cfg_flr_done                        = 1'b0;                 // FIXME : how to drive this?
  //assign cfg_vf_flr_done                     = 1'b0;                 // FIXME : how to drive this?

  assign cfg_link_training_enable            = 1'b1;                 // Always enable LTSSM to bring up the Link

  assign cfg_config_space_enable             = 1'b1;
  assign cfg_req_pm_transition_l23_ready     = 1'b0;

  assign cfg_hot_reset_out                   = 1'b0;
  assign cfg_ds_port_number                  = 8'h0;
  assign cfg_ds_bus_number                   = 8'h0;
  assign cfg_ds_device_number                = 5'h0;
  assign cfg_ds_function_number              = 3'h0;
  assign cfg_interrupt_msi_select            = 2'b00;

  assign cfg_interrupt_msi_attr              = 3'h0;
  assign cfg_interrupt_msi_tph_present       = 1'b0;
  assign cfg_interrupt_msi_tph_type          = 2'h0;
  assign cfg_interrupt_msi_tph_st_tag        = 8'h0;
  assign cfg_interrupt_msi_function_number   = 8'h0;

  // Funtion level reset register.
  reg [1:0]     cfg_flr_done_reg0;
  reg [1:0]     cfg_flr_done_reg1;
  reg [255:0]   cfg_vf_flr_in_process_reg0;
  reg           cfg_vf_flr_done_reg1;
  reg [7:0]     cfg_vf_flr_func_num_reg;
  reg [7:0]     cfg_vf_flr_func_num_reg1;
  // Generate the function level reset with a two cycle latency
  always @(posedge user_clk_out)
  begin 
  	if (pcie_user_rst_n) begin 
		cfg_flr_done_reg0       <= 2'b0;
	    cfg_flr_done_reg1       <= 2'b0;
        cfg_vf_flr_in_process_reg0 <= 252'b0;
        cfg_vf_flr_done_reg1    <= 1'b0;
        cfg_vf_flr_func_num_reg1 <= 8'b0; 
      end 
    else begin 
    	// PF function level reset can be looped back directly. 
		cfg_flr_done_reg0       <= cfg_flr_in_process;
		cfg_flr_done_reg1       <= cfg_flr_done_reg0;
        // VF function level reset must index into a one-hot array. 
        cfg_vf_flr_in_process_reg0 <= {4'b0, cfg_vf_flr_in_process}; 
        cfg_vf_flr_done_reg1    <= cfg_vf_flr_in_process_reg0[cfg_vf_flr_func_num_reg]; 
		cfg_vf_flr_func_num_reg1 <= cfg_vf_flr_func_num_reg; 
	end 
  end

  // assign function level reset outputs.
  assign cfg_flr_done[0] = ~cfg_flr_done_reg1[0] && cfg_flr_done_reg0[0]; 
  assign cfg_flr_done[1] = ~cfg_flr_done_reg1[1] && cfg_flr_done_reg0[1]; 
  assign cfg_vf_flr_done = cfg_vf_flr_done_reg1;
  assign cfg_vf_flr_func_num = cfg_vf_flr_func_num_reg1;

  // Counter to cycle through the virtual fucntion function level resets. 
  // This counter will just loop over the virtual functions. Ths should be 
  // repliced by user logic to perform the actual function level reset as 
  // needed.
  always @(posedge user_clk_out) begin 
    if(pcie_user_rst_n) begin 
      cfg_vf_flr_func_num_reg <= 8'd0; 
    end else begin 
	  cfg_vf_flr_func_num_reg <= cfg_vf_flr_func_num_reg + 1'b1; 
	end
  end 

sys_rst
sys_rst_inst0(
	.cpu_bus_clk							(s0_axi_aclk),
	.cpu_bus_rst_n							(s0_axi_aresetn),

	.pcie_perst_n							(pcie_perst_n),
	.user_reset_out							(user_reset_out),
	.pcie_pl_hot_rst						(cfg_hot_reset_in),
	.pcie_user_logic_rst					(w_pcie_user_logic_rst),

	.pcie_sys_rst_n							(sys_rst_n),
	.pcie_user_rst_n						(pcie_user_rst_n)

);

s_axi_top # (
	.P_SLOT_TAG_WIDTH						(P_SLOT_TAG_WIDTH), //slot_modified
	.C_S0_AXI_ADDR_WIDTH					(C_S0_AXI_ADDR_WIDTH),
	.C_S0_AXI_DATA_WIDTH					(C_S0_AXI_DATA_WIDTH),
	.C_S0_AXI_BASEADDR						(C_S0_AXI_BASEADDR),
	.C_S0_AXI_HIGHADDR						(C_S0_AXI_HIGHADDR),

	.C_M0_AXI_ADDR_WIDTH					(C_M0_AXI_ADDR_WIDTH),
	.C_M0_AXI_DATA_WIDTH					(C_M0_AXI_DATA_WIDTH),
	.C_M0_AXI_ID_WIDTH						(C_M0_AXI_ID_WIDTH),
	.C_M0_AXI_AWUSER_WIDTH					(C_M0_AXI_AWUSER_WIDTH),
	.C_M0_AXI_WUSER_WIDTH					(C_M0_AXI_WUSER_WIDTH),
	.C_M0_AXI_BUSER_WIDTH					(C_M0_AXI_BUSER_WIDTH),
	.C_M0_AXI_ARUSER_WIDTH					(C_M0_AXI_ARUSER_WIDTH),
	.C_M0_AXI_RUSER_WIDTH					(C_M0_AXI_RUSER_WIDTH)
)
s_axi_top_inst0 (

////////////////////////////////////////////////////////////////
//AXI4-lite slave interface signals
	.s0_axi_aclk							(s0_axi_aclk),
	.s0_axi_aresetn							(s0_axi_aresetn),

//Write address channel
	.s0_axi_awaddr							(s0_axi_awaddr),
	.s0_axi_awready							(s0_axi_awready),
	.s0_axi_awvalid							(s0_axi_awvalid),
	.s0_axi_awprot							(s0_axi_awprot),

//Write data channel
	.s0_axi_wvalid							(s0_axi_wvalid),
	.s0_axi_wready							(s0_axi_wready),
	.s0_axi_wdata							(s0_axi_wdata),
	.s0_axi_wstrb							(s0_axi_wstrb),

//Write response channel
	.s0_axi_bvalid							(s0_axi_bvalid),
	.s0_axi_bready							(s0_axi_bready),
	.s0_axi_bresp							(s0_axi_bresp),

//Read address channel
	.s0_axi_arvalid							(s0_axi_arvalid),
	.s0_axi_arready							(s0_axi_arready),
	.s0_axi_araddr							(s0_axi_araddr),
	.s0_axi_arprot							(s0_axi_arprot),

//Read data channel
	.s0_axi_rvalid							(s0_axi_rvalid),
	.s0_axi_rready							(s0_axi_rready),
	.s0_axi_rdata							(s0_axi_rdata),
	.s0_axi_rresp							(s0_axi_rresp),

	.pcie_mreq_err							(w_pcie_mreq_err_sync),
	.pcie_cpld_err							(w_pcie_cpld_err_sync),
	.pcie_cpld_len_err						(w_pcie_cpld_len_err_sync),

	.dev_irq_assert							(dev_irq_assert),

	.pcie_user_logic_rst					(w_pcie_user_logic_rst),
	.nvme_cc_en								(w_nvme_cc_en_sync),
	.nvme_cc_shn							(w_nvme_cc_shn_sync),

	.nvme_csts_shst							(w_nvme_csts_shst),
	.nvme_csts_rdy							(w_nvme_csts_rdy),

	.sq_valid								(w_sq_valid),
	.io_sq1_size							(w_io_sq1_size),
	.io_sq2_size							(w_io_sq2_size),
	.io_sq3_size							(w_io_sq3_size),
	.io_sq4_size							(w_io_sq4_size),
	.io_sq5_size							(w_io_sq5_size),
	.io_sq6_size							(w_io_sq6_size),
	.io_sq7_size							(w_io_sq7_size),
	.io_sq8_size							(w_io_sq8_size),
	.io_sq1_bs_addr							(w_io_sq1_bs_addr),
	.io_sq2_bs_addr							(w_io_sq2_bs_addr),
	.io_sq3_bs_addr							(w_io_sq3_bs_addr),
	.io_sq4_bs_addr							(w_io_sq4_bs_addr),
	.io_sq5_bs_addr							(w_io_sq5_bs_addr),
	.io_sq6_bs_addr							(w_io_sq6_bs_addr),
	.io_sq7_bs_addr							(w_io_sq7_bs_addr),
	.io_sq8_bs_addr							(w_io_sq8_bs_addr),
	.io_sq1_cq_vec							(w_io_sq1_cq_vec),
	.io_sq2_cq_vec							(w_io_sq2_cq_vec),
	.io_sq3_cq_vec							(w_io_sq3_cq_vec),
	.io_sq4_cq_vec							(w_io_sq4_cq_vec),
	.io_sq5_cq_vec							(w_io_sq5_cq_vec),
	.io_sq6_cq_vec							(w_io_sq6_cq_vec),
	.io_sq7_cq_vec							(w_io_sq7_cq_vec),
	.io_sq8_cq_vec							(w_io_sq8_cq_vec),

	.cq_valid								(w_cq_valid),
	.io_cq1_size							(w_io_cq1_size),
	.io_cq2_size							(w_io_cq2_size),
	.io_cq3_size							(w_io_cq3_size),
	.io_cq4_size							(w_io_cq4_size),
	.io_cq5_size							(w_io_cq5_size),
	.io_cq6_size							(w_io_cq6_size),
	.io_cq7_size							(w_io_cq7_size),
	.io_cq8_size							(w_io_cq8_size),
	.io_cq1_bs_addr							(w_io_cq1_bs_addr),
	.io_cq2_bs_addr							(w_io_cq2_bs_addr),
	.io_cq3_bs_addr							(w_io_cq3_bs_addr),
	.io_cq4_bs_addr							(w_io_cq4_bs_addr),
	.io_cq5_bs_addr							(w_io_cq5_bs_addr),
	.io_cq6_bs_addr							(w_io_cq6_bs_addr),
	.io_cq7_bs_addr							(w_io_cq7_bs_addr),
	.io_cq8_bs_addr							(w_io_cq8_bs_addr),
	.io_cq_irq_en							(w_io_cq_irq_en),
	.io_cq1_iv								(w_io_cq1_iv),
	.io_cq2_iv								(w_io_cq2_iv),
	.io_cq3_iv								(w_io_cq3_iv),
	.io_cq4_iv								(w_io_cq4_iv),
	.io_cq5_iv								(w_io_cq5_iv),
	.io_cq6_iv								(w_io_cq6_iv),
	.io_cq7_iv								(w_io_cq7_iv),
	.io_cq8_iv								(w_io_cq8_iv),

	.hcmd_sq_rd_en							(w_hcmd_sq_rd_en),
	.hcmd_sq_rd_data						(w_hcmd_sq_rd_data),
	.hcmd_sq_empty_n						(w_hcmd_sq_empty_n),

	.hcmd_table_rd_addr						(w_hcmd_table_rd_addr),
	.hcmd_table_rd_data						(w_hcmd_table_rd_data),

	.hcmd_cq_wr1_en							(w_hcmd_cq_wr1_en),
	.hcmd_cq_wr1_data0						(w_hcmd_cq_wr1_data0),
	.hcmd_cq_wr1_data1						(w_hcmd_cq_wr1_data1),
	.hcmd_cq_wr1_rdy_n						(w_hcmd_cq_wr1_rdy_n),

	.dma_cmd_wr_en							(w_dma_cmd_wr_en),
	.dma_cmd_wr_data0						(w_dma_cmd_wr_data0),
	.dma_cmd_wr_data1						(w_dma_cmd_wr_data1),
	.dma_cmd_wr_rdy_n						(w_dma_cmd_wr_rdy_n),

////////////////////////////////////////////////////////////////
//AXI4 master interface signals
	.m0_axi_aclk							(m0_axi_aclk),
	.m0_axi_aresetn							(m0_axi_aresetn),

// Write address channel
	.m0_axi_awid							(m0_axi_awid),
	.m0_axi_awaddr							(m0_axi_awaddr),
	.m0_axi_awlen							(m0_axi_awlen),
	.m0_axi_awsize							(m0_axi_awsize),
	.m0_axi_awburst							(m0_axi_awburst),
	.m0_axi_awlock							(m0_axi_awlock),
	.m0_axi_awcache							(m0_axi_awcache),
	.m0_axi_awprot							(m0_axi_awprot),
	.m0_axi_awregion						(m0_axi_awregion),
	.m0_axi_awqos							(m0_axi_awqos),
	.m0_axi_awuser							(m0_axi_awuser),
	.m0_axi_awvalid							(m0_axi_awvalid),
	.m0_axi_awready							(m0_axi_awready),

// Write data channel
	.m0_axi_wid								(m0_axi_wid),
	.m0_axi_wdata							(m0_axi_wdata),
	.m0_axi_wstrb							(m0_axi_wstrb),
	.m0_axi_wlast							(m0_axi_wlast),
	.m0_axi_wuser							(m0_axi_wuser),
	.m0_axi_wvalid							(m0_axi_wvalid),
	.m0_axi_wready							(m0_axi_wready),

// Write response channel
	.m0_axi_bid								(m0_axi_bid),
	.m0_axi_bresp							(m0_axi_bresp),
	.m0_axi_bvalid							(m0_axi_bvalid),
	.m0_axi_buser							(m0_axi_buser),
	.m0_axi_bready							(m0_axi_bready),

// Read address channel
	.m0_axi_arid							(m0_axi_arid),
	.m0_axi_araddr							(m0_axi_araddr),
	.m0_axi_arlen							(m0_axi_arlen),
	.m0_axi_arsize							(m0_axi_arsize),
	.m0_axi_arburst							(m0_axi_arburst),
	.m0_axi_arlock							(m0_axi_arlock),
	.m0_axi_arcache							(m0_axi_arcache),
	.m0_axi_arprot							(m0_axi_arprot),
	.m0_axi_arregion						(m0_axi_arregion),
	.m0_axi_arqos							(m0_axi_arqos),
	.m0_axi_aruser							(m0_axi_aruser),
	.m0_axi_arvalid							(m0_axi_arvalid),
	.m0_axi_arready							(m0_axi_arready),

// Read data channel
	.m0_axi_rid								(m0_axi_rid),
	.m0_axi_rdata							(m0_axi_rdata),
	.m0_axi_rresp							(m0_axi_rresp),
	.m0_axi_rlast							(m0_axi_rlast),
	.m0_axi_ruser							(m0_axi_ruser),
	.m0_axi_rvalid							(m0_axi_rvalid),
	.m0_axi_rready							(m0_axi_rready),

	.pcie_rx_fifo_rd_en						(w_pcie_rx_fifo_rd_en),
	.pcie_rx_fifo_rd_data					(w_pcie_rx_fifo_rd_data),
	.pcie_rx_fifo_free_en					(w_pcie_rx_fifo_free_en),
	.pcie_rx_fifo_free_len					(w_pcie_rx_fifo_free_len),
	.pcie_rx_fifo_empty_n					(w_pcie_rx_fifo_empty_n),

	.pcie_tx_fifo_alloc_en					(w_pcie_tx_fifo_alloc_en),
	.pcie_tx_fifo_alloc_len					(w_pcie_tx_fifo_alloc_len),
	.pcie_tx_fifo_wr_en						(w_pcie_tx_fifo_wr_en),
	.pcie_tx_fifo_wr_data					(w_pcie_tx_fifo_wr_data),
	.pcie_tx_fifo_full_n					(w_pcie_tx_fifo_full_n),

	.dma_rx_done_wr_en						(w_dma_rx_done_wr_en),
	.dma_rx_done_wr_data					(w_dma_rx_done_wr_data),
	.dma_rx_done_wr_rdy_n					(w_dma_rx_done_wr_rdy_n),

	.pcie_user_clk							(user_clk_out),
	.pcie_user_rst_n						(pcie_user_rst_n),

	.dev_rx_cmd_wr_en						(w_dev_rx_cmd_wr_en),
	.dev_rx_cmd_wr_data						(w_dev_rx_cmd_wr_data),
	.dev_rx_cmd_full_n						(w_dev_rx_cmd_full_n),

	.dev_tx_cmd_wr_en						(w_dev_tx_cmd_wr_en),
	.dev_tx_cmd_wr_data						(w_dev_tx_cmd_wr_data),
	.dev_tx_cmd_full_n						(w_dev_tx_cmd_full_n),

	.dma_rx_direct_done_cnt					(w_dma_rx_direct_done_cnt),
	.dma_tx_direct_done_cnt					(w_dma_tx_direct_done_cnt),
	.dma_rx_done_cnt						(w_dma_rx_done_cnt),
	.dma_tx_done_cnt						(w_dma_tx_done_cnt),

	.pcie_link_up							(w_pcie_link_up_sync),
	.pl_ltssm_state							(w_pl_ltssm_state_sync),
	.cfg_command							(w_cfg_command_sync),

	.cfg_interrupt_mmenable					(w_cfg_interrupt_mmenable_sync),
	.cfg_interrupt_msienable				(w_cfg_interrupt_msienable_sync),
	.cfg_interrupt_msixenable				(w_cfg_interrupt_msixenable_sync),
	.reset_count                            (w_reset_count)
);


reg_cpu_pcie_sync
reg_cpu_pcie_sync_isnt0
(
	.cpu_bus_clk						(s0_axi_aclk),

	.nvme_csts_shst						(w_nvme_csts_shst),
	.nvme_csts_rdy						(w_nvme_csts_rdy),

	.sq_valid							(w_sq_valid),
	.io_sq1_size						(w_io_sq1_size),
	.io_sq2_size						(w_io_sq2_size),
	.io_sq3_size						(w_io_sq3_size),
	.io_sq4_size						(w_io_sq4_size),
	.io_sq5_size						(w_io_sq5_size),
	.io_sq6_size						(w_io_sq6_size),
	.io_sq7_size						(w_io_sq7_size),
	.io_sq8_size						(w_io_sq8_size),
	.io_sq1_bs_addr						(w_io_sq1_bs_addr),
	.io_sq2_bs_addr						(w_io_sq2_bs_addr),
	.io_sq3_bs_addr						(w_io_sq3_bs_addr),
	.io_sq4_bs_addr						(w_io_sq4_bs_addr),
	.io_sq5_bs_addr						(w_io_sq5_bs_addr),
	.io_sq6_bs_addr						(w_io_sq6_bs_addr),
	.io_sq7_bs_addr						(w_io_sq7_bs_addr),
	.io_sq8_bs_addr						(w_io_sq8_bs_addr),
	.io_sq1_cq_vec						(w_io_sq1_cq_vec),
	.io_sq2_cq_vec						(w_io_sq2_cq_vec),
	.io_sq3_cq_vec						(w_io_sq3_cq_vec),
	.io_sq4_cq_vec						(w_io_sq4_cq_vec),
	.io_sq5_cq_vec						(w_io_sq5_cq_vec),
	.io_sq6_cq_vec						(w_io_sq6_cq_vec),
	.io_sq7_cq_vec						(w_io_sq7_cq_vec),
	.io_sq8_cq_vec						(w_io_sq8_cq_vec),

	.cq_valid							(w_cq_valid),
	.io_cq1_size						(w_io_cq1_size),
	.io_cq2_size						(w_io_cq2_size),
	.io_cq3_size						(w_io_cq3_size),
	.io_cq4_size						(w_io_cq4_size),
	.io_cq5_size						(w_io_cq5_size),
	.io_cq6_size						(w_io_cq6_size),
	.io_cq7_size						(w_io_cq7_size),
	.io_cq8_size						(w_io_cq8_size),
	.io_cq1_bs_addr						(w_io_cq1_bs_addr),
	.io_cq2_bs_addr						(w_io_cq2_bs_addr),
	.io_cq3_bs_addr						(w_io_cq3_bs_addr),
	.io_cq4_bs_addr						(w_io_cq4_bs_addr),
	.io_cq5_bs_addr						(w_io_cq5_bs_addr),
	.io_cq6_bs_addr						(w_io_cq6_bs_addr),
	.io_cq7_bs_addr						(w_io_cq7_bs_addr),
	.io_cq8_bs_addr						(w_io_cq8_bs_addr),
	.io_cq_irq_en						(w_io_cq_irq_en),
	.io_cq1_iv							(w_io_cq1_iv),
	.io_cq2_iv							(w_io_cq2_iv),
	.io_cq3_iv							(w_io_cq3_iv),
	.io_cq4_iv							(w_io_cq4_iv),
	.io_cq5_iv							(w_io_cq5_iv),
	.io_cq6_iv							(w_io_cq6_iv),
	.io_cq7_iv							(w_io_cq7_iv),
	.io_cq8_iv							(w_io_cq8_iv),

	.pcie_link_up_sync					(w_pcie_link_up_sync),
	.pl_ltssm_state_sync				(w_pl_ltssm_state_sync),
	.cfg_command_sync					(w_cfg_command_sync),
	.cfg_interrupt_mmenable_sync		(w_cfg_interrupt_mmenable_sync),
	.cfg_interrupt_msienable_sync		(w_cfg_interrupt_msienable_sync),
	.cfg_interrupt_msixenable_sync		(w_cfg_interrupt_msixenable_sync),

	.pcie_mreq_err_sync					(w_pcie_mreq_err_sync),
	.pcie_cpld_err_sync					(w_pcie_cpld_err_sync),
	.pcie_cpld_len_err_sync				(w_pcie_cpld_len_err_sync),

	.nvme_cc_en_sync					(w_nvme_cc_en_sync),
	.nvme_cc_shn_sync					(w_nvme_cc_shn_sync),

	.pcie_user_clk						(user_clk_out),

	.pcie_link_up						(user_lnk_up),
	.pl_ltssm_state						(cfg_ltssm_state),
	.cfg_command						(cfg_function_status),
	.cfg_interrupt_mmenable				(cfg_interrupt_msi_mmenable),
	.cfg_interrupt_msienable			(cfg_interrupt_msi_enable),
	.cfg_interrupt_msixenable			(cfg_interrupt_msix_enable),

	.pcie_mreq_err						(w_pcie_mreq_err),
	.pcie_cpld_err						(w_pcie_cpld_err),
	.pcie_cpld_len_err					(w_pcie_cpld_len_err),

	.nvme_cc_en							(w_nvme_cc_en),
	.nvme_cc_shn						(w_nvme_cc_shn),

	.nvme_csts_shst_sync				(w_nvme_csts_shst_sync),
	.nvme_csts_rdy_sync					(w_nvme_csts_rdy_sync),

	.sq_rst_n_sync						(w_sq_rst_n_sync),
	.sq_valid_sync						(w_sq_valid_sync),
	.io_sq1_size_sync					(w_io_sq1_size_sync),
	.io_sq2_size_sync					(w_io_sq2_size_sync),
	.io_sq3_size_sync					(w_io_sq3_size_sync),
	.io_sq4_size_sync					(w_io_sq4_size_sync),
	.io_sq5_size_sync					(w_io_sq5_size_sync),
	.io_sq6_size_sync					(w_io_sq6_size_sync),
	.io_sq7_size_sync					(w_io_sq7_size_sync),
	.io_sq8_size_sync					(w_io_sq8_size_sync),
	.io_sq1_bs_addr_sync				(w_io_sq1_bs_addr_sync),
	.io_sq2_bs_addr_sync				(w_io_sq2_bs_addr_sync),
	.io_sq3_bs_addr_sync				(w_io_sq3_bs_addr_sync),
	.io_sq4_bs_addr_sync				(w_io_sq4_bs_addr_sync),
	.io_sq5_bs_addr_sync				(w_io_sq5_bs_addr_sync),
	.io_sq6_bs_addr_sync				(w_io_sq6_bs_addr_sync),
	.io_sq7_bs_addr_sync				(w_io_sq7_bs_addr_sync),
	.io_sq8_bs_addr_sync				(w_io_sq8_bs_addr_sync),
	.io_sq1_cq_vec_sync					(w_io_sq1_cq_vec_sync),
	.io_sq2_cq_vec_sync					(w_io_sq2_cq_vec_sync),
	.io_sq3_cq_vec_sync					(w_io_sq3_cq_vec_sync),
	.io_sq4_cq_vec_sync					(w_io_sq4_cq_vec_sync),
	.io_sq5_cq_vec_sync					(w_io_sq5_cq_vec_sync),
	.io_sq6_cq_vec_sync					(w_io_sq6_cq_vec_sync),
	.io_sq7_cq_vec_sync					(w_io_sq7_cq_vec_sync),
	.io_sq8_cq_vec_sync					(w_io_sq8_cq_vec_sync),

	.cq_rst_n_sync						(w_cq_rst_n_sync),
	.cq_valid_sync						(w_cq_valid_sync),
	.io_cq1_size_sync					(w_io_cq1_size_sync),
	.io_cq2_size_sync					(w_io_cq2_size_sync),
	.io_cq3_size_sync					(w_io_cq3_size_sync),
	.io_cq4_size_sync					(w_io_cq4_size_sync),
	.io_cq5_size_sync					(w_io_cq5_size_sync),
	.io_cq6_size_sync					(w_io_cq6_size_sync),
	.io_cq7_size_sync					(w_io_cq7_size_sync),
	.io_cq8_size_sync					(w_io_cq8_size_sync),
	.io_cq1_bs_addr_sync				(w_io_cq1_bs_addr_sync),
	.io_cq2_bs_addr_sync				(w_io_cq2_bs_addr_sync),
	.io_cq3_bs_addr_sync				(w_io_cq3_bs_addr_sync),
	.io_cq4_bs_addr_sync				(w_io_cq4_bs_addr_sync),
	.io_cq5_bs_addr_sync				(w_io_cq5_bs_addr_sync),
	.io_cq6_bs_addr_sync				(w_io_cq6_bs_addr_sync),
	.io_cq7_bs_addr_sync				(w_io_cq7_bs_addr_sync),
	.io_cq8_bs_addr_sync				(w_io_cq8_bs_addr_sync),
	.io_cq_irq_en_sync					(w_io_cq_irq_en_sync),
	.io_cq1_iv_sync						(w_io_cq1_iv_sync),
	.io_cq2_iv_sync						(w_io_cq2_iv_sync),
	.io_cq3_iv_sync						(w_io_cq3_iv_sync),
	.io_cq4_iv_sync						(w_io_cq4_iv_sync),
	.io_cq5_iv_sync						(w_io_cq5_iv_sync),
	.io_cq6_iv_sync						(w_io_cq6_iv_sync),
	.io_cq7_iv_sync						(w_io_cq7_iv_sync),
	.io_cq8_iv_sync						(w_io_cq8_iv_sync),
	
	.reset_count                        (w_reset_count),	
    .reset_count_sync                   (reset_count)
);


nvme_pcie # (
	.P_SLOT_TAG_WIDTH						(P_SLOT_TAG_WIDTH), //slot_modified
	.P_SLOT_WIDTH							(P_SLOT_WIDTH), //slot_modified
	.C_PCIE_DATA_WIDTH						(C_PCIE_DATA_WIDTH)
)
nvme_pcie_inst0(
//PCIe user clock
	.pcie_user_clk							(user_clk_out),
	.pcie_user_rst_n						(pcie_user_rst_n),

	.dev_rx_cmd_wr_en						(w_dev_rx_cmd_wr_en),
	.dev_rx_cmd_wr_data						(w_dev_rx_cmd_wr_data),
	.dev_rx_cmd_full_n						(w_dev_rx_cmd_full_n),

	.dev_tx_cmd_wr_en						(w_dev_tx_cmd_wr_en),
	.dev_tx_cmd_wr_data						(w_dev_tx_cmd_wr_data),
	.dev_tx_cmd_full_n						(w_dev_tx_cmd_full_n),

	.cpu_bus_clk							(s0_axi_aclk),
	.cpu_bus_rst_n							(s0_axi_aresetn),

	.nvme_cc_en								(w_nvme_cc_en),
	.nvme_cc_shn							(w_nvme_cc_shn),

	.nvme_csts_shst							(w_nvme_csts_shst_sync),
	.nvme_csts_rdy							(w_nvme_csts_rdy_sync),

	.sq_rst_n								(w_sq_rst_n_sync),
	.sq_valid								(w_sq_valid_sync),
	.io_sq1_size							(w_io_sq1_size_sync),
	.io_sq2_size							(w_io_sq2_size_sync),
	.io_sq3_size							(w_io_sq3_size_sync),
	.io_sq4_size							(w_io_sq4_size_sync),
	.io_sq5_size							(w_io_sq5_size_sync),
	.io_sq6_size							(w_io_sq6_size_sync),
	.io_sq7_size							(w_io_sq7_size_sync),
	.io_sq8_size							(w_io_sq8_size_sync),
	.io_sq1_bs_addr							(w_io_sq1_bs_addr_sync),
	.io_sq2_bs_addr							(w_io_sq2_bs_addr_sync),
	.io_sq3_bs_addr							(w_io_sq3_bs_addr_sync),
	.io_sq4_bs_addr							(w_io_sq4_bs_addr_sync),
	.io_sq5_bs_addr							(w_io_sq5_bs_addr_sync),
	.io_sq6_bs_addr							(w_io_sq6_bs_addr_sync),
	.io_sq7_bs_addr							(w_io_sq7_bs_addr_sync),
	.io_sq8_bs_addr							(w_io_sq8_bs_addr_sync),
	.io_sq1_cq_vec							(w_io_sq1_cq_vec_sync),
	.io_sq2_cq_vec							(w_io_sq2_cq_vec_sync),
	.io_sq3_cq_vec							(w_io_sq3_cq_vec_sync),
	.io_sq4_cq_vec							(w_io_sq4_cq_vec_sync),
	.io_sq5_cq_vec							(w_io_sq5_cq_vec_sync),
	.io_sq6_cq_vec							(w_io_sq6_cq_vec_sync),
	.io_sq7_cq_vec							(w_io_sq7_cq_vec_sync),
	.io_sq8_cq_vec							(w_io_sq8_cq_vec_sync),

	.cq_rst_n								(w_cq_rst_n_sync),
	.cq_valid								(w_cq_valid_sync),
	.io_cq1_size							(w_io_cq1_size_sync),
	.io_cq2_size							(w_io_cq2_size_sync),
	.io_cq3_size							(w_io_cq3_size_sync),
	.io_cq4_size							(w_io_cq4_size_sync),
	.io_cq5_size							(w_io_cq5_size_sync),
	.io_cq6_size							(w_io_cq6_size_sync),
	.io_cq7_size							(w_io_cq7_size_sync),
	.io_cq8_size							(w_io_cq8_size_sync),
	.io_cq1_bs_addr							(w_io_cq1_bs_addr_sync),
	.io_cq2_bs_addr							(w_io_cq2_bs_addr_sync),
	.io_cq3_bs_addr							(w_io_cq3_bs_addr_sync),
	.io_cq4_bs_addr							(w_io_cq4_bs_addr_sync),
	.io_cq5_bs_addr							(w_io_cq5_bs_addr_sync),
	.io_cq6_bs_addr							(w_io_cq6_bs_addr_sync),
	.io_cq7_bs_addr							(w_io_cq7_bs_addr_sync),
	.io_cq8_bs_addr							(w_io_cq8_bs_addr_sync),
	.io_cq_irq_en							(w_io_cq_irq_en_sync),
	.io_cq1_iv								(w_io_cq1_iv_sync),
	.io_cq2_iv								(w_io_cq2_iv_sync),
	.io_cq3_iv								(w_io_cq3_iv_sync),
	.io_cq4_iv								(w_io_cq4_iv_sync),
	.io_cq5_iv								(w_io_cq5_iv_sync),
	.io_cq6_iv								(w_io_cq6_iv_sync),
	.io_cq7_iv								(w_io_cq7_iv_sync),
	.io_cq8_iv								(w_io_cq8_iv_sync),

	.hcmd_sq_rd_en							(w_hcmd_sq_rd_en),
	.hcmd_sq_rd_data						(w_hcmd_sq_rd_data),
	.hcmd_sq_empty_n						(w_hcmd_sq_empty_n),

	.hcmd_table_rd_addr						(w_hcmd_table_rd_addr),
	.hcmd_table_rd_data						(w_hcmd_table_rd_data),

	.hcmd_cq_wr1_en							(w_hcmd_cq_wr1_en),
	.hcmd_cq_wr1_data0						(w_hcmd_cq_wr1_data0),
	.hcmd_cq_wr1_data1						(w_hcmd_cq_wr1_data1),
	.hcmd_cq_wr1_rdy_n						(w_hcmd_cq_wr1_rdy_n),

	.dma_cmd_wr_en							(w_dma_cmd_wr_en),
	.dma_cmd_wr_data0						(w_dma_cmd_wr_data0),
	.dma_cmd_wr_data1						(w_dma_cmd_wr_data1),
	.dma_cmd_wr_rdy_n						(w_dma_cmd_wr_rdy_n),

	.dma_rx_direct_done_cnt					(w_dma_rx_direct_done_cnt),
	.dma_tx_direct_done_cnt					(w_dma_tx_direct_done_cnt),
	.dma_rx_done_cnt						(w_dma_rx_done_cnt),
	.dma_tx_done_cnt						(w_dma_tx_done_cnt),

	.dma_bus_clk							(m0_axi_aclk),
	.dma_bus_rst_n							(m0_axi_aresetn),

	.pcie_rx_fifo_rd_en						(w_pcie_rx_fifo_rd_en),
	.pcie_rx_fifo_rd_data					(w_pcie_rx_fifo_rd_data),
	.pcie_rx_fifo_free_en					(w_pcie_rx_fifo_free_en),
	.pcie_rx_fifo_free_len					(w_pcie_rx_fifo_free_len),
	.pcie_rx_fifo_empty_n					(w_pcie_rx_fifo_empty_n),

	.pcie_tx_fifo_alloc_en					(w_pcie_tx_fifo_alloc_en),
	.pcie_tx_fifo_alloc_len					(w_pcie_tx_fifo_alloc_len),
	.pcie_tx_fifo_wr_en						(w_pcie_tx_fifo_wr_en),
	.pcie_tx_fifo_wr_data					(w_pcie_tx_fifo_wr_data),
	.pcie_tx_fifo_full_n					(w_pcie_tx_fifo_full_n),

	.dma_rx_done_wr_en						(w_dma_rx_done_wr_en),
	.dma_rx_done_wr_data					(w_dma_rx_done_wr_data),
	.dma_rx_done_wr_rdy_n					(w_dma_rx_done_wr_rdy_n),

	.pcie_mreq_err							(w_pcie_mreq_err),
	.pcie_cpld_err							(w_pcie_cpld_err),
	.pcie_cpld_len_err						(w_pcie_cpld_len_err),

	.s_axis_cc_tdata                                ( s_axis_cc_tdata ),
	.s_axis_cc_tkeep                                ( s_axis_cc_tkeep ),
	.s_axis_cc_tlast                                ( s_axis_cc_tlast ),
	.s_axis_cc_tvalid                               ( s_axis_cc_tvalid ), 
	.s_axis_cc_tuser                                ( s_axis_cc_tuser ),
	.s_axis_cc_tready                               ( s_axis_cc_tready ),

	.s_axis_rq_tdata                                ( s_axis_rq_tdata ),
	.s_axis_rq_tkeep                                ( s_axis_rq_tkeep ),
	.s_axis_rq_tlast                                ( s_axis_rq_tlast ),
	.s_axis_rq_tvalid                               ( s_axis_rq_tvalid ), 
	.s_axis_rq_tuser                                ( s_axis_rq_tuser ),
	.s_axis_rq_tready                               ( s_axis_rq_tready ),

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

	.fc_cpld								(cfg_fc_cpld),
	.fc_cplh								(cfg_fc_cplh),
	.fc_npd									(cfg_fc_npd),
	.fc_nph									(cfg_fc_nph),
	.fc_pd									(cfg_fc_pd),
	.fc_ph									(cfg_fc_ph),
	.fc_sel									(cfg_fc_sel),

	.m_axis_cq_tdata                                ( m_axis_cq_tdata ),
	.m_axis_cq_tlast                                ( m_axis_cq_tlast ),
	.m_axis_cq_tvalid                               ( m_axis_cq_tvalid ), 
	.m_axis_cq_tuser                                ( m_axis_cq_tuser ),
	.m_axis_cq_tkeep                                ( m_axis_cq_tkeep ),
	.m_axis_cq_tready                               ( m_axis_cq_tready ),

	.m_axis_rc_tdata                                ( m_axis_rc_tdata ),
	.m_axis_rc_tlast                                ( m_axis_rc_tlast ),
	.m_axis_rc_tvalid                               ( m_axis_rc_tvalid ), 
	.m_axis_rc_tuser                                ( m_axis_rc_tuser ),
	.m_axis_rc_tkeep                                ( m_axis_rc_tkeep ),
	.m_axis_rc_tready                               ( m_axis_rc_tready ), 

	.pcie_cq_np_req                                 ( pcie_cq_np_req ),
	.pcie_cq_np_req_count                           ( pcie_cq_np_req_count ), 

	.cfg_msg_received                               ( cfg_msg_received ), 
	.cfg_msg_received_type                          ( cfg_msg_received_type ), 
	.cfg_msg_data                                   ( cfg_msg_received_data ),

	.cfg_interrupt_sent                             ( cfg_interrupt_sent ), 
    .cfg_interrupt_pending                          ( cfg_interrupt_pending ),
	.cfg_interrupt_int                              ( cfg_interrupt_int ),

	.cfg_interrupt_msi_enable                       ( cfg_interrupt_msi_enable ), 
	.cfg_interrupt_msi_sent                         ( cfg_interrupt_msi_sent ), 
	.cfg_interrupt_msi_fail                         ( cfg_interrupt_msi_fail ),
	.cfg_interrupt_msi_int                          ( cfg_interrupt_msi_int ), 
    .cfg_interrupt_msi_pending_status_data_enable   ( cfg_interrupt_msi_pending_status_data_enable ),
    .cfg_interrupt_msi_pending_status               ( cfg_interrupt_msi_pending_status ),

	.cfg_interrupt_msix_enable                      ( cfg_interrupt_msix_enable ),
	.cfg_interrupt_msix_sent                        ( 1'b0 ),
	.cfg_interrupt_msix_fail                        ( 1'b0 ),
	.cfg_interrupt_msix_int                         (  ),
	.cfg_interrupt_msix_address                     (  ),
	.cfg_interrupt_msix_data                        (  ),

	.cfg_power_state_change_interrupt               ( cfg_power_state_change_interrupt ), 
	.cfg_power_state_change_ack                     ( cfg_power_state_change_ack ),

	.cfg_command					         		(cfg_function_status),
    .cfg_max_payload                                ( cfg_max_payload ),
    .cfg_max_read_req                               ( cfg_max_read_req ),
    .cfg_rcb_status                                 ( cfg_rcb_status )
);


endmodule
