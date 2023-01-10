// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Jan  9 18:59:46 2023
// Host        : DESKTOP-KFMNFE2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               F:/cosm-plus-sys.srcs/sources_1/bd/sys_top/ip/sys_top_auto_ds_8/sys_top_auto_ds_8_sim_netlist.v
// Design      : sys_top_auto_ds_8
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu17eg-ffvc1760-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sys_top_auto_ds_8,axi_dwidth_converter_v2_1_19_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_dwidth_converter_v2_1_19_top,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module sys_top_auto_ds_8
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 SI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SI_CLK, FREQ_HZ 199998001, PHASE 0.000, CLK_DOMAIN sys_top_zynq_ultra_ps_e_0_0_pl_clk1, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET S_AXI_ARESETN, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 SI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [39:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [63:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [7:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [39:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [63:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 64, PROTOCOL AXI4LITE, FREQ_HZ 199998001, ID_WIDTH 0, ADDR_WIDTH 40, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN sys_top_zynq_ultra_ps_e_0_0_pl_clk1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [39:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [31:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [3:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [39:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [31:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 199998001, ID_WIDTH 0, ADDR_WIDTH 40, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN sys_top_zynq_ultra_ps_e_0_0_pl_clk1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

  wire [39:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [39:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire s_axi_aclk;
  wire [39:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [39:0]s_axi_awaddr;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [63:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [63:0]s_axi_wdata;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_inst_s_axi_rlast_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arcache_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arsize_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awcache_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;

  (* C_AXI_ADDR_WIDTH = "40" *) 
  (* C_AXI_IS_ACLK_ASYNC = "0" *) 
  (* C_AXI_PROTOCOL = "2" *) 
  (* C_AXI_SUPPORTS_READ = "1" *) 
  (* C_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_FIFO_MODE = "0" *) 
  (* C_MAX_SPLIT_BEATS = "16" *) 
  (* C_M_AXI_ACLK_RATIO = "2" *) 
  (* C_M_AXI_BYTES_LOG = "2" *) 
  (* C_M_AXI_DATA_WIDTH = "32" *) 
  (* C_PACKING_LEVEL = "1" *) 
  (* C_RATIO = "2" *) 
  (* C_RATIO_LOG = "1" *) 
  (* C_SUPPORTS_ID = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_S_AXI_ACLK_RATIO = "1" *) 
  (* C_S_AXI_BYTES_LOG = "3" *) 
  (* C_S_AXI_DATA_WIDTH = "64" *) 
  (* C_S_AXI_ID_WIDTH = "1" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_CONVERSION = "2" *) 
  (* P_MAX_SPLIT_BEATS = "16" *) 
  sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top inst
       (.m_axi_aclk(1'b0),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(NLW_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_aresetn(1'b0),
        .m_axi_arlen(NLW_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_inst_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(NLW_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(NLW_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awlen(NLW_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_inst_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(NLW_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rlast(1'b1),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(NLW_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst({1'b0,1'b1}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst({1'b0,1'b1}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(1'b1),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_19_axi4lite_downsizer" *) 
module sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_axi4lite_downsizer
   (m_axi_bready,
    m_axi_rready,
    \gen_write.s_axi_awready_i_reg_0 ,
    \gen_write.s_axi_bvalid_i_reg_0 ,
    \gen_read.s_axi_arready_i_reg_0 ,
    \gen_read.s_axi_rvalid_i_reg_0 ,
    \gen_write.m_axi_awvalid_i_reg_0 ,
    \gen_write.m_axi_wvalid_i_reg_0 ,
    \gen_read.m_axi_arvalid_i_reg_0 ,
    s_axi_bresp,
    s_axi_rresp,
    s_axi_rdata,
    m_axi_araddr,
    m_axi_wstrb,
    m_axi_wdata,
    out,
    m_axi_bvalid,
    \gen_write.w_done_reg_0 ,
    s_axi_bready,
    m_axi_rvalid,
    s_axi_rready,
    s_axi_arvalid,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_awaddr,
    s_axi_wstrb,
    s_axi_araddr,
    m_axi_bresp,
    m_axi_rresp,
    m_axi_rdata,
    m_axi_wready,
    m_axi_awready,
    m_axi_arready,
    split_aw2__2,
    s_axi_wdata);
  output m_axi_bready;
  output m_axi_rready;
  output \gen_write.s_axi_awready_i_reg_0 ;
  output \gen_write.s_axi_bvalid_i_reg_0 ;
  output \gen_read.s_axi_arready_i_reg_0 ;
  output \gen_read.s_axi_rvalid_i_reg_0 ;
  output \gen_write.m_axi_awvalid_i_reg_0 ;
  output \gen_write.m_axi_wvalid_i_reg_0 ;
  output \gen_read.m_axi_arvalid_i_reg_0 ;
  output [1:0]s_axi_bresp;
  output [1:0]s_axi_rresp;
  output [31:0]s_axi_rdata;
  output [39:0]m_axi_araddr;
  output [3:0]m_axi_wstrb;
  output [31:0]m_axi_wdata;
  input out;
  input m_axi_bvalid;
  input \gen_write.w_done_reg_0 ;
  input s_axi_bready;
  input m_axi_rvalid;
  input s_axi_rready;
  input s_axi_arvalid;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [39:0]s_axi_awaddr;
  input [7:0]s_axi_wstrb;
  input [39:0]s_axi_araddr;
  input [1:0]m_axi_bresp;
  input [1:0]m_axi_rresp;
  input [31:0]m_axi_rdata;
  input m_axi_wready;
  input m_axi_awready;
  input m_axi_arready;
  input split_aw2__2;
  input [63:0]s_axi_wdata;

  wire ar_done;
  wire ar_start;
  wire aw_start;
  wire [0:0]bresp_low;
  wire bresp_low_0;
  wire \gen_read.ar_done_i_1_n_0 ;
  wire \gen_read.ar_start_reg_n_0 ;
  wire \gen_read.m_axi_arvalid_i_i_1_n_0 ;
  wire \gen_read.m_axi_arvalid_i_i_2_n_0 ;
  wire \gen_read.m_axi_arvalid_i_reg_0 ;
  wire \gen_read.m_axi_rready_i_i_1_n_0 ;
  wire \gen_read.m_axi_rready_i_i_2_n_0 ;
  wire \gen_read.s_axi_arready_i_i_1_n_0 ;
  wire \gen_read.s_axi_arready_i_reg_0 ;
  wire \gen_read.s_axi_rvalid_i_i_1_n_0 ;
  wire \gen_read.s_axi_rvalid_i_reg_0 ;
  wire \gen_read.split_ar_i_3_n_0 ;
  wire \gen_read.split_ar_reg_n_0 ;
  wire \gen_read.split_r_i_1_n_0 ;
  wire \gen_write.aw_done_i_2_n_0 ;
  wire \gen_write.aw_done_reg_n_0 ;
  wire \gen_write.aw_start_reg_n_0 ;
  wire \gen_write.m_axi_awvalid_i_i_1_n_0 ;
  wire \gen_write.m_axi_awvalid_i_i_3_n_0 ;
  wire \gen_write.m_axi_awvalid_i_i_4_n_0 ;
  wire \gen_write.m_axi_awvalid_i_reg_0 ;
  wire \gen_write.m_axi_bready_i_i_1_n_0 ;
  wire \gen_write.m_axi_wvalid_i_i_1_n_0 ;
  wire \gen_write.m_axi_wvalid_i_i_2_n_0 ;
  wire \gen_write.m_axi_wvalid_i_reg_0 ;
  wire \gen_write.s_axi_awready_i_i_1_n_0 ;
  wire \gen_write.s_axi_awready_i_i_2_n_0 ;
  wire \gen_write.s_axi_awready_i_reg_0 ;
  wire \gen_write.s_axi_bvalid_i_i_1_n_0 ;
  wire \gen_write.s_axi_bvalid_i_reg_0 ;
  wire \gen_write.split_aw_reg_n_0 ;
  wire \gen_write.split_w_i_1_n_0 ;
  wire \gen_write.split_w_reg_n_0 ;
  wire \gen_write.w_done_i_1_n_0 ;
  wire \gen_write.w_done_reg_0 ;
  wire \gen_write.w_done_reg_n_0 ;
  wire high_aw;
  wire high_aw0;
  wire [39:0]m_axi_araddr;
  wire m_axi_arready;
  wire m_axi_arvalid_i22_out;
  wire m_axi_awready;
  wire m_axi_awvalid_i058_out__4;
  wire m_axi_awvalid_i1__0;
  wire m_axi_awvalid_i49_out__0;
  wire m_axi_bready;
  wire m_axi_bready_i__1;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid_i;
  wire out;
  wire [1:1]p_0_in2_in;
  wire [31:0]rdata_low;
  wire rdata_low_1;
  wire [0:0]rresp_low;
  wire [1:1]rresp_low_2;
  wire [39:0]s_axi_araddr;
  wire s_axi_arvalid;
  wire [39:0]s_axi_awaddr;
  wire s_axi_awready_i162_out__0;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire [63:0]s_axi_wdata;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire split_ar;
  wire split_aw0;
  wire split_aw152_in;
  wire split_aw2__2;
  wire split_aw38_out;
  wire split_r;
  wire w_done;

  LUT6 #(
    .INIT(64'hEF11EF00EF00EF00)) 
    \gen_read.ar_done_i_1 
       (.I0(\gen_read.s_axi_rvalid_i_reg_0 ),
        .I1(\gen_read.s_axi_arready_i_reg_0 ),
        .I2(m_axi_rvalid),
        .I3(ar_done),
        .I4(m_axi_arready),
        .I5(\gen_read.m_axi_arvalid_i_reg_0 ),
        .O(\gen_read.ar_done_i_1_n_0 ));
  FDRE \gen_read.ar_done_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_read.ar_done_i_1_n_0 ),
        .Q(ar_done),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.ar_start_reg 
       (.C(out),
        .CE(split_ar),
        .D(split_ar),
        .Q(\gen_read.ar_start_reg_n_0 ),
        .R(ar_start));
  LUT6 #(
    .INIT(64'hFFFFFFFF0F22FF00)) 
    \gen_read.m_axi_arvalid_i_i_1 
       (.I0(s_axi_arvalid),
        .I1(\gen_write.aw_start_reg_n_0 ),
        .I2(m_axi_arready),
        .I3(\gen_read.m_axi_arvalid_i_reg_0 ),
        .I4(\gen_read.m_axi_arvalid_i_i_2_n_0 ),
        .I5(m_axi_arvalid_i22_out),
        .O(\gen_read.m_axi_arvalid_i_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \gen_read.m_axi_arvalid_i_i_2 
       (.I0(\gen_read.s_axi_rvalid_i_reg_0 ),
        .I1(ar_done),
        .I2(\gen_read.s_axi_arready_i_reg_0 ),
        .O(\gen_read.m_axi_arvalid_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \gen_read.m_axi_arvalid_i_i_3 
       (.I0(m_axi_rvalid),
        .I1(ar_done),
        .I2(split_r),
        .I3(\gen_read.split_ar_reg_n_0 ),
        .I4(\gen_read.s_axi_arready_i_reg_0 ),
        .I5(\gen_read.s_axi_rvalid_i_reg_0 ),
        .O(m_axi_arvalid_i22_out));
  FDRE #(
    .INIT(1'b0)) 
    \gen_read.m_axi_arvalid_i_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_read.m_axi_arvalid_i_i_1_n_0 ),
        .Q(\gen_read.m_axi_arvalid_i_reg_0 ),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888B8888888888)) 
    \gen_read.m_axi_rready_i_i_1 
       (.I0(s_axi_rready),
        .I1(\gen_read.s_axi_rvalid_i_reg_0 ),
        .I2(\gen_read.s_axi_arready_i_reg_0 ),
        .I3(\gen_read.split_ar_reg_n_0 ),
        .I4(split_r),
        .I5(\gen_read.m_axi_rready_i_i_2_n_0 ),
        .O(\gen_read.m_axi_rready_i_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_read.m_axi_rready_i_i_2 
       (.I0(m_axi_rvalid),
        .I1(ar_done),
        .O(\gen_read.m_axi_rready_i_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_read.m_axi_rready_i_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_read.m_axi_rready_i_i_1_n_0 ),
        .Q(m_axi_rready),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \gen_read.rdata_low[31]_i_1 
       (.I0(\gen_read.split_ar_reg_n_0 ),
        .I1(split_r),
        .I2(\gen_read.s_axi_arready_i_reg_0 ),
        .I3(\gen_read.s_axi_rvalid_i_reg_0 ),
        .I4(ar_done),
        .I5(m_axi_rvalid),
        .O(rdata_low_1));
  FDRE \gen_read.rdata_low_reg[0] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rdata[0]),
        .Q(rdata_low[0]),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rdata_low_reg[10] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rdata[10]),
        .Q(rdata_low[10]),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rdata_low_reg[11] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rdata[11]),
        .Q(rdata_low[11]),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rdata_low_reg[12] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rdata[12]),
        .Q(rdata_low[12]),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rdata_low_reg[13] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rdata[13]),
        .Q(rdata_low[13]),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rdata_low_reg[14] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rdata[14]),
        .Q(rdata_low[14]),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rdata_low_reg[15] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rdata[15]),
        .Q(rdata_low[15]),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rdata_low_reg[16] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rdata[16]),
        .Q(rdata_low[16]),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rdata_low_reg[17] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rdata[17]),
        .Q(rdata_low[17]),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rdata_low_reg[18] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rdata[18]),
        .Q(rdata_low[18]),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rdata_low_reg[19] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rdata[19]),
        .Q(rdata_low[19]),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rdata_low_reg[1] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rdata[1]),
        .Q(rdata_low[1]),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rdata_low_reg[20] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rdata[20]),
        .Q(rdata_low[20]),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rdata_low_reg[21] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rdata[21]),
        .Q(rdata_low[21]),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rdata_low_reg[22] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rdata[22]),
        .Q(rdata_low[22]),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rdata_low_reg[23] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rdata[23]),
        .Q(rdata_low[23]),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rdata_low_reg[24] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rdata[24]),
        .Q(rdata_low[24]),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rdata_low_reg[25] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rdata[25]),
        .Q(rdata_low[25]),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rdata_low_reg[26] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rdata[26]),
        .Q(rdata_low[26]),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rdata_low_reg[27] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rdata[27]),
        .Q(rdata_low[27]),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rdata_low_reg[28] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rdata[28]),
        .Q(rdata_low[28]),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rdata_low_reg[29] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rdata[29]),
        .Q(rdata_low[29]),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rdata_low_reg[2] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rdata[2]),
        .Q(rdata_low[2]),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rdata_low_reg[30] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rdata[30]),
        .Q(rdata_low[30]),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rdata_low_reg[31] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rdata[31]),
        .Q(rdata_low[31]),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rdata_low_reg[3] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rdata[3]),
        .Q(rdata_low[3]),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rdata_low_reg[4] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rdata[4]),
        .Q(rdata_low[4]),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rdata_low_reg[5] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rdata[5]),
        .Q(rdata_low[5]),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rdata_low_reg[6] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rdata[6]),
        .Q(rdata_low[6]),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rdata_low_reg[7] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rdata[7]),
        .Q(rdata_low[7]),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rdata_low_reg[8] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rdata[8]),
        .Q(rdata_low[8]),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rdata_low_reg[9] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rdata[9]),
        .Q(rdata_low[9]),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rresp_low_reg[0] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rresp[0]),
        .Q(rresp_low),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_read.rresp_low_reg[1] 
       (.C(out),
        .CE(rdata_low_1),
        .D(m_axi_rresp[1]),
        .Q(rresp_low_2),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000000008088)) 
    \gen_read.s_axi_arready_i_i_1 
       (.I0(m_axi_rvalid),
        .I1(ar_done),
        .I2(split_r),
        .I3(\gen_read.split_ar_reg_n_0 ),
        .I4(\gen_read.s_axi_rvalid_i_reg_0 ),
        .I5(\gen_read.s_axi_arready_i_reg_0 ),
        .O(\gen_read.s_axi_arready_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_read.s_axi_arready_i_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_read.s_axi_arready_i_i_1_n_0 ),
        .Q(\gen_read.s_axi_arready_i_reg_0 ),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \gen_read.s_axi_rvalid_i_i_1 
       (.I0(s_axi_rready),
        .I1(\gen_read.s_axi_rvalid_i_reg_0 ),
        .I2(\gen_read.s_axi_arready_i_reg_0 ),
        .O(\gen_read.s_axi_rvalid_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_read.s_axi_rvalid_i_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_read.s_axi_rvalid_i_i_1_n_0 ),
        .Q(\gen_read.s_axi_rvalid_i_reg_0 ),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \gen_read.split_ar_i_1 
       (.I0(s_axi_rready),
        .I1(\gen_read.s_axi_rvalid_i_reg_0 ),
        .I2(\gen_write.w_done_reg_0 ),
        .O(ar_start));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \gen_read.split_ar_i_2 
       (.I0(\gen_read.s_axi_arready_i_reg_0 ),
        .I1(ar_done),
        .I2(\gen_read.s_axi_rvalid_i_reg_0 ),
        .I3(s_axi_arvalid),
        .I4(\gen_write.aw_start_reg_n_0 ),
        .I5(\gen_read.m_axi_arvalid_i_reg_0 ),
        .O(split_ar));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_read.split_ar_i_3 
       (.I0(s_axi_araddr[2]),
        .O(\gen_read.split_ar_i_3_n_0 ));
  FDRE \gen_read.split_ar_reg 
       (.C(out),
        .CE(split_ar),
        .D(\gen_read.split_ar_i_3_n_0 ),
        .Q(\gen_read.split_ar_reg_n_0 ),
        .R(ar_start));
  LUT5 #(
    .INIT(32'h00E0E0E0)) 
    \gen_read.split_r_i_1 
       (.I0(split_r),
        .I1(m_axi_arvalid_i22_out),
        .I2(\gen_write.w_done_reg_0 ),
        .I3(\gen_read.s_axi_rvalid_i_reg_0 ),
        .I4(s_axi_rready),
        .O(\gen_read.split_r_i_1_n_0 ));
  FDRE \gen_read.split_r_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_read.split_r_i_1_n_0 ),
        .Q(split_r),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h10000000FFFFFFFF)) 
    \gen_write.aw_done_i_1 
       (.I0(\gen_write.s_axi_bvalid_i_reg_0 ),
        .I1(\gen_write.s_axi_awready_i_reg_0 ),
        .I2(\gen_write.w_done_reg_n_0 ),
        .I3(\gen_write.aw_done_reg_n_0 ),
        .I4(m_axi_bvalid),
        .I5(\gen_write.w_done_reg_0 ),
        .O(w_done));
  LUT5 #(
    .INIT(32'hFFFF1000)) 
    \gen_write.aw_done_i_2 
       (.I0(\gen_write.s_axi_bvalid_i_reg_0 ),
        .I1(\gen_write.s_axi_awready_i_reg_0 ),
        .I2(\gen_write.m_axi_awvalid_i_reg_0 ),
        .I3(m_axi_awready),
        .I4(\gen_write.aw_done_reg_n_0 ),
        .O(\gen_write.aw_done_i_2_n_0 ));
  FDRE \gen_write.aw_done_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_write.aw_done_i_2_n_0 ),
        .Q(\gen_write.aw_done_reg_n_0 ),
        .R(w_done));
  LUT3 #(
    .INIT(8'h8F)) 
    \gen_write.aw_start_i_1 
       (.I0(s_axi_bready),
        .I1(\gen_write.s_axi_bvalid_i_reg_0 ),
        .I2(\gen_write.w_done_reg_0 ),
        .O(aw_start));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \gen_write.aw_start_i_2 
       (.I0(\gen_write.s_axi_bvalid_i_reg_0 ),
        .I1(\gen_write.s_axi_awready_i_reg_0 ),
        .I2(\gen_write.m_axi_wvalid_i_reg_0 ),
        .I3(\gen_write.m_axi_awvalid_i_reg_0 ),
        .I4(s_axi_awready_i162_out__0),
        .I5(m_axi_awvalid_i058_out__4),
        .O(split_aw38_out));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \gen_write.aw_start_i_3 
       (.I0(s_axi_awvalid),
        .I1(\gen_write.aw_done_reg_n_0 ),
        .I2(s_axi_wvalid),
        .I3(\gen_read.ar_start_reg_n_0 ),
        .I4(s_axi_arvalid),
        .I5(\gen_write.w_done_reg_n_0 ),
        .O(m_axi_awvalid_i058_out__4));
  FDRE \gen_write.aw_start_reg 
       (.C(out),
        .CE(split_aw38_out),
        .D(split_aw38_out),
        .Q(\gen_write.aw_start_reg_n_0 ),
        .R(aw_start));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \gen_write.bresp_low[1]_i_1 
       (.I0(s_axi_awready_i162_out__0),
        .I1(\gen_write.s_axi_awready_i_reg_0 ),
        .I2(\gen_write.s_axi_bvalid_i_reg_0 ),
        .I3(m_axi_bvalid),
        .I4(\gen_write.split_aw_reg_n_0 ),
        .I5(\gen_write.split_w_reg_n_0 ),
        .O(bresp_low_0));
  FDRE \gen_write.bresp_low_reg[0] 
       (.C(out),
        .CE(bresp_low_0),
        .D(m_axi_bresp[0]),
        .Q(bresp_low),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE \gen_write.bresp_low_reg[1] 
       (.C(out),
        .CE(bresp_low_0),
        .D(m_axi_bresp[1]),
        .Q(p_0_in2_in),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555554)) 
    \gen_write.high_aw_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(s_axi_wstrb[7]),
        .I2(s_axi_wstrb[6]),
        .I3(s_axi_wstrb[5]),
        .I4(s_axi_wstrb[4]),
        .I5(split_aw152_in),
        .O(high_aw0));
  FDRE \gen_write.high_aw_reg 
       (.C(out),
        .CE(split_aw38_out),
        .D(high_aw0),
        .Q(high_aw),
        .R(aw_start));
  LUT6 #(
    .INIT(64'hFEFEFEFF02020200)) 
    \gen_write.m_axi_awvalid_i_i_1 
       (.I0(m_axi_wvalid_i),
        .I1(\gen_write.s_axi_awready_i_reg_0 ),
        .I2(\gen_write.s_axi_bvalid_i_reg_0 ),
        .I3(\gen_write.m_axi_awvalid_i_i_3_n_0 ),
        .I4(\gen_write.m_axi_awvalid_i_i_4_n_0 ),
        .I5(\gen_write.m_axi_awvalid_i_reg_0 ),
        .O(\gen_write.m_axi_awvalid_i_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h22002200220022F0)) 
    \gen_write.m_axi_awvalid_i_i_2 
       (.I0(\gen_write.split_aw_reg_n_0 ),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(m_axi_awvalid_i058_out__4),
        .I3(s_axi_awready_i162_out__0),
        .I4(\gen_write.m_axi_wvalid_i_reg_0 ),
        .I5(\gen_write.m_axi_awvalid_i_reg_0 ),
        .O(m_axi_wvalid_i));
  LUT6 #(
    .INIT(64'h02F2020202020202)) 
    \gen_write.m_axi_awvalid_i_i_3 
       (.I0(m_axi_awvalid_i058_out__4),
        .I1(m_axi_awvalid_i1__0),
        .I2(s_axi_awready_i162_out__0),
        .I3(\gen_write.split_w_reg_n_0 ),
        .I4(\gen_write.split_aw_reg_n_0 ),
        .I5(m_axi_bvalid),
        .O(\gen_write.m_axi_awvalid_i_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7000)) 
    \gen_write.m_axi_awvalid_i_i_4 
       (.I0(\gen_write.aw_done_reg_n_0 ),
        .I1(\gen_write.w_done_reg_n_0 ),
        .I2(m_axi_awready),
        .I3(\gen_write.m_axi_awvalid_i_reg_0 ),
        .O(\gen_write.m_axi_awvalid_i_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_write.m_axi_awvalid_i_i_5 
       (.I0(\gen_write.m_axi_awvalid_i_reg_0 ),
        .I1(\gen_write.m_axi_wvalid_i_reg_0 ),
        .O(m_axi_awvalid_i1__0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_write.m_axi_awvalid_i_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_write.m_axi_awvalid_i_i_1_n_0 ),
        .Q(\gen_write.m_axi_awvalid_i_reg_0 ),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8B88888888888888)) 
    \gen_write.m_axi_bready_i_i_1 
       (.I0(s_axi_bready),
        .I1(\gen_write.s_axi_bvalid_i_reg_0 ),
        .I2(\gen_write.s_axi_awready_i_reg_0 ),
        .I3(\gen_write.aw_done_reg_n_0 ),
        .I4(\gen_write.w_done_reg_n_0 ),
        .I5(m_axi_awvalid_i49_out__0),
        .O(\gen_write.m_axi_bready_i_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_write.m_axi_bready_i_i_2 
       (.I0(\gen_write.split_w_reg_n_0 ),
        .I1(\gen_write.split_aw_reg_n_0 ),
        .I2(m_axi_bvalid),
        .O(m_axi_awvalid_i49_out__0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_write.m_axi_bready_i_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_write.m_axi_bready_i_i_1_n_0 ),
        .Q(m_axi_bready),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFF02020200)) 
    \gen_write.m_axi_wvalid_i_i_1 
       (.I0(m_axi_wvalid_i),
        .I1(\gen_write.s_axi_awready_i_reg_0 ),
        .I2(\gen_write.s_axi_bvalid_i_reg_0 ),
        .I3(\gen_write.m_axi_awvalid_i_i_3_n_0 ),
        .I4(\gen_write.m_axi_wvalid_i_i_2_n_0 ),
        .I5(\gen_write.m_axi_wvalid_i_reg_0 ),
        .O(\gen_write.m_axi_wvalid_i_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7000)) 
    \gen_write.m_axi_wvalid_i_i_2 
       (.I0(\gen_write.aw_done_reg_n_0 ),
        .I1(\gen_write.w_done_reg_n_0 ),
        .I2(m_axi_wready),
        .I3(\gen_write.m_axi_wvalid_i_reg_0 ),
        .O(\gen_write.m_axi_wvalid_i_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_write.m_axi_wvalid_i_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_write.m_axi_wvalid_i_i_1_n_0 ),
        .Q(\gen_write.m_axi_wvalid_i_reg_0 ),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_write.s_axi_awready_i_i_1 
       (.I0(\gen_write.w_done_reg_0 ),
        .O(\gen_write.s_axi_awready_i_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00000000D000)) 
    \gen_write.s_axi_awready_i_i_2 
       (.I0(\gen_write.split_aw_reg_n_0 ),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(m_axi_bvalid),
        .I3(s_axi_awready_i162_out__0),
        .I4(\gen_write.s_axi_bvalid_i_reg_0 ),
        .I5(\gen_write.s_axi_awready_i_reg_0 ),
        .O(\gen_write.s_axi_awready_i_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_write.s_axi_awready_i_i_3 
       (.I0(\gen_write.aw_done_reg_n_0 ),
        .I1(\gen_write.w_done_reg_n_0 ),
        .O(s_axi_awready_i162_out__0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_write.s_axi_awready_i_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_write.s_axi_awready_i_i_2_n_0 ),
        .Q(\gen_write.s_axi_awready_i_reg_0 ),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h74)) 
    \gen_write.s_axi_bvalid_i_i_1 
       (.I0(s_axi_bready),
        .I1(\gen_write.s_axi_bvalid_i_reg_0 ),
        .I2(\gen_write.s_axi_awready_i_reg_0 ),
        .O(\gen_write.s_axi_bvalid_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_write.s_axi_bvalid_i_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_write.s_axi_bvalid_i_i_1_n_0 ),
        .Q(\gen_write.s_axi_bvalid_i_reg_0 ),
        .R(\gen_write.s_axi_awready_i_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    \gen_write.split_aw_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(s_axi_wstrb[7]),
        .I2(s_axi_wstrb[6]),
        .I3(s_axi_wstrb[5]),
        .I4(s_axi_wstrb[4]),
        .I5(split_aw152_in),
        .O(split_aw0));
  FDRE \gen_write.split_aw_reg 
       (.C(out),
        .CE(split_aw38_out),
        .D(split_aw0),
        .Q(\gen_write.split_aw_reg_n_0 ),
        .R(aw_start));
  LUT5 #(
    .INIT(32'h00E0A0E0)) 
    \gen_write.split_w_i_1 
       (.I0(\gen_write.split_w_reg_n_0 ),
        .I1(m_axi_bready_i__1),
        .I2(\gen_write.w_done_reg_0 ),
        .I3(\gen_write.s_axi_bvalid_i_reg_0 ),
        .I4(s_axi_bready),
        .O(\gen_write.split_w_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \gen_write.split_w_i_2 
       (.I0(\gen_write.s_axi_awready_i_reg_0 ),
        .I1(\gen_write.aw_done_reg_n_0 ),
        .I2(\gen_write.w_done_reg_n_0 ),
        .I3(m_axi_bvalid),
        .I4(\gen_write.split_aw_reg_n_0 ),
        .I5(\gen_write.split_w_reg_n_0 ),
        .O(m_axi_bready_i__1));
  FDRE \gen_write.split_w_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_write.split_w_i_1_n_0 ),
        .Q(\gen_write.split_w_reg_n_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF1000)) 
    \gen_write.w_done_i_1 
       (.I0(\gen_write.s_axi_bvalid_i_reg_0 ),
        .I1(\gen_write.s_axi_awready_i_reg_0 ),
        .I2(\gen_write.m_axi_wvalid_i_reg_0 ),
        .I3(m_axi_wready),
        .I4(\gen_write.w_done_reg_n_0 ),
        .O(\gen_write.w_done_i_1_n_0 ));
  FDRE \gen_write.w_done_reg 
       (.C(out),
        .CE(1'b1),
        .D(\gen_write.w_done_i_1_n_0 ),
        .Q(\gen_write.w_done_reg_n_0 ),
        .R(w_done));
  LUT6 #(
    .INIT(64'h0002000200030000)) 
    \m_axi_araddr[0]_INST_0 
       (.I0(s_axi_araddr[0]),
        .I1(split_r),
        .I2(high_aw),
        .I3(\gen_write.split_w_reg_n_0 ),
        .I4(s_axi_awaddr[0]),
        .I5(\gen_read.ar_start_reg_n_0 ),
        .O(m_axi_araddr[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[10]_INST_0 
       (.I0(s_axi_araddr[10]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[10]),
        .O(m_axi_araddr[10]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[11]_INST_0 
       (.I0(s_axi_araddr[11]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[11]),
        .O(m_axi_araddr[11]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[12]_INST_0 
       (.I0(s_axi_araddr[12]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[12]),
        .O(m_axi_araddr[12]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[13]_INST_0 
       (.I0(s_axi_araddr[13]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[13]),
        .O(m_axi_araddr[13]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[14]_INST_0 
       (.I0(s_axi_araddr[14]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[14]),
        .O(m_axi_araddr[14]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[15]_INST_0 
       (.I0(s_axi_araddr[15]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[15]),
        .O(m_axi_araddr[15]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[16]_INST_0 
       (.I0(s_axi_araddr[16]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[16]),
        .O(m_axi_araddr[16]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[17]_INST_0 
       (.I0(s_axi_araddr[17]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[17]),
        .O(m_axi_araddr[17]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[18]_INST_0 
       (.I0(s_axi_araddr[18]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[18]),
        .O(m_axi_araddr[18]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[19]_INST_0 
       (.I0(s_axi_araddr[19]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[19]),
        .O(m_axi_araddr[19]));
  LUT6 #(
    .INIT(64'h0002000200030000)) 
    \m_axi_araddr[1]_INST_0 
       (.I0(s_axi_araddr[1]),
        .I1(split_r),
        .I2(high_aw),
        .I3(\gen_write.split_w_reg_n_0 ),
        .I4(s_axi_awaddr[1]),
        .I5(\gen_read.ar_start_reg_n_0 ),
        .O(m_axi_araddr[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[20]_INST_0 
       (.I0(s_axi_araddr[20]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[20]),
        .O(m_axi_araddr[20]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[21]_INST_0 
       (.I0(s_axi_araddr[21]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[21]),
        .O(m_axi_araddr[21]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[22]_INST_0 
       (.I0(s_axi_araddr[22]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[22]),
        .O(m_axi_araddr[22]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[23]_INST_0 
       (.I0(s_axi_araddr[23]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[23]),
        .O(m_axi_araddr[23]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[24]_INST_0 
       (.I0(s_axi_araddr[24]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[24]),
        .O(m_axi_araddr[24]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[25]_INST_0 
       (.I0(s_axi_araddr[25]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[25]),
        .O(m_axi_araddr[25]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[26]_INST_0 
       (.I0(s_axi_araddr[26]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[26]),
        .O(m_axi_araddr[26]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[27]_INST_0 
       (.I0(s_axi_araddr[27]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[27]),
        .O(m_axi_araddr[27]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[28]_INST_0 
       (.I0(s_axi_araddr[28]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[28]),
        .O(m_axi_araddr[28]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[29]_INST_0 
       (.I0(s_axi_araddr[29]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[29]),
        .O(m_axi_araddr[29]));
  LUT6 #(
    .INIT(64'hFFFFFFFEFEFEFFFE)) 
    \m_axi_araddr[2]_INST_0 
       (.I0(split_r),
        .I1(high_aw),
        .I2(\gen_write.split_w_reg_n_0 ),
        .I3(s_axi_awaddr[2]),
        .I4(\gen_read.ar_start_reg_n_0 ),
        .I5(s_axi_araddr[2]),
        .O(m_axi_araddr[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[30]_INST_0 
       (.I0(s_axi_araddr[30]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[30]),
        .O(m_axi_araddr[30]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[31]_INST_0 
       (.I0(s_axi_araddr[31]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[31]),
        .O(m_axi_araddr[31]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[32]_INST_0 
       (.I0(s_axi_araddr[32]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[32]),
        .O(m_axi_araddr[32]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[33]_INST_0 
       (.I0(s_axi_araddr[33]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[33]),
        .O(m_axi_araddr[33]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[34]_INST_0 
       (.I0(s_axi_araddr[34]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[34]),
        .O(m_axi_araddr[34]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[35]_INST_0 
       (.I0(s_axi_araddr[35]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[35]),
        .O(m_axi_araddr[35]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[36]_INST_0 
       (.I0(s_axi_araddr[36]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[36]),
        .O(m_axi_araddr[36]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[37]_INST_0 
       (.I0(s_axi_araddr[37]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[37]),
        .O(m_axi_araddr[37]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[38]_INST_0 
       (.I0(s_axi_araddr[38]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[38]),
        .O(m_axi_araddr[38]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[39]_INST_0 
       (.I0(s_axi_araddr[39]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[39]),
        .O(m_axi_araddr[39]));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[3]_INST_0 
       (.I0(s_axi_araddr[3]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[3]),
        .O(m_axi_araddr[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[4]_INST_0 
       (.I0(s_axi_araddr[4]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[4]),
        .O(m_axi_araddr[4]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[5]_INST_0 
       (.I0(s_axi_araddr[5]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[5]),
        .O(m_axi_araddr[5]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[6]_INST_0 
       (.I0(s_axi_araddr[6]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[6]),
        .O(m_axi_araddr[6]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[7]_INST_0 
       (.I0(s_axi_araddr[7]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[7]),
        .O(m_axi_araddr[7]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[8]_INST_0 
       (.I0(s_axi_araddr[8]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[8]),
        .O(m_axi_araddr[8]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axi_araddr[9]_INST_0 
       (.I0(s_axi_araddr[9]),
        .I1(\gen_read.ar_start_reg_n_0 ),
        .I2(s_axi_awaddr[9]),
        .O(m_axi_araddr[9]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wdata[0]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wdata[32]),
        .I5(s_axi_wdata[0]),
        .O(m_axi_wdata[0]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wdata[10]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wdata[42]),
        .I5(s_axi_wdata[10]),
        .O(m_axi_wdata[10]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wdata[11]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wdata[43]),
        .I5(s_axi_wdata[11]),
        .O(m_axi_wdata[11]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wdata[12]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wdata[44]),
        .I5(s_axi_wdata[12]),
        .O(m_axi_wdata[12]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wdata[13]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wdata[45]),
        .I5(s_axi_wdata[13]),
        .O(m_axi_wdata[13]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wdata[14]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wdata[46]),
        .I5(s_axi_wdata[14]),
        .O(m_axi_wdata[14]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wdata[15]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wdata[47]),
        .I5(s_axi_wdata[15]),
        .O(m_axi_wdata[15]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wdata[16]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wdata[48]),
        .I5(s_axi_wdata[16]),
        .O(m_axi_wdata[16]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wdata[17]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wdata[49]),
        .I5(s_axi_wdata[17]),
        .O(m_axi_wdata[17]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wdata[18]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wdata[50]),
        .I5(s_axi_wdata[18]),
        .O(m_axi_wdata[18]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wdata[19]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wdata[51]),
        .I5(s_axi_wdata[19]),
        .O(m_axi_wdata[19]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wdata[1]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wdata[33]),
        .I5(s_axi_wdata[1]),
        .O(m_axi_wdata[1]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wdata[20]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wdata[52]),
        .I5(s_axi_wdata[20]),
        .O(m_axi_wdata[20]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wdata[21]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wdata[53]),
        .I5(s_axi_wdata[21]),
        .O(m_axi_wdata[21]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wdata[22]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wdata[54]),
        .I5(s_axi_wdata[22]),
        .O(m_axi_wdata[22]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wdata[23]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wdata[55]),
        .I5(s_axi_wdata[23]),
        .O(m_axi_wdata[23]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wdata[24]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wdata[56]),
        .I5(s_axi_wdata[24]),
        .O(m_axi_wdata[24]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wdata[25]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wdata[57]),
        .I5(s_axi_wdata[25]),
        .O(m_axi_wdata[25]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wdata[26]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wdata[58]),
        .I5(s_axi_wdata[26]),
        .O(m_axi_wdata[26]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wdata[27]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wdata[59]),
        .I5(s_axi_wdata[27]),
        .O(m_axi_wdata[27]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wdata[28]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wdata[60]),
        .I5(s_axi_wdata[28]),
        .O(m_axi_wdata[28]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wdata[29]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wdata[61]),
        .I5(s_axi_wdata[29]),
        .O(m_axi_wdata[29]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wdata[2]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wdata[34]),
        .I5(s_axi_wdata[2]),
        .O(m_axi_wdata[2]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wdata[30]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wdata[62]),
        .I5(s_axi_wdata[30]),
        .O(m_axi_wdata[30]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wdata[31]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wdata[63]),
        .I5(s_axi_wdata[31]),
        .O(m_axi_wdata[31]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axi_wdata[31]_INST_0_i_1 
       (.I0(s_axi_wstrb[3]),
        .I1(s_axi_wstrb[2]),
        .I2(s_axi_wstrb[1]),
        .I3(s_axi_wstrb[0]),
        .O(split_aw152_in));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wdata[3]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wdata[35]),
        .I5(s_axi_wdata[3]),
        .O(m_axi_wdata[3]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wdata[4]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wdata[36]),
        .I5(s_axi_wdata[4]),
        .O(m_axi_wdata[4]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wdata[5]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wdata[37]),
        .I5(s_axi_wdata[5]),
        .O(m_axi_wdata[5]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wdata[6]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wdata[38]),
        .I5(s_axi_wdata[6]),
        .O(m_axi_wdata[6]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wdata[7]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wdata[39]),
        .I5(s_axi_wdata[7]),
        .O(m_axi_wdata[7]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wdata[8]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wdata[40]),
        .I5(s_axi_wdata[8]),
        .O(m_axi_wdata[8]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wdata[9]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wdata[41]),
        .I5(s_axi_wdata[9]),
        .O(m_axi_wdata[9]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wstrb[0]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wstrb[4]),
        .I5(s_axi_wstrb[0]),
        .O(m_axi_wstrb[0]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wstrb[1]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wstrb[5]),
        .I5(s_axi_wstrb[1]),
        .O(m_axi_wstrb[1]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wstrb[2]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wstrb[6]),
        .I5(s_axi_wstrb[2]),
        .O(m_axi_wstrb[2]));
  LUT6 #(
    .INIT(64'hFFFF1011EFEE0000)) 
    \m_axi_wstrb[3]_INST_0 
       (.I0(s_axi_awaddr[2]),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(split_aw152_in),
        .I3(split_aw2__2),
        .I4(s_axi_wstrb[7]),
        .I5(s_axi_wstrb[3]),
        .O(m_axi_wstrb[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFA8A8A8A)) 
    \s_axi_bresp[0]_INST_0 
       (.I0(m_axi_bresp[0]),
        .I1(m_axi_bresp[1]),
        .I2(\gen_write.split_w_reg_n_0 ),
        .I3(bresp_low),
        .I4(p_0_in2_in),
        .O(s_axi_bresp[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \s_axi_bresp[1]_INST_0 
       (.I0(p_0_in2_in),
        .I1(\gen_write.split_w_reg_n_0 ),
        .I2(m_axi_bresp[1]),
        .O(s_axi_bresp[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[0]_INST_0 
       (.I0(rdata_low[0]),
        .I1(split_r),
        .I2(m_axi_rdata[0]),
        .O(s_axi_rdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[10]_INST_0 
       (.I0(rdata_low[10]),
        .I1(split_r),
        .I2(m_axi_rdata[10]),
        .O(s_axi_rdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[11]_INST_0 
       (.I0(rdata_low[11]),
        .I1(split_r),
        .I2(m_axi_rdata[11]),
        .O(s_axi_rdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[12]_INST_0 
       (.I0(rdata_low[12]),
        .I1(split_r),
        .I2(m_axi_rdata[12]),
        .O(s_axi_rdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[13]_INST_0 
       (.I0(rdata_low[13]),
        .I1(split_r),
        .I2(m_axi_rdata[13]),
        .O(s_axi_rdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[14]_INST_0 
       (.I0(rdata_low[14]),
        .I1(split_r),
        .I2(m_axi_rdata[14]),
        .O(s_axi_rdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[15]_INST_0 
       (.I0(rdata_low[15]),
        .I1(split_r),
        .I2(m_axi_rdata[15]),
        .O(s_axi_rdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[16]_INST_0 
       (.I0(rdata_low[16]),
        .I1(split_r),
        .I2(m_axi_rdata[16]),
        .O(s_axi_rdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[17]_INST_0 
       (.I0(rdata_low[17]),
        .I1(split_r),
        .I2(m_axi_rdata[17]),
        .O(s_axi_rdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[18]_INST_0 
       (.I0(rdata_low[18]),
        .I1(split_r),
        .I2(m_axi_rdata[18]),
        .O(s_axi_rdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[19]_INST_0 
       (.I0(rdata_low[19]),
        .I1(split_r),
        .I2(m_axi_rdata[19]),
        .O(s_axi_rdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[1]_INST_0 
       (.I0(rdata_low[1]),
        .I1(split_r),
        .I2(m_axi_rdata[1]),
        .O(s_axi_rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[20]_INST_0 
       (.I0(rdata_low[20]),
        .I1(split_r),
        .I2(m_axi_rdata[20]),
        .O(s_axi_rdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[21]_INST_0 
       (.I0(rdata_low[21]),
        .I1(split_r),
        .I2(m_axi_rdata[21]),
        .O(s_axi_rdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[22]_INST_0 
       (.I0(rdata_low[22]),
        .I1(split_r),
        .I2(m_axi_rdata[22]),
        .O(s_axi_rdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[23]_INST_0 
       (.I0(rdata_low[23]),
        .I1(split_r),
        .I2(m_axi_rdata[23]),
        .O(s_axi_rdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[24]_INST_0 
       (.I0(rdata_low[24]),
        .I1(split_r),
        .I2(m_axi_rdata[24]),
        .O(s_axi_rdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[25]_INST_0 
       (.I0(rdata_low[25]),
        .I1(split_r),
        .I2(m_axi_rdata[25]),
        .O(s_axi_rdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[26]_INST_0 
       (.I0(rdata_low[26]),
        .I1(split_r),
        .I2(m_axi_rdata[26]),
        .O(s_axi_rdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[27]_INST_0 
       (.I0(rdata_low[27]),
        .I1(split_r),
        .I2(m_axi_rdata[27]),
        .O(s_axi_rdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[28]_INST_0 
       (.I0(rdata_low[28]),
        .I1(split_r),
        .I2(m_axi_rdata[28]),
        .O(s_axi_rdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[29]_INST_0 
       (.I0(rdata_low[29]),
        .I1(split_r),
        .I2(m_axi_rdata[29]),
        .O(s_axi_rdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[2]_INST_0 
       (.I0(rdata_low[2]),
        .I1(split_r),
        .I2(m_axi_rdata[2]),
        .O(s_axi_rdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[30]_INST_0 
       (.I0(rdata_low[30]),
        .I1(split_r),
        .I2(m_axi_rdata[30]),
        .O(s_axi_rdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[31]_INST_0 
       (.I0(rdata_low[31]),
        .I1(split_r),
        .I2(m_axi_rdata[31]),
        .O(s_axi_rdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[3]_INST_0 
       (.I0(rdata_low[3]),
        .I1(split_r),
        .I2(m_axi_rdata[3]),
        .O(s_axi_rdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[4]_INST_0 
       (.I0(rdata_low[4]),
        .I1(split_r),
        .I2(m_axi_rdata[4]),
        .O(s_axi_rdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[5]_INST_0 
       (.I0(rdata_low[5]),
        .I1(split_r),
        .I2(m_axi_rdata[5]),
        .O(s_axi_rdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[6]_INST_0 
       (.I0(rdata_low[6]),
        .I1(split_r),
        .I2(m_axi_rdata[6]),
        .O(s_axi_rdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[7]_INST_0 
       (.I0(rdata_low[7]),
        .I1(split_r),
        .I2(m_axi_rdata[7]),
        .O(s_axi_rdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[8]_INST_0 
       (.I0(rdata_low[8]),
        .I1(split_r),
        .I2(m_axi_rdata[8]),
        .O(s_axi_rdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rdata[9]_INST_0 
       (.I0(rdata_low[9]),
        .I1(split_r),
        .I2(m_axi_rdata[9]),
        .O(s_axi_rdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFA8A8A8A)) 
    \s_axi_rresp[0]_INST_0 
       (.I0(m_axi_rresp[0]),
        .I1(m_axi_rresp[1]),
        .I2(split_r),
        .I3(rresp_low),
        .I4(rresp_low_2),
        .O(s_axi_rresp[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \s_axi_rresp[1]_INST_0 
       (.I0(rresp_low_2),
        .I1(split_r),
        .I2(m_axi_rresp[1]),
        .O(s_axi_rresp[1]));
endmodule

(* C_AXI_ADDR_WIDTH = "40" *) (* C_AXI_IS_ACLK_ASYNC = "0" *) (* C_AXI_PROTOCOL = "2" *) 
(* C_AXI_SUPPORTS_READ = "1" *) (* C_AXI_SUPPORTS_WRITE = "1" *) (* C_FAMILY = "zynquplus" *) 
(* C_FIFO_MODE = "0" *) (* C_MAX_SPLIT_BEATS = "16" *) (* C_M_AXI_ACLK_RATIO = "2" *) 
(* C_M_AXI_BYTES_LOG = "2" *) (* C_M_AXI_DATA_WIDTH = "32" *) (* C_PACKING_LEVEL = "1" *) 
(* C_RATIO = "2" *) (* C_RATIO_LOG = "1" *) (* C_SUPPORTS_ID = "0" *) 
(* C_SYNCHRONIZER_STAGE = "3" *) (* C_S_AXI_ACLK_RATIO = "1" *) (* C_S_AXI_BYTES_LOG = "3" *) 
(* C_S_AXI_DATA_WIDTH = "64" *) (* C_S_AXI_ID_WIDTH = "1" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* ORIG_REF_NAME = "axi_dwidth_converter_v2_1_19_top" *) (* P_AXI3 = "1" *) (* P_AXI4 = "0" *) 
(* P_AXILITE = "2" *) (* P_CONVERSION = "2" *) (* P_MAX_SPLIT_BEATS = "16" *) 
module sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_top
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* keep = "true" *) input s_axi_aclk;
  (* keep = "true" *) input s_axi_aresetn;
  input [0:0]s_axi_awid;
  input [39:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [39:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  (* keep = "true" *) input m_axi_aclk;
  (* keep = "true" *) input m_axi_aresetn;
  output [39:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [39:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  (* RTL_KEEP = "true" *) wire m_axi_aclk;
  wire [39:0]m_axi_araddr;
  (* RTL_KEEP = "true" *) wire m_axi_aresetn;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  (* RTL_KEEP = "true" *) wire s_axi_aclk;
  wire [39:0]s_axi_araddr;
  (* RTL_KEEP = "true" *) wire s_axi_aresetn;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [39:0]s_axi_awaddr;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [63:0]s_axi_wdata;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire split_aw2__2;

  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2:0] = s_axi_arprot;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_awaddr[39:0] = m_axi_araddr;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2:0] = s_axi_awprot;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_rdata[63:32] = m_axi_rdata;
  assign s_axi_rdata[31:0] = \^s_axi_rdata [31:0];
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_wready = s_axi_awready;
  GND GND
       (.G(\<const0> ));
  sys_top_auto_ds_8_axi_dwidth_converter_v2_1_19_axi4lite_downsizer \gen_downsizer.gen_lite_downsizer.lite_downsizer_inst 
       (.\gen_read.m_axi_arvalid_i_reg_0 (m_axi_arvalid),
        .\gen_read.s_axi_arready_i_reg_0 (s_axi_arready),
        .\gen_read.s_axi_rvalid_i_reg_0 (s_axi_rvalid),
        .\gen_write.m_axi_awvalid_i_reg_0 (m_axi_awvalid),
        .\gen_write.m_axi_wvalid_i_reg_0 (m_axi_wvalid),
        .\gen_write.s_axi_awready_i_reg_0 (s_axi_awready),
        .\gen_write.s_axi_bvalid_i_reg_0 (s_axi_bvalid),
        .\gen_write.w_done_reg_0 (s_axi_aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arready(m_axi_arready),
        .m_axi_awready(m_axi_awready),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .out(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_rdata(\^s_axi_rdata ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .split_aw2__2(split_aw2__2));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axi_wdata[31]_INST_0_i_2 
       (.I0(s_axi_wstrb[7]),
        .I1(s_axi_wstrb[6]),
        .I2(s_axi_wstrb[5]),
        .I3(s_axi_wstrb[4]),
        .O(split_aw2__2));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
