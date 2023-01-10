// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
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
// DO NOT MODIFY THIS FILE.


// IP VLNV: crztech:user:nvme_ctrl:1.0
// IP Revision: 16

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module sys_top_nvme_ctrl_0_0 (
  s0_axi_aclk,
  s0_axi_aresetn,
  s0_axi_awaddr,
  s0_axi_awready,
  s0_axi_awvalid,
  s0_axi_awprot,
  s0_axi_wvalid,
  s0_axi_wready,
  s0_axi_wdata,
  s0_axi_wstrb,
  s0_axi_bvalid,
  s0_axi_bready,
  s0_axi_bresp,
  s0_axi_arvalid,
  s0_axi_arready,
  s0_axi_araddr,
  s0_axi_arprot,
  s0_axi_rvalid,
  s0_axi_rready,
  s0_axi_rdata,
  s0_axi_rresp,
  m0_axi_aclk,
  m0_axi_aresetn,
  m0_axi_awid,
  m0_axi_awaddr,
  m0_axi_awlen,
  m0_axi_awsize,
  m0_axi_awburst,
  m0_axi_awlock,
  m0_axi_awcache,
  m0_axi_awprot,
  m0_axi_awregion,
  m0_axi_awqos,
  m0_axi_awuser,
  m0_axi_awvalid,
  m0_axi_awready,
  m0_axi_wid,
  m0_axi_wdata,
  m0_axi_wstrb,
  m0_axi_wlast,
  m0_axi_wuser,
  m0_axi_wvalid,
  m0_axi_wready,
  m0_axi_bid,
  m0_axi_bresp,
  m0_axi_bvalid,
  m0_axi_buser,
  m0_axi_bready,
  m0_axi_arid,
  m0_axi_araddr,
  m0_axi_arlen,
  m0_axi_arsize,
  m0_axi_arburst,
  m0_axi_arlock,
  m0_axi_arcache,
  m0_axi_arprot,
  m0_axi_arregion,
  m0_axi_arqos,
  m0_axi_aruser,
  m0_axi_arvalid,
  m0_axi_arready,
  m0_axi_rid,
  m0_axi_rdata,
  m0_axi_rresp,
  m0_axi_rlast,
  m0_axi_ruser,
  m0_axi_rvalid,
  m0_axi_rready,
  dev_irq_assert,
  pcie_ref_clk_p,
  pcie_ref_clk_n,
  pcie_perst_n,
  pci_exp_txp,
  pci_exp_txn,
  pci_exp_rxp,
  pci_exp_rxn,
  user_lnk_up
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s0_axi_aclk, ASSOCIATED_BUSIF s0_axi, ASSOCIATED_RESET s0_axi_aresetn, FREQ_HZ 199998001, PHASE 0.000, CLK_DOMAIN sys_top_zynq_ultra_ps_e_0_0_pl_clk2, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s0_axi_aclk CLK" *)
input wire s0_axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s0_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s0_axi_aresetn RST" *)
input wire s0_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s0_axi AWADDR" *)
input wire [31 : 0] s0_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s0_axi AWREADY" *)
output wire s0_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s0_axi AWVALID" *)
input wire s0_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s0_axi AWPROT" *)
input wire [2 : 0] s0_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s0_axi WVALID" *)
input wire s0_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s0_axi WREADY" *)
output wire s0_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s0_axi WDATA" *)
input wire [31 : 0] s0_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s0_axi WSTRB" *)
input wire [3 : 0] s0_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s0_axi BVALID" *)
output wire s0_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s0_axi BREADY" *)
input wire s0_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s0_axi BRESP" *)
output wire [1 : 0] s0_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s0_axi ARVALID" *)
input wire s0_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s0_axi ARREADY" *)
output wire s0_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s0_axi ARADDR" *)
input wire [31 : 0] s0_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s0_axi ARPROT" *)
input wire [2 : 0] s0_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s0_axi RVALID" *)
output wire s0_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s0_axi RREADY" *)
input wire s0_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s0_axi RDATA" *)
output wire [31 : 0] s0_axi_rdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s0_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 199998001, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN sys_top_zynq_ultra_ps_e_0_0_pl_clk2, NUM_READ_THREADS 1, \
NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s0_axi RRESP" *)
output wire [1 : 0] s0_axi_rresp;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m0_axi_aclk, ASSOCIATED_BUSIF m0_axi, ASSOCIATED_RESET m0_axi_aresetn, FREQ_HZ 249997498, PHASE 0.000, CLK_DOMAIN sys_top_zynq_ultra_ps_e_0_0_pl_clk3, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m0_axi_aclk CLK" *)
input wire m0_axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m0_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m0_axi_aresetn RST" *)
input wire m0_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi AWID" *)
output wire [0 : 0] m0_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi AWADDR" *)
output wire [31 : 0] m0_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi AWLEN" *)
output wire [7 : 0] m0_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi AWSIZE" *)
output wire [2 : 0] m0_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi AWBURST" *)
output wire [1 : 0] m0_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi AWLOCK" *)
output wire m0_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi AWCACHE" *)
output wire [3 : 0] m0_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi AWPROT" *)
output wire [2 : 0] m0_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi AWREGION" *)
output wire [3 : 0] m0_axi_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi AWQOS" *)
output wire [3 : 0] m0_axi_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi AWUSER" *)
output wire [0 : 0] m0_axi_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi AWVALID" *)
output wire m0_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi AWREADY" *)
input wire m0_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi WID" *)
output wire [0 : 0] m0_axi_wid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi WDATA" *)
output wire [63 : 0] m0_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi WSTRB" *)
output wire [7 : 0] m0_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi WLAST" *)
output wire m0_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi WUSER" *)
output wire [0 : 0] m0_axi_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi WVALID" *)
output wire m0_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi WREADY" *)
input wire m0_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi BID" *)
input wire [0 : 0] m0_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi BRESP" *)
input wire [1 : 0] m0_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi BVALID" *)
input wire m0_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi BUSER" *)
input wire [0 : 0] m0_axi_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi BREADY" *)
output wire m0_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi ARID" *)
output wire [0 : 0] m0_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi ARADDR" *)
output wire [31 : 0] m0_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi ARLEN" *)
output wire [7 : 0] m0_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi ARSIZE" *)
output wire [2 : 0] m0_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi ARBURST" *)
output wire [1 : 0] m0_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi ARLOCK" *)
output wire m0_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi ARCACHE" *)
output wire [3 : 0] m0_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi ARPROT" *)
output wire [2 : 0] m0_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi ARREGION" *)
output wire [3 : 0] m0_axi_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi ARQOS" *)
output wire [3 : 0] m0_axi_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi ARUSER" *)
output wire [0 : 0] m0_axi_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi ARVALID" *)
output wire m0_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi ARREADY" *)
input wire m0_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi RID" *)
input wire [0 : 0] m0_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi RDATA" *)
input wire [63 : 0] m0_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi RRESP" *)
input wire [1 : 0] m0_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi RLAST" *)
input wire m0_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi RUSER" *)
input wire [0 : 0] m0_axi_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi RVALID" *)
input wire m0_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m0_axi, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 249997498, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN sys_top_zynq_ultra_ps_e_0_0_pl_clk3, NUM_READ_THREADS 1, NU\
M_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m0_axi RREADY" *)
output wire m0_axi_rready;
output wire dev_irq_assert;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie_ref_clk_p, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pcie_ref_clk_p CLK, xilinx.com:interface:diff_clock:1.0 pcie_ref CLK_P" *)
input wire pcie_ref_clk_p;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie_ref_clk_n, ASSOCIATED_RESET pcie_perst_n, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0, XIL_INTERFACENAME pcie_ref, CAN_DEBUG false, FREQ_HZ 100000000" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pcie_ref_clk_n CLK, xilinx.com:interface:diff_clock:1.0 pcie_ref CLK_N" *)
input wire pcie_ref_clk_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie_perst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 pcie_perst_n RST" *)
input wire pcie_perst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pci_exp txp" *)
output wire [15 : 0] pci_exp_txp;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pci_exp txn" *)
output wire [15 : 0] pci_exp_txn;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pci_exp rxp" *)
input wire [15 : 0] pci_exp_rxp;
(* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pci_exp rxn" *)
input wire [15 : 0] pci_exp_rxn;
output wire user_lnk_up;

  s_axi_nvme #(
    .C_S0_AXI_ADDR_WIDTH(32),
    .C_S0_AXI_DATA_WIDTH(32),
    .C_S0_AXI_BASEADDR(32'HA0000000),
    .C_S0_AXI_HIGHADDR(32'HA000FFFF),
    .C_M0_AXI_ADDR_WIDTH(32),
    .C_M0_AXI_DATA_WIDTH(64),
    .C_M0_AXI_ID_WIDTH(1),
    .C_M0_AXI_AWUSER_WIDTH(1),
    .C_M0_AXI_WUSER_WIDTH(1),
    .C_M0_AXI_BUSER_WIDTH(1),
    .C_M0_AXI_ARUSER_WIDTH(1),
    .C_M0_AXI_RUSER_WIDTH(1),
    .C_PCIE_DATA_WIDTH(512),
    .PL_LINK_CAP_MAX_LINK_WIDTH(16),
    .AXISTEN_IF_MC_RX_STRADDLE(0),
    .PL_LINK_CAP_MAX_LINK_SPEED(4),
    .KEEP_WIDTH(16),
    .EXT_PIPE_SIM("FALSE"),
    .AXISTEN_IF_CC_ALIGNMENT_MODE("FALSE"),
    .AXISTEN_IF_CQ_ALIGNMENT_MODE("FALSE"),
    .AXISTEN_IF_RQ_ALIGNMENT_MODE("FALSE"),
    .AXISTEN_IF_RC_ALIGNMENT_MODE("FALSE"),
    .AXI4_CQ_TUSER_WIDTH(183),
    .AXI4_CC_TUSER_WIDTH(81),
    .AXI4_RQ_TUSER_WIDTH(137),
    .AXI4_RC_TUSER_WIDTH(161),
    .AXISTEN_IF_ENABLE_CLIENT_TAG(1),
    .RQ_AVAIL_TAG_IDX(8),
    .RQ_AVAIL_TAG(256),
    .AXISTEN_IF_RQ_PARITY_CHECK(0),
    .AXISTEN_IF_CC_PARITY_CHECK(0),
    .AXISTEN_IF_RC_PARITY_CHECK(0),
    .AXISTEN_IF_CQ_PARITY_CHECK(0),
    .AXISTEN_IF_ENABLE_RX_MSG_INTFC("FALSE"),
    .AXISTEN_IF_ENABLE_MSG_ROUTE(18'B101111111111111111),
    .P_SLOT_TAG_WIDTH(10),
    .P_SLOT_WIDTH(1024)
  ) inst (
    .s0_axi_aclk(s0_axi_aclk),
    .s0_axi_aresetn(s0_axi_aresetn),
    .s0_axi_awaddr(s0_axi_awaddr),
    .s0_axi_awready(s0_axi_awready),
    .s0_axi_awvalid(s0_axi_awvalid),
    .s0_axi_awprot(s0_axi_awprot),
    .s0_axi_wvalid(s0_axi_wvalid),
    .s0_axi_wready(s0_axi_wready),
    .s0_axi_wdata(s0_axi_wdata),
    .s0_axi_wstrb(s0_axi_wstrb),
    .s0_axi_bvalid(s0_axi_bvalid),
    .s0_axi_bready(s0_axi_bready),
    .s0_axi_bresp(s0_axi_bresp),
    .s0_axi_arvalid(s0_axi_arvalid),
    .s0_axi_arready(s0_axi_arready),
    .s0_axi_araddr(s0_axi_araddr),
    .s0_axi_arprot(s0_axi_arprot),
    .s0_axi_rvalid(s0_axi_rvalid),
    .s0_axi_rready(s0_axi_rready),
    .s0_axi_rdata(s0_axi_rdata),
    .s0_axi_rresp(s0_axi_rresp),
    .m0_axi_aclk(m0_axi_aclk),
    .m0_axi_aresetn(m0_axi_aresetn),
    .m0_axi_awid(m0_axi_awid),
    .m0_axi_awaddr(m0_axi_awaddr),
    .m0_axi_awlen(m0_axi_awlen),
    .m0_axi_awsize(m0_axi_awsize),
    .m0_axi_awburst(m0_axi_awburst),
    .m0_axi_awlock(m0_axi_awlock),
    .m0_axi_awcache(m0_axi_awcache),
    .m0_axi_awprot(m0_axi_awprot),
    .m0_axi_awregion(m0_axi_awregion),
    .m0_axi_awqos(m0_axi_awqos),
    .m0_axi_awuser(m0_axi_awuser),
    .m0_axi_awvalid(m0_axi_awvalid),
    .m0_axi_awready(m0_axi_awready),
    .m0_axi_wid(m0_axi_wid),
    .m0_axi_wdata(m0_axi_wdata),
    .m0_axi_wstrb(m0_axi_wstrb),
    .m0_axi_wlast(m0_axi_wlast),
    .m0_axi_wuser(m0_axi_wuser),
    .m0_axi_wvalid(m0_axi_wvalid),
    .m0_axi_wready(m0_axi_wready),
    .m0_axi_bid(m0_axi_bid),
    .m0_axi_bresp(m0_axi_bresp),
    .m0_axi_bvalid(m0_axi_bvalid),
    .m0_axi_buser(m0_axi_buser),
    .m0_axi_bready(m0_axi_bready),
    .m0_axi_arid(m0_axi_arid),
    .m0_axi_araddr(m0_axi_araddr),
    .m0_axi_arlen(m0_axi_arlen),
    .m0_axi_arsize(m0_axi_arsize),
    .m0_axi_arburst(m0_axi_arburst),
    .m0_axi_arlock(m0_axi_arlock),
    .m0_axi_arcache(m0_axi_arcache),
    .m0_axi_arprot(m0_axi_arprot),
    .m0_axi_arregion(m0_axi_arregion),
    .m0_axi_arqos(m0_axi_arqos),
    .m0_axi_aruser(m0_axi_aruser),
    .m0_axi_arvalid(m0_axi_arvalid),
    .m0_axi_arready(m0_axi_arready),
    .m0_axi_rid(m0_axi_rid),
    .m0_axi_rdata(m0_axi_rdata),
    .m0_axi_rresp(m0_axi_rresp),
    .m0_axi_rlast(m0_axi_rlast),
    .m0_axi_ruser(m0_axi_ruser),
    .m0_axi_rvalid(m0_axi_rvalid),
    .m0_axi_rready(m0_axi_rready),
    .dev_irq_assert(dev_irq_assert),
    .pcie_ref_clk_p(pcie_ref_clk_p),
    .pcie_ref_clk_n(pcie_ref_clk_n),
    .pcie_perst_n(pcie_perst_n),
    .pci_exp_txp(pci_exp_txp),
    .pci_exp_txn(pci_exp_txn),
    .pci_exp_rxp(pci_exp_rxp),
    .pci_exp_rxn(pci_exp_rxn),
    .user_lnk_up(user_lnk_up)
  );
endmodule
