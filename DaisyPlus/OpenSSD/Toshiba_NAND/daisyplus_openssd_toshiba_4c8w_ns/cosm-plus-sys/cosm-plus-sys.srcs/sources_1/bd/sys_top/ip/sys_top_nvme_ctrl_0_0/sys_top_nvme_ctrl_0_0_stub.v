// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Jan  9 19:10:40 2023
// Host        : DESKTOP-KFMNFE2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               F:/cosm-plus-sys.srcs/sources_1/bd/sys_top/ip/sys_top_nvme_ctrl_0_0/sys_top_nvme_ctrl_0_0_stub.v
// Design      : sys_top_nvme_ctrl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu17eg-ffvc1760-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "s_axi_nvme,Vivado 2019.1" *)
module sys_top_nvme_ctrl_0_0(s0_axi_aclk, s0_axi_aresetn, s0_axi_awaddr, 
  s0_axi_awready, s0_axi_awvalid, s0_axi_awprot, s0_axi_wvalid, s0_axi_wready, s0_axi_wdata, 
  s0_axi_wstrb, s0_axi_bvalid, s0_axi_bready, s0_axi_bresp, s0_axi_arvalid, s0_axi_arready, 
  s0_axi_araddr, s0_axi_arprot, s0_axi_rvalid, s0_axi_rready, s0_axi_rdata, s0_axi_rresp, 
  m0_axi_aclk, m0_axi_aresetn, m0_axi_awid, m0_axi_awaddr, m0_axi_awlen, m0_axi_awsize, 
  m0_axi_awburst, m0_axi_awlock, m0_axi_awcache, m0_axi_awprot, m0_axi_awregion, 
  m0_axi_awqos, m0_axi_awuser, m0_axi_awvalid, m0_axi_awready, m0_axi_wid, m0_axi_wdata, 
  m0_axi_wstrb, m0_axi_wlast, m0_axi_wuser, m0_axi_wvalid, m0_axi_wready, m0_axi_bid, 
  m0_axi_bresp, m0_axi_bvalid, m0_axi_buser, m0_axi_bready, m0_axi_arid, m0_axi_araddr, 
  m0_axi_arlen, m0_axi_arsize, m0_axi_arburst, m0_axi_arlock, m0_axi_arcache, m0_axi_arprot, 
  m0_axi_arregion, m0_axi_arqos, m0_axi_aruser, m0_axi_arvalid, m0_axi_arready, m0_axi_rid, 
  m0_axi_rdata, m0_axi_rresp, m0_axi_rlast, m0_axi_ruser, m0_axi_rvalid, m0_axi_rready, 
  dev_irq_assert, pcie_ref_clk_p, pcie_ref_clk_n, pcie_perst_n, pci_exp_txp, pci_exp_txn, 
  pci_exp_rxp, pci_exp_rxn, user_lnk_up)
/* synthesis syn_black_box black_box_pad_pin="s0_axi_aclk,s0_axi_aresetn,s0_axi_awaddr[31:0],s0_axi_awready,s0_axi_awvalid,s0_axi_awprot[2:0],s0_axi_wvalid,s0_axi_wready,s0_axi_wdata[31:0],s0_axi_wstrb[3:0],s0_axi_bvalid,s0_axi_bready,s0_axi_bresp[1:0],s0_axi_arvalid,s0_axi_arready,s0_axi_araddr[31:0],s0_axi_arprot[2:0],s0_axi_rvalid,s0_axi_rready,s0_axi_rdata[31:0],s0_axi_rresp[1:0],m0_axi_aclk,m0_axi_aresetn,m0_axi_awid[0:0],m0_axi_awaddr[31:0],m0_axi_awlen[7:0],m0_axi_awsize[2:0],m0_axi_awburst[1:0],m0_axi_awlock,m0_axi_awcache[3:0],m0_axi_awprot[2:0],m0_axi_awregion[3:0],m0_axi_awqos[3:0],m0_axi_awuser[0:0],m0_axi_awvalid,m0_axi_awready,m0_axi_wid[0:0],m0_axi_wdata[63:0],m0_axi_wstrb[7:0],m0_axi_wlast,m0_axi_wuser[0:0],m0_axi_wvalid,m0_axi_wready,m0_axi_bid[0:0],m0_axi_bresp[1:0],m0_axi_bvalid,m0_axi_buser[0:0],m0_axi_bready,m0_axi_arid[0:0],m0_axi_araddr[31:0],m0_axi_arlen[7:0],m0_axi_arsize[2:0],m0_axi_arburst[1:0],m0_axi_arlock,m0_axi_arcache[3:0],m0_axi_arprot[2:0],m0_axi_arregion[3:0],m0_axi_arqos[3:0],m0_axi_aruser[0:0],m0_axi_arvalid,m0_axi_arready,m0_axi_rid[0:0],m0_axi_rdata[63:0],m0_axi_rresp[1:0],m0_axi_rlast,m0_axi_ruser[0:0],m0_axi_rvalid,m0_axi_rready,dev_irq_assert,pcie_ref_clk_p,pcie_ref_clk_n,pcie_perst_n,pci_exp_txp[15:0],pci_exp_txn[15:0],pci_exp_rxp[15:0],pci_exp_rxn[15:0],user_lnk_up" */;
  input s0_axi_aclk;
  input s0_axi_aresetn;
  input [31:0]s0_axi_awaddr;
  output s0_axi_awready;
  input s0_axi_awvalid;
  input [2:0]s0_axi_awprot;
  input s0_axi_wvalid;
  output s0_axi_wready;
  input [31:0]s0_axi_wdata;
  input [3:0]s0_axi_wstrb;
  output s0_axi_bvalid;
  input s0_axi_bready;
  output [1:0]s0_axi_bresp;
  input s0_axi_arvalid;
  output s0_axi_arready;
  input [31:0]s0_axi_araddr;
  input [2:0]s0_axi_arprot;
  output s0_axi_rvalid;
  input s0_axi_rready;
  output [31:0]s0_axi_rdata;
  output [1:0]s0_axi_rresp;
  input m0_axi_aclk;
  input m0_axi_aresetn;
  output [0:0]m0_axi_awid;
  output [31:0]m0_axi_awaddr;
  output [7:0]m0_axi_awlen;
  output [2:0]m0_axi_awsize;
  output [1:0]m0_axi_awburst;
  output m0_axi_awlock;
  output [3:0]m0_axi_awcache;
  output [2:0]m0_axi_awprot;
  output [3:0]m0_axi_awregion;
  output [3:0]m0_axi_awqos;
  output [0:0]m0_axi_awuser;
  output m0_axi_awvalid;
  input m0_axi_awready;
  output [0:0]m0_axi_wid;
  output [63:0]m0_axi_wdata;
  output [7:0]m0_axi_wstrb;
  output m0_axi_wlast;
  output [0:0]m0_axi_wuser;
  output m0_axi_wvalid;
  input m0_axi_wready;
  input [0:0]m0_axi_bid;
  input [1:0]m0_axi_bresp;
  input m0_axi_bvalid;
  input [0:0]m0_axi_buser;
  output m0_axi_bready;
  output [0:0]m0_axi_arid;
  output [31:0]m0_axi_araddr;
  output [7:0]m0_axi_arlen;
  output [2:0]m0_axi_arsize;
  output [1:0]m0_axi_arburst;
  output m0_axi_arlock;
  output [3:0]m0_axi_arcache;
  output [2:0]m0_axi_arprot;
  output [3:0]m0_axi_arregion;
  output [3:0]m0_axi_arqos;
  output [0:0]m0_axi_aruser;
  output m0_axi_arvalid;
  input m0_axi_arready;
  input [0:0]m0_axi_rid;
  input [63:0]m0_axi_rdata;
  input [1:0]m0_axi_rresp;
  input m0_axi_rlast;
  input [0:0]m0_axi_ruser;
  input m0_axi_rvalid;
  output m0_axi_rready;
  output dev_irq_assert;
  input pcie_ref_clk_p;
  input pcie_ref_clk_n;
  input pcie_perst_n;
  output [15:0]pci_exp_txp;
  output [15:0]pci_exp_txn;
  input [15:0]pci_exp_rxp;
  input [15:0]pci_exp_rxn;
  output user_lnk_up;
endmodule
