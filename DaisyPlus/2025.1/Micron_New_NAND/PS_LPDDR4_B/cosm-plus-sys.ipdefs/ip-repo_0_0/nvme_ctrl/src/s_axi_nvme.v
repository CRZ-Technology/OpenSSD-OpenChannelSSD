


`timescale 1ns / 1ps

module s_axi_nvme # (
	parameter C_S0_AXI_ADDR_WIDTH			= 32,
	parameter C_S0_AXI_DATA_WIDTH			= 32,
	parameter C_S0_AXI_BASEADDR				= 32'hA0000000,
	parameter C_S0_AXI_HIGHADDR				= 32'hA001FFFF,

	parameter C_M0_AXI_ADDR_WIDTH			= 32,
	parameter C_M0_AXI_DATA_WIDTH			= 64,
	parameter C_M0_AXI_ID_WIDTH				= 1,
	parameter C_M0_AXI_AWUSER_WIDTH			= 1,
	parameter C_M0_AXI_WUSER_WIDTH			= 1,
	parameter C_M0_AXI_BUSER_WIDTH			= 1,
	parameter C_M0_AXI_ARUSER_WIDTH			= 1,
	parameter C_M0_AXI_RUSER_WIDTH			= 1,
	parameter C_PCIE_DATA_WIDTH				= 512,
	parameter [4:0]    PL_LINK_CAP_MAX_LINK_WIDTH     = 16,  // 1- X1, 2 - X2, 4 - X4, 8 - X8, 16 - X16
	parameter          AXISTEN_IF_MC_RX_STRADDLE      = 0,
	parameter          PL_LINK_CAP_MAX_LINK_SPEED     = 4,  // 1- GEN1, 2 - GEN2, 4 - GEN3, 8 - GEN4
	parameter          KEEP_WIDTH                     = C_PCIE_DATA_WIDTH / 32,
	parameter          EXT_PIPE_SIM                   = "FALSE",  // This Parameter has effect on selecting Enable External PIPE Interface in GUI.
	parameter          AXISTEN_IF_CC_ALIGNMENT_MODE   = "FALSE",
	parameter          AXISTEN_IF_CQ_ALIGNMENT_MODE   = "FALSE",
	parameter          AXISTEN_IF_RQ_ALIGNMENT_MODE   = "FALSE",
	parameter          AXISTEN_IF_RC_ALIGNMENT_MODE   = "FALSE",
	parameter          AXI4_CQ_TUSER_WIDTH            = 183,
	parameter          AXI4_CC_TUSER_WIDTH            = 81,
	parameter          AXI4_RQ_TUSER_WIDTH            = 137,
	parameter          AXI4_RC_TUSER_WIDTH            = 161,
	parameter          AXISTEN_IF_ENABLE_CLIENT_TAG   = 1,
	parameter          RQ_AVAIL_TAG_IDX               = 8,
	parameter          RQ_AVAIL_TAG                   = 256,
	parameter          AXISTEN_IF_RQ_PARITY_CHECK     = 0,
	parameter          AXISTEN_IF_CC_PARITY_CHECK     = 0,
	parameter          AXISTEN_IF_RC_PARITY_CHECK     = 0,
	parameter          AXISTEN_IF_CQ_PARITY_CHECK     = 0,
	parameter          AXISTEN_IF_ENABLE_RX_MSG_INTFC = "FALSE",
	parameter   [17:0] AXISTEN_IF_ENABLE_MSG_ROUTE    = 18'h2FFFF,	
	parameter P_SLOT_TAG_WIDTH				=  10, //slot_modified
	parameter P_SLOT_WIDTH					=1024 //slot_modified
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
	output									m0_axi_awlock,
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
	output									m0_axi_arlock,
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

	output									dev_irq_assert,

	input									pcie_ref_clk_p,
	input									pcie_ref_clk_n,
	input									pcie_perst_n,

	output  [(PL_LINK_CAP_MAX_LINK_WIDTH - 1) : 0]  pci_exp_txp,
	output  [(PL_LINK_CAP_MAX_LINK_WIDTH - 1) : 0]  pci_exp_txn,
	input   [(PL_LINK_CAP_MAX_LINK_WIDTH - 1) : 0]  pci_exp_rxp,
	input   [(PL_LINK_CAP_MAX_LINK_WIDTH - 1) : 0]  pci_exp_rxn,

	output									user_lnk_up
);

	// Local Parameters derived from user selection
	localparam        TCQ = 1;

	wire                                       phy_rdy_out;

	//----------------------------------------------------------------------------------------------------------------//
	//  AXI Interface                                                                                                 //
	//----------------------------------------------------------------------------------------------------------------//

	wire                                       user_clk_out;
	wire                                       user_reset_out;

	wire                                       s_axis_rq_tlast;
	wire            [C_PCIE_DATA_WIDTH-1:0]    s_axis_rq_tdata;
	wire          [AXI4_RQ_TUSER_WIDTH-1:0]    s_axis_rq_tuser;
	wire                   [KEEP_WIDTH-1:0]    s_axis_rq_tkeep;
	wire                              [3:0]    s_axis_rq_tready;
	wire                                       s_axis_rq_tvalid;

	wire            [C_PCIE_DATA_WIDTH-1:0]    m_axis_rc_tdata;
	wire          [AXI4_RC_TUSER_WIDTH-1:0]    m_axis_rc_tuser;
	wire                                       m_axis_rc_tlast;
	wire                   [KEEP_WIDTH-1:0]    m_axis_rc_tkeep;
	wire                                       m_axis_rc_tvalid;
	wire                                       m_axis_rc_tready;

	wire            [C_PCIE_DATA_WIDTH-1:0]    m_axis_cq_tdata;
	wire          [AXI4_CQ_TUSER_WIDTH-1:0]    m_axis_cq_tuser;
	wire                                       m_axis_cq_tlast;
	wire                   [KEEP_WIDTH-1:0]    m_axis_cq_tkeep;
	wire                                       m_axis_cq_tvalid;
	wire                                       m_axis_cq_tready;

	wire            [C_PCIE_DATA_WIDTH-1:0]    s_axis_cc_tdata;
	wire          [AXI4_CC_TUSER_WIDTH-1:0]    s_axis_cc_tuser;
	wire                                       s_axis_cc_tlast;
	wire                   [KEEP_WIDTH-1:0]    s_axis_cc_tkeep;
	wire                                       s_axis_cc_tvalid;
	wire                              [3:0]    s_axis_cc_tready;

	wire                              [3:0]    pcie_tfc_nph_av;
	wire                              [3:0]    pcie_tfc_npd_av;
	//----------------------------------------------------------------------------------------------------------------//
	//  Configuration (CFG) Interface                                                                                 //
	//----------------------------------------------------------------------------------------------------------------//

	wire                                       pcie_cq_np_req;
	wire                              [5:0]    pcie_cq_np_req_count;
	wire                              [5:0]    pcie_rq_seq_num0;
	wire                                       pcie_rq_seq_num_vld0;
	wire                              [5:0]    pcie_rq_seq_num1;
	wire                                       pcie_rq_seq_num_vld1;

	//----------------------------------------------------------------------------------------------------------------//
	// EP and RP                                                                                                      //
	//----------------------------------------------------------------------------------------------------------------//

	wire                                       cfg_phy_link_down;
	wire                              [2:0]    cfg_negotiated_width;
	wire                              [1:0]    cfg_current_speed;
	wire                              [1:0]    cfg_max_payload;
	wire                              [2:0]    cfg_max_read_req;
	wire                              [15:0]    cfg_function_status;
	wire                              [11:0]    cfg_function_power_state;
	wire                             [503:0]    cfg_vf_status;
	wire                              [1:0]    cfg_link_power_state;

	// Error Reporting Interface
	wire                                       cfg_err_cor_out;
	wire                                       cfg_err_nonfatal_out;
	wire                                       cfg_err_fatal_out;

	wire                              [5:0]    cfg_ltssm_state;
	wire                              [3:0]    cfg_rcb_status;
	wire                              [1:0]    cfg_obff_enable;
	wire                                       cfg_pl_status_change;

	// Management Interface
	wire                             [9:0]    cfg_mgmt_addr;
	wire                                       cfg_mgmt_write;
	wire                             [31:0]    cfg_mgmt_write_data;
	wire                              [3:0]    cfg_mgmt_byte_enable;
	wire                                       cfg_mgmt_read;
	wire                             [31:0]    cfg_mgmt_read_data;
	wire                                       cfg_mgmt_read_write_done;
	wire                                       cfg_msg_received;
	wire                              [7:0]    cfg_msg_received_data;
	wire                              [4:0]    cfg_msg_received_type;
	wire                                       cfg_msg_transmit;
	wire                              [2:0]    cfg_msg_transmit_type;
	wire                             [31:0]    cfg_msg_transmit_data;
	wire                                       cfg_msg_transmit_done;
	wire                              [7:0]    cfg_fc_ph;
	wire                             [11:0]    cfg_fc_pd;
	wire                              [7:0]    cfg_fc_nph;
	wire                             [11:0]    cfg_fc_npd;
	wire                              [7:0]    cfg_fc_cplh;
	wire                             [11:0]    cfg_fc_cpld;
	wire                              [2:0]    cfg_fc_sel;

	wire                             [63:0]    cfg_dsn;
	wire                                       cfg_power_state_change_interrupt;
	wire                                       cfg_power_state_change_ack;
	wire                                       cfg_err_cor_in;
	wire                                       cfg_err_uncor_in;

	wire                              [3:0]    cfg_flr_in_process;
	wire                              [1:0]    cfg_flr_done;
	wire                              [251:0]  cfg_vf_flr_in_process;
	wire                                       cfg_vf_flr_done;
	wire                              [7:0]    cfg_vf_flr_func_num;

	wire                                       cfg_link_training_enable;

	//----------------------------------------------------------------------------------------------------------------//
	// EP Only                                                                                                        //
	//----------------------------------------------------------------------------------------------------------------//

	// Interrupt Interface Signals
	wire                              [3:0]    cfg_interrupt_int;
	wire                                       cfg_interrupt_pending;
	wire                                       cfg_interrupt_sent;

	wire                              [3:0]    cfg_interrupt_msi_enable;
	wire                              [11:0]   cfg_interrupt_msi_mmenable;
	wire                                       cfg_interrupt_msi_mask_update;
	wire                             [31:0]    cfg_interrupt_msi_data;
	wire                              [1:0]    cfg_interrupt_msi_select;
	wire                             [31:0]    cfg_interrupt_msi_int;
	wire                             [31:0]    cfg_interrupt_msi_pending_status;
	wire                                       cfg_interrupt_msi_sent;
	wire                                       cfg_interrupt_msi_fail;
	wire                              [2:0]    cfg_interrupt_msi_attr;
	wire                                       cfg_interrupt_msi_tph_present;
	wire                              [1:0]    cfg_interrupt_msi_tph_type;
	wire                              [7:0]    cfg_interrupt_msi_tph_st_tag;
	wire                              [7:0]    cfg_interrupt_msi_function_number;
	wire                                       cfg_interrupt_msi_pending_status_data_enable;

	// EP only
	wire                                       cfg_hot_reset_out;
	wire                                       cfg_config_space_enable;
	wire                                       cfg_req_pm_transition_l23_ready;

	// RP only
	wire                                       cfg_hot_reset_in;

	wire                              [7:0]    cfg_ds_port_number;
	wire                              [7:0]    cfg_ds_bus_number;
	wire                              [4:0]    cfg_ds_device_number;

	//----------------------------------------------------------------------------------------------------------------//
	//    System(SYS) Interface                                                                                       //
	//----------------------------------------------------------------------------------------------------------------//

	wire                                       sys_clk;
	wire                                       sys_clk_gt;
	wire                                       sys_rst_n;
	wire									   pcie_perst_n_c;

	//-----------------------------------------------------------------------------------------------------------------------

	IBUF   sys_reset_n_ibuf (.O(pcie_perst_n_c), .I(pcie_perst_n));

	IBUFDS_GTE4 refclk_ibuf (.O(sys_clk_gt), .ODIV2(sys_clk), .I(pcie_ref_clk_p), .CEB(1'b0), .IB(pcie_ref_clk_n));

	wire [15:0]  cfg_vend_id        = 16'h10EE;   
    wire [15:0]  cfg_dev_id         = 16'h903F;   
	wire [15:0]  cfg_dev_id_pf1     = 16'h9138;   
	wire [15:0]  cfg_subsys_id      = 16'h0007;                                
	wire [7:0]   cfg_rev_id         = 8'h00; 
	wire [15:0]  cfg_subsys_vend_id = 16'h10EE;

	wire   [3:0]                                w_reset_count; //1

user_top # (
	.P_SLOT_TAG_WIDTH						(P_SLOT_TAG_WIDTH), //slot_modified
	.P_SLOT_WIDTH							(P_SLOT_WIDTH), //slot_modified
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
user_top_inst0 (

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

	.dev_irq_assert							(dev_irq_assert),

	.pcie_perst_n							(pcie_perst_n_c),

	.user_clk_out							(user_clk_out),
	.user_reset_out							(user_reset_out),
	.user_lnk_up							(user_lnk_up),

    //-------------------------------------------------------------------------------------//
    //  AXI Interface                                                                      //
    //-------------------------------------------------------------------------------------//

    .s_axis_rq_tlast                                ( s_axis_rq_tlast ),
    .s_axis_rq_tdata                                ( s_axis_rq_tdata ),
    .s_axis_rq_tuser                                ( s_axis_rq_tuser ),
    .s_axis_rq_tkeep                                ( s_axis_rq_tkeep ),
    .s_axis_rq_tready                               ( s_axis_rq_tready[0] ),
    .s_axis_rq_tvalid                               ( s_axis_rq_tvalid ),

    .m_axis_rc_tdata                                ( m_axis_rc_tdata ),
    .m_axis_rc_tuser                                ( m_axis_rc_tuser ),
    .m_axis_rc_tlast                                ( m_axis_rc_tlast ),
    .m_axis_rc_tkeep                                ( m_axis_rc_tkeep ),
    .m_axis_rc_tvalid                               ( m_axis_rc_tvalid ),
    .m_axis_rc_tready                               ( m_axis_rc_tready ),

    .m_axis_cq_tdata                                ( m_axis_cq_tdata ),
    .m_axis_cq_tuser                                ( m_axis_cq_tuser ),
    .m_axis_cq_tlast                                ( m_axis_cq_tlast ),
    .m_axis_cq_tkeep                                ( m_axis_cq_tkeep ),
    .m_axis_cq_tvalid                               ( m_axis_cq_tvalid ),
    .m_axis_cq_tready                               ( m_axis_cq_tready ),

    .s_axis_cc_tdata                                ( s_axis_cc_tdata ),
    .s_axis_cc_tuser                                ( s_axis_cc_tuser ),
    .s_axis_cc_tlast                                ( s_axis_cc_tlast ),
    .s_axis_cc_tkeep                                ( s_axis_cc_tkeep ),
    .s_axis_cc_tvalid                               ( s_axis_cc_tvalid ),
    .s_axis_cc_tready                               ( s_axis_cc_tready[0] ),

    .pcie_rq_seq_num                                ( 'h0),
    .pcie_rq_seq_num_vld                            ( 'h0),
    .pcie_rq_tag                                    ( 'h0),
    .pcie_rq_tag_vld                                ( 'h0),
    .pcie_tfc_nph_av                                ( pcie_tfc_nph_av[1:0]),
    .pcie_tfc_npd_av                                ( pcie_tfc_npd_av[1:0]),
    .pcie_cq_np_req                                 ( pcie_cq_np_req ),
    .pcie_cq_np_req_count                           ( pcie_cq_np_req_count ),

    //--------------------------------------------------------------------------------//
    //  Configuration (CFG) Interface                                                 //
    //--------------------------------------------------------------------------------//

    //--------------------------------------------------------------------------------//
    // EP and RP                                                                      //
    //--------------------------------------------------------------------------------//

    .cfg_phy_link_down                              ( cfg_phy_link_down ),
    .cfg_negotiated_width                           ( cfg_negotiated_width ),
    .cfg_current_speed                              ( cfg_current_speed ),
    .cfg_max_payload                                ( cfg_max_payload ),
    .cfg_max_read_req                               ( cfg_max_read_req ),
    .cfg_function_status                            ( cfg_function_status[3:0] ),

    .cfg_function_power_state                       ( cfg_function_power_state ),

    .cfg_vf_status                                  ( cfg_vf_status ),
    .cfg_link_power_state                           ( cfg_link_power_state ),

    // Error Reporting Interface
    .cfg_err_cor_out                                ( cfg_err_cor_out ),
    .cfg_err_nonfatal_out                           ( cfg_err_nonfatal_out ),
    .cfg_err_fatal_out                              ( cfg_err_fatal_out ),
    .cfg_ltssm_state                                ( cfg_ltssm_state ),
    .cfg_rcb_status                                 ( cfg_rcb_status[0]),
    .cfg_obff_enable                                ( cfg_obff_enable ),
    .cfg_pl_status_change                           ( cfg_pl_status_change ),

    // Management Interface
    .cfg_mgmt_addr                                  ( cfg_mgmt_addr ),
    .cfg_mgmt_write                                 ( cfg_mgmt_write ),
    .cfg_mgmt_write_data                            ( cfg_mgmt_write_data ),
    .cfg_mgmt_byte_enable                           ( cfg_mgmt_byte_enable ),
    .cfg_mgmt_read                                  ( cfg_mgmt_read ),
    .cfg_mgmt_read_data                             ( cfg_mgmt_read_data ),
    .cfg_mgmt_read_write_done                       ( cfg_mgmt_read_write_done ),

    .cfg_msg_received                               ( cfg_msg_received ),
    .cfg_msg_received_data                          ( cfg_msg_received_data ),
    .cfg_msg_received_type                          ( cfg_msg_received_type ),
    .cfg_msg_transmit                               ( cfg_msg_transmit ),
    .cfg_msg_transmit_type                          ( cfg_msg_transmit_type ),
    .cfg_msg_transmit_data                          ( cfg_msg_transmit_data ),
    .cfg_msg_transmit_done                          ( cfg_msg_transmit_done ),

    .cfg_fc_ph                                      ( cfg_fc_ph ),
    .cfg_fc_pd                                      ( cfg_fc_pd ),
    .cfg_fc_nph                                     ( cfg_fc_nph ),
    .cfg_fc_npd                                     ( cfg_fc_npd ),
    .cfg_fc_cplh                                    ( cfg_fc_cplh ),
    .cfg_fc_cpld                                    ( cfg_fc_cpld ),
    .cfg_fc_sel                                     ( cfg_fc_sel ),

    .cfg_dsn                                        ( cfg_dsn ),
    .cfg_power_state_change_ack                     ( cfg_power_state_change_ack ),
    .cfg_power_state_change_interrupt               ( cfg_power_state_change_interrupt ),

    .cfg_err_cor_in                                 ( cfg_err_cor_in ),
    .cfg_err_uncor_in                               ( cfg_err_uncor_in ),

    .cfg_flr_in_process                             ( cfg_flr_in_process [1:0] ),
    .cfg_flr_done                                   ( cfg_flr_done ),
    .cfg_vf_flr_in_process                          ( cfg_vf_flr_in_process ),
    .cfg_vf_flr_done                                ( cfg_vf_flr_done ),
    .cfg_vf_flr_func_num                            ( cfg_vf_flr_func_num ),

    .cfg_link_training_enable                       ( cfg_link_training_enable ),

    .cfg_ds_port_number                             ( cfg_ds_port_number ),
    .cfg_hot_reset_in                               ( cfg_hot_reset_out ),
    .cfg_config_space_enable                        ( cfg_config_space_enable ),

    .cfg_req_pm_transition_l23_ready                ( cfg_req_pm_transition_l23_ready ),

  // RP only
    .cfg_hot_reset_out                              ( cfg_hot_reset_in ),

    .cfg_ds_bus_number                              ( cfg_ds_bus_number ),
    .cfg_ds_device_number                           ( cfg_ds_device_number ),
    .cfg_ds_function_number                         ( ),

    //-------------------------------------------------------------------------------------//
    // EP Only                                                                             //
    //-------------------------------------------------------------------------------------//

    .cfg_interrupt_msi_enable                       ( cfg_interrupt_msi_enable[0] ),
    .cfg_interrupt_msi_mmenable                     ( cfg_interrupt_msi_mmenable[2:0] ),
    .cfg_interrupt_msi_mask_update                  ( cfg_interrupt_msi_mask_update ),
    .cfg_interrupt_msi_data                         ( cfg_interrupt_msi_data ),
    .cfg_interrupt_msi_select                       ( cfg_interrupt_msi_select ),
    .cfg_interrupt_msi_int                          ( cfg_interrupt_msi_int ),
    .cfg_interrupt_msi_pending_status               ( cfg_interrupt_msi_pending_status ),
    .cfg_interrupt_msi_sent                         ( cfg_interrupt_msi_sent ),
    .cfg_interrupt_msi_fail                         ( cfg_interrupt_msi_fail ),
    .cfg_interrupt_msi_attr                         ( cfg_interrupt_msi_attr ),
    .cfg_interrupt_msi_tph_present                  ( cfg_interrupt_msi_tph_present ),
    .cfg_interrupt_msi_tph_type                     ( cfg_interrupt_msi_tph_type ),
    .cfg_interrupt_msi_tph_st_tag                   ( cfg_interrupt_msi_tph_st_tag ),
    .cfg_interrupt_msi_function_number              ( cfg_interrupt_msi_function_number ),
    .cfg_interrupt_msi_pending_status_data_enable   ( cfg_interrupt_msi_pending_status_data_enable ),

	.cfg_interrupt_msix_enable                      ( 1'b0 ),

    // Interrupt Interface Signals
    .cfg_interrupt_int                              ( cfg_interrupt_int ),
    .cfg_interrupt_pending                          ( cfg_interrupt_pending ),
    .cfg_interrupt_sent                             ( cfg_interrupt_sent ),

	.sys_rst_n								(sys_rst_n),
	.reset_count                            (w_reset_count) //1
);

//
//

//------------------------------------------------------------------------------------------------------------------//
//                                     PCIe Core Top Level Wrapper                                                  //
//------------------------------------------------------------------------------------------------------------------//
// Core Top Level Wrapper
 pcie4_uscale_plus_0  pcie4_uscale_plus_0_i (
    //---------------------------------------------------------------------------------------//
    //  ID Ports 
    //---------------------------------------------------------------------------------------//





    //---------------------------------------------------------------------------------------//
    //  PCI Express (pci_exp) Interface                                                      //
    //---------------------------------------------------------------------------------------//

    // Tx
    .pci_exp_txn                                    ( pci_exp_txn ),
    .pci_exp_txp                                    ( pci_exp_txp ),

    // Rx
    .pci_exp_rxn                                    ( pci_exp_rxn ),
    .pci_exp_rxp                                    ( pci_exp_rxp ),
    
    //---------------------------------------------------------------------------------------//
    //  AXI Interface                                                                        //
    //---------------------------------------------------------------------------------------//

    .user_clk                                       ( user_clk_out ),
    .user_reset                                     ( user_reset_out ),
    .user_lnk_up                                    ( user_lnk_up ),
    .phy_rdy_out                                    ( phy_rdy_out ),
  
    .s_axis_rq_tlast                                ( s_axis_rq_tlast ),
    .s_axis_rq_tdata                                ( s_axis_rq_tdata ),
    .s_axis_rq_tuser                                ( s_axis_rq_tuser ),
    .s_axis_rq_tkeep                                ( s_axis_rq_tkeep ),
    .s_axis_rq_tready                               ( s_axis_rq_tready ),
    .s_axis_rq_tvalid                               ( s_axis_rq_tvalid ),

    .m_axis_rc_tdata                                ( m_axis_rc_tdata ),
    .m_axis_rc_tuser                                ( m_axis_rc_tuser ),
    .m_axis_rc_tlast                                ( m_axis_rc_tlast ),
    .m_axis_rc_tkeep                                ( m_axis_rc_tkeep ),
    .m_axis_rc_tvalid                               ( m_axis_rc_tvalid ),
    .m_axis_rc_tready                               ( m_axis_rc_tready ),

    .m_axis_cq_tdata                                ( m_axis_cq_tdata ),
    .m_axis_cq_tuser                                ( m_axis_cq_tuser ),
    .m_axis_cq_tlast                                ( m_axis_cq_tlast ),
    .m_axis_cq_tkeep                                ( m_axis_cq_tkeep ),
    .m_axis_cq_tvalid                               ( m_axis_cq_tvalid ),
    .m_axis_cq_tready                               ( m_axis_cq_tready ),

    .s_axis_cc_tdata                                ( s_axis_cc_tdata ),
    .s_axis_cc_tuser                                ( s_axis_cc_tuser ),
    .s_axis_cc_tlast                                ( s_axis_cc_tlast ),
    .s_axis_cc_tkeep                                ( s_axis_cc_tkeep ),
    .s_axis_cc_tvalid                               ( s_axis_cc_tvalid ),
    .s_axis_cc_tready                               ( s_axis_cc_tready ),



    //---------------------------------------------------------------------------------------//
    //  Configuration (CFG) Interface                                                        //
    //---------------------------------------------------------------------------------------//
    .pcie_tfc_nph_av                                ( pcie_tfc_nph_av ),
    .pcie_tfc_npd_av                                ( pcie_tfc_npd_av ),

    .pcie_rq_seq_num0                               ( pcie_rq_seq_num0     ) ,
    .pcie_rq_seq_num_vld0                           ( pcie_rq_seq_num_vld0 ) ,
    .pcie_rq_seq_num1                               ( pcie_rq_seq_num1     ) ,
    .pcie_rq_seq_num_vld1                           ( pcie_rq_seq_num_vld1 ) ,
    .pcie_rq_tag0                                   ( ) ,
    .pcie_rq_tag1                                   ( ) ,
    .pcie_rq_tag_av                                 ( ) ,
    .pcie_rq_tag_vld0                               ( ) ,
    .pcie_rq_tag_vld1                               ( ) ,
    .pcie_cq_np_req                                 ( {1'b1,pcie_cq_np_req} ), 
    .pcie_cq_np_req_count                           ( pcie_cq_np_req_count ), 
    .cfg_phy_link_down                              ( cfg_phy_link_down ),
    .cfg_phy_link_status                            ( ),
    .cfg_negotiated_width                           ( cfg_negotiated_width ),
    .cfg_current_speed                              ( cfg_current_speed ),
    .cfg_max_payload                                ( cfg_max_payload ),
    .cfg_max_read_req                               ( cfg_max_read_req ),
    .cfg_function_status                            ( cfg_function_status ),
    .cfg_function_power_state                       ( cfg_function_power_state ),
    .cfg_vf_status                                  ( cfg_vf_status ),
    .cfg_vf_power_state                             ( ),
    .cfg_link_power_state                           ( cfg_link_power_state ),
    // Error Reporting Interface
    .cfg_err_cor_out                                ( cfg_err_cor_out ),
    .cfg_err_nonfatal_out                           ( cfg_err_nonfatal_out ),
    .cfg_err_fatal_out                              ( cfg_err_fatal_out ),

    .cfg_local_error_out                                ( ),
    .cfg_local_error_valid                          ( ),

    .cfg_ltssm_state                                ( cfg_ltssm_state ),
    .cfg_rx_pm_state                                ( ),
    .cfg_tx_pm_state                                ( ), 
    .cfg_rcb_status                                 ( cfg_rcb_status ),
   
    .cfg_obff_enable                                ( cfg_obff_enable ),
    .cfg_pl_status_change                           ( cfg_pl_status_change ),

    .cfg_tph_requester_enable                       ( ),
    .cfg_tph_st_mode                                ( ),
    .cfg_vf_tph_requester_enable                    ( ),
    .cfg_vf_tph_st_mode                             ( ),
    // Management Interface
    .cfg_mgmt_addr                                  ( cfg_mgmt_addr ),
    .cfg_mgmt_write                                 ( cfg_mgmt_write ),
    .cfg_mgmt_write_data                            ( cfg_mgmt_write_data ),
    .cfg_mgmt_byte_enable                           ( cfg_mgmt_byte_enable ),
    .cfg_mgmt_read                                  ( cfg_mgmt_read ),
    .cfg_mgmt_read_data                             ( cfg_mgmt_read_data ),
    .cfg_mgmt_read_write_done                       ( cfg_mgmt_read_write_done ),
    .cfg_mgmt_debug_access                          (1'b0),
    .cfg_mgmt_function_number                       (8'b0),
    .cfg_pm_aspm_l1_entry_reject                    (1'b0),
    .cfg_pm_aspm_tx_l0s_entry_disable               (1'b1),

    .cfg_msg_received                               ( cfg_msg_received ),
    .cfg_msg_received_data                          ( cfg_msg_received_data ),
    .cfg_msg_received_type                          ( cfg_msg_received_type ),

    .cfg_msg_transmit                               ( cfg_msg_transmit ),
    .cfg_msg_transmit_type                          ( cfg_msg_transmit_type ),
    .cfg_msg_transmit_data                          ( cfg_msg_transmit_data ),
    .cfg_msg_transmit_done                          ( cfg_msg_transmit_done ),

    .cfg_fc_ph                                      ( cfg_fc_ph ),
    .cfg_fc_pd                                      ( cfg_fc_pd ),
    .cfg_fc_nph                                     ( cfg_fc_nph ),
    .cfg_fc_npd                                     ( cfg_fc_npd ),
    .cfg_fc_cplh                                    ( cfg_fc_cplh ),
    .cfg_fc_cpld                                    ( cfg_fc_cpld ),
    .cfg_fc_sel                                     ( cfg_fc_sel ),

    //-------------------------------------------------------------------------------//
    // EP and RP                                                                     //
    //-------------------------------------------------------------------------------//
    .cfg_bus_number                                 ( ), 
    .cfg_dsn                                        ( cfg_dsn ),
    .cfg_power_state_change_ack                     ( cfg_power_state_change_ack ),
    .cfg_power_state_change_interrupt               ( cfg_power_state_change_interrupt ),
    .cfg_err_cor_in                                 ( cfg_err_cor_in ),
    .cfg_err_uncor_in                               ( cfg_err_uncor_in ),

    .cfg_flr_in_process                             ( cfg_flr_in_process ),
    .cfg_flr_done                                   ( {2'b0,cfg_flr_done} ),
    .cfg_vf_flr_in_process                          ( cfg_vf_flr_in_process ),
    .cfg_vf_flr_done                                ( cfg_vf_flr_done ),
    .cfg_link_training_enable                       ( cfg_link_training_enable ),
  // EP only
    .cfg_hot_reset_out                              ( cfg_hot_reset_out ),
    .cfg_config_space_enable                        ( cfg_config_space_enable ),
    .cfg_req_pm_transition_l23_ready                ( cfg_req_pm_transition_l23_ready ),

  // RP only
    .cfg_hot_reset_in                               ( cfg_hot_reset_in ),

    .cfg_ds_bus_number                              ( cfg_ds_bus_number ),
    .cfg_ds_device_number                           ( cfg_ds_device_number ),
    .cfg_ds_port_number                             ( cfg_ds_port_number ),
    .cfg_vf_flr_func_num                            (cfg_vf_flr_func_num),

    //-------------------------------------------------------------------------------//
    // EP Only                                                                       //
    //-------------------------------------------------------------------------------//

    // Interrupt Interface Signals
    .cfg_interrupt_int                              ( cfg_interrupt_int ),
    .cfg_interrupt_pending                          ( {3'b0,cfg_interrupt_pending} ),
    .cfg_interrupt_sent                             ( cfg_interrupt_sent ),



    // MSI Interface
    .cfg_interrupt_msi_enable                       ( cfg_interrupt_msi_enable ),
    .cfg_interrupt_msi_mmenable                     ( cfg_interrupt_msi_mmenable ),
    .cfg_interrupt_msi_mask_update                  ( cfg_interrupt_msi_mask_update ),
    .cfg_interrupt_msi_data                         ( cfg_interrupt_msi_data ),
    .cfg_interrupt_msi_select                       ( cfg_interrupt_msi_select ),
    .cfg_interrupt_msi_int                          ( cfg_interrupt_msi_int ),
    .cfg_interrupt_msi_pending_status               ( cfg_interrupt_msi_pending_status ),
    .cfg_interrupt_msi_sent                         ( cfg_interrupt_msi_sent ),
    .cfg_interrupt_msi_fail                         ( cfg_interrupt_msi_fail ),
    .cfg_interrupt_msi_attr                         ( cfg_interrupt_msi_attr ),
    .cfg_interrupt_msi_tph_present                  ( cfg_interrupt_msi_tph_present ),
    .cfg_interrupt_msi_tph_type                     ( cfg_interrupt_msi_tph_type ),
    .cfg_interrupt_msi_tph_st_tag                   ( cfg_interrupt_msi_tph_st_tag ),
    .cfg_interrupt_msi_pending_status_function_num  ( 2'b0 ),
    .cfg_interrupt_msi_pending_status_data_enable   ( cfg_interrupt_msi_pending_status_data_enable ),
    
    .cfg_interrupt_msi_function_number              ( cfg_interrupt_msi_function_number ),


    //--------------------------------------------------------------------------------------//
    //  System(SYS) Interface                                                               //
    //--------------------------------------------------------------------------------------//

    .sys_clk                                        ( sys_clk ),
    .sys_clk_gt                                     ( sys_clk_gt ),
    .sys_reset                                      ((w_reset_count == 4'b0101) ? 1'b0 : pcie_perst_n_c)
  );

endmodule
