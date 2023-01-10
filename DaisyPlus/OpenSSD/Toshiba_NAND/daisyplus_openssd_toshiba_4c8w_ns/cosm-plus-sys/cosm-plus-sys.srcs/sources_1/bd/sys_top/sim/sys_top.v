//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Mon Jan  9 18:45:57 2023
//Host        : DESKTOP-KFMNFE2 running 64-bit major release  (build 9200)
//Command     : generate_target sys_top.bd
//Design      : sys_top
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module m00_couplers_imp_1NWYGJS
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_m00_couplers_ARADDR;
  wire [2:0]auto_cc_to_m00_couplers_ARPROT;
  wire auto_cc_to_m00_couplers_ARREADY;
  wire auto_cc_to_m00_couplers_ARVALID;
  wire [31:0]auto_cc_to_m00_couplers_AWADDR;
  wire [2:0]auto_cc_to_m00_couplers_AWPROT;
  wire auto_cc_to_m00_couplers_AWREADY;
  wire auto_cc_to_m00_couplers_AWVALID;
  wire auto_cc_to_m00_couplers_BREADY;
  wire [1:0]auto_cc_to_m00_couplers_BRESP;
  wire auto_cc_to_m00_couplers_BVALID;
  wire [31:0]auto_cc_to_m00_couplers_RDATA;
  wire auto_cc_to_m00_couplers_RREADY;
  wire [1:0]auto_cc_to_m00_couplers_RRESP;
  wire auto_cc_to_m00_couplers_RVALID;
  wire [31:0]auto_cc_to_m00_couplers_WDATA;
  wire auto_cc_to_m00_couplers_WREADY;
  wire [3:0]auto_cc_to_m00_couplers_WSTRB;
  wire auto_cc_to_m00_couplers_WVALID;
  wire [39:0]m00_couplers_to_auto_cc_ARADDR;
  wire [2:0]m00_couplers_to_auto_cc_ARPROT;
  wire m00_couplers_to_auto_cc_ARREADY;
  wire m00_couplers_to_auto_cc_ARVALID;
  wire [39:0]m00_couplers_to_auto_cc_AWADDR;
  wire [2:0]m00_couplers_to_auto_cc_AWPROT;
  wire m00_couplers_to_auto_cc_AWREADY;
  wire m00_couplers_to_auto_cc_AWVALID;
  wire m00_couplers_to_auto_cc_BREADY;
  wire [1:0]m00_couplers_to_auto_cc_BRESP;
  wire m00_couplers_to_auto_cc_BVALID;
  wire [31:0]m00_couplers_to_auto_cc_RDATA;
  wire m00_couplers_to_auto_cc_RREADY;
  wire [1:0]m00_couplers_to_auto_cc_RRESP;
  wire m00_couplers_to_auto_cc_RVALID;
  wire [31:0]m00_couplers_to_auto_cc_WDATA;
  wire m00_couplers_to_auto_cc_WREADY;
  wire [3:0]m00_couplers_to_auto_cc_WSTRB;
  wire m00_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_cc_to_m00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_cc_to_m00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_cc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_cc_to_m00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_cc_to_m00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_cc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[39:0];
  assign m00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[39:0];
  assign m00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  sys_top_auto_cc_10 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m00_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m00_couplers_ARPROT),
        .m_axi_arready(auto_cc_to_m00_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m00_couplers_AWADDR),
        .m_axi_awprot(auto_cc_to_m00_couplers_AWPROT),
        .m_axi_awready(auto_cc_to_m00_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m00_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m00_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m00_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m00_couplers_to_auto_cc_ARADDR[31:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m00_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m00_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_cc_AWADDR[31:0]),
        .s_axi_awprot(m00_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m00_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m00_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_cc_WVALID));
endmodule

module m00_couplers_imp_1QA7SGS
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_ds_to_m00_couplers_ARADDR;
  wire [2:0]auto_ds_to_m00_couplers_ARPROT;
  wire auto_ds_to_m00_couplers_ARREADY;
  wire auto_ds_to_m00_couplers_ARVALID;
  wire [39:0]auto_ds_to_m00_couplers_AWADDR;
  wire [2:0]auto_ds_to_m00_couplers_AWPROT;
  wire auto_ds_to_m00_couplers_AWREADY;
  wire auto_ds_to_m00_couplers_AWVALID;
  wire auto_ds_to_m00_couplers_BREADY;
  wire [1:0]auto_ds_to_m00_couplers_BRESP;
  wire auto_ds_to_m00_couplers_BVALID;
  wire [31:0]auto_ds_to_m00_couplers_RDATA;
  wire auto_ds_to_m00_couplers_RREADY;
  wire [1:0]auto_ds_to_m00_couplers_RRESP;
  wire auto_ds_to_m00_couplers_RVALID;
  wire [31:0]auto_ds_to_m00_couplers_WDATA;
  wire auto_ds_to_m00_couplers_WREADY;
  wire [3:0]auto_ds_to_m00_couplers_WSTRB;
  wire auto_ds_to_m00_couplers_WVALID;
  wire [39:0]m00_couplers_to_auto_ds_ARADDR;
  wire [2:0]m00_couplers_to_auto_ds_ARPROT;
  wire m00_couplers_to_auto_ds_ARREADY;
  wire m00_couplers_to_auto_ds_ARVALID;
  wire [39:0]m00_couplers_to_auto_ds_AWADDR;
  wire [2:0]m00_couplers_to_auto_ds_AWPROT;
  wire m00_couplers_to_auto_ds_AWREADY;
  wire m00_couplers_to_auto_ds_AWVALID;
  wire m00_couplers_to_auto_ds_BREADY;
  wire [1:0]m00_couplers_to_auto_ds_BRESP;
  wire m00_couplers_to_auto_ds_BVALID;
  wire [63:0]m00_couplers_to_auto_ds_RDATA;
  wire m00_couplers_to_auto_ds_RREADY;
  wire [1:0]m00_couplers_to_auto_ds_RRESP;
  wire m00_couplers_to_auto_ds_RVALID;
  wire [63:0]m00_couplers_to_auto_ds_WDATA;
  wire m00_couplers_to_auto_ds_WREADY;
  wire [7:0]m00_couplers_to_auto_ds_WSTRB;
  wire m00_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[39:0] = auto_ds_to_m00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_ds_to_m00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_ds_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_ds_to_m00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_ds_to_m00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_ds_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_ds_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_ds_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_ds_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_ds_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_ds_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[63:0] = m00_couplers_to_auto_ds_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_ds_WREADY;
  assign auto_ds_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_ds_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_ds_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_ds_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_ds_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_ds_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_ds_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_ds_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_ds_ARADDR = S_AXI_araddr[39:0];
  assign m00_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[39:0];
  assign m00_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_ds_WDATA = S_AXI_wdata[63:0];
  assign m00_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[7:0];
  assign m00_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  sys_top_auto_ds_8 auto_ds
       (.m_axi_araddr(auto_ds_to_m00_couplers_ARADDR),
        .m_axi_arprot(auto_ds_to_m00_couplers_ARPROT),
        .m_axi_arready(auto_ds_to_m00_couplers_ARREADY),
        .m_axi_arvalid(auto_ds_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_ds_to_m00_couplers_AWADDR),
        .m_axi_awprot(auto_ds_to_m00_couplers_AWPROT),
        .m_axi_awready(auto_ds_to_m00_couplers_AWREADY),
        .m_axi_awvalid(auto_ds_to_m00_couplers_AWVALID),
        .m_axi_bready(auto_ds_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_ds_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_ds_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_ds_to_m00_couplers_RDATA),
        .m_axi_rready(auto_ds_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_ds_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_ds_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_ds_to_m00_couplers_WDATA),
        .m_axi_wready(auto_ds_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_ds_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_ds_to_m00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m00_couplers_to_auto_ds_ARADDR),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m00_couplers_to_auto_ds_ARPROT),
        .s_axi_arready(m00_couplers_to_auto_ds_ARREADY),
        .s_axi_arvalid(m00_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_ds_AWADDR),
        .s_axi_awprot(m00_couplers_to_auto_ds_AWPROT),
        .s_axi_awready(m00_couplers_to_auto_ds_AWREADY),
        .s_axi_awvalid(m00_couplers_to_auto_ds_AWVALID),
        .s_axi_bready(m00_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_ds_RDATA),
        .s_axi_rready(m00_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_ds_WDATA),
        .s_axi_wready(m00_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_ds_WVALID));
endmodule

module m00_couplers_imp_1V84RMG
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [1:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [1:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [1:0]m00_couplers_to_m00_couplers_ARBURST;
  wire [3:0]m00_couplers_to_m00_couplers_ARCACHE;
  wire [1:0]m00_couplers_to_m00_couplers_ARID;
  wire [7:0]m00_couplers_to_m00_couplers_ARLEN;
  wire [0:0]m00_couplers_to_m00_couplers_ARLOCK;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire [3:0]m00_couplers_to_m00_couplers_ARQOS;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [2:0]m00_couplers_to_m00_couplers_ARSIZE;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [1:0]m00_couplers_to_m00_couplers_AWBURST;
  wire [3:0]m00_couplers_to_m00_couplers_AWCACHE;
  wire [1:0]m00_couplers_to_m00_couplers_AWID;
  wire [7:0]m00_couplers_to_m00_couplers_AWLEN;
  wire [0:0]m00_couplers_to_m00_couplers_AWLOCK;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
  wire [3:0]m00_couplers_to_m00_couplers_AWQOS;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [2:0]m00_couplers_to_m00_couplers_AWSIZE;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [5:0]m00_couplers_to_m00_couplers_BID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [63:0]m00_couplers_to_m00_couplers_RDATA;
  wire [5:0]m00_couplers_to_m00_couplers_RID;
  wire [0:0]m00_couplers_to_m00_couplers_RLAST;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [63:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WLAST;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [7:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m00_couplers_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m00_couplers_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[1:0] = m00_couplers_to_m00_couplers_ARID;
  assign M_AXI_arlen[7:0] = m00_couplers_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[0] = m00_couplers_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m00_couplers_to_m00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = m00_couplers_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m00_couplers_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m00_couplers_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[1:0] = m00_couplers_to_m00_couplers_AWID;
  assign M_AXI_awlen[7:0] = m00_couplers_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[0] = m00_couplers_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m00_couplers_to_m00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = m00_couplers_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wlast[0] = m00_couplers_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bid[5:0] = m00_couplers_to_m00_couplers_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[63:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rid[5:0] = m00_couplers_to_m00_couplers_RID;
  assign S_AXI_rlast[0] = m00_couplers_to_m00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_m00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_m00_couplers_ARID = S_AXI_arid[1:0];
  assign m00_couplers_to_m00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_m00_couplers_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_m00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_m00_couplers_AWID = S_AXI_awid[1:0];
  assign m00_couplers_to_m00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_m00_couplers_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_couplers_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BID = M_AXI_bid[5:0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[63:0];
  assign m00_couplers_to_m00_couplers_RID = M_AXI_rid[5:0];
  assign m00_couplers_to_m00_couplers_RLAST = M_AXI_rlast[0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[63:0];
  assign m00_couplers_to_m00_couplers_WLAST = S_AXI_wlast[0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[7:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m00_couplers_imp_OTELSX
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input [15:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input [15:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_auto_ds_ARADDR;
  wire [1:0]auto_cc_to_auto_ds_ARBURST;
  wire [3:0]auto_cc_to_auto_ds_ARCACHE;
  wire [15:0]auto_cc_to_auto_ds_ARID;
  wire [7:0]auto_cc_to_auto_ds_ARLEN;
  wire [0:0]auto_cc_to_auto_ds_ARLOCK;
  wire [2:0]auto_cc_to_auto_ds_ARPROT;
  wire [3:0]auto_cc_to_auto_ds_ARQOS;
  wire auto_cc_to_auto_ds_ARREADY;
  wire [3:0]auto_cc_to_auto_ds_ARREGION;
  wire [2:0]auto_cc_to_auto_ds_ARSIZE;
  wire auto_cc_to_auto_ds_ARVALID;
  wire [31:0]auto_cc_to_auto_ds_AWADDR;
  wire [1:0]auto_cc_to_auto_ds_AWBURST;
  wire [3:0]auto_cc_to_auto_ds_AWCACHE;
  wire [15:0]auto_cc_to_auto_ds_AWID;
  wire [7:0]auto_cc_to_auto_ds_AWLEN;
  wire [0:0]auto_cc_to_auto_ds_AWLOCK;
  wire [2:0]auto_cc_to_auto_ds_AWPROT;
  wire [3:0]auto_cc_to_auto_ds_AWQOS;
  wire auto_cc_to_auto_ds_AWREADY;
  wire [3:0]auto_cc_to_auto_ds_AWREGION;
  wire [2:0]auto_cc_to_auto_ds_AWSIZE;
  wire auto_cc_to_auto_ds_AWVALID;
  wire [15:0]auto_cc_to_auto_ds_BID;
  wire auto_cc_to_auto_ds_BREADY;
  wire [1:0]auto_cc_to_auto_ds_BRESP;
  wire auto_cc_to_auto_ds_BVALID;
  wire [63:0]auto_cc_to_auto_ds_RDATA;
  wire [15:0]auto_cc_to_auto_ds_RID;
  wire auto_cc_to_auto_ds_RLAST;
  wire auto_cc_to_auto_ds_RREADY;
  wire [1:0]auto_cc_to_auto_ds_RRESP;
  wire auto_cc_to_auto_ds_RVALID;
  wire [63:0]auto_cc_to_auto_ds_WDATA;
  wire auto_cc_to_auto_ds_WLAST;
  wire auto_cc_to_auto_ds_WREADY;
  wire [7:0]auto_cc_to_auto_ds_WSTRB;
  wire auto_cc_to_auto_ds_WVALID;
  wire [31:0]auto_ds_to_auto_pc_ARADDR;
  wire [1:0]auto_ds_to_auto_pc_ARBURST;
  wire [3:0]auto_ds_to_auto_pc_ARCACHE;
  wire [7:0]auto_ds_to_auto_pc_ARLEN;
  wire [0:0]auto_ds_to_auto_pc_ARLOCK;
  wire [2:0]auto_ds_to_auto_pc_ARPROT;
  wire [3:0]auto_ds_to_auto_pc_ARQOS;
  wire auto_ds_to_auto_pc_ARREADY;
  wire [3:0]auto_ds_to_auto_pc_ARREGION;
  wire [2:0]auto_ds_to_auto_pc_ARSIZE;
  wire auto_ds_to_auto_pc_ARVALID;
  wire [31:0]auto_ds_to_auto_pc_AWADDR;
  wire [1:0]auto_ds_to_auto_pc_AWBURST;
  wire [3:0]auto_ds_to_auto_pc_AWCACHE;
  wire [7:0]auto_ds_to_auto_pc_AWLEN;
  wire [0:0]auto_ds_to_auto_pc_AWLOCK;
  wire [2:0]auto_ds_to_auto_pc_AWPROT;
  wire [3:0]auto_ds_to_auto_pc_AWQOS;
  wire auto_ds_to_auto_pc_AWREADY;
  wire [3:0]auto_ds_to_auto_pc_AWREGION;
  wire [2:0]auto_ds_to_auto_pc_AWSIZE;
  wire auto_ds_to_auto_pc_AWVALID;
  wire auto_ds_to_auto_pc_BREADY;
  wire [1:0]auto_ds_to_auto_pc_BRESP;
  wire auto_ds_to_auto_pc_BVALID;
  wire [31:0]auto_ds_to_auto_pc_RDATA;
  wire auto_ds_to_auto_pc_RLAST;
  wire auto_ds_to_auto_pc_RREADY;
  wire [1:0]auto_ds_to_auto_pc_RRESP;
  wire auto_ds_to_auto_pc_RVALID;
  wire [31:0]auto_ds_to_auto_pc_WDATA;
  wire auto_ds_to_auto_pc_WLAST;
  wire auto_ds_to_auto_pc_WREADY;
  wire [3:0]auto_ds_to_auto_pc_WSTRB;
  wire auto_ds_to_auto_pc_WVALID;
  wire [31:0]auto_pc_to_m00_couplers_ARADDR;
  wire [2:0]auto_pc_to_m00_couplers_ARPROT;
  wire auto_pc_to_m00_couplers_ARREADY;
  wire auto_pc_to_m00_couplers_ARVALID;
  wire [31:0]auto_pc_to_m00_couplers_AWADDR;
  wire [2:0]auto_pc_to_m00_couplers_AWPROT;
  wire auto_pc_to_m00_couplers_AWREADY;
  wire auto_pc_to_m00_couplers_AWVALID;
  wire auto_pc_to_m00_couplers_BREADY;
  wire [1:0]auto_pc_to_m00_couplers_BRESP;
  wire auto_pc_to_m00_couplers_BVALID;
  wire [31:0]auto_pc_to_m00_couplers_RDATA;
  wire auto_pc_to_m00_couplers_RREADY;
  wire [1:0]auto_pc_to_m00_couplers_RRESP;
  wire auto_pc_to_m00_couplers_RVALID;
  wire [31:0]auto_pc_to_m00_couplers_WDATA;
  wire auto_pc_to_m00_couplers_WREADY;
  wire [3:0]auto_pc_to_m00_couplers_WSTRB;
  wire auto_pc_to_m00_couplers_WVALID;
  wire [39:0]m00_couplers_to_auto_cc_ARADDR;
  wire [1:0]m00_couplers_to_auto_cc_ARBURST;
  wire [3:0]m00_couplers_to_auto_cc_ARCACHE;
  wire [15:0]m00_couplers_to_auto_cc_ARID;
  wire [7:0]m00_couplers_to_auto_cc_ARLEN;
  wire [0:0]m00_couplers_to_auto_cc_ARLOCK;
  wire [2:0]m00_couplers_to_auto_cc_ARPROT;
  wire [3:0]m00_couplers_to_auto_cc_ARQOS;
  wire m00_couplers_to_auto_cc_ARREADY;
  wire [3:0]m00_couplers_to_auto_cc_ARREGION;
  wire [2:0]m00_couplers_to_auto_cc_ARSIZE;
  wire [15:0]m00_couplers_to_auto_cc_ARUSER;
  wire m00_couplers_to_auto_cc_ARVALID;
  wire [39:0]m00_couplers_to_auto_cc_AWADDR;
  wire [1:0]m00_couplers_to_auto_cc_AWBURST;
  wire [3:0]m00_couplers_to_auto_cc_AWCACHE;
  wire [15:0]m00_couplers_to_auto_cc_AWID;
  wire [7:0]m00_couplers_to_auto_cc_AWLEN;
  wire [0:0]m00_couplers_to_auto_cc_AWLOCK;
  wire [2:0]m00_couplers_to_auto_cc_AWPROT;
  wire [3:0]m00_couplers_to_auto_cc_AWQOS;
  wire m00_couplers_to_auto_cc_AWREADY;
  wire [3:0]m00_couplers_to_auto_cc_AWREGION;
  wire [2:0]m00_couplers_to_auto_cc_AWSIZE;
  wire [15:0]m00_couplers_to_auto_cc_AWUSER;
  wire m00_couplers_to_auto_cc_AWVALID;
  wire [15:0]m00_couplers_to_auto_cc_BID;
  wire m00_couplers_to_auto_cc_BREADY;
  wire [1:0]m00_couplers_to_auto_cc_BRESP;
  wire m00_couplers_to_auto_cc_BVALID;
  wire [63:0]m00_couplers_to_auto_cc_RDATA;
  wire [15:0]m00_couplers_to_auto_cc_RID;
  wire m00_couplers_to_auto_cc_RLAST;
  wire m00_couplers_to_auto_cc_RREADY;
  wire [1:0]m00_couplers_to_auto_cc_RRESP;
  wire m00_couplers_to_auto_cc_RVALID;
  wire [63:0]m00_couplers_to_auto_cc_WDATA;
  wire m00_couplers_to_auto_cc_WLAST;
  wire m00_couplers_to_auto_cc_WREADY;
  wire [7:0]m00_couplers_to_auto_cc_WSTRB;
  wire m00_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_pc_to_m00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_m00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_m00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bid[15:0] = m00_couplers_to_auto_cc_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[63:0] = m00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rid[15:0] = m00_couplers_to_auto_cc_RID;
  assign S_AXI_rlast = m00_couplers_to_auto_cc_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_cc_WREADY;
  assign auto_pc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[39:0];
  assign m00_couplers_to_auto_cc_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_auto_cc_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_auto_cc_ARID = S_AXI_arid[15:0];
  assign m00_couplers_to_auto_cc_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_auto_cc_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_cc_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_auto_cc_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_auto_cc_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_auto_cc_ARUSER = S_AXI_aruser[15:0];
  assign m00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[39:0];
  assign m00_couplers_to_auto_cc_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_auto_cc_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_auto_cc_AWID = S_AXI_awid[15:0];
  assign m00_couplers_to_auto_cc_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_auto_cc_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_cc_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_auto_cc_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_auto_cc_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_auto_cc_AWUSER = S_AXI_awuser[15:0];
  assign m00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_cc_WDATA = S_AXI_wdata[63:0];
  assign m00_couplers_to_auto_cc_WLAST = S_AXI_wlast;
  assign m00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[7:0];
  assign m00_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  sys_top_auto_cc_1 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_auto_ds_ARADDR),
        .m_axi_arburst(auto_cc_to_auto_ds_ARBURST),
        .m_axi_arcache(auto_cc_to_auto_ds_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arid(auto_cc_to_auto_ds_ARID),
        .m_axi_arlen(auto_cc_to_auto_ds_ARLEN),
        .m_axi_arlock(auto_cc_to_auto_ds_ARLOCK),
        .m_axi_arprot(auto_cc_to_auto_ds_ARPROT),
        .m_axi_arqos(auto_cc_to_auto_ds_ARQOS),
        .m_axi_arready(auto_cc_to_auto_ds_ARREADY),
        .m_axi_arregion(auto_cc_to_auto_ds_ARREGION),
        .m_axi_arsize(auto_cc_to_auto_ds_ARSIZE),
        .m_axi_arvalid(auto_cc_to_auto_ds_ARVALID),
        .m_axi_awaddr(auto_cc_to_auto_ds_AWADDR),
        .m_axi_awburst(auto_cc_to_auto_ds_AWBURST),
        .m_axi_awcache(auto_cc_to_auto_ds_AWCACHE),
        .m_axi_awid(auto_cc_to_auto_ds_AWID),
        .m_axi_awlen(auto_cc_to_auto_ds_AWLEN),
        .m_axi_awlock(auto_cc_to_auto_ds_AWLOCK),
        .m_axi_awprot(auto_cc_to_auto_ds_AWPROT),
        .m_axi_awqos(auto_cc_to_auto_ds_AWQOS),
        .m_axi_awready(auto_cc_to_auto_ds_AWREADY),
        .m_axi_awregion(auto_cc_to_auto_ds_AWREGION),
        .m_axi_awsize(auto_cc_to_auto_ds_AWSIZE),
        .m_axi_awvalid(auto_cc_to_auto_ds_AWVALID),
        .m_axi_bid(auto_cc_to_auto_ds_BID),
        .m_axi_bready(auto_cc_to_auto_ds_BREADY),
        .m_axi_bresp(auto_cc_to_auto_ds_BRESP),
        .m_axi_bvalid(auto_cc_to_auto_ds_BVALID),
        .m_axi_rdata(auto_cc_to_auto_ds_RDATA),
        .m_axi_rid(auto_cc_to_auto_ds_RID),
        .m_axi_rlast(auto_cc_to_auto_ds_RLAST),
        .m_axi_rready(auto_cc_to_auto_ds_RREADY),
        .m_axi_rresp(auto_cc_to_auto_ds_RRESP),
        .m_axi_rvalid(auto_cc_to_auto_ds_RVALID),
        .m_axi_wdata(auto_cc_to_auto_ds_WDATA),
        .m_axi_wlast(auto_cc_to_auto_ds_WLAST),
        .m_axi_wready(auto_cc_to_auto_ds_WREADY),
        .m_axi_wstrb(auto_cc_to_auto_ds_WSTRB),
        .m_axi_wvalid(auto_cc_to_auto_ds_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m00_couplers_to_auto_cc_ARADDR[31:0]),
        .s_axi_arburst(m00_couplers_to_auto_cc_ARBURST),
        .s_axi_arcache(m00_couplers_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m00_couplers_to_auto_cc_ARID),
        .s_axi_arlen(m00_couplers_to_auto_cc_ARLEN),
        .s_axi_arlock(m00_couplers_to_auto_cc_ARLOCK),
        .s_axi_arprot(m00_couplers_to_auto_cc_ARPROT),
        .s_axi_arqos(m00_couplers_to_auto_cc_ARQOS),
        .s_axi_arready(m00_couplers_to_auto_cc_ARREADY),
        .s_axi_arregion(m00_couplers_to_auto_cc_ARREGION),
        .s_axi_arsize(m00_couplers_to_auto_cc_ARSIZE),
        .s_axi_aruser(m00_couplers_to_auto_cc_ARUSER),
        .s_axi_arvalid(m00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_cc_AWADDR[31:0]),
        .s_axi_awburst(m00_couplers_to_auto_cc_AWBURST),
        .s_axi_awcache(m00_couplers_to_auto_cc_AWCACHE),
        .s_axi_awid(m00_couplers_to_auto_cc_AWID),
        .s_axi_awlen(m00_couplers_to_auto_cc_AWLEN),
        .s_axi_awlock(m00_couplers_to_auto_cc_AWLOCK),
        .s_axi_awprot(m00_couplers_to_auto_cc_AWPROT),
        .s_axi_awqos(m00_couplers_to_auto_cc_AWQOS),
        .s_axi_awready(m00_couplers_to_auto_cc_AWREADY),
        .s_axi_awregion(m00_couplers_to_auto_cc_AWREGION),
        .s_axi_awsize(m00_couplers_to_auto_cc_AWSIZE),
        .s_axi_awuser(m00_couplers_to_auto_cc_AWUSER),
        .s_axi_awvalid(m00_couplers_to_auto_cc_AWVALID),
        .s_axi_bid(m00_couplers_to_auto_cc_BID),
        .s_axi_bready(m00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_cc_RDATA),
        .s_axi_rid(m00_couplers_to_auto_cc_RID),
        .s_axi_rlast(m00_couplers_to_auto_cc_RLAST),
        .s_axi_rready(m00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_cc_WDATA),
        .s_axi_wlast(m00_couplers_to_auto_cc_WLAST),
        .s_axi_wready(m00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_cc_WVALID));
  sys_top_auto_ds_0 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .m_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .m_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .m_axi_bready(auto_ds_to_auto_pc_BREADY),
        .m_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .m_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .m_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .m_axi_rready(auto_ds_to_auto_pc_RREADY),
        .m_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .m_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .m_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .m_axi_wready(auto_ds_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_pc_WVALID),
        .s_axi_aclk(M_ACLK_1),
        .s_axi_araddr(auto_cc_to_auto_ds_ARADDR),
        .s_axi_arburst(auto_cc_to_auto_ds_ARBURST),
        .s_axi_arcache(auto_cc_to_auto_ds_ARCACHE),
        .s_axi_aresetn(M_ARESETN_1),
        .s_axi_arid(auto_cc_to_auto_ds_ARID),
        .s_axi_arlen(auto_cc_to_auto_ds_ARLEN),
        .s_axi_arlock(auto_cc_to_auto_ds_ARLOCK),
        .s_axi_arprot(auto_cc_to_auto_ds_ARPROT),
        .s_axi_arqos(auto_cc_to_auto_ds_ARQOS),
        .s_axi_arready(auto_cc_to_auto_ds_ARREADY),
        .s_axi_arregion(auto_cc_to_auto_ds_ARREGION),
        .s_axi_arsize(auto_cc_to_auto_ds_ARSIZE),
        .s_axi_arvalid(auto_cc_to_auto_ds_ARVALID),
        .s_axi_awaddr(auto_cc_to_auto_ds_AWADDR),
        .s_axi_awburst(auto_cc_to_auto_ds_AWBURST),
        .s_axi_awcache(auto_cc_to_auto_ds_AWCACHE),
        .s_axi_awid(auto_cc_to_auto_ds_AWID),
        .s_axi_awlen(auto_cc_to_auto_ds_AWLEN),
        .s_axi_awlock(auto_cc_to_auto_ds_AWLOCK),
        .s_axi_awprot(auto_cc_to_auto_ds_AWPROT),
        .s_axi_awqos(auto_cc_to_auto_ds_AWQOS),
        .s_axi_awready(auto_cc_to_auto_ds_AWREADY),
        .s_axi_awregion(auto_cc_to_auto_ds_AWREGION),
        .s_axi_awsize(auto_cc_to_auto_ds_AWSIZE),
        .s_axi_awvalid(auto_cc_to_auto_ds_AWVALID),
        .s_axi_bid(auto_cc_to_auto_ds_BID),
        .s_axi_bready(auto_cc_to_auto_ds_BREADY),
        .s_axi_bresp(auto_cc_to_auto_ds_BRESP),
        .s_axi_bvalid(auto_cc_to_auto_ds_BVALID),
        .s_axi_rdata(auto_cc_to_auto_ds_RDATA),
        .s_axi_rid(auto_cc_to_auto_ds_RID),
        .s_axi_rlast(auto_cc_to_auto_ds_RLAST),
        .s_axi_rready(auto_cc_to_auto_ds_RREADY),
        .s_axi_rresp(auto_cc_to_auto_ds_RRESP),
        .s_axi_rvalid(auto_cc_to_auto_ds_RVALID),
        .s_axi_wdata(auto_cc_to_auto_ds_WDATA),
        .s_axi_wlast(auto_cc_to_auto_ds_WLAST),
        .s_axi_wready(auto_cc_to_auto_ds_WREADY),
        .s_axi_wstrb(auto_cc_to_auto_ds_WSTRB),
        .s_axi_wvalid(auto_cc_to_auto_ds_WVALID));
  sys_top_auto_pc_0 auto_pc
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_m00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_m00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m00_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .s_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .s_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .s_axi_bready(auto_ds_to_auto_pc_BREADY),
        .s_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .s_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .s_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .s_axi_rready(auto_ds_to_auto_pc_RREADY),
        .s_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .s_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .s_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .s_axi_wready(auto_ds_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_pc_WVALID));
endmodule

module m01_couplers_imp_1PTWYW2
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [11:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [11:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input [15:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input [15:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [11:0]auto_cc_to_auto_ds_ARADDR;
  wire [1:0]auto_cc_to_auto_ds_ARBURST;
  wire [3:0]auto_cc_to_auto_ds_ARCACHE;
  wire [15:0]auto_cc_to_auto_ds_ARID;
  wire [7:0]auto_cc_to_auto_ds_ARLEN;
  wire [0:0]auto_cc_to_auto_ds_ARLOCK;
  wire [2:0]auto_cc_to_auto_ds_ARPROT;
  wire [3:0]auto_cc_to_auto_ds_ARQOS;
  wire auto_cc_to_auto_ds_ARREADY;
  wire [3:0]auto_cc_to_auto_ds_ARREGION;
  wire [2:0]auto_cc_to_auto_ds_ARSIZE;
  wire auto_cc_to_auto_ds_ARVALID;
  wire [11:0]auto_cc_to_auto_ds_AWADDR;
  wire [1:0]auto_cc_to_auto_ds_AWBURST;
  wire [3:0]auto_cc_to_auto_ds_AWCACHE;
  wire [15:0]auto_cc_to_auto_ds_AWID;
  wire [7:0]auto_cc_to_auto_ds_AWLEN;
  wire [0:0]auto_cc_to_auto_ds_AWLOCK;
  wire [2:0]auto_cc_to_auto_ds_AWPROT;
  wire [3:0]auto_cc_to_auto_ds_AWQOS;
  wire auto_cc_to_auto_ds_AWREADY;
  wire [3:0]auto_cc_to_auto_ds_AWREGION;
  wire [2:0]auto_cc_to_auto_ds_AWSIZE;
  wire auto_cc_to_auto_ds_AWVALID;
  wire [15:0]auto_cc_to_auto_ds_BID;
  wire auto_cc_to_auto_ds_BREADY;
  wire [1:0]auto_cc_to_auto_ds_BRESP;
  wire auto_cc_to_auto_ds_BVALID;
  wire [63:0]auto_cc_to_auto_ds_RDATA;
  wire [15:0]auto_cc_to_auto_ds_RID;
  wire auto_cc_to_auto_ds_RLAST;
  wire auto_cc_to_auto_ds_RREADY;
  wire [1:0]auto_cc_to_auto_ds_RRESP;
  wire auto_cc_to_auto_ds_RVALID;
  wire [63:0]auto_cc_to_auto_ds_WDATA;
  wire auto_cc_to_auto_ds_WLAST;
  wire auto_cc_to_auto_ds_WREADY;
  wire [7:0]auto_cc_to_auto_ds_WSTRB;
  wire auto_cc_to_auto_ds_WVALID;
  wire [11:0]auto_ds_to_m01_couplers_ARADDR;
  wire [1:0]auto_ds_to_m01_couplers_ARBURST;
  wire [3:0]auto_ds_to_m01_couplers_ARCACHE;
  wire [7:0]auto_ds_to_m01_couplers_ARLEN;
  wire [0:0]auto_ds_to_m01_couplers_ARLOCK;
  wire [2:0]auto_ds_to_m01_couplers_ARPROT;
  wire auto_ds_to_m01_couplers_ARREADY;
  wire [2:0]auto_ds_to_m01_couplers_ARSIZE;
  wire auto_ds_to_m01_couplers_ARVALID;
  wire [11:0]auto_ds_to_m01_couplers_AWADDR;
  wire [1:0]auto_ds_to_m01_couplers_AWBURST;
  wire [3:0]auto_ds_to_m01_couplers_AWCACHE;
  wire [7:0]auto_ds_to_m01_couplers_AWLEN;
  wire [0:0]auto_ds_to_m01_couplers_AWLOCK;
  wire [2:0]auto_ds_to_m01_couplers_AWPROT;
  wire auto_ds_to_m01_couplers_AWREADY;
  wire [2:0]auto_ds_to_m01_couplers_AWSIZE;
  wire auto_ds_to_m01_couplers_AWVALID;
  wire auto_ds_to_m01_couplers_BREADY;
  wire [1:0]auto_ds_to_m01_couplers_BRESP;
  wire auto_ds_to_m01_couplers_BVALID;
  wire [31:0]auto_ds_to_m01_couplers_RDATA;
  wire auto_ds_to_m01_couplers_RLAST;
  wire auto_ds_to_m01_couplers_RREADY;
  wire [1:0]auto_ds_to_m01_couplers_RRESP;
  wire auto_ds_to_m01_couplers_RVALID;
  wire [31:0]auto_ds_to_m01_couplers_WDATA;
  wire auto_ds_to_m01_couplers_WLAST;
  wire auto_ds_to_m01_couplers_WREADY;
  wire [3:0]auto_ds_to_m01_couplers_WSTRB;
  wire auto_ds_to_m01_couplers_WVALID;
  wire [39:0]m01_couplers_to_auto_cc_ARADDR;
  wire [1:0]m01_couplers_to_auto_cc_ARBURST;
  wire [3:0]m01_couplers_to_auto_cc_ARCACHE;
  wire [15:0]m01_couplers_to_auto_cc_ARID;
  wire [7:0]m01_couplers_to_auto_cc_ARLEN;
  wire [0:0]m01_couplers_to_auto_cc_ARLOCK;
  wire [2:0]m01_couplers_to_auto_cc_ARPROT;
  wire [3:0]m01_couplers_to_auto_cc_ARQOS;
  wire m01_couplers_to_auto_cc_ARREADY;
  wire [3:0]m01_couplers_to_auto_cc_ARREGION;
  wire [2:0]m01_couplers_to_auto_cc_ARSIZE;
  wire [15:0]m01_couplers_to_auto_cc_ARUSER;
  wire m01_couplers_to_auto_cc_ARVALID;
  wire [39:0]m01_couplers_to_auto_cc_AWADDR;
  wire [1:0]m01_couplers_to_auto_cc_AWBURST;
  wire [3:0]m01_couplers_to_auto_cc_AWCACHE;
  wire [15:0]m01_couplers_to_auto_cc_AWID;
  wire [7:0]m01_couplers_to_auto_cc_AWLEN;
  wire [0:0]m01_couplers_to_auto_cc_AWLOCK;
  wire [2:0]m01_couplers_to_auto_cc_AWPROT;
  wire [3:0]m01_couplers_to_auto_cc_AWQOS;
  wire m01_couplers_to_auto_cc_AWREADY;
  wire [3:0]m01_couplers_to_auto_cc_AWREGION;
  wire [2:0]m01_couplers_to_auto_cc_AWSIZE;
  wire [15:0]m01_couplers_to_auto_cc_AWUSER;
  wire m01_couplers_to_auto_cc_AWVALID;
  wire [15:0]m01_couplers_to_auto_cc_BID;
  wire m01_couplers_to_auto_cc_BREADY;
  wire [1:0]m01_couplers_to_auto_cc_BRESP;
  wire m01_couplers_to_auto_cc_BVALID;
  wire [63:0]m01_couplers_to_auto_cc_RDATA;
  wire [15:0]m01_couplers_to_auto_cc_RID;
  wire m01_couplers_to_auto_cc_RLAST;
  wire m01_couplers_to_auto_cc_RREADY;
  wire [1:0]m01_couplers_to_auto_cc_RRESP;
  wire m01_couplers_to_auto_cc_RVALID;
  wire [63:0]m01_couplers_to_auto_cc_WDATA;
  wire m01_couplers_to_auto_cc_WLAST;
  wire m01_couplers_to_auto_cc_WREADY;
  wire [7:0]m01_couplers_to_auto_cc_WSTRB;
  wire m01_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[11:0] = auto_ds_to_m01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_ds_to_m01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_ds_to_m01_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_ds_to_m01_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_ds_to_m01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_ds_to_m01_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = auto_ds_to_m01_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_ds_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[11:0] = auto_ds_to_m01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_ds_to_m01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_ds_to_m01_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_ds_to_m01_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_ds_to_m01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_ds_to_m01_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = auto_ds_to_m01_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_ds_to_m01_couplers_AWVALID;
  assign M_AXI_bready = auto_ds_to_m01_couplers_BREADY;
  assign M_AXI_rready = auto_ds_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_ds_to_m01_couplers_WDATA;
  assign M_AXI_wlast = auto_ds_to_m01_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_ds_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_ds_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bid[15:0] = m01_couplers_to_auto_cc_BID;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[63:0] = m01_couplers_to_auto_cc_RDATA;
  assign S_AXI_rid[15:0] = m01_couplers_to_auto_cc_RID;
  assign S_AXI_rlast = m01_couplers_to_auto_cc_RLAST;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_cc_WREADY;
  assign auto_ds_to_m01_couplers_ARREADY = M_AXI_arready;
  assign auto_ds_to_m01_couplers_AWREADY = M_AXI_awready;
  assign auto_ds_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_ds_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign auto_ds_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_ds_to_m01_couplers_RLAST = M_AXI_rlast;
  assign auto_ds_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_ds_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign auto_ds_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_auto_cc_ARADDR = S_AXI_araddr[39:0];
  assign m01_couplers_to_auto_cc_ARBURST = S_AXI_arburst[1:0];
  assign m01_couplers_to_auto_cc_ARCACHE = S_AXI_arcache[3:0];
  assign m01_couplers_to_auto_cc_ARID = S_AXI_arid[15:0];
  assign m01_couplers_to_auto_cc_ARLEN = S_AXI_arlen[7:0];
  assign m01_couplers_to_auto_cc_ARLOCK = S_AXI_arlock[0];
  assign m01_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_cc_ARQOS = S_AXI_arqos[3:0];
  assign m01_couplers_to_auto_cc_ARREGION = S_AXI_arregion[3:0];
  assign m01_couplers_to_auto_cc_ARSIZE = S_AXI_arsize[2:0];
  assign m01_couplers_to_auto_cc_ARUSER = S_AXI_aruser[15:0];
  assign m01_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[39:0];
  assign m01_couplers_to_auto_cc_AWBURST = S_AXI_awburst[1:0];
  assign m01_couplers_to_auto_cc_AWCACHE = S_AXI_awcache[3:0];
  assign m01_couplers_to_auto_cc_AWID = S_AXI_awid[15:0];
  assign m01_couplers_to_auto_cc_AWLEN = S_AXI_awlen[7:0];
  assign m01_couplers_to_auto_cc_AWLOCK = S_AXI_awlock[0];
  assign m01_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_cc_AWQOS = S_AXI_awqos[3:0];
  assign m01_couplers_to_auto_cc_AWREGION = S_AXI_awregion[3:0];
  assign m01_couplers_to_auto_cc_AWSIZE = S_AXI_awsize[2:0];
  assign m01_couplers_to_auto_cc_AWUSER = S_AXI_awuser[15:0];
  assign m01_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_cc_WDATA = S_AXI_wdata[63:0];
  assign m01_couplers_to_auto_cc_WLAST = S_AXI_wlast;
  assign m01_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[7:0];
  assign m01_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  sys_top_auto_cc_2 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_auto_ds_ARADDR),
        .m_axi_arburst(auto_cc_to_auto_ds_ARBURST),
        .m_axi_arcache(auto_cc_to_auto_ds_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arid(auto_cc_to_auto_ds_ARID),
        .m_axi_arlen(auto_cc_to_auto_ds_ARLEN),
        .m_axi_arlock(auto_cc_to_auto_ds_ARLOCK),
        .m_axi_arprot(auto_cc_to_auto_ds_ARPROT),
        .m_axi_arqos(auto_cc_to_auto_ds_ARQOS),
        .m_axi_arready(auto_cc_to_auto_ds_ARREADY),
        .m_axi_arregion(auto_cc_to_auto_ds_ARREGION),
        .m_axi_arsize(auto_cc_to_auto_ds_ARSIZE),
        .m_axi_arvalid(auto_cc_to_auto_ds_ARVALID),
        .m_axi_awaddr(auto_cc_to_auto_ds_AWADDR),
        .m_axi_awburst(auto_cc_to_auto_ds_AWBURST),
        .m_axi_awcache(auto_cc_to_auto_ds_AWCACHE),
        .m_axi_awid(auto_cc_to_auto_ds_AWID),
        .m_axi_awlen(auto_cc_to_auto_ds_AWLEN),
        .m_axi_awlock(auto_cc_to_auto_ds_AWLOCK),
        .m_axi_awprot(auto_cc_to_auto_ds_AWPROT),
        .m_axi_awqos(auto_cc_to_auto_ds_AWQOS),
        .m_axi_awready(auto_cc_to_auto_ds_AWREADY),
        .m_axi_awregion(auto_cc_to_auto_ds_AWREGION),
        .m_axi_awsize(auto_cc_to_auto_ds_AWSIZE),
        .m_axi_awvalid(auto_cc_to_auto_ds_AWVALID),
        .m_axi_bid(auto_cc_to_auto_ds_BID),
        .m_axi_bready(auto_cc_to_auto_ds_BREADY),
        .m_axi_bresp(auto_cc_to_auto_ds_BRESP),
        .m_axi_bvalid(auto_cc_to_auto_ds_BVALID),
        .m_axi_rdata(auto_cc_to_auto_ds_RDATA),
        .m_axi_rid(auto_cc_to_auto_ds_RID),
        .m_axi_rlast(auto_cc_to_auto_ds_RLAST),
        .m_axi_rready(auto_cc_to_auto_ds_RREADY),
        .m_axi_rresp(auto_cc_to_auto_ds_RRESP),
        .m_axi_rvalid(auto_cc_to_auto_ds_RVALID),
        .m_axi_wdata(auto_cc_to_auto_ds_WDATA),
        .m_axi_wlast(auto_cc_to_auto_ds_WLAST),
        .m_axi_wready(auto_cc_to_auto_ds_WREADY),
        .m_axi_wstrb(auto_cc_to_auto_ds_WSTRB),
        .m_axi_wvalid(auto_cc_to_auto_ds_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m01_couplers_to_auto_cc_ARADDR[11:0]),
        .s_axi_arburst(m01_couplers_to_auto_cc_ARBURST),
        .s_axi_arcache(m01_couplers_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m01_couplers_to_auto_cc_ARID),
        .s_axi_arlen(m01_couplers_to_auto_cc_ARLEN),
        .s_axi_arlock(m01_couplers_to_auto_cc_ARLOCK),
        .s_axi_arprot(m01_couplers_to_auto_cc_ARPROT),
        .s_axi_arqos(m01_couplers_to_auto_cc_ARQOS),
        .s_axi_arready(m01_couplers_to_auto_cc_ARREADY),
        .s_axi_arregion(m01_couplers_to_auto_cc_ARREGION),
        .s_axi_arsize(m01_couplers_to_auto_cc_ARSIZE),
        .s_axi_aruser(m01_couplers_to_auto_cc_ARUSER),
        .s_axi_arvalid(m01_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_cc_AWADDR[11:0]),
        .s_axi_awburst(m01_couplers_to_auto_cc_AWBURST),
        .s_axi_awcache(m01_couplers_to_auto_cc_AWCACHE),
        .s_axi_awid(m01_couplers_to_auto_cc_AWID),
        .s_axi_awlen(m01_couplers_to_auto_cc_AWLEN),
        .s_axi_awlock(m01_couplers_to_auto_cc_AWLOCK),
        .s_axi_awprot(m01_couplers_to_auto_cc_AWPROT),
        .s_axi_awqos(m01_couplers_to_auto_cc_AWQOS),
        .s_axi_awready(m01_couplers_to_auto_cc_AWREADY),
        .s_axi_awregion(m01_couplers_to_auto_cc_AWREGION),
        .s_axi_awsize(m01_couplers_to_auto_cc_AWSIZE),
        .s_axi_awuser(m01_couplers_to_auto_cc_AWUSER),
        .s_axi_awvalid(m01_couplers_to_auto_cc_AWVALID),
        .s_axi_bid(m01_couplers_to_auto_cc_BID),
        .s_axi_bready(m01_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_cc_RDATA),
        .s_axi_rid(m01_couplers_to_auto_cc_RID),
        .s_axi_rlast(m01_couplers_to_auto_cc_RLAST),
        .s_axi_rready(m01_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_cc_WDATA),
        .s_axi_wlast(m01_couplers_to_auto_cc_WLAST),
        .s_axi_wready(m01_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_cc_WVALID));
  sys_top_auto_ds_1 auto_ds
       (.m_axi_araddr(auto_ds_to_m01_couplers_ARADDR),
        .m_axi_arburst(auto_ds_to_m01_couplers_ARBURST),
        .m_axi_arcache(auto_ds_to_m01_couplers_ARCACHE),
        .m_axi_arlen(auto_ds_to_m01_couplers_ARLEN),
        .m_axi_arlock(auto_ds_to_m01_couplers_ARLOCK),
        .m_axi_arprot(auto_ds_to_m01_couplers_ARPROT),
        .m_axi_arready(auto_ds_to_m01_couplers_ARREADY),
        .m_axi_arsize(auto_ds_to_m01_couplers_ARSIZE),
        .m_axi_arvalid(auto_ds_to_m01_couplers_ARVALID),
        .m_axi_awaddr(auto_ds_to_m01_couplers_AWADDR),
        .m_axi_awburst(auto_ds_to_m01_couplers_AWBURST),
        .m_axi_awcache(auto_ds_to_m01_couplers_AWCACHE),
        .m_axi_awlen(auto_ds_to_m01_couplers_AWLEN),
        .m_axi_awlock(auto_ds_to_m01_couplers_AWLOCK),
        .m_axi_awprot(auto_ds_to_m01_couplers_AWPROT),
        .m_axi_awready(auto_ds_to_m01_couplers_AWREADY),
        .m_axi_awsize(auto_ds_to_m01_couplers_AWSIZE),
        .m_axi_awvalid(auto_ds_to_m01_couplers_AWVALID),
        .m_axi_bready(auto_ds_to_m01_couplers_BREADY),
        .m_axi_bresp(auto_ds_to_m01_couplers_BRESP),
        .m_axi_bvalid(auto_ds_to_m01_couplers_BVALID),
        .m_axi_rdata(auto_ds_to_m01_couplers_RDATA),
        .m_axi_rlast(auto_ds_to_m01_couplers_RLAST),
        .m_axi_rready(auto_ds_to_m01_couplers_RREADY),
        .m_axi_rresp(auto_ds_to_m01_couplers_RRESP),
        .m_axi_rvalid(auto_ds_to_m01_couplers_RVALID),
        .m_axi_wdata(auto_ds_to_m01_couplers_WDATA),
        .m_axi_wlast(auto_ds_to_m01_couplers_WLAST),
        .m_axi_wready(auto_ds_to_m01_couplers_WREADY),
        .m_axi_wstrb(auto_ds_to_m01_couplers_WSTRB),
        .m_axi_wvalid(auto_ds_to_m01_couplers_WVALID),
        .s_axi_aclk(M_ACLK_1),
        .s_axi_araddr(auto_cc_to_auto_ds_ARADDR),
        .s_axi_arburst(auto_cc_to_auto_ds_ARBURST),
        .s_axi_arcache(auto_cc_to_auto_ds_ARCACHE),
        .s_axi_aresetn(M_ARESETN_1),
        .s_axi_arid(auto_cc_to_auto_ds_ARID),
        .s_axi_arlen(auto_cc_to_auto_ds_ARLEN),
        .s_axi_arlock(auto_cc_to_auto_ds_ARLOCK),
        .s_axi_arprot(auto_cc_to_auto_ds_ARPROT),
        .s_axi_arqos(auto_cc_to_auto_ds_ARQOS),
        .s_axi_arready(auto_cc_to_auto_ds_ARREADY),
        .s_axi_arregion(auto_cc_to_auto_ds_ARREGION),
        .s_axi_arsize(auto_cc_to_auto_ds_ARSIZE),
        .s_axi_arvalid(auto_cc_to_auto_ds_ARVALID),
        .s_axi_awaddr(auto_cc_to_auto_ds_AWADDR),
        .s_axi_awburst(auto_cc_to_auto_ds_AWBURST),
        .s_axi_awcache(auto_cc_to_auto_ds_AWCACHE),
        .s_axi_awid(auto_cc_to_auto_ds_AWID),
        .s_axi_awlen(auto_cc_to_auto_ds_AWLEN),
        .s_axi_awlock(auto_cc_to_auto_ds_AWLOCK),
        .s_axi_awprot(auto_cc_to_auto_ds_AWPROT),
        .s_axi_awqos(auto_cc_to_auto_ds_AWQOS),
        .s_axi_awready(auto_cc_to_auto_ds_AWREADY),
        .s_axi_awregion(auto_cc_to_auto_ds_AWREGION),
        .s_axi_awsize(auto_cc_to_auto_ds_AWSIZE),
        .s_axi_awvalid(auto_cc_to_auto_ds_AWVALID),
        .s_axi_bid(auto_cc_to_auto_ds_BID),
        .s_axi_bready(auto_cc_to_auto_ds_BREADY),
        .s_axi_bresp(auto_cc_to_auto_ds_BRESP),
        .s_axi_bvalid(auto_cc_to_auto_ds_BVALID),
        .s_axi_rdata(auto_cc_to_auto_ds_RDATA),
        .s_axi_rid(auto_cc_to_auto_ds_RID),
        .s_axi_rlast(auto_cc_to_auto_ds_RLAST),
        .s_axi_rready(auto_cc_to_auto_ds_RREADY),
        .s_axi_rresp(auto_cc_to_auto_ds_RRESP),
        .s_axi_rvalid(auto_cc_to_auto_ds_RVALID),
        .s_axi_wdata(auto_cc_to_auto_ds_WDATA),
        .s_axi_wlast(auto_cc_to_auto_ds_WLAST),
        .s_axi_wready(auto_cc_to_auto_ds_WREADY),
        .s_axi_wstrb(auto_cc_to_auto_ds_WSTRB),
        .s_axi_wvalid(auto_cc_to_auto_ds_WVALID));
endmodule

module m01_couplers_imp_MAHD6Z
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_m01_couplers_ARADDR;
  wire [2:0]auto_cc_to_m01_couplers_ARPROT;
  wire auto_cc_to_m01_couplers_ARREADY;
  wire auto_cc_to_m01_couplers_ARVALID;
  wire [31:0]auto_cc_to_m01_couplers_AWADDR;
  wire [2:0]auto_cc_to_m01_couplers_AWPROT;
  wire auto_cc_to_m01_couplers_AWREADY;
  wire auto_cc_to_m01_couplers_AWVALID;
  wire auto_cc_to_m01_couplers_BREADY;
  wire [1:0]auto_cc_to_m01_couplers_BRESP;
  wire auto_cc_to_m01_couplers_BVALID;
  wire [31:0]auto_cc_to_m01_couplers_RDATA;
  wire auto_cc_to_m01_couplers_RREADY;
  wire [1:0]auto_cc_to_m01_couplers_RRESP;
  wire auto_cc_to_m01_couplers_RVALID;
  wire [31:0]auto_cc_to_m01_couplers_WDATA;
  wire auto_cc_to_m01_couplers_WREADY;
  wire [3:0]auto_cc_to_m01_couplers_WSTRB;
  wire auto_cc_to_m01_couplers_WVALID;
  wire [39:0]m01_couplers_to_auto_cc_ARADDR;
  wire [2:0]m01_couplers_to_auto_cc_ARPROT;
  wire m01_couplers_to_auto_cc_ARREADY;
  wire m01_couplers_to_auto_cc_ARVALID;
  wire [39:0]m01_couplers_to_auto_cc_AWADDR;
  wire [2:0]m01_couplers_to_auto_cc_AWPROT;
  wire m01_couplers_to_auto_cc_AWREADY;
  wire m01_couplers_to_auto_cc_AWVALID;
  wire m01_couplers_to_auto_cc_BREADY;
  wire [1:0]m01_couplers_to_auto_cc_BRESP;
  wire m01_couplers_to_auto_cc_BVALID;
  wire [31:0]m01_couplers_to_auto_cc_RDATA;
  wire m01_couplers_to_auto_cc_RREADY;
  wire [1:0]m01_couplers_to_auto_cc_RRESP;
  wire m01_couplers_to_auto_cc_RVALID;
  wire [31:0]m01_couplers_to_auto_cc_WDATA;
  wire m01_couplers_to_auto_cc_WREADY;
  wire [3:0]m01_couplers_to_auto_cc_WSTRB;
  wire m01_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_cc_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_cc_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid = auto_cc_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_cc_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_cc_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid = auto_cc_to_m01_couplers_AWVALID;
  assign M_AXI_bready = auto_cc_to_m01_couplers_BREADY;
  assign M_AXI_rready = auto_cc_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_cc_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_cc_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_cc_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_cc_WREADY;
  assign auto_cc_to_m01_couplers_ARREADY = M_AXI_arready;
  assign auto_cc_to_m01_couplers_AWREADY = M_AXI_awready;
  assign auto_cc_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_cc_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign auto_cc_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_cc_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_cc_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign auto_cc_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_auto_cc_ARADDR = S_AXI_araddr[39:0];
  assign m01_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[39:0];
  assign m01_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  sys_top_auto_cc_11 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m01_couplers_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m01_couplers_ARPROT),
        .m_axi_arready(auto_cc_to_m01_couplers_ARREADY),
        .m_axi_arvalid(auto_cc_to_m01_couplers_ARVALID),
        .m_axi_awaddr(auto_cc_to_m01_couplers_AWADDR),
        .m_axi_awprot(auto_cc_to_m01_couplers_AWPROT),
        .m_axi_awready(auto_cc_to_m01_couplers_AWREADY),
        .m_axi_awvalid(auto_cc_to_m01_couplers_AWVALID),
        .m_axi_bready(auto_cc_to_m01_couplers_BREADY),
        .m_axi_bresp(auto_cc_to_m01_couplers_BRESP),
        .m_axi_bvalid(auto_cc_to_m01_couplers_BVALID),
        .m_axi_rdata(auto_cc_to_m01_couplers_RDATA),
        .m_axi_rready(auto_cc_to_m01_couplers_RREADY),
        .m_axi_rresp(auto_cc_to_m01_couplers_RRESP),
        .m_axi_rvalid(auto_cc_to_m01_couplers_RVALID),
        .m_axi_wdata(auto_cc_to_m01_couplers_WDATA),
        .m_axi_wready(auto_cc_to_m01_couplers_WREADY),
        .m_axi_wstrb(auto_cc_to_m01_couplers_WSTRB),
        .m_axi_wvalid(auto_cc_to_m01_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m01_couplers_to_auto_cc_ARADDR[31:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m01_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m01_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m01_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_cc_AWADDR[31:0]),
        .s_axi_awprot(m01_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m01_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m01_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m01_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m01_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m01_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_cc_WVALID));
endmodule

module m01_couplers_imp_STJT0F
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_auto_ds_ARADDR;
  wire [2:0]auto_cc_to_auto_ds_ARPROT;
  wire auto_cc_to_auto_ds_ARREADY;
  wire auto_cc_to_auto_ds_ARVALID;
  wire [31:0]auto_cc_to_auto_ds_AWADDR;
  wire [2:0]auto_cc_to_auto_ds_AWPROT;
  wire auto_cc_to_auto_ds_AWREADY;
  wire auto_cc_to_auto_ds_AWVALID;
  wire auto_cc_to_auto_ds_BREADY;
  wire [1:0]auto_cc_to_auto_ds_BRESP;
  wire auto_cc_to_auto_ds_BVALID;
  wire [63:0]auto_cc_to_auto_ds_RDATA;
  wire auto_cc_to_auto_ds_RREADY;
  wire [1:0]auto_cc_to_auto_ds_RRESP;
  wire auto_cc_to_auto_ds_RVALID;
  wire [63:0]auto_cc_to_auto_ds_WDATA;
  wire auto_cc_to_auto_ds_WREADY;
  wire [7:0]auto_cc_to_auto_ds_WSTRB;
  wire auto_cc_to_auto_ds_WVALID;
  wire [31:0]auto_ds_to_m01_couplers_ARADDR;
  wire [2:0]auto_ds_to_m01_couplers_ARPROT;
  wire auto_ds_to_m01_couplers_ARREADY;
  wire auto_ds_to_m01_couplers_ARVALID;
  wire [31:0]auto_ds_to_m01_couplers_AWADDR;
  wire [2:0]auto_ds_to_m01_couplers_AWPROT;
  wire auto_ds_to_m01_couplers_AWREADY;
  wire auto_ds_to_m01_couplers_AWVALID;
  wire auto_ds_to_m01_couplers_BREADY;
  wire [1:0]auto_ds_to_m01_couplers_BRESP;
  wire auto_ds_to_m01_couplers_BVALID;
  wire [31:0]auto_ds_to_m01_couplers_RDATA;
  wire auto_ds_to_m01_couplers_RREADY;
  wire [1:0]auto_ds_to_m01_couplers_RRESP;
  wire auto_ds_to_m01_couplers_RVALID;
  wire [31:0]auto_ds_to_m01_couplers_WDATA;
  wire auto_ds_to_m01_couplers_WREADY;
  wire [3:0]auto_ds_to_m01_couplers_WSTRB;
  wire auto_ds_to_m01_couplers_WVALID;
  wire [39:0]m01_couplers_to_auto_cc_ARADDR;
  wire [2:0]m01_couplers_to_auto_cc_ARPROT;
  wire m01_couplers_to_auto_cc_ARREADY;
  wire m01_couplers_to_auto_cc_ARVALID;
  wire [39:0]m01_couplers_to_auto_cc_AWADDR;
  wire [2:0]m01_couplers_to_auto_cc_AWPROT;
  wire m01_couplers_to_auto_cc_AWREADY;
  wire m01_couplers_to_auto_cc_AWVALID;
  wire m01_couplers_to_auto_cc_BREADY;
  wire [1:0]m01_couplers_to_auto_cc_BRESP;
  wire m01_couplers_to_auto_cc_BVALID;
  wire [63:0]m01_couplers_to_auto_cc_RDATA;
  wire m01_couplers_to_auto_cc_RREADY;
  wire [1:0]m01_couplers_to_auto_cc_RRESP;
  wire m01_couplers_to_auto_cc_RVALID;
  wire [63:0]m01_couplers_to_auto_cc_WDATA;
  wire m01_couplers_to_auto_cc_WREADY;
  wire [7:0]m01_couplers_to_auto_cc_WSTRB;
  wire m01_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_ds_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_ds_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid = auto_ds_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_ds_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_ds_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid = auto_ds_to_m01_couplers_AWVALID;
  assign M_AXI_bready = auto_ds_to_m01_couplers_BREADY;
  assign M_AXI_rready = auto_ds_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_ds_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_ds_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_ds_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[63:0] = m01_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_cc_WREADY;
  assign auto_ds_to_m01_couplers_ARREADY = M_AXI_arready;
  assign auto_ds_to_m01_couplers_AWREADY = M_AXI_awready;
  assign auto_ds_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_ds_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign auto_ds_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_ds_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_ds_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign auto_ds_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_auto_cc_ARADDR = S_AXI_araddr[39:0];
  assign m01_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[39:0];
  assign m01_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_cc_WDATA = S_AXI_wdata[63:0];
  assign m01_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[7:0];
  assign m01_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  sys_top_auto_cc_9 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_auto_ds_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_auto_ds_ARPROT),
        .m_axi_arready(auto_cc_to_auto_ds_ARREADY),
        .m_axi_arvalid(auto_cc_to_auto_ds_ARVALID),
        .m_axi_awaddr(auto_cc_to_auto_ds_AWADDR),
        .m_axi_awprot(auto_cc_to_auto_ds_AWPROT),
        .m_axi_awready(auto_cc_to_auto_ds_AWREADY),
        .m_axi_awvalid(auto_cc_to_auto_ds_AWVALID),
        .m_axi_bready(auto_cc_to_auto_ds_BREADY),
        .m_axi_bresp(auto_cc_to_auto_ds_BRESP),
        .m_axi_bvalid(auto_cc_to_auto_ds_BVALID),
        .m_axi_rdata(auto_cc_to_auto_ds_RDATA),
        .m_axi_rready(auto_cc_to_auto_ds_RREADY),
        .m_axi_rresp(auto_cc_to_auto_ds_RRESP),
        .m_axi_rvalid(auto_cc_to_auto_ds_RVALID),
        .m_axi_wdata(auto_cc_to_auto_ds_WDATA),
        .m_axi_wready(auto_cc_to_auto_ds_WREADY),
        .m_axi_wstrb(auto_cc_to_auto_ds_WSTRB),
        .m_axi_wvalid(auto_cc_to_auto_ds_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m01_couplers_to_auto_cc_ARADDR[31:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m01_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m01_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m01_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_cc_AWADDR[31:0]),
        .s_axi_awprot(m01_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m01_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m01_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m01_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m01_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m01_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_cc_WVALID));
  sys_top_auto_ds_9 auto_ds
       (.m_axi_araddr(auto_ds_to_m01_couplers_ARADDR),
        .m_axi_arprot(auto_ds_to_m01_couplers_ARPROT),
        .m_axi_arready(auto_ds_to_m01_couplers_ARREADY),
        .m_axi_arvalid(auto_ds_to_m01_couplers_ARVALID),
        .m_axi_awaddr(auto_ds_to_m01_couplers_AWADDR),
        .m_axi_awprot(auto_ds_to_m01_couplers_AWPROT),
        .m_axi_awready(auto_ds_to_m01_couplers_AWREADY),
        .m_axi_awvalid(auto_ds_to_m01_couplers_AWVALID),
        .m_axi_bready(auto_ds_to_m01_couplers_BREADY),
        .m_axi_bresp(auto_ds_to_m01_couplers_BRESP),
        .m_axi_bvalid(auto_ds_to_m01_couplers_BVALID),
        .m_axi_rdata(auto_ds_to_m01_couplers_RDATA),
        .m_axi_rready(auto_ds_to_m01_couplers_RREADY),
        .m_axi_rresp(auto_ds_to_m01_couplers_RRESP),
        .m_axi_rvalid(auto_ds_to_m01_couplers_RVALID),
        .m_axi_wdata(auto_ds_to_m01_couplers_WDATA),
        .m_axi_wready(auto_ds_to_m01_couplers_WREADY),
        .m_axi_wstrb(auto_ds_to_m01_couplers_WSTRB),
        .m_axi_wvalid(auto_ds_to_m01_couplers_WVALID),
        .s_axi_aclk(M_ACLK_1),
        .s_axi_araddr(auto_cc_to_auto_ds_ARADDR),
        .s_axi_aresetn(M_ARESETN_1),
        .s_axi_arprot(auto_cc_to_auto_ds_ARPROT),
        .s_axi_arready(auto_cc_to_auto_ds_ARREADY),
        .s_axi_arvalid(auto_cc_to_auto_ds_ARVALID),
        .s_axi_awaddr(auto_cc_to_auto_ds_AWADDR),
        .s_axi_awprot(auto_cc_to_auto_ds_AWPROT),
        .s_axi_awready(auto_cc_to_auto_ds_AWREADY),
        .s_axi_awvalid(auto_cc_to_auto_ds_AWVALID),
        .s_axi_bready(auto_cc_to_auto_ds_BREADY),
        .s_axi_bresp(auto_cc_to_auto_ds_BRESP),
        .s_axi_bvalid(auto_cc_to_auto_ds_BVALID),
        .s_axi_rdata(auto_cc_to_auto_ds_RDATA),
        .s_axi_rready(auto_cc_to_auto_ds_RREADY),
        .s_axi_rresp(auto_cc_to_auto_ds_RRESP),
        .s_axi_rvalid(auto_cc_to_auto_ds_RVALID),
        .s_axi_wdata(auto_cc_to_auto_ds_WDATA),
        .s_axi_wready(auto_cc_to_auto_ds_WREADY),
        .s_axi_wstrb(auto_cc_to_auto_ds_WSTRB),
        .s_axi_wvalid(auto_cc_to_auto_ds_WVALID));
endmodule

module m02_couplers_imp_137FPK6
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input [15:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input [15:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_auto_ds_ARADDR;
  wire [1:0]auto_cc_to_auto_ds_ARBURST;
  wire [3:0]auto_cc_to_auto_ds_ARCACHE;
  wire [15:0]auto_cc_to_auto_ds_ARID;
  wire [7:0]auto_cc_to_auto_ds_ARLEN;
  wire [0:0]auto_cc_to_auto_ds_ARLOCK;
  wire [2:0]auto_cc_to_auto_ds_ARPROT;
  wire [3:0]auto_cc_to_auto_ds_ARQOS;
  wire auto_cc_to_auto_ds_ARREADY;
  wire [3:0]auto_cc_to_auto_ds_ARREGION;
  wire [2:0]auto_cc_to_auto_ds_ARSIZE;
  wire auto_cc_to_auto_ds_ARVALID;
  wire [31:0]auto_cc_to_auto_ds_AWADDR;
  wire [1:0]auto_cc_to_auto_ds_AWBURST;
  wire [3:0]auto_cc_to_auto_ds_AWCACHE;
  wire [15:0]auto_cc_to_auto_ds_AWID;
  wire [7:0]auto_cc_to_auto_ds_AWLEN;
  wire [0:0]auto_cc_to_auto_ds_AWLOCK;
  wire [2:0]auto_cc_to_auto_ds_AWPROT;
  wire [3:0]auto_cc_to_auto_ds_AWQOS;
  wire auto_cc_to_auto_ds_AWREADY;
  wire [3:0]auto_cc_to_auto_ds_AWREGION;
  wire [2:0]auto_cc_to_auto_ds_AWSIZE;
  wire auto_cc_to_auto_ds_AWVALID;
  wire [15:0]auto_cc_to_auto_ds_BID;
  wire auto_cc_to_auto_ds_BREADY;
  wire [1:0]auto_cc_to_auto_ds_BRESP;
  wire auto_cc_to_auto_ds_BVALID;
  wire [63:0]auto_cc_to_auto_ds_RDATA;
  wire [15:0]auto_cc_to_auto_ds_RID;
  wire auto_cc_to_auto_ds_RLAST;
  wire auto_cc_to_auto_ds_RREADY;
  wire [1:0]auto_cc_to_auto_ds_RRESP;
  wire auto_cc_to_auto_ds_RVALID;
  wire [63:0]auto_cc_to_auto_ds_WDATA;
  wire auto_cc_to_auto_ds_WLAST;
  wire auto_cc_to_auto_ds_WREADY;
  wire [7:0]auto_cc_to_auto_ds_WSTRB;
  wire auto_cc_to_auto_ds_WVALID;
  wire [31:0]auto_ds_to_auto_pc_ARADDR;
  wire [1:0]auto_ds_to_auto_pc_ARBURST;
  wire [3:0]auto_ds_to_auto_pc_ARCACHE;
  wire [7:0]auto_ds_to_auto_pc_ARLEN;
  wire [0:0]auto_ds_to_auto_pc_ARLOCK;
  wire [2:0]auto_ds_to_auto_pc_ARPROT;
  wire [3:0]auto_ds_to_auto_pc_ARQOS;
  wire auto_ds_to_auto_pc_ARREADY;
  wire [3:0]auto_ds_to_auto_pc_ARREGION;
  wire [2:0]auto_ds_to_auto_pc_ARSIZE;
  wire auto_ds_to_auto_pc_ARVALID;
  wire [31:0]auto_ds_to_auto_pc_AWADDR;
  wire [1:0]auto_ds_to_auto_pc_AWBURST;
  wire [3:0]auto_ds_to_auto_pc_AWCACHE;
  wire [7:0]auto_ds_to_auto_pc_AWLEN;
  wire [0:0]auto_ds_to_auto_pc_AWLOCK;
  wire [2:0]auto_ds_to_auto_pc_AWPROT;
  wire [3:0]auto_ds_to_auto_pc_AWQOS;
  wire auto_ds_to_auto_pc_AWREADY;
  wire [3:0]auto_ds_to_auto_pc_AWREGION;
  wire [2:0]auto_ds_to_auto_pc_AWSIZE;
  wire auto_ds_to_auto_pc_AWVALID;
  wire auto_ds_to_auto_pc_BREADY;
  wire [1:0]auto_ds_to_auto_pc_BRESP;
  wire auto_ds_to_auto_pc_BVALID;
  wire [31:0]auto_ds_to_auto_pc_RDATA;
  wire auto_ds_to_auto_pc_RLAST;
  wire auto_ds_to_auto_pc_RREADY;
  wire [1:0]auto_ds_to_auto_pc_RRESP;
  wire auto_ds_to_auto_pc_RVALID;
  wire [31:0]auto_ds_to_auto_pc_WDATA;
  wire auto_ds_to_auto_pc_WLAST;
  wire auto_ds_to_auto_pc_WREADY;
  wire [3:0]auto_ds_to_auto_pc_WSTRB;
  wire auto_ds_to_auto_pc_WVALID;
  wire [31:0]auto_pc_to_m02_couplers_ARADDR;
  wire [2:0]auto_pc_to_m02_couplers_ARPROT;
  wire auto_pc_to_m02_couplers_ARREADY;
  wire auto_pc_to_m02_couplers_ARVALID;
  wire [31:0]auto_pc_to_m02_couplers_AWADDR;
  wire [2:0]auto_pc_to_m02_couplers_AWPROT;
  wire auto_pc_to_m02_couplers_AWREADY;
  wire auto_pc_to_m02_couplers_AWVALID;
  wire auto_pc_to_m02_couplers_BREADY;
  wire [1:0]auto_pc_to_m02_couplers_BRESP;
  wire auto_pc_to_m02_couplers_BVALID;
  wire [31:0]auto_pc_to_m02_couplers_RDATA;
  wire auto_pc_to_m02_couplers_RREADY;
  wire [1:0]auto_pc_to_m02_couplers_RRESP;
  wire auto_pc_to_m02_couplers_RVALID;
  wire [31:0]auto_pc_to_m02_couplers_WDATA;
  wire auto_pc_to_m02_couplers_WREADY;
  wire [3:0]auto_pc_to_m02_couplers_WSTRB;
  wire auto_pc_to_m02_couplers_WVALID;
  wire [39:0]m02_couplers_to_auto_cc_ARADDR;
  wire [1:0]m02_couplers_to_auto_cc_ARBURST;
  wire [3:0]m02_couplers_to_auto_cc_ARCACHE;
  wire [15:0]m02_couplers_to_auto_cc_ARID;
  wire [7:0]m02_couplers_to_auto_cc_ARLEN;
  wire [0:0]m02_couplers_to_auto_cc_ARLOCK;
  wire [2:0]m02_couplers_to_auto_cc_ARPROT;
  wire [3:0]m02_couplers_to_auto_cc_ARQOS;
  wire m02_couplers_to_auto_cc_ARREADY;
  wire [3:0]m02_couplers_to_auto_cc_ARREGION;
  wire [2:0]m02_couplers_to_auto_cc_ARSIZE;
  wire [15:0]m02_couplers_to_auto_cc_ARUSER;
  wire m02_couplers_to_auto_cc_ARVALID;
  wire [39:0]m02_couplers_to_auto_cc_AWADDR;
  wire [1:0]m02_couplers_to_auto_cc_AWBURST;
  wire [3:0]m02_couplers_to_auto_cc_AWCACHE;
  wire [15:0]m02_couplers_to_auto_cc_AWID;
  wire [7:0]m02_couplers_to_auto_cc_AWLEN;
  wire [0:0]m02_couplers_to_auto_cc_AWLOCK;
  wire [2:0]m02_couplers_to_auto_cc_AWPROT;
  wire [3:0]m02_couplers_to_auto_cc_AWQOS;
  wire m02_couplers_to_auto_cc_AWREADY;
  wire [3:0]m02_couplers_to_auto_cc_AWREGION;
  wire [2:0]m02_couplers_to_auto_cc_AWSIZE;
  wire [15:0]m02_couplers_to_auto_cc_AWUSER;
  wire m02_couplers_to_auto_cc_AWVALID;
  wire [15:0]m02_couplers_to_auto_cc_BID;
  wire m02_couplers_to_auto_cc_BREADY;
  wire [1:0]m02_couplers_to_auto_cc_BRESP;
  wire m02_couplers_to_auto_cc_BVALID;
  wire [63:0]m02_couplers_to_auto_cc_RDATA;
  wire [15:0]m02_couplers_to_auto_cc_RID;
  wire m02_couplers_to_auto_cc_RLAST;
  wire m02_couplers_to_auto_cc_RREADY;
  wire [1:0]m02_couplers_to_auto_cc_RRESP;
  wire m02_couplers_to_auto_cc_RVALID;
  wire [63:0]m02_couplers_to_auto_cc_WDATA;
  wire m02_couplers_to_auto_cc_WLAST;
  wire m02_couplers_to_auto_cc_WREADY;
  wire [7:0]m02_couplers_to_auto_cc_WSTRB;
  wire m02_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_pc_to_m02_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_m02_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m02_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_m02_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_m02_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m02_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m02_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m02_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bid[15:0] = m02_couplers_to_auto_cc_BID;
  assign S_AXI_bresp[1:0] = m02_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[63:0] = m02_couplers_to_auto_cc_RDATA;
  assign S_AXI_rid[15:0] = m02_couplers_to_auto_cc_RID;
  assign S_AXI_rlast = m02_couplers_to_auto_cc_RLAST;
  assign S_AXI_rresp[1:0] = m02_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m02_couplers_to_auto_cc_WREADY;
  assign auto_pc_to_m02_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m02_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_auto_cc_ARADDR = S_AXI_araddr[39:0];
  assign m02_couplers_to_auto_cc_ARBURST = S_AXI_arburst[1:0];
  assign m02_couplers_to_auto_cc_ARCACHE = S_AXI_arcache[3:0];
  assign m02_couplers_to_auto_cc_ARID = S_AXI_arid[15:0];
  assign m02_couplers_to_auto_cc_ARLEN = S_AXI_arlen[7:0];
  assign m02_couplers_to_auto_cc_ARLOCK = S_AXI_arlock[0];
  assign m02_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_auto_cc_ARQOS = S_AXI_arqos[3:0];
  assign m02_couplers_to_auto_cc_ARREGION = S_AXI_arregion[3:0];
  assign m02_couplers_to_auto_cc_ARSIZE = S_AXI_arsize[2:0];
  assign m02_couplers_to_auto_cc_ARUSER = S_AXI_aruser[15:0];
  assign m02_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[39:0];
  assign m02_couplers_to_auto_cc_AWBURST = S_AXI_awburst[1:0];
  assign m02_couplers_to_auto_cc_AWCACHE = S_AXI_awcache[3:0];
  assign m02_couplers_to_auto_cc_AWID = S_AXI_awid[15:0];
  assign m02_couplers_to_auto_cc_AWLEN = S_AXI_awlen[7:0];
  assign m02_couplers_to_auto_cc_AWLOCK = S_AXI_awlock[0];
  assign m02_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_auto_cc_AWQOS = S_AXI_awqos[3:0];
  assign m02_couplers_to_auto_cc_AWREGION = S_AXI_awregion[3:0];
  assign m02_couplers_to_auto_cc_AWSIZE = S_AXI_awsize[2:0];
  assign m02_couplers_to_auto_cc_AWUSER = S_AXI_awuser[15:0];
  assign m02_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m02_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m02_couplers_to_auto_cc_WDATA = S_AXI_wdata[63:0];
  assign m02_couplers_to_auto_cc_WLAST = S_AXI_wlast;
  assign m02_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[7:0];
  assign m02_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  sys_top_auto_cc_3 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_auto_ds_ARADDR),
        .m_axi_arburst(auto_cc_to_auto_ds_ARBURST),
        .m_axi_arcache(auto_cc_to_auto_ds_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arid(auto_cc_to_auto_ds_ARID),
        .m_axi_arlen(auto_cc_to_auto_ds_ARLEN),
        .m_axi_arlock(auto_cc_to_auto_ds_ARLOCK),
        .m_axi_arprot(auto_cc_to_auto_ds_ARPROT),
        .m_axi_arqos(auto_cc_to_auto_ds_ARQOS),
        .m_axi_arready(auto_cc_to_auto_ds_ARREADY),
        .m_axi_arregion(auto_cc_to_auto_ds_ARREGION),
        .m_axi_arsize(auto_cc_to_auto_ds_ARSIZE),
        .m_axi_arvalid(auto_cc_to_auto_ds_ARVALID),
        .m_axi_awaddr(auto_cc_to_auto_ds_AWADDR),
        .m_axi_awburst(auto_cc_to_auto_ds_AWBURST),
        .m_axi_awcache(auto_cc_to_auto_ds_AWCACHE),
        .m_axi_awid(auto_cc_to_auto_ds_AWID),
        .m_axi_awlen(auto_cc_to_auto_ds_AWLEN),
        .m_axi_awlock(auto_cc_to_auto_ds_AWLOCK),
        .m_axi_awprot(auto_cc_to_auto_ds_AWPROT),
        .m_axi_awqos(auto_cc_to_auto_ds_AWQOS),
        .m_axi_awready(auto_cc_to_auto_ds_AWREADY),
        .m_axi_awregion(auto_cc_to_auto_ds_AWREGION),
        .m_axi_awsize(auto_cc_to_auto_ds_AWSIZE),
        .m_axi_awvalid(auto_cc_to_auto_ds_AWVALID),
        .m_axi_bid(auto_cc_to_auto_ds_BID),
        .m_axi_bready(auto_cc_to_auto_ds_BREADY),
        .m_axi_bresp(auto_cc_to_auto_ds_BRESP),
        .m_axi_bvalid(auto_cc_to_auto_ds_BVALID),
        .m_axi_rdata(auto_cc_to_auto_ds_RDATA),
        .m_axi_rid(auto_cc_to_auto_ds_RID),
        .m_axi_rlast(auto_cc_to_auto_ds_RLAST),
        .m_axi_rready(auto_cc_to_auto_ds_RREADY),
        .m_axi_rresp(auto_cc_to_auto_ds_RRESP),
        .m_axi_rvalid(auto_cc_to_auto_ds_RVALID),
        .m_axi_wdata(auto_cc_to_auto_ds_WDATA),
        .m_axi_wlast(auto_cc_to_auto_ds_WLAST),
        .m_axi_wready(auto_cc_to_auto_ds_WREADY),
        .m_axi_wstrb(auto_cc_to_auto_ds_WSTRB),
        .m_axi_wvalid(auto_cc_to_auto_ds_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m02_couplers_to_auto_cc_ARADDR[31:0]),
        .s_axi_arburst(m02_couplers_to_auto_cc_ARBURST),
        .s_axi_arcache(m02_couplers_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m02_couplers_to_auto_cc_ARID),
        .s_axi_arlen(m02_couplers_to_auto_cc_ARLEN),
        .s_axi_arlock(m02_couplers_to_auto_cc_ARLOCK),
        .s_axi_arprot(m02_couplers_to_auto_cc_ARPROT),
        .s_axi_arqos(m02_couplers_to_auto_cc_ARQOS),
        .s_axi_arready(m02_couplers_to_auto_cc_ARREADY),
        .s_axi_arregion(m02_couplers_to_auto_cc_ARREGION),
        .s_axi_arsize(m02_couplers_to_auto_cc_ARSIZE),
        .s_axi_aruser(m02_couplers_to_auto_cc_ARUSER),
        .s_axi_arvalid(m02_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m02_couplers_to_auto_cc_AWADDR[31:0]),
        .s_axi_awburst(m02_couplers_to_auto_cc_AWBURST),
        .s_axi_awcache(m02_couplers_to_auto_cc_AWCACHE),
        .s_axi_awid(m02_couplers_to_auto_cc_AWID),
        .s_axi_awlen(m02_couplers_to_auto_cc_AWLEN),
        .s_axi_awlock(m02_couplers_to_auto_cc_AWLOCK),
        .s_axi_awprot(m02_couplers_to_auto_cc_AWPROT),
        .s_axi_awqos(m02_couplers_to_auto_cc_AWQOS),
        .s_axi_awready(m02_couplers_to_auto_cc_AWREADY),
        .s_axi_awregion(m02_couplers_to_auto_cc_AWREGION),
        .s_axi_awsize(m02_couplers_to_auto_cc_AWSIZE),
        .s_axi_awuser(m02_couplers_to_auto_cc_AWUSER),
        .s_axi_awvalid(m02_couplers_to_auto_cc_AWVALID),
        .s_axi_bid(m02_couplers_to_auto_cc_BID),
        .s_axi_bready(m02_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m02_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m02_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m02_couplers_to_auto_cc_RDATA),
        .s_axi_rid(m02_couplers_to_auto_cc_RID),
        .s_axi_rlast(m02_couplers_to_auto_cc_RLAST),
        .s_axi_rready(m02_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m02_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m02_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m02_couplers_to_auto_cc_WDATA),
        .s_axi_wlast(m02_couplers_to_auto_cc_WLAST),
        .s_axi_wready(m02_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m02_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m02_couplers_to_auto_cc_WVALID));
  sys_top_auto_ds_2 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .m_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .m_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .m_axi_bready(auto_ds_to_auto_pc_BREADY),
        .m_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .m_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .m_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .m_axi_rready(auto_ds_to_auto_pc_RREADY),
        .m_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .m_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .m_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .m_axi_wready(auto_ds_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_pc_WVALID),
        .s_axi_aclk(M_ACLK_1),
        .s_axi_araddr(auto_cc_to_auto_ds_ARADDR),
        .s_axi_arburst(auto_cc_to_auto_ds_ARBURST),
        .s_axi_arcache(auto_cc_to_auto_ds_ARCACHE),
        .s_axi_aresetn(M_ARESETN_1),
        .s_axi_arid(auto_cc_to_auto_ds_ARID),
        .s_axi_arlen(auto_cc_to_auto_ds_ARLEN),
        .s_axi_arlock(auto_cc_to_auto_ds_ARLOCK),
        .s_axi_arprot(auto_cc_to_auto_ds_ARPROT),
        .s_axi_arqos(auto_cc_to_auto_ds_ARQOS),
        .s_axi_arready(auto_cc_to_auto_ds_ARREADY),
        .s_axi_arregion(auto_cc_to_auto_ds_ARREGION),
        .s_axi_arsize(auto_cc_to_auto_ds_ARSIZE),
        .s_axi_arvalid(auto_cc_to_auto_ds_ARVALID),
        .s_axi_awaddr(auto_cc_to_auto_ds_AWADDR),
        .s_axi_awburst(auto_cc_to_auto_ds_AWBURST),
        .s_axi_awcache(auto_cc_to_auto_ds_AWCACHE),
        .s_axi_awid(auto_cc_to_auto_ds_AWID),
        .s_axi_awlen(auto_cc_to_auto_ds_AWLEN),
        .s_axi_awlock(auto_cc_to_auto_ds_AWLOCK),
        .s_axi_awprot(auto_cc_to_auto_ds_AWPROT),
        .s_axi_awqos(auto_cc_to_auto_ds_AWQOS),
        .s_axi_awready(auto_cc_to_auto_ds_AWREADY),
        .s_axi_awregion(auto_cc_to_auto_ds_AWREGION),
        .s_axi_awsize(auto_cc_to_auto_ds_AWSIZE),
        .s_axi_awvalid(auto_cc_to_auto_ds_AWVALID),
        .s_axi_bid(auto_cc_to_auto_ds_BID),
        .s_axi_bready(auto_cc_to_auto_ds_BREADY),
        .s_axi_bresp(auto_cc_to_auto_ds_BRESP),
        .s_axi_bvalid(auto_cc_to_auto_ds_BVALID),
        .s_axi_rdata(auto_cc_to_auto_ds_RDATA),
        .s_axi_rid(auto_cc_to_auto_ds_RID),
        .s_axi_rlast(auto_cc_to_auto_ds_RLAST),
        .s_axi_rready(auto_cc_to_auto_ds_RREADY),
        .s_axi_rresp(auto_cc_to_auto_ds_RRESP),
        .s_axi_rvalid(auto_cc_to_auto_ds_RVALID),
        .s_axi_wdata(auto_cc_to_auto_ds_WDATA),
        .s_axi_wlast(auto_cc_to_auto_ds_WLAST),
        .s_axi_wready(auto_cc_to_auto_ds_WREADY),
        .s_axi_wstrb(auto_cc_to_auto_ds_WSTRB),
        .s_axi_wvalid(auto_cc_to_auto_ds_WVALID));
  sys_top_auto_pc_1 auto_pc
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m02_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_m02_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m02_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m02_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m02_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_m02_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m02_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m02_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m02_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m02_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m02_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m02_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m02_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m02_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m02_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m02_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m02_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m02_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m02_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .s_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .s_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .s_axi_bready(auto_ds_to_auto_pc_BREADY),
        .s_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .s_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .s_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .s_axi_rready(auto_ds_to_auto_pc_RREADY),
        .s_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .s_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .s_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .s_axi_wready(auto_ds_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_pc_WVALID));
endmodule

module m03_couplers_imp_312IXX
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [11:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [11:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input [15:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input [15:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [11:0]auto_cc_to_auto_ds_ARADDR;
  wire [1:0]auto_cc_to_auto_ds_ARBURST;
  wire [3:0]auto_cc_to_auto_ds_ARCACHE;
  wire [15:0]auto_cc_to_auto_ds_ARID;
  wire [7:0]auto_cc_to_auto_ds_ARLEN;
  wire [0:0]auto_cc_to_auto_ds_ARLOCK;
  wire [2:0]auto_cc_to_auto_ds_ARPROT;
  wire [3:0]auto_cc_to_auto_ds_ARQOS;
  wire auto_cc_to_auto_ds_ARREADY;
  wire [3:0]auto_cc_to_auto_ds_ARREGION;
  wire [2:0]auto_cc_to_auto_ds_ARSIZE;
  wire auto_cc_to_auto_ds_ARVALID;
  wire [11:0]auto_cc_to_auto_ds_AWADDR;
  wire [1:0]auto_cc_to_auto_ds_AWBURST;
  wire [3:0]auto_cc_to_auto_ds_AWCACHE;
  wire [15:0]auto_cc_to_auto_ds_AWID;
  wire [7:0]auto_cc_to_auto_ds_AWLEN;
  wire [0:0]auto_cc_to_auto_ds_AWLOCK;
  wire [2:0]auto_cc_to_auto_ds_AWPROT;
  wire [3:0]auto_cc_to_auto_ds_AWQOS;
  wire auto_cc_to_auto_ds_AWREADY;
  wire [3:0]auto_cc_to_auto_ds_AWREGION;
  wire [2:0]auto_cc_to_auto_ds_AWSIZE;
  wire auto_cc_to_auto_ds_AWVALID;
  wire [15:0]auto_cc_to_auto_ds_BID;
  wire auto_cc_to_auto_ds_BREADY;
  wire [1:0]auto_cc_to_auto_ds_BRESP;
  wire auto_cc_to_auto_ds_BVALID;
  wire [63:0]auto_cc_to_auto_ds_RDATA;
  wire [15:0]auto_cc_to_auto_ds_RID;
  wire auto_cc_to_auto_ds_RLAST;
  wire auto_cc_to_auto_ds_RREADY;
  wire [1:0]auto_cc_to_auto_ds_RRESP;
  wire auto_cc_to_auto_ds_RVALID;
  wire [63:0]auto_cc_to_auto_ds_WDATA;
  wire auto_cc_to_auto_ds_WLAST;
  wire auto_cc_to_auto_ds_WREADY;
  wire [7:0]auto_cc_to_auto_ds_WSTRB;
  wire auto_cc_to_auto_ds_WVALID;
  wire [11:0]auto_ds_to_m03_couplers_ARADDR;
  wire [1:0]auto_ds_to_m03_couplers_ARBURST;
  wire [3:0]auto_ds_to_m03_couplers_ARCACHE;
  wire [7:0]auto_ds_to_m03_couplers_ARLEN;
  wire [0:0]auto_ds_to_m03_couplers_ARLOCK;
  wire [2:0]auto_ds_to_m03_couplers_ARPROT;
  wire auto_ds_to_m03_couplers_ARREADY;
  wire [2:0]auto_ds_to_m03_couplers_ARSIZE;
  wire auto_ds_to_m03_couplers_ARVALID;
  wire [11:0]auto_ds_to_m03_couplers_AWADDR;
  wire [1:0]auto_ds_to_m03_couplers_AWBURST;
  wire [3:0]auto_ds_to_m03_couplers_AWCACHE;
  wire [7:0]auto_ds_to_m03_couplers_AWLEN;
  wire [0:0]auto_ds_to_m03_couplers_AWLOCK;
  wire [2:0]auto_ds_to_m03_couplers_AWPROT;
  wire auto_ds_to_m03_couplers_AWREADY;
  wire [2:0]auto_ds_to_m03_couplers_AWSIZE;
  wire auto_ds_to_m03_couplers_AWVALID;
  wire auto_ds_to_m03_couplers_BREADY;
  wire [1:0]auto_ds_to_m03_couplers_BRESP;
  wire auto_ds_to_m03_couplers_BVALID;
  wire [31:0]auto_ds_to_m03_couplers_RDATA;
  wire auto_ds_to_m03_couplers_RLAST;
  wire auto_ds_to_m03_couplers_RREADY;
  wire [1:0]auto_ds_to_m03_couplers_RRESP;
  wire auto_ds_to_m03_couplers_RVALID;
  wire [31:0]auto_ds_to_m03_couplers_WDATA;
  wire auto_ds_to_m03_couplers_WLAST;
  wire auto_ds_to_m03_couplers_WREADY;
  wire [3:0]auto_ds_to_m03_couplers_WSTRB;
  wire auto_ds_to_m03_couplers_WVALID;
  wire [39:0]m03_couplers_to_auto_cc_ARADDR;
  wire [1:0]m03_couplers_to_auto_cc_ARBURST;
  wire [3:0]m03_couplers_to_auto_cc_ARCACHE;
  wire [15:0]m03_couplers_to_auto_cc_ARID;
  wire [7:0]m03_couplers_to_auto_cc_ARLEN;
  wire [0:0]m03_couplers_to_auto_cc_ARLOCK;
  wire [2:0]m03_couplers_to_auto_cc_ARPROT;
  wire [3:0]m03_couplers_to_auto_cc_ARQOS;
  wire m03_couplers_to_auto_cc_ARREADY;
  wire [3:0]m03_couplers_to_auto_cc_ARREGION;
  wire [2:0]m03_couplers_to_auto_cc_ARSIZE;
  wire [15:0]m03_couplers_to_auto_cc_ARUSER;
  wire m03_couplers_to_auto_cc_ARVALID;
  wire [39:0]m03_couplers_to_auto_cc_AWADDR;
  wire [1:0]m03_couplers_to_auto_cc_AWBURST;
  wire [3:0]m03_couplers_to_auto_cc_AWCACHE;
  wire [15:0]m03_couplers_to_auto_cc_AWID;
  wire [7:0]m03_couplers_to_auto_cc_AWLEN;
  wire [0:0]m03_couplers_to_auto_cc_AWLOCK;
  wire [2:0]m03_couplers_to_auto_cc_AWPROT;
  wire [3:0]m03_couplers_to_auto_cc_AWQOS;
  wire m03_couplers_to_auto_cc_AWREADY;
  wire [3:0]m03_couplers_to_auto_cc_AWREGION;
  wire [2:0]m03_couplers_to_auto_cc_AWSIZE;
  wire [15:0]m03_couplers_to_auto_cc_AWUSER;
  wire m03_couplers_to_auto_cc_AWVALID;
  wire [15:0]m03_couplers_to_auto_cc_BID;
  wire m03_couplers_to_auto_cc_BREADY;
  wire [1:0]m03_couplers_to_auto_cc_BRESP;
  wire m03_couplers_to_auto_cc_BVALID;
  wire [63:0]m03_couplers_to_auto_cc_RDATA;
  wire [15:0]m03_couplers_to_auto_cc_RID;
  wire m03_couplers_to_auto_cc_RLAST;
  wire m03_couplers_to_auto_cc_RREADY;
  wire [1:0]m03_couplers_to_auto_cc_RRESP;
  wire m03_couplers_to_auto_cc_RVALID;
  wire [63:0]m03_couplers_to_auto_cc_WDATA;
  wire m03_couplers_to_auto_cc_WLAST;
  wire m03_couplers_to_auto_cc_WREADY;
  wire [7:0]m03_couplers_to_auto_cc_WSTRB;
  wire m03_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[11:0] = auto_ds_to_m03_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_ds_to_m03_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_ds_to_m03_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_ds_to_m03_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_ds_to_m03_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_ds_to_m03_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = auto_ds_to_m03_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_ds_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[11:0] = auto_ds_to_m03_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_ds_to_m03_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_ds_to_m03_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_ds_to_m03_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_ds_to_m03_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_ds_to_m03_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = auto_ds_to_m03_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_ds_to_m03_couplers_AWVALID;
  assign M_AXI_bready = auto_ds_to_m03_couplers_BREADY;
  assign M_AXI_rready = auto_ds_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_ds_to_m03_couplers_WDATA;
  assign M_AXI_wlast = auto_ds_to_m03_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_ds_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = auto_ds_to_m03_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m03_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m03_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bid[15:0] = m03_couplers_to_auto_cc_BID;
  assign S_AXI_bresp[1:0] = m03_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[63:0] = m03_couplers_to_auto_cc_RDATA;
  assign S_AXI_rid[15:0] = m03_couplers_to_auto_cc_RID;
  assign S_AXI_rlast = m03_couplers_to_auto_cc_RLAST;
  assign S_AXI_rresp[1:0] = m03_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m03_couplers_to_auto_cc_WREADY;
  assign auto_ds_to_m03_couplers_ARREADY = M_AXI_arready;
  assign auto_ds_to_m03_couplers_AWREADY = M_AXI_awready;
  assign auto_ds_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_ds_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign auto_ds_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_ds_to_m03_couplers_RLAST = M_AXI_rlast;
  assign auto_ds_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_ds_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign auto_ds_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_auto_cc_ARADDR = S_AXI_araddr[39:0];
  assign m03_couplers_to_auto_cc_ARBURST = S_AXI_arburst[1:0];
  assign m03_couplers_to_auto_cc_ARCACHE = S_AXI_arcache[3:0];
  assign m03_couplers_to_auto_cc_ARID = S_AXI_arid[15:0];
  assign m03_couplers_to_auto_cc_ARLEN = S_AXI_arlen[7:0];
  assign m03_couplers_to_auto_cc_ARLOCK = S_AXI_arlock[0];
  assign m03_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_auto_cc_ARQOS = S_AXI_arqos[3:0];
  assign m03_couplers_to_auto_cc_ARREGION = S_AXI_arregion[3:0];
  assign m03_couplers_to_auto_cc_ARSIZE = S_AXI_arsize[2:0];
  assign m03_couplers_to_auto_cc_ARUSER = S_AXI_aruser[15:0];
  assign m03_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[39:0];
  assign m03_couplers_to_auto_cc_AWBURST = S_AXI_awburst[1:0];
  assign m03_couplers_to_auto_cc_AWCACHE = S_AXI_awcache[3:0];
  assign m03_couplers_to_auto_cc_AWID = S_AXI_awid[15:0];
  assign m03_couplers_to_auto_cc_AWLEN = S_AXI_awlen[7:0];
  assign m03_couplers_to_auto_cc_AWLOCK = S_AXI_awlock[0];
  assign m03_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_auto_cc_AWQOS = S_AXI_awqos[3:0];
  assign m03_couplers_to_auto_cc_AWREGION = S_AXI_awregion[3:0];
  assign m03_couplers_to_auto_cc_AWSIZE = S_AXI_awsize[2:0];
  assign m03_couplers_to_auto_cc_AWUSER = S_AXI_awuser[15:0];
  assign m03_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m03_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m03_couplers_to_auto_cc_WDATA = S_AXI_wdata[63:0];
  assign m03_couplers_to_auto_cc_WLAST = S_AXI_wlast;
  assign m03_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[7:0];
  assign m03_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  sys_top_auto_cc_4 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_auto_ds_ARADDR),
        .m_axi_arburst(auto_cc_to_auto_ds_ARBURST),
        .m_axi_arcache(auto_cc_to_auto_ds_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arid(auto_cc_to_auto_ds_ARID),
        .m_axi_arlen(auto_cc_to_auto_ds_ARLEN),
        .m_axi_arlock(auto_cc_to_auto_ds_ARLOCK),
        .m_axi_arprot(auto_cc_to_auto_ds_ARPROT),
        .m_axi_arqos(auto_cc_to_auto_ds_ARQOS),
        .m_axi_arready(auto_cc_to_auto_ds_ARREADY),
        .m_axi_arregion(auto_cc_to_auto_ds_ARREGION),
        .m_axi_arsize(auto_cc_to_auto_ds_ARSIZE),
        .m_axi_arvalid(auto_cc_to_auto_ds_ARVALID),
        .m_axi_awaddr(auto_cc_to_auto_ds_AWADDR),
        .m_axi_awburst(auto_cc_to_auto_ds_AWBURST),
        .m_axi_awcache(auto_cc_to_auto_ds_AWCACHE),
        .m_axi_awid(auto_cc_to_auto_ds_AWID),
        .m_axi_awlen(auto_cc_to_auto_ds_AWLEN),
        .m_axi_awlock(auto_cc_to_auto_ds_AWLOCK),
        .m_axi_awprot(auto_cc_to_auto_ds_AWPROT),
        .m_axi_awqos(auto_cc_to_auto_ds_AWQOS),
        .m_axi_awready(auto_cc_to_auto_ds_AWREADY),
        .m_axi_awregion(auto_cc_to_auto_ds_AWREGION),
        .m_axi_awsize(auto_cc_to_auto_ds_AWSIZE),
        .m_axi_awvalid(auto_cc_to_auto_ds_AWVALID),
        .m_axi_bid(auto_cc_to_auto_ds_BID),
        .m_axi_bready(auto_cc_to_auto_ds_BREADY),
        .m_axi_bresp(auto_cc_to_auto_ds_BRESP),
        .m_axi_bvalid(auto_cc_to_auto_ds_BVALID),
        .m_axi_rdata(auto_cc_to_auto_ds_RDATA),
        .m_axi_rid(auto_cc_to_auto_ds_RID),
        .m_axi_rlast(auto_cc_to_auto_ds_RLAST),
        .m_axi_rready(auto_cc_to_auto_ds_RREADY),
        .m_axi_rresp(auto_cc_to_auto_ds_RRESP),
        .m_axi_rvalid(auto_cc_to_auto_ds_RVALID),
        .m_axi_wdata(auto_cc_to_auto_ds_WDATA),
        .m_axi_wlast(auto_cc_to_auto_ds_WLAST),
        .m_axi_wready(auto_cc_to_auto_ds_WREADY),
        .m_axi_wstrb(auto_cc_to_auto_ds_WSTRB),
        .m_axi_wvalid(auto_cc_to_auto_ds_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m03_couplers_to_auto_cc_ARADDR[11:0]),
        .s_axi_arburst(m03_couplers_to_auto_cc_ARBURST),
        .s_axi_arcache(m03_couplers_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m03_couplers_to_auto_cc_ARID),
        .s_axi_arlen(m03_couplers_to_auto_cc_ARLEN),
        .s_axi_arlock(m03_couplers_to_auto_cc_ARLOCK),
        .s_axi_arprot(m03_couplers_to_auto_cc_ARPROT),
        .s_axi_arqos(m03_couplers_to_auto_cc_ARQOS),
        .s_axi_arready(m03_couplers_to_auto_cc_ARREADY),
        .s_axi_arregion(m03_couplers_to_auto_cc_ARREGION),
        .s_axi_arsize(m03_couplers_to_auto_cc_ARSIZE),
        .s_axi_aruser(m03_couplers_to_auto_cc_ARUSER),
        .s_axi_arvalid(m03_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m03_couplers_to_auto_cc_AWADDR[11:0]),
        .s_axi_awburst(m03_couplers_to_auto_cc_AWBURST),
        .s_axi_awcache(m03_couplers_to_auto_cc_AWCACHE),
        .s_axi_awid(m03_couplers_to_auto_cc_AWID),
        .s_axi_awlen(m03_couplers_to_auto_cc_AWLEN),
        .s_axi_awlock(m03_couplers_to_auto_cc_AWLOCK),
        .s_axi_awprot(m03_couplers_to_auto_cc_AWPROT),
        .s_axi_awqos(m03_couplers_to_auto_cc_AWQOS),
        .s_axi_awready(m03_couplers_to_auto_cc_AWREADY),
        .s_axi_awregion(m03_couplers_to_auto_cc_AWREGION),
        .s_axi_awsize(m03_couplers_to_auto_cc_AWSIZE),
        .s_axi_awuser(m03_couplers_to_auto_cc_AWUSER),
        .s_axi_awvalid(m03_couplers_to_auto_cc_AWVALID),
        .s_axi_bid(m03_couplers_to_auto_cc_BID),
        .s_axi_bready(m03_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m03_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m03_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m03_couplers_to_auto_cc_RDATA),
        .s_axi_rid(m03_couplers_to_auto_cc_RID),
        .s_axi_rlast(m03_couplers_to_auto_cc_RLAST),
        .s_axi_rready(m03_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m03_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m03_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m03_couplers_to_auto_cc_WDATA),
        .s_axi_wlast(m03_couplers_to_auto_cc_WLAST),
        .s_axi_wready(m03_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m03_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m03_couplers_to_auto_cc_WVALID));
  sys_top_auto_ds_3 auto_ds
       (.m_axi_araddr(auto_ds_to_m03_couplers_ARADDR),
        .m_axi_arburst(auto_ds_to_m03_couplers_ARBURST),
        .m_axi_arcache(auto_ds_to_m03_couplers_ARCACHE),
        .m_axi_arlen(auto_ds_to_m03_couplers_ARLEN),
        .m_axi_arlock(auto_ds_to_m03_couplers_ARLOCK),
        .m_axi_arprot(auto_ds_to_m03_couplers_ARPROT),
        .m_axi_arready(auto_ds_to_m03_couplers_ARREADY),
        .m_axi_arsize(auto_ds_to_m03_couplers_ARSIZE),
        .m_axi_arvalid(auto_ds_to_m03_couplers_ARVALID),
        .m_axi_awaddr(auto_ds_to_m03_couplers_AWADDR),
        .m_axi_awburst(auto_ds_to_m03_couplers_AWBURST),
        .m_axi_awcache(auto_ds_to_m03_couplers_AWCACHE),
        .m_axi_awlen(auto_ds_to_m03_couplers_AWLEN),
        .m_axi_awlock(auto_ds_to_m03_couplers_AWLOCK),
        .m_axi_awprot(auto_ds_to_m03_couplers_AWPROT),
        .m_axi_awready(auto_ds_to_m03_couplers_AWREADY),
        .m_axi_awsize(auto_ds_to_m03_couplers_AWSIZE),
        .m_axi_awvalid(auto_ds_to_m03_couplers_AWVALID),
        .m_axi_bready(auto_ds_to_m03_couplers_BREADY),
        .m_axi_bresp(auto_ds_to_m03_couplers_BRESP),
        .m_axi_bvalid(auto_ds_to_m03_couplers_BVALID),
        .m_axi_rdata(auto_ds_to_m03_couplers_RDATA),
        .m_axi_rlast(auto_ds_to_m03_couplers_RLAST),
        .m_axi_rready(auto_ds_to_m03_couplers_RREADY),
        .m_axi_rresp(auto_ds_to_m03_couplers_RRESP),
        .m_axi_rvalid(auto_ds_to_m03_couplers_RVALID),
        .m_axi_wdata(auto_ds_to_m03_couplers_WDATA),
        .m_axi_wlast(auto_ds_to_m03_couplers_WLAST),
        .m_axi_wready(auto_ds_to_m03_couplers_WREADY),
        .m_axi_wstrb(auto_ds_to_m03_couplers_WSTRB),
        .m_axi_wvalid(auto_ds_to_m03_couplers_WVALID),
        .s_axi_aclk(M_ACLK_1),
        .s_axi_araddr(auto_cc_to_auto_ds_ARADDR),
        .s_axi_arburst(auto_cc_to_auto_ds_ARBURST),
        .s_axi_arcache(auto_cc_to_auto_ds_ARCACHE),
        .s_axi_aresetn(M_ARESETN_1),
        .s_axi_arid(auto_cc_to_auto_ds_ARID),
        .s_axi_arlen(auto_cc_to_auto_ds_ARLEN),
        .s_axi_arlock(auto_cc_to_auto_ds_ARLOCK),
        .s_axi_arprot(auto_cc_to_auto_ds_ARPROT),
        .s_axi_arqos(auto_cc_to_auto_ds_ARQOS),
        .s_axi_arready(auto_cc_to_auto_ds_ARREADY),
        .s_axi_arregion(auto_cc_to_auto_ds_ARREGION),
        .s_axi_arsize(auto_cc_to_auto_ds_ARSIZE),
        .s_axi_arvalid(auto_cc_to_auto_ds_ARVALID),
        .s_axi_awaddr(auto_cc_to_auto_ds_AWADDR),
        .s_axi_awburst(auto_cc_to_auto_ds_AWBURST),
        .s_axi_awcache(auto_cc_to_auto_ds_AWCACHE),
        .s_axi_awid(auto_cc_to_auto_ds_AWID),
        .s_axi_awlen(auto_cc_to_auto_ds_AWLEN),
        .s_axi_awlock(auto_cc_to_auto_ds_AWLOCK),
        .s_axi_awprot(auto_cc_to_auto_ds_AWPROT),
        .s_axi_awqos(auto_cc_to_auto_ds_AWQOS),
        .s_axi_awready(auto_cc_to_auto_ds_AWREADY),
        .s_axi_awregion(auto_cc_to_auto_ds_AWREGION),
        .s_axi_awsize(auto_cc_to_auto_ds_AWSIZE),
        .s_axi_awvalid(auto_cc_to_auto_ds_AWVALID),
        .s_axi_bid(auto_cc_to_auto_ds_BID),
        .s_axi_bready(auto_cc_to_auto_ds_BREADY),
        .s_axi_bresp(auto_cc_to_auto_ds_BRESP),
        .s_axi_bvalid(auto_cc_to_auto_ds_BVALID),
        .s_axi_rdata(auto_cc_to_auto_ds_RDATA),
        .s_axi_rid(auto_cc_to_auto_ds_RID),
        .s_axi_rlast(auto_cc_to_auto_ds_RLAST),
        .s_axi_rready(auto_cc_to_auto_ds_RREADY),
        .s_axi_rresp(auto_cc_to_auto_ds_RRESP),
        .s_axi_rvalid(auto_cc_to_auto_ds_RVALID),
        .s_axi_wdata(auto_cc_to_auto_ds_WDATA),
        .s_axi_wlast(auto_cc_to_auto_ds_WLAST),
        .s_axi_wready(auto_cc_to_auto_ds_WREADY),
        .s_axi_wstrb(auto_cc_to_auto_ds_WSTRB),
        .s_axi_wvalid(auto_cc_to_auto_ds_WVALID));
endmodule

module m04_couplers_imp_BS944U
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input [15:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input [15:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_auto_ds_ARADDR;
  wire [1:0]auto_cc_to_auto_ds_ARBURST;
  wire [3:0]auto_cc_to_auto_ds_ARCACHE;
  wire [15:0]auto_cc_to_auto_ds_ARID;
  wire [7:0]auto_cc_to_auto_ds_ARLEN;
  wire [0:0]auto_cc_to_auto_ds_ARLOCK;
  wire [2:0]auto_cc_to_auto_ds_ARPROT;
  wire [3:0]auto_cc_to_auto_ds_ARQOS;
  wire auto_cc_to_auto_ds_ARREADY;
  wire [3:0]auto_cc_to_auto_ds_ARREGION;
  wire [2:0]auto_cc_to_auto_ds_ARSIZE;
  wire auto_cc_to_auto_ds_ARVALID;
  wire [31:0]auto_cc_to_auto_ds_AWADDR;
  wire [1:0]auto_cc_to_auto_ds_AWBURST;
  wire [3:0]auto_cc_to_auto_ds_AWCACHE;
  wire [15:0]auto_cc_to_auto_ds_AWID;
  wire [7:0]auto_cc_to_auto_ds_AWLEN;
  wire [0:0]auto_cc_to_auto_ds_AWLOCK;
  wire [2:0]auto_cc_to_auto_ds_AWPROT;
  wire [3:0]auto_cc_to_auto_ds_AWQOS;
  wire auto_cc_to_auto_ds_AWREADY;
  wire [3:0]auto_cc_to_auto_ds_AWREGION;
  wire [2:0]auto_cc_to_auto_ds_AWSIZE;
  wire auto_cc_to_auto_ds_AWVALID;
  wire [15:0]auto_cc_to_auto_ds_BID;
  wire auto_cc_to_auto_ds_BREADY;
  wire [1:0]auto_cc_to_auto_ds_BRESP;
  wire auto_cc_to_auto_ds_BVALID;
  wire [63:0]auto_cc_to_auto_ds_RDATA;
  wire [15:0]auto_cc_to_auto_ds_RID;
  wire auto_cc_to_auto_ds_RLAST;
  wire auto_cc_to_auto_ds_RREADY;
  wire [1:0]auto_cc_to_auto_ds_RRESP;
  wire auto_cc_to_auto_ds_RVALID;
  wire [63:0]auto_cc_to_auto_ds_WDATA;
  wire auto_cc_to_auto_ds_WLAST;
  wire auto_cc_to_auto_ds_WREADY;
  wire [7:0]auto_cc_to_auto_ds_WSTRB;
  wire auto_cc_to_auto_ds_WVALID;
  wire [31:0]auto_ds_to_auto_pc_ARADDR;
  wire [1:0]auto_ds_to_auto_pc_ARBURST;
  wire [3:0]auto_ds_to_auto_pc_ARCACHE;
  wire [7:0]auto_ds_to_auto_pc_ARLEN;
  wire [0:0]auto_ds_to_auto_pc_ARLOCK;
  wire [2:0]auto_ds_to_auto_pc_ARPROT;
  wire [3:0]auto_ds_to_auto_pc_ARQOS;
  wire auto_ds_to_auto_pc_ARREADY;
  wire [3:0]auto_ds_to_auto_pc_ARREGION;
  wire [2:0]auto_ds_to_auto_pc_ARSIZE;
  wire auto_ds_to_auto_pc_ARVALID;
  wire [31:0]auto_ds_to_auto_pc_AWADDR;
  wire [1:0]auto_ds_to_auto_pc_AWBURST;
  wire [3:0]auto_ds_to_auto_pc_AWCACHE;
  wire [7:0]auto_ds_to_auto_pc_AWLEN;
  wire [0:0]auto_ds_to_auto_pc_AWLOCK;
  wire [2:0]auto_ds_to_auto_pc_AWPROT;
  wire [3:0]auto_ds_to_auto_pc_AWQOS;
  wire auto_ds_to_auto_pc_AWREADY;
  wire [3:0]auto_ds_to_auto_pc_AWREGION;
  wire [2:0]auto_ds_to_auto_pc_AWSIZE;
  wire auto_ds_to_auto_pc_AWVALID;
  wire auto_ds_to_auto_pc_BREADY;
  wire [1:0]auto_ds_to_auto_pc_BRESP;
  wire auto_ds_to_auto_pc_BVALID;
  wire [31:0]auto_ds_to_auto_pc_RDATA;
  wire auto_ds_to_auto_pc_RLAST;
  wire auto_ds_to_auto_pc_RREADY;
  wire [1:0]auto_ds_to_auto_pc_RRESP;
  wire auto_ds_to_auto_pc_RVALID;
  wire [31:0]auto_ds_to_auto_pc_WDATA;
  wire auto_ds_to_auto_pc_WLAST;
  wire auto_ds_to_auto_pc_WREADY;
  wire [3:0]auto_ds_to_auto_pc_WSTRB;
  wire auto_ds_to_auto_pc_WVALID;
  wire [31:0]auto_pc_to_m04_couplers_ARADDR;
  wire [2:0]auto_pc_to_m04_couplers_ARPROT;
  wire auto_pc_to_m04_couplers_ARREADY;
  wire auto_pc_to_m04_couplers_ARVALID;
  wire [31:0]auto_pc_to_m04_couplers_AWADDR;
  wire [2:0]auto_pc_to_m04_couplers_AWPROT;
  wire auto_pc_to_m04_couplers_AWREADY;
  wire auto_pc_to_m04_couplers_AWVALID;
  wire auto_pc_to_m04_couplers_BREADY;
  wire [1:0]auto_pc_to_m04_couplers_BRESP;
  wire auto_pc_to_m04_couplers_BVALID;
  wire [31:0]auto_pc_to_m04_couplers_RDATA;
  wire auto_pc_to_m04_couplers_RREADY;
  wire [1:0]auto_pc_to_m04_couplers_RRESP;
  wire auto_pc_to_m04_couplers_RVALID;
  wire [31:0]auto_pc_to_m04_couplers_WDATA;
  wire auto_pc_to_m04_couplers_WREADY;
  wire [3:0]auto_pc_to_m04_couplers_WSTRB;
  wire auto_pc_to_m04_couplers_WVALID;
  wire [39:0]m04_couplers_to_auto_cc_ARADDR;
  wire [1:0]m04_couplers_to_auto_cc_ARBURST;
  wire [3:0]m04_couplers_to_auto_cc_ARCACHE;
  wire [15:0]m04_couplers_to_auto_cc_ARID;
  wire [7:0]m04_couplers_to_auto_cc_ARLEN;
  wire [0:0]m04_couplers_to_auto_cc_ARLOCK;
  wire [2:0]m04_couplers_to_auto_cc_ARPROT;
  wire [3:0]m04_couplers_to_auto_cc_ARQOS;
  wire m04_couplers_to_auto_cc_ARREADY;
  wire [3:0]m04_couplers_to_auto_cc_ARREGION;
  wire [2:0]m04_couplers_to_auto_cc_ARSIZE;
  wire [15:0]m04_couplers_to_auto_cc_ARUSER;
  wire m04_couplers_to_auto_cc_ARVALID;
  wire [39:0]m04_couplers_to_auto_cc_AWADDR;
  wire [1:0]m04_couplers_to_auto_cc_AWBURST;
  wire [3:0]m04_couplers_to_auto_cc_AWCACHE;
  wire [15:0]m04_couplers_to_auto_cc_AWID;
  wire [7:0]m04_couplers_to_auto_cc_AWLEN;
  wire [0:0]m04_couplers_to_auto_cc_AWLOCK;
  wire [2:0]m04_couplers_to_auto_cc_AWPROT;
  wire [3:0]m04_couplers_to_auto_cc_AWQOS;
  wire m04_couplers_to_auto_cc_AWREADY;
  wire [3:0]m04_couplers_to_auto_cc_AWREGION;
  wire [2:0]m04_couplers_to_auto_cc_AWSIZE;
  wire [15:0]m04_couplers_to_auto_cc_AWUSER;
  wire m04_couplers_to_auto_cc_AWVALID;
  wire [15:0]m04_couplers_to_auto_cc_BID;
  wire m04_couplers_to_auto_cc_BREADY;
  wire [1:0]m04_couplers_to_auto_cc_BRESP;
  wire m04_couplers_to_auto_cc_BVALID;
  wire [63:0]m04_couplers_to_auto_cc_RDATA;
  wire [15:0]m04_couplers_to_auto_cc_RID;
  wire m04_couplers_to_auto_cc_RLAST;
  wire m04_couplers_to_auto_cc_RREADY;
  wire [1:0]m04_couplers_to_auto_cc_RRESP;
  wire m04_couplers_to_auto_cc_RVALID;
  wire [63:0]m04_couplers_to_auto_cc_WDATA;
  wire m04_couplers_to_auto_cc_WLAST;
  wire m04_couplers_to_auto_cc_WREADY;
  wire [7:0]m04_couplers_to_auto_cc_WSTRB;
  wire m04_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_pc_to_m04_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_m04_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m04_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_m04_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_m04_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m04_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m04_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m04_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m04_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bid[15:0] = m04_couplers_to_auto_cc_BID;
  assign S_AXI_bresp[1:0] = m04_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[63:0] = m04_couplers_to_auto_cc_RDATA;
  assign S_AXI_rid[15:0] = m04_couplers_to_auto_cc_RID;
  assign S_AXI_rlast = m04_couplers_to_auto_cc_RLAST;
  assign S_AXI_rresp[1:0] = m04_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m04_couplers_to_auto_cc_WREADY;
  assign auto_pc_to_m04_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m04_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_auto_cc_ARADDR = S_AXI_araddr[39:0];
  assign m04_couplers_to_auto_cc_ARBURST = S_AXI_arburst[1:0];
  assign m04_couplers_to_auto_cc_ARCACHE = S_AXI_arcache[3:0];
  assign m04_couplers_to_auto_cc_ARID = S_AXI_arid[15:0];
  assign m04_couplers_to_auto_cc_ARLEN = S_AXI_arlen[7:0];
  assign m04_couplers_to_auto_cc_ARLOCK = S_AXI_arlock[0];
  assign m04_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_auto_cc_ARQOS = S_AXI_arqos[3:0];
  assign m04_couplers_to_auto_cc_ARREGION = S_AXI_arregion[3:0];
  assign m04_couplers_to_auto_cc_ARSIZE = S_AXI_arsize[2:0];
  assign m04_couplers_to_auto_cc_ARUSER = S_AXI_aruser[15:0];
  assign m04_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[39:0];
  assign m04_couplers_to_auto_cc_AWBURST = S_AXI_awburst[1:0];
  assign m04_couplers_to_auto_cc_AWCACHE = S_AXI_awcache[3:0];
  assign m04_couplers_to_auto_cc_AWID = S_AXI_awid[15:0];
  assign m04_couplers_to_auto_cc_AWLEN = S_AXI_awlen[7:0];
  assign m04_couplers_to_auto_cc_AWLOCK = S_AXI_awlock[0];
  assign m04_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_auto_cc_AWQOS = S_AXI_awqos[3:0];
  assign m04_couplers_to_auto_cc_AWREGION = S_AXI_awregion[3:0];
  assign m04_couplers_to_auto_cc_AWSIZE = S_AXI_awsize[2:0];
  assign m04_couplers_to_auto_cc_AWUSER = S_AXI_awuser[15:0];
  assign m04_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m04_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m04_couplers_to_auto_cc_WDATA = S_AXI_wdata[63:0];
  assign m04_couplers_to_auto_cc_WLAST = S_AXI_wlast;
  assign m04_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[7:0];
  assign m04_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  sys_top_auto_cc_5 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_auto_ds_ARADDR),
        .m_axi_arburst(auto_cc_to_auto_ds_ARBURST),
        .m_axi_arcache(auto_cc_to_auto_ds_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arid(auto_cc_to_auto_ds_ARID),
        .m_axi_arlen(auto_cc_to_auto_ds_ARLEN),
        .m_axi_arlock(auto_cc_to_auto_ds_ARLOCK),
        .m_axi_arprot(auto_cc_to_auto_ds_ARPROT),
        .m_axi_arqos(auto_cc_to_auto_ds_ARQOS),
        .m_axi_arready(auto_cc_to_auto_ds_ARREADY),
        .m_axi_arregion(auto_cc_to_auto_ds_ARREGION),
        .m_axi_arsize(auto_cc_to_auto_ds_ARSIZE),
        .m_axi_arvalid(auto_cc_to_auto_ds_ARVALID),
        .m_axi_awaddr(auto_cc_to_auto_ds_AWADDR),
        .m_axi_awburst(auto_cc_to_auto_ds_AWBURST),
        .m_axi_awcache(auto_cc_to_auto_ds_AWCACHE),
        .m_axi_awid(auto_cc_to_auto_ds_AWID),
        .m_axi_awlen(auto_cc_to_auto_ds_AWLEN),
        .m_axi_awlock(auto_cc_to_auto_ds_AWLOCK),
        .m_axi_awprot(auto_cc_to_auto_ds_AWPROT),
        .m_axi_awqos(auto_cc_to_auto_ds_AWQOS),
        .m_axi_awready(auto_cc_to_auto_ds_AWREADY),
        .m_axi_awregion(auto_cc_to_auto_ds_AWREGION),
        .m_axi_awsize(auto_cc_to_auto_ds_AWSIZE),
        .m_axi_awvalid(auto_cc_to_auto_ds_AWVALID),
        .m_axi_bid(auto_cc_to_auto_ds_BID),
        .m_axi_bready(auto_cc_to_auto_ds_BREADY),
        .m_axi_bresp(auto_cc_to_auto_ds_BRESP),
        .m_axi_bvalid(auto_cc_to_auto_ds_BVALID),
        .m_axi_rdata(auto_cc_to_auto_ds_RDATA),
        .m_axi_rid(auto_cc_to_auto_ds_RID),
        .m_axi_rlast(auto_cc_to_auto_ds_RLAST),
        .m_axi_rready(auto_cc_to_auto_ds_RREADY),
        .m_axi_rresp(auto_cc_to_auto_ds_RRESP),
        .m_axi_rvalid(auto_cc_to_auto_ds_RVALID),
        .m_axi_wdata(auto_cc_to_auto_ds_WDATA),
        .m_axi_wlast(auto_cc_to_auto_ds_WLAST),
        .m_axi_wready(auto_cc_to_auto_ds_WREADY),
        .m_axi_wstrb(auto_cc_to_auto_ds_WSTRB),
        .m_axi_wvalid(auto_cc_to_auto_ds_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m04_couplers_to_auto_cc_ARADDR[31:0]),
        .s_axi_arburst(m04_couplers_to_auto_cc_ARBURST),
        .s_axi_arcache(m04_couplers_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m04_couplers_to_auto_cc_ARID),
        .s_axi_arlen(m04_couplers_to_auto_cc_ARLEN),
        .s_axi_arlock(m04_couplers_to_auto_cc_ARLOCK),
        .s_axi_arprot(m04_couplers_to_auto_cc_ARPROT),
        .s_axi_arqos(m04_couplers_to_auto_cc_ARQOS),
        .s_axi_arready(m04_couplers_to_auto_cc_ARREADY),
        .s_axi_arregion(m04_couplers_to_auto_cc_ARREGION),
        .s_axi_arsize(m04_couplers_to_auto_cc_ARSIZE),
        .s_axi_aruser(m04_couplers_to_auto_cc_ARUSER),
        .s_axi_arvalid(m04_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m04_couplers_to_auto_cc_AWADDR[31:0]),
        .s_axi_awburst(m04_couplers_to_auto_cc_AWBURST),
        .s_axi_awcache(m04_couplers_to_auto_cc_AWCACHE),
        .s_axi_awid(m04_couplers_to_auto_cc_AWID),
        .s_axi_awlen(m04_couplers_to_auto_cc_AWLEN),
        .s_axi_awlock(m04_couplers_to_auto_cc_AWLOCK),
        .s_axi_awprot(m04_couplers_to_auto_cc_AWPROT),
        .s_axi_awqos(m04_couplers_to_auto_cc_AWQOS),
        .s_axi_awready(m04_couplers_to_auto_cc_AWREADY),
        .s_axi_awregion(m04_couplers_to_auto_cc_AWREGION),
        .s_axi_awsize(m04_couplers_to_auto_cc_AWSIZE),
        .s_axi_awuser(m04_couplers_to_auto_cc_AWUSER),
        .s_axi_awvalid(m04_couplers_to_auto_cc_AWVALID),
        .s_axi_bid(m04_couplers_to_auto_cc_BID),
        .s_axi_bready(m04_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m04_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m04_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m04_couplers_to_auto_cc_RDATA),
        .s_axi_rid(m04_couplers_to_auto_cc_RID),
        .s_axi_rlast(m04_couplers_to_auto_cc_RLAST),
        .s_axi_rready(m04_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m04_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m04_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m04_couplers_to_auto_cc_WDATA),
        .s_axi_wlast(m04_couplers_to_auto_cc_WLAST),
        .s_axi_wready(m04_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m04_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m04_couplers_to_auto_cc_WVALID));
  sys_top_auto_ds_4 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .m_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .m_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .m_axi_bready(auto_ds_to_auto_pc_BREADY),
        .m_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .m_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .m_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .m_axi_rready(auto_ds_to_auto_pc_RREADY),
        .m_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .m_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .m_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .m_axi_wready(auto_ds_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_pc_WVALID),
        .s_axi_aclk(M_ACLK_1),
        .s_axi_araddr(auto_cc_to_auto_ds_ARADDR),
        .s_axi_arburst(auto_cc_to_auto_ds_ARBURST),
        .s_axi_arcache(auto_cc_to_auto_ds_ARCACHE),
        .s_axi_aresetn(M_ARESETN_1),
        .s_axi_arid(auto_cc_to_auto_ds_ARID),
        .s_axi_arlen(auto_cc_to_auto_ds_ARLEN),
        .s_axi_arlock(auto_cc_to_auto_ds_ARLOCK),
        .s_axi_arprot(auto_cc_to_auto_ds_ARPROT),
        .s_axi_arqos(auto_cc_to_auto_ds_ARQOS),
        .s_axi_arready(auto_cc_to_auto_ds_ARREADY),
        .s_axi_arregion(auto_cc_to_auto_ds_ARREGION),
        .s_axi_arsize(auto_cc_to_auto_ds_ARSIZE),
        .s_axi_arvalid(auto_cc_to_auto_ds_ARVALID),
        .s_axi_awaddr(auto_cc_to_auto_ds_AWADDR),
        .s_axi_awburst(auto_cc_to_auto_ds_AWBURST),
        .s_axi_awcache(auto_cc_to_auto_ds_AWCACHE),
        .s_axi_awid(auto_cc_to_auto_ds_AWID),
        .s_axi_awlen(auto_cc_to_auto_ds_AWLEN),
        .s_axi_awlock(auto_cc_to_auto_ds_AWLOCK),
        .s_axi_awprot(auto_cc_to_auto_ds_AWPROT),
        .s_axi_awqos(auto_cc_to_auto_ds_AWQOS),
        .s_axi_awready(auto_cc_to_auto_ds_AWREADY),
        .s_axi_awregion(auto_cc_to_auto_ds_AWREGION),
        .s_axi_awsize(auto_cc_to_auto_ds_AWSIZE),
        .s_axi_awvalid(auto_cc_to_auto_ds_AWVALID),
        .s_axi_bid(auto_cc_to_auto_ds_BID),
        .s_axi_bready(auto_cc_to_auto_ds_BREADY),
        .s_axi_bresp(auto_cc_to_auto_ds_BRESP),
        .s_axi_bvalid(auto_cc_to_auto_ds_BVALID),
        .s_axi_rdata(auto_cc_to_auto_ds_RDATA),
        .s_axi_rid(auto_cc_to_auto_ds_RID),
        .s_axi_rlast(auto_cc_to_auto_ds_RLAST),
        .s_axi_rready(auto_cc_to_auto_ds_RREADY),
        .s_axi_rresp(auto_cc_to_auto_ds_RRESP),
        .s_axi_rvalid(auto_cc_to_auto_ds_RVALID),
        .s_axi_wdata(auto_cc_to_auto_ds_WDATA),
        .s_axi_wlast(auto_cc_to_auto_ds_WLAST),
        .s_axi_wready(auto_cc_to_auto_ds_WREADY),
        .s_axi_wstrb(auto_cc_to_auto_ds_WSTRB),
        .s_axi_wvalid(auto_cc_to_auto_ds_WVALID));
  sys_top_auto_pc_2 auto_pc
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m04_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_m04_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m04_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m04_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m04_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_m04_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m04_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m04_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m04_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m04_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m04_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m04_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m04_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m04_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m04_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m04_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m04_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m04_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m04_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .s_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .s_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .s_axi_bready(auto_ds_to_auto_pc_BREADY),
        .s_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .s_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .s_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .s_axi_rready(auto_ds_to_auto_pc_RREADY),
        .s_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .s_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .s_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .s_axi_wready(auto_ds_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_pc_WVALID));
endmodule

module m05_couplers_imp_1C8SAY5
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [11:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [11:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input [15:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input [15:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [11:0]auto_cc_to_auto_ds_ARADDR;
  wire [1:0]auto_cc_to_auto_ds_ARBURST;
  wire [3:0]auto_cc_to_auto_ds_ARCACHE;
  wire [15:0]auto_cc_to_auto_ds_ARID;
  wire [7:0]auto_cc_to_auto_ds_ARLEN;
  wire [0:0]auto_cc_to_auto_ds_ARLOCK;
  wire [2:0]auto_cc_to_auto_ds_ARPROT;
  wire [3:0]auto_cc_to_auto_ds_ARQOS;
  wire auto_cc_to_auto_ds_ARREADY;
  wire [3:0]auto_cc_to_auto_ds_ARREGION;
  wire [2:0]auto_cc_to_auto_ds_ARSIZE;
  wire auto_cc_to_auto_ds_ARVALID;
  wire [11:0]auto_cc_to_auto_ds_AWADDR;
  wire [1:0]auto_cc_to_auto_ds_AWBURST;
  wire [3:0]auto_cc_to_auto_ds_AWCACHE;
  wire [15:0]auto_cc_to_auto_ds_AWID;
  wire [7:0]auto_cc_to_auto_ds_AWLEN;
  wire [0:0]auto_cc_to_auto_ds_AWLOCK;
  wire [2:0]auto_cc_to_auto_ds_AWPROT;
  wire [3:0]auto_cc_to_auto_ds_AWQOS;
  wire auto_cc_to_auto_ds_AWREADY;
  wire [3:0]auto_cc_to_auto_ds_AWREGION;
  wire [2:0]auto_cc_to_auto_ds_AWSIZE;
  wire auto_cc_to_auto_ds_AWVALID;
  wire [15:0]auto_cc_to_auto_ds_BID;
  wire auto_cc_to_auto_ds_BREADY;
  wire [1:0]auto_cc_to_auto_ds_BRESP;
  wire auto_cc_to_auto_ds_BVALID;
  wire [63:0]auto_cc_to_auto_ds_RDATA;
  wire [15:0]auto_cc_to_auto_ds_RID;
  wire auto_cc_to_auto_ds_RLAST;
  wire auto_cc_to_auto_ds_RREADY;
  wire [1:0]auto_cc_to_auto_ds_RRESP;
  wire auto_cc_to_auto_ds_RVALID;
  wire [63:0]auto_cc_to_auto_ds_WDATA;
  wire auto_cc_to_auto_ds_WLAST;
  wire auto_cc_to_auto_ds_WREADY;
  wire [7:0]auto_cc_to_auto_ds_WSTRB;
  wire auto_cc_to_auto_ds_WVALID;
  wire [11:0]auto_ds_to_m05_couplers_ARADDR;
  wire [1:0]auto_ds_to_m05_couplers_ARBURST;
  wire [3:0]auto_ds_to_m05_couplers_ARCACHE;
  wire [7:0]auto_ds_to_m05_couplers_ARLEN;
  wire [0:0]auto_ds_to_m05_couplers_ARLOCK;
  wire [2:0]auto_ds_to_m05_couplers_ARPROT;
  wire auto_ds_to_m05_couplers_ARREADY;
  wire [2:0]auto_ds_to_m05_couplers_ARSIZE;
  wire auto_ds_to_m05_couplers_ARVALID;
  wire [11:0]auto_ds_to_m05_couplers_AWADDR;
  wire [1:0]auto_ds_to_m05_couplers_AWBURST;
  wire [3:0]auto_ds_to_m05_couplers_AWCACHE;
  wire [7:0]auto_ds_to_m05_couplers_AWLEN;
  wire [0:0]auto_ds_to_m05_couplers_AWLOCK;
  wire [2:0]auto_ds_to_m05_couplers_AWPROT;
  wire auto_ds_to_m05_couplers_AWREADY;
  wire [2:0]auto_ds_to_m05_couplers_AWSIZE;
  wire auto_ds_to_m05_couplers_AWVALID;
  wire auto_ds_to_m05_couplers_BREADY;
  wire [1:0]auto_ds_to_m05_couplers_BRESP;
  wire auto_ds_to_m05_couplers_BVALID;
  wire [31:0]auto_ds_to_m05_couplers_RDATA;
  wire auto_ds_to_m05_couplers_RLAST;
  wire auto_ds_to_m05_couplers_RREADY;
  wire [1:0]auto_ds_to_m05_couplers_RRESP;
  wire auto_ds_to_m05_couplers_RVALID;
  wire [31:0]auto_ds_to_m05_couplers_WDATA;
  wire auto_ds_to_m05_couplers_WLAST;
  wire auto_ds_to_m05_couplers_WREADY;
  wire [3:0]auto_ds_to_m05_couplers_WSTRB;
  wire auto_ds_to_m05_couplers_WVALID;
  wire [39:0]m05_couplers_to_auto_cc_ARADDR;
  wire [1:0]m05_couplers_to_auto_cc_ARBURST;
  wire [3:0]m05_couplers_to_auto_cc_ARCACHE;
  wire [15:0]m05_couplers_to_auto_cc_ARID;
  wire [7:0]m05_couplers_to_auto_cc_ARLEN;
  wire [0:0]m05_couplers_to_auto_cc_ARLOCK;
  wire [2:0]m05_couplers_to_auto_cc_ARPROT;
  wire [3:0]m05_couplers_to_auto_cc_ARQOS;
  wire m05_couplers_to_auto_cc_ARREADY;
  wire [3:0]m05_couplers_to_auto_cc_ARREGION;
  wire [2:0]m05_couplers_to_auto_cc_ARSIZE;
  wire [15:0]m05_couplers_to_auto_cc_ARUSER;
  wire m05_couplers_to_auto_cc_ARVALID;
  wire [39:0]m05_couplers_to_auto_cc_AWADDR;
  wire [1:0]m05_couplers_to_auto_cc_AWBURST;
  wire [3:0]m05_couplers_to_auto_cc_AWCACHE;
  wire [15:0]m05_couplers_to_auto_cc_AWID;
  wire [7:0]m05_couplers_to_auto_cc_AWLEN;
  wire [0:0]m05_couplers_to_auto_cc_AWLOCK;
  wire [2:0]m05_couplers_to_auto_cc_AWPROT;
  wire [3:0]m05_couplers_to_auto_cc_AWQOS;
  wire m05_couplers_to_auto_cc_AWREADY;
  wire [3:0]m05_couplers_to_auto_cc_AWREGION;
  wire [2:0]m05_couplers_to_auto_cc_AWSIZE;
  wire [15:0]m05_couplers_to_auto_cc_AWUSER;
  wire m05_couplers_to_auto_cc_AWVALID;
  wire [15:0]m05_couplers_to_auto_cc_BID;
  wire m05_couplers_to_auto_cc_BREADY;
  wire [1:0]m05_couplers_to_auto_cc_BRESP;
  wire m05_couplers_to_auto_cc_BVALID;
  wire [63:0]m05_couplers_to_auto_cc_RDATA;
  wire [15:0]m05_couplers_to_auto_cc_RID;
  wire m05_couplers_to_auto_cc_RLAST;
  wire m05_couplers_to_auto_cc_RREADY;
  wire [1:0]m05_couplers_to_auto_cc_RRESP;
  wire m05_couplers_to_auto_cc_RVALID;
  wire [63:0]m05_couplers_to_auto_cc_WDATA;
  wire m05_couplers_to_auto_cc_WLAST;
  wire m05_couplers_to_auto_cc_WREADY;
  wire [7:0]m05_couplers_to_auto_cc_WSTRB;
  wire m05_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[11:0] = auto_ds_to_m05_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_ds_to_m05_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_ds_to_m05_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_ds_to_m05_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_ds_to_m05_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_ds_to_m05_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = auto_ds_to_m05_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_ds_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[11:0] = auto_ds_to_m05_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_ds_to_m05_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_ds_to_m05_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_ds_to_m05_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_ds_to_m05_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_ds_to_m05_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = auto_ds_to_m05_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_ds_to_m05_couplers_AWVALID;
  assign M_AXI_bready = auto_ds_to_m05_couplers_BREADY;
  assign M_AXI_rready = auto_ds_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_ds_to_m05_couplers_WDATA;
  assign M_AXI_wlast = auto_ds_to_m05_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_ds_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = auto_ds_to_m05_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m05_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m05_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bid[15:0] = m05_couplers_to_auto_cc_BID;
  assign S_AXI_bresp[1:0] = m05_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[63:0] = m05_couplers_to_auto_cc_RDATA;
  assign S_AXI_rid[15:0] = m05_couplers_to_auto_cc_RID;
  assign S_AXI_rlast = m05_couplers_to_auto_cc_RLAST;
  assign S_AXI_rresp[1:0] = m05_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m05_couplers_to_auto_cc_WREADY;
  assign auto_ds_to_m05_couplers_ARREADY = M_AXI_arready;
  assign auto_ds_to_m05_couplers_AWREADY = M_AXI_awready;
  assign auto_ds_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_ds_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign auto_ds_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_ds_to_m05_couplers_RLAST = M_AXI_rlast;
  assign auto_ds_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_ds_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign auto_ds_to_m05_couplers_WREADY = M_AXI_wready;
  assign m05_couplers_to_auto_cc_ARADDR = S_AXI_araddr[39:0];
  assign m05_couplers_to_auto_cc_ARBURST = S_AXI_arburst[1:0];
  assign m05_couplers_to_auto_cc_ARCACHE = S_AXI_arcache[3:0];
  assign m05_couplers_to_auto_cc_ARID = S_AXI_arid[15:0];
  assign m05_couplers_to_auto_cc_ARLEN = S_AXI_arlen[7:0];
  assign m05_couplers_to_auto_cc_ARLOCK = S_AXI_arlock[0];
  assign m05_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m05_couplers_to_auto_cc_ARQOS = S_AXI_arqos[3:0];
  assign m05_couplers_to_auto_cc_ARREGION = S_AXI_arregion[3:0];
  assign m05_couplers_to_auto_cc_ARSIZE = S_AXI_arsize[2:0];
  assign m05_couplers_to_auto_cc_ARUSER = S_AXI_aruser[15:0];
  assign m05_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[39:0];
  assign m05_couplers_to_auto_cc_AWBURST = S_AXI_awburst[1:0];
  assign m05_couplers_to_auto_cc_AWCACHE = S_AXI_awcache[3:0];
  assign m05_couplers_to_auto_cc_AWID = S_AXI_awid[15:0];
  assign m05_couplers_to_auto_cc_AWLEN = S_AXI_awlen[7:0];
  assign m05_couplers_to_auto_cc_AWLOCK = S_AXI_awlock[0];
  assign m05_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m05_couplers_to_auto_cc_AWQOS = S_AXI_awqos[3:0];
  assign m05_couplers_to_auto_cc_AWREGION = S_AXI_awregion[3:0];
  assign m05_couplers_to_auto_cc_AWSIZE = S_AXI_awsize[2:0];
  assign m05_couplers_to_auto_cc_AWUSER = S_AXI_awuser[15:0];
  assign m05_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m05_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m05_couplers_to_auto_cc_WDATA = S_AXI_wdata[63:0];
  assign m05_couplers_to_auto_cc_WLAST = S_AXI_wlast;
  assign m05_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[7:0];
  assign m05_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  sys_top_auto_cc_6 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_auto_ds_ARADDR),
        .m_axi_arburst(auto_cc_to_auto_ds_ARBURST),
        .m_axi_arcache(auto_cc_to_auto_ds_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arid(auto_cc_to_auto_ds_ARID),
        .m_axi_arlen(auto_cc_to_auto_ds_ARLEN),
        .m_axi_arlock(auto_cc_to_auto_ds_ARLOCK),
        .m_axi_arprot(auto_cc_to_auto_ds_ARPROT),
        .m_axi_arqos(auto_cc_to_auto_ds_ARQOS),
        .m_axi_arready(auto_cc_to_auto_ds_ARREADY),
        .m_axi_arregion(auto_cc_to_auto_ds_ARREGION),
        .m_axi_arsize(auto_cc_to_auto_ds_ARSIZE),
        .m_axi_arvalid(auto_cc_to_auto_ds_ARVALID),
        .m_axi_awaddr(auto_cc_to_auto_ds_AWADDR),
        .m_axi_awburst(auto_cc_to_auto_ds_AWBURST),
        .m_axi_awcache(auto_cc_to_auto_ds_AWCACHE),
        .m_axi_awid(auto_cc_to_auto_ds_AWID),
        .m_axi_awlen(auto_cc_to_auto_ds_AWLEN),
        .m_axi_awlock(auto_cc_to_auto_ds_AWLOCK),
        .m_axi_awprot(auto_cc_to_auto_ds_AWPROT),
        .m_axi_awqos(auto_cc_to_auto_ds_AWQOS),
        .m_axi_awready(auto_cc_to_auto_ds_AWREADY),
        .m_axi_awregion(auto_cc_to_auto_ds_AWREGION),
        .m_axi_awsize(auto_cc_to_auto_ds_AWSIZE),
        .m_axi_awvalid(auto_cc_to_auto_ds_AWVALID),
        .m_axi_bid(auto_cc_to_auto_ds_BID),
        .m_axi_bready(auto_cc_to_auto_ds_BREADY),
        .m_axi_bresp(auto_cc_to_auto_ds_BRESP),
        .m_axi_bvalid(auto_cc_to_auto_ds_BVALID),
        .m_axi_rdata(auto_cc_to_auto_ds_RDATA),
        .m_axi_rid(auto_cc_to_auto_ds_RID),
        .m_axi_rlast(auto_cc_to_auto_ds_RLAST),
        .m_axi_rready(auto_cc_to_auto_ds_RREADY),
        .m_axi_rresp(auto_cc_to_auto_ds_RRESP),
        .m_axi_rvalid(auto_cc_to_auto_ds_RVALID),
        .m_axi_wdata(auto_cc_to_auto_ds_WDATA),
        .m_axi_wlast(auto_cc_to_auto_ds_WLAST),
        .m_axi_wready(auto_cc_to_auto_ds_WREADY),
        .m_axi_wstrb(auto_cc_to_auto_ds_WSTRB),
        .m_axi_wvalid(auto_cc_to_auto_ds_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m05_couplers_to_auto_cc_ARADDR[11:0]),
        .s_axi_arburst(m05_couplers_to_auto_cc_ARBURST),
        .s_axi_arcache(m05_couplers_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m05_couplers_to_auto_cc_ARID),
        .s_axi_arlen(m05_couplers_to_auto_cc_ARLEN),
        .s_axi_arlock(m05_couplers_to_auto_cc_ARLOCK),
        .s_axi_arprot(m05_couplers_to_auto_cc_ARPROT),
        .s_axi_arqos(m05_couplers_to_auto_cc_ARQOS),
        .s_axi_arready(m05_couplers_to_auto_cc_ARREADY),
        .s_axi_arregion(m05_couplers_to_auto_cc_ARREGION),
        .s_axi_arsize(m05_couplers_to_auto_cc_ARSIZE),
        .s_axi_aruser(m05_couplers_to_auto_cc_ARUSER),
        .s_axi_arvalid(m05_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m05_couplers_to_auto_cc_AWADDR[11:0]),
        .s_axi_awburst(m05_couplers_to_auto_cc_AWBURST),
        .s_axi_awcache(m05_couplers_to_auto_cc_AWCACHE),
        .s_axi_awid(m05_couplers_to_auto_cc_AWID),
        .s_axi_awlen(m05_couplers_to_auto_cc_AWLEN),
        .s_axi_awlock(m05_couplers_to_auto_cc_AWLOCK),
        .s_axi_awprot(m05_couplers_to_auto_cc_AWPROT),
        .s_axi_awqos(m05_couplers_to_auto_cc_AWQOS),
        .s_axi_awready(m05_couplers_to_auto_cc_AWREADY),
        .s_axi_awregion(m05_couplers_to_auto_cc_AWREGION),
        .s_axi_awsize(m05_couplers_to_auto_cc_AWSIZE),
        .s_axi_awuser(m05_couplers_to_auto_cc_AWUSER),
        .s_axi_awvalid(m05_couplers_to_auto_cc_AWVALID),
        .s_axi_bid(m05_couplers_to_auto_cc_BID),
        .s_axi_bready(m05_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m05_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m05_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m05_couplers_to_auto_cc_RDATA),
        .s_axi_rid(m05_couplers_to_auto_cc_RID),
        .s_axi_rlast(m05_couplers_to_auto_cc_RLAST),
        .s_axi_rready(m05_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m05_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m05_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m05_couplers_to_auto_cc_WDATA),
        .s_axi_wlast(m05_couplers_to_auto_cc_WLAST),
        .s_axi_wready(m05_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m05_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m05_couplers_to_auto_cc_WVALID));
  sys_top_auto_ds_5 auto_ds
       (.m_axi_araddr(auto_ds_to_m05_couplers_ARADDR),
        .m_axi_arburst(auto_ds_to_m05_couplers_ARBURST),
        .m_axi_arcache(auto_ds_to_m05_couplers_ARCACHE),
        .m_axi_arlen(auto_ds_to_m05_couplers_ARLEN),
        .m_axi_arlock(auto_ds_to_m05_couplers_ARLOCK),
        .m_axi_arprot(auto_ds_to_m05_couplers_ARPROT),
        .m_axi_arready(auto_ds_to_m05_couplers_ARREADY),
        .m_axi_arsize(auto_ds_to_m05_couplers_ARSIZE),
        .m_axi_arvalid(auto_ds_to_m05_couplers_ARVALID),
        .m_axi_awaddr(auto_ds_to_m05_couplers_AWADDR),
        .m_axi_awburst(auto_ds_to_m05_couplers_AWBURST),
        .m_axi_awcache(auto_ds_to_m05_couplers_AWCACHE),
        .m_axi_awlen(auto_ds_to_m05_couplers_AWLEN),
        .m_axi_awlock(auto_ds_to_m05_couplers_AWLOCK),
        .m_axi_awprot(auto_ds_to_m05_couplers_AWPROT),
        .m_axi_awready(auto_ds_to_m05_couplers_AWREADY),
        .m_axi_awsize(auto_ds_to_m05_couplers_AWSIZE),
        .m_axi_awvalid(auto_ds_to_m05_couplers_AWVALID),
        .m_axi_bready(auto_ds_to_m05_couplers_BREADY),
        .m_axi_bresp(auto_ds_to_m05_couplers_BRESP),
        .m_axi_bvalid(auto_ds_to_m05_couplers_BVALID),
        .m_axi_rdata(auto_ds_to_m05_couplers_RDATA),
        .m_axi_rlast(auto_ds_to_m05_couplers_RLAST),
        .m_axi_rready(auto_ds_to_m05_couplers_RREADY),
        .m_axi_rresp(auto_ds_to_m05_couplers_RRESP),
        .m_axi_rvalid(auto_ds_to_m05_couplers_RVALID),
        .m_axi_wdata(auto_ds_to_m05_couplers_WDATA),
        .m_axi_wlast(auto_ds_to_m05_couplers_WLAST),
        .m_axi_wready(auto_ds_to_m05_couplers_WREADY),
        .m_axi_wstrb(auto_ds_to_m05_couplers_WSTRB),
        .m_axi_wvalid(auto_ds_to_m05_couplers_WVALID),
        .s_axi_aclk(M_ACLK_1),
        .s_axi_araddr(auto_cc_to_auto_ds_ARADDR),
        .s_axi_arburst(auto_cc_to_auto_ds_ARBURST),
        .s_axi_arcache(auto_cc_to_auto_ds_ARCACHE),
        .s_axi_aresetn(M_ARESETN_1),
        .s_axi_arid(auto_cc_to_auto_ds_ARID),
        .s_axi_arlen(auto_cc_to_auto_ds_ARLEN),
        .s_axi_arlock(auto_cc_to_auto_ds_ARLOCK),
        .s_axi_arprot(auto_cc_to_auto_ds_ARPROT),
        .s_axi_arqos(auto_cc_to_auto_ds_ARQOS),
        .s_axi_arready(auto_cc_to_auto_ds_ARREADY),
        .s_axi_arregion(auto_cc_to_auto_ds_ARREGION),
        .s_axi_arsize(auto_cc_to_auto_ds_ARSIZE),
        .s_axi_arvalid(auto_cc_to_auto_ds_ARVALID),
        .s_axi_awaddr(auto_cc_to_auto_ds_AWADDR),
        .s_axi_awburst(auto_cc_to_auto_ds_AWBURST),
        .s_axi_awcache(auto_cc_to_auto_ds_AWCACHE),
        .s_axi_awid(auto_cc_to_auto_ds_AWID),
        .s_axi_awlen(auto_cc_to_auto_ds_AWLEN),
        .s_axi_awlock(auto_cc_to_auto_ds_AWLOCK),
        .s_axi_awprot(auto_cc_to_auto_ds_AWPROT),
        .s_axi_awqos(auto_cc_to_auto_ds_AWQOS),
        .s_axi_awready(auto_cc_to_auto_ds_AWREADY),
        .s_axi_awregion(auto_cc_to_auto_ds_AWREGION),
        .s_axi_awsize(auto_cc_to_auto_ds_AWSIZE),
        .s_axi_awvalid(auto_cc_to_auto_ds_AWVALID),
        .s_axi_bid(auto_cc_to_auto_ds_BID),
        .s_axi_bready(auto_cc_to_auto_ds_BREADY),
        .s_axi_bresp(auto_cc_to_auto_ds_BRESP),
        .s_axi_bvalid(auto_cc_to_auto_ds_BVALID),
        .s_axi_rdata(auto_cc_to_auto_ds_RDATA),
        .s_axi_rid(auto_cc_to_auto_ds_RID),
        .s_axi_rlast(auto_cc_to_auto_ds_RLAST),
        .s_axi_rready(auto_cc_to_auto_ds_RREADY),
        .s_axi_rresp(auto_cc_to_auto_ds_RRESP),
        .s_axi_rvalid(auto_cc_to_auto_ds_RVALID),
        .s_axi_wdata(auto_cc_to_auto_ds_WDATA),
        .s_axi_wlast(auto_cc_to_auto_ds_WLAST),
        .s_axi_wready(auto_cc_to_auto_ds_WREADY),
        .s_axi_wstrb(auto_cc_to_auto_ds_WSTRB),
        .s_axi_wvalid(auto_cc_to_auto_ds_WVALID));
endmodule

module m06_couplers_imp_1YJUSBT
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input [15:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input [15:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_cc_to_auto_ds_ARADDR;
  wire [1:0]auto_cc_to_auto_ds_ARBURST;
  wire [3:0]auto_cc_to_auto_ds_ARCACHE;
  wire [15:0]auto_cc_to_auto_ds_ARID;
  wire [7:0]auto_cc_to_auto_ds_ARLEN;
  wire [0:0]auto_cc_to_auto_ds_ARLOCK;
  wire [2:0]auto_cc_to_auto_ds_ARPROT;
  wire [3:0]auto_cc_to_auto_ds_ARQOS;
  wire auto_cc_to_auto_ds_ARREADY;
  wire [3:0]auto_cc_to_auto_ds_ARREGION;
  wire [2:0]auto_cc_to_auto_ds_ARSIZE;
  wire auto_cc_to_auto_ds_ARVALID;
  wire [31:0]auto_cc_to_auto_ds_AWADDR;
  wire [1:0]auto_cc_to_auto_ds_AWBURST;
  wire [3:0]auto_cc_to_auto_ds_AWCACHE;
  wire [15:0]auto_cc_to_auto_ds_AWID;
  wire [7:0]auto_cc_to_auto_ds_AWLEN;
  wire [0:0]auto_cc_to_auto_ds_AWLOCK;
  wire [2:0]auto_cc_to_auto_ds_AWPROT;
  wire [3:0]auto_cc_to_auto_ds_AWQOS;
  wire auto_cc_to_auto_ds_AWREADY;
  wire [3:0]auto_cc_to_auto_ds_AWREGION;
  wire [2:0]auto_cc_to_auto_ds_AWSIZE;
  wire auto_cc_to_auto_ds_AWVALID;
  wire [15:0]auto_cc_to_auto_ds_BID;
  wire auto_cc_to_auto_ds_BREADY;
  wire [1:0]auto_cc_to_auto_ds_BRESP;
  wire auto_cc_to_auto_ds_BVALID;
  wire [63:0]auto_cc_to_auto_ds_RDATA;
  wire [15:0]auto_cc_to_auto_ds_RID;
  wire auto_cc_to_auto_ds_RLAST;
  wire auto_cc_to_auto_ds_RREADY;
  wire [1:0]auto_cc_to_auto_ds_RRESP;
  wire auto_cc_to_auto_ds_RVALID;
  wire [63:0]auto_cc_to_auto_ds_WDATA;
  wire auto_cc_to_auto_ds_WLAST;
  wire auto_cc_to_auto_ds_WREADY;
  wire [7:0]auto_cc_to_auto_ds_WSTRB;
  wire auto_cc_to_auto_ds_WVALID;
  wire [31:0]auto_ds_to_auto_pc_ARADDR;
  wire [1:0]auto_ds_to_auto_pc_ARBURST;
  wire [3:0]auto_ds_to_auto_pc_ARCACHE;
  wire [7:0]auto_ds_to_auto_pc_ARLEN;
  wire [0:0]auto_ds_to_auto_pc_ARLOCK;
  wire [2:0]auto_ds_to_auto_pc_ARPROT;
  wire [3:0]auto_ds_to_auto_pc_ARQOS;
  wire auto_ds_to_auto_pc_ARREADY;
  wire [3:0]auto_ds_to_auto_pc_ARREGION;
  wire [2:0]auto_ds_to_auto_pc_ARSIZE;
  wire auto_ds_to_auto_pc_ARVALID;
  wire [31:0]auto_ds_to_auto_pc_AWADDR;
  wire [1:0]auto_ds_to_auto_pc_AWBURST;
  wire [3:0]auto_ds_to_auto_pc_AWCACHE;
  wire [7:0]auto_ds_to_auto_pc_AWLEN;
  wire [0:0]auto_ds_to_auto_pc_AWLOCK;
  wire [2:0]auto_ds_to_auto_pc_AWPROT;
  wire [3:0]auto_ds_to_auto_pc_AWQOS;
  wire auto_ds_to_auto_pc_AWREADY;
  wire [3:0]auto_ds_to_auto_pc_AWREGION;
  wire [2:0]auto_ds_to_auto_pc_AWSIZE;
  wire auto_ds_to_auto_pc_AWVALID;
  wire auto_ds_to_auto_pc_BREADY;
  wire [1:0]auto_ds_to_auto_pc_BRESP;
  wire auto_ds_to_auto_pc_BVALID;
  wire [31:0]auto_ds_to_auto_pc_RDATA;
  wire auto_ds_to_auto_pc_RLAST;
  wire auto_ds_to_auto_pc_RREADY;
  wire [1:0]auto_ds_to_auto_pc_RRESP;
  wire auto_ds_to_auto_pc_RVALID;
  wire [31:0]auto_ds_to_auto_pc_WDATA;
  wire auto_ds_to_auto_pc_WLAST;
  wire auto_ds_to_auto_pc_WREADY;
  wire [3:0]auto_ds_to_auto_pc_WSTRB;
  wire auto_ds_to_auto_pc_WVALID;
  wire [31:0]auto_pc_to_m06_couplers_ARADDR;
  wire [2:0]auto_pc_to_m06_couplers_ARPROT;
  wire auto_pc_to_m06_couplers_ARREADY;
  wire auto_pc_to_m06_couplers_ARVALID;
  wire [31:0]auto_pc_to_m06_couplers_AWADDR;
  wire [2:0]auto_pc_to_m06_couplers_AWPROT;
  wire auto_pc_to_m06_couplers_AWREADY;
  wire auto_pc_to_m06_couplers_AWVALID;
  wire auto_pc_to_m06_couplers_BREADY;
  wire [1:0]auto_pc_to_m06_couplers_BRESP;
  wire auto_pc_to_m06_couplers_BVALID;
  wire [31:0]auto_pc_to_m06_couplers_RDATA;
  wire auto_pc_to_m06_couplers_RREADY;
  wire [1:0]auto_pc_to_m06_couplers_RRESP;
  wire auto_pc_to_m06_couplers_RVALID;
  wire [31:0]auto_pc_to_m06_couplers_WDATA;
  wire auto_pc_to_m06_couplers_WREADY;
  wire [3:0]auto_pc_to_m06_couplers_WSTRB;
  wire auto_pc_to_m06_couplers_WVALID;
  wire [39:0]m06_couplers_to_auto_cc_ARADDR;
  wire [1:0]m06_couplers_to_auto_cc_ARBURST;
  wire [3:0]m06_couplers_to_auto_cc_ARCACHE;
  wire [15:0]m06_couplers_to_auto_cc_ARID;
  wire [7:0]m06_couplers_to_auto_cc_ARLEN;
  wire [0:0]m06_couplers_to_auto_cc_ARLOCK;
  wire [2:0]m06_couplers_to_auto_cc_ARPROT;
  wire [3:0]m06_couplers_to_auto_cc_ARQOS;
  wire m06_couplers_to_auto_cc_ARREADY;
  wire [3:0]m06_couplers_to_auto_cc_ARREGION;
  wire [2:0]m06_couplers_to_auto_cc_ARSIZE;
  wire [15:0]m06_couplers_to_auto_cc_ARUSER;
  wire m06_couplers_to_auto_cc_ARVALID;
  wire [39:0]m06_couplers_to_auto_cc_AWADDR;
  wire [1:0]m06_couplers_to_auto_cc_AWBURST;
  wire [3:0]m06_couplers_to_auto_cc_AWCACHE;
  wire [15:0]m06_couplers_to_auto_cc_AWID;
  wire [7:0]m06_couplers_to_auto_cc_AWLEN;
  wire [0:0]m06_couplers_to_auto_cc_AWLOCK;
  wire [2:0]m06_couplers_to_auto_cc_AWPROT;
  wire [3:0]m06_couplers_to_auto_cc_AWQOS;
  wire m06_couplers_to_auto_cc_AWREADY;
  wire [3:0]m06_couplers_to_auto_cc_AWREGION;
  wire [2:0]m06_couplers_to_auto_cc_AWSIZE;
  wire [15:0]m06_couplers_to_auto_cc_AWUSER;
  wire m06_couplers_to_auto_cc_AWVALID;
  wire [15:0]m06_couplers_to_auto_cc_BID;
  wire m06_couplers_to_auto_cc_BREADY;
  wire [1:0]m06_couplers_to_auto_cc_BRESP;
  wire m06_couplers_to_auto_cc_BVALID;
  wire [63:0]m06_couplers_to_auto_cc_RDATA;
  wire [15:0]m06_couplers_to_auto_cc_RID;
  wire m06_couplers_to_auto_cc_RLAST;
  wire m06_couplers_to_auto_cc_RREADY;
  wire [1:0]m06_couplers_to_auto_cc_RRESP;
  wire m06_couplers_to_auto_cc_RVALID;
  wire [63:0]m06_couplers_to_auto_cc_WDATA;
  wire m06_couplers_to_auto_cc_WLAST;
  wire m06_couplers_to_auto_cc_WREADY;
  wire [7:0]m06_couplers_to_auto_cc_WSTRB;
  wire m06_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_pc_to_m06_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_m06_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m06_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_m06_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_m06_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m06_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m06_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m06_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m06_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bid[15:0] = m06_couplers_to_auto_cc_BID;
  assign S_AXI_bresp[1:0] = m06_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[63:0] = m06_couplers_to_auto_cc_RDATA;
  assign S_AXI_rid[15:0] = m06_couplers_to_auto_cc_RID;
  assign S_AXI_rlast = m06_couplers_to_auto_cc_RLAST;
  assign S_AXI_rresp[1:0] = m06_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m06_couplers_to_auto_cc_WREADY;
  assign auto_pc_to_m06_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m06_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m06_couplers_WREADY = M_AXI_wready;
  assign m06_couplers_to_auto_cc_ARADDR = S_AXI_araddr[39:0];
  assign m06_couplers_to_auto_cc_ARBURST = S_AXI_arburst[1:0];
  assign m06_couplers_to_auto_cc_ARCACHE = S_AXI_arcache[3:0];
  assign m06_couplers_to_auto_cc_ARID = S_AXI_arid[15:0];
  assign m06_couplers_to_auto_cc_ARLEN = S_AXI_arlen[7:0];
  assign m06_couplers_to_auto_cc_ARLOCK = S_AXI_arlock[0];
  assign m06_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m06_couplers_to_auto_cc_ARQOS = S_AXI_arqos[3:0];
  assign m06_couplers_to_auto_cc_ARREGION = S_AXI_arregion[3:0];
  assign m06_couplers_to_auto_cc_ARSIZE = S_AXI_arsize[2:0];
  assign m06_couplers_to_auto_cc_ARUSER = S_AXI_aruser[15:0];
  assign m06_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[39:0];
  assign m06_couplers_to_auto_cc_AWBURST = S_AXI_awburst[1:0];
  assign m06_couplers_to_auto_cc_AWCACHE = S_AXI_awcache[3:0];
  assign m06_couplers_to_auto_cc_AWID = S_AXI_awid[15:0];
  assign m06_couplers_to_auto_cc_AWLEN = S_AXI_awlen[7:0];
  assign m06_couplers_to_auto_cc_AWLOCK = S_AXI_awlock[0];
  assign m06_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m06_couplers_to_auto_cc_AWQOS = S_AXI_awqos[3:0];
  assign m06_couplers_to_auto_cc_AWREGION = S_AXI_awregion[3:0];
  assign m06_couplers_to_auto_cc_AWSIZE = S_AXI_awsize[2:0];
  assign m06_couplers_to_auto_cc_AWUSER = S_AXI_awuser[15:0];
  assign m06_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m06_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m06_couplers_to_auto_cc_WDATA = S_AXI_wdata[63:0];
  assign m06_couplers_to_auto_cc_WLAST = S_AXI_wlast;
  assign m06_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[7:0];
  assign m06_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  sys_top_auto_cc_7 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_auto_ds_ARADDR),
        .m_axi_arburst(auto_cc_to_auto_ds_ARBURST),
        .m_axi_arcache(auto_cc_to_auto_ds_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arid(auto_cc_to_auto_ds_ARID),
        .m_axi_arlen(auto_cc_to_auto_ds_ARLEN),
        .m_axi_arlock(auto_cc_to_auto_ds_ARLOCK),
        .m_axi_arprot(auto_cc_to_auto_ds_ARPROT),
        .m_axi_arqos(auto_cc_to_auto_ds_ARQOS),
        .m_axi_arready(auto_cc_to_auto_ds_ARREADY),
        .m_axi_arregion(auto_cc_to_auto_ds_ARREGION),
        .m_axi_arsize(auto_cc_to_auto_ds_ARSIZE),
        .m_axi_arvalid(auto_cc_to_auto_ds_ARVALID),
        .m_axi_awaddr(auto_cc_to_auto_ds_AWADDR),
        .m_axi_awburst(auto_cc_to_auto_ds_AWBURST),
        .m_axi_awcache(auto_cc_to_auto_ds_AWCACHE),
        .m_axi_awid(auto_cc_to_auto_ds_AWID),
        .m_axi_awlen(auto_cc_to_auto_ds_AWLEN),
        .m_axi_awlock(auto_cc_to_auto_ds_AWLOCK),
        .m_axi_awprot(auto_cc_to_auto_ds_AWPROT),
        .m_axi_awqos(auto_cc_to_auto_ds_AWQOS),
        .m_axi_awready(auto_cc_to_auto_ds_AWREADY),
        .m_axi_awregion(auto_cc_to_auto_ds_AWREGION),
        .m_axi_awsize(auto_cc_to_auto_ds_AWSIZE),
        .m_axi_awvalid(auto_cc_to_auto_ds_AWVALID),
        .m_axi_bid(auto_cc_to_auto_ds_BID),
        .m_axi_bready(auto_cc_to_auto_ds_BREADY),
        .m_axi_bresp(auto_cc_to_auto_ds_BRESP),
        .m_axi_bvalid(auto_cc_to_auto_ds_BVALID),
        .m_axi_rdata(auto_cc_to_auto_ds_RDATA),
        .m_axi_rid(auto_cc_to_auto_ds_RID),
        .m_axi_rlast(auto_cc_to_auto_ds_RLAST),
        .m_axi_rready(auto_cc_to_auto_ds_RREADY),
        .m_axi_rresp(auto_cc_to_auto_ds_RRESP),
        .m_axi_rvalid(auto_cc_to_auto_ds_RVALID),
        .m_axi_wdata(auto_cc_to_auto_ds_WDATA),
        .m_axi_wlast(auto_cc_to_auto_ds_WLAST),
        .m_axi_wready(auto_cc_to_auto_ds_WREADY),
        .m_axi_wstrb(auto_cc_to_auto_ds_WSTRB),
        .m_axi_wvalid(auto_cc_to_auto_ds_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m06_couplers_to_auto_cc_ARADDR[31:0]),
        .s_axi_arburst(m06_couplers_to_auto_cc_ARBURST),
        .s_axi_arcache(m06_couplers_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m06_couplers_to_auto_cc_ARID),
        .s_axi_arlen(m06_couplers_to_auto_cc_ARLEN),
        .s_axi_arlock(m06_couplers_to_auto_cc_ARLOCK),
        .s_axi_arprot(m06_couplers_to_auto_cc_ARPROT),
        .s_axi_arqos(m06_couplers_to_auto_cc_ARQOS),
        .s_axi_arready(m06_couplers_to_auto_cc_ARREADY),
        .s_axi_arregion(m06_couplers_to_auto_cc_ARREGION),
        .s_axi_arsize(m06_couplers_to_auto_cc_ARSIZE),
        .s_axi_aruser(m06_couplers_to_auto_cc_ARUSER),
        .s_axi_arvalid(m06_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m06_couplers_to_auto_cc_AWADDR[31:0]),
        .s_axi_awburst(m06_couplers_to_auto_cc_AWBURST),
        .s_axi_awcache(m06_couplers_to_auto_cc_AWCACHE),
        .s_axi_awid(m06_couplers_to_auto_cc_AWID),
        .s_axi_awlen(m06_couplers_to_auto_cc_AWLEN),
        .s_axi_awlock(m06_couplers_to_auto_cc_AWLOCK),
        .s_axi_awprot(m06_couplers_to_auto_cc_AWPROT),
        .s_axi_awqos(m06_couplers_to_auto_cc_AWQOS),
        .s_axi_awready(m06_couplers_to_auto_cc_AWREADY),
        .s_axi_awregion(m06_couplers_to_auto_cc_AWREGION),
        .s_axi_awsize(m06_couplers_to_auto_cc_AWSIZE),
        .s_axi_awuser(m06_couplers_to_auto_cc_AWUSER),
        .s_axi_awvalid(m06_couplers_to_auto_cc_AWVALID),
        .s_axi_bid(m06_couplers_to_auto_cc_BID),
        .s_axi_bready(m06_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m06_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m06_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m06_couplers_to_auto_cc_RDATA),
        .s_axi_rid(m06_couplers_to_auto_cc_RID),
        .s_axi_rlast(m06_couplers_to_auto_cc_RLAST),
        .s_axi_rready(m06_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m06_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m06_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m06_couplers_to_auto_cc_WDATA),
        .s_axi_wlast(m06_couplers_to_auto_cc_WLAST),
        .s_axi_wready(m06_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m06_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m06_couplers_to_auto_cc_WVALID));
  sys_top_auto_ds_6 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .m_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .m_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .m_axi_bready(auto_ds_to_auto_pc_BREADY),
        .m_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .m_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .m_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .m_axi_rready(auto_ds_to_auto_pc_RREADY),
        .m_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .m_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .m_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .m_axi_wready(auto_ds_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_pc_WVALID),
        .s_axi_aclk(M_ACLK_1),
        .s_axi_araddr(auto_cc_to_auto_ds_ARADDR),
        .s_axi_arburst(auto_cc_to_auto_ds_ARBURST),
        .s_axi_arcache(auto_cc_to_auto_ds_ARCACHE),
        .s_axi_aresetn(M_ARESETN_1),
        .s_axi_arid(auto_cc_to_auto_ds_ARID),
        .s_axi_arlen(auto_cc_to_auto_ds_ARLEN),
        .s_axi_arlock(auto_cc_to_auto_ds_ARLOCK),
        .s_axi_arprot(auto_cc_to_auto_ds_ARPROT),
        .s_axi_arqos(auto_cc_to_auto_ds_ARQOS),
        .s_axi_arready(auto_cc_to_auto_ds_ARREADY),
        .s_axi_arregion(auto_cc_to_auto_ds_ARREGION),
        .s_axi_arsize(auto_cc_to_auto_ds_ARSIZE),
        .s_axi_arvalid(auto_cc_to_auto_ds_ARVALID),
        .s_axi_awaddr(auto_cc_to_auto_ds_AWADDR),
        .s_axi_awburst(auto_cc_to_auto_ds_AWBURST),
        .s_axi_awcache(auto_cc_to_auto_ds_AWCACHE),
        .s_axi_awid(auto_cc_to_auto_ds_AWID),
        .s_axi_awlen(auto_cc_to_auto_ds_AWLEN),
        .s_axi_awlock(auto_cc_to_auto_ds_AWLOCK),
        .s_axi_awprot(auto_cc_to_auto_ds_AWPROT),
        .s_axi_awqos(auto_cc_to_auto_ds_AWQOS),
        .s_axi_awready(auto_cc_to_auto_ds_AWREADY),
        .s_axi_awregion(auto_cc_to_auto_ds_AWREGION),
        .s_axi_awsize(auto_cc_to_auto_ds_AWSIZE),
        .s_axi_awvalid(auto_cc_to_auto_ds_AWVALID),
        .s_axi_bid(auto_cc_to_auto_ds_BID),
        .s_axi_bready(auto_cc_to_auto_ds_BREADY),
        .s_axi_bresp(auto_cc_to_auto_ds_BRESP),
        .s_axi_bvalid(auto_cc_to_auto_ds_BVALID),
        .s_axi_rdata(auto_cc_to_auto_ds_RDATA),
        .s_axi_rid(auto_cc_to_auto_ds_RID),
        .s_axi_rlast(auto_cc_to_auto_ds_RLAST),
        .s_axi_rready(auto_cc_to_auto_ds_RREADY),
        .s_axi_rresp(auto_cc_to_auto_ds_RRESP),
        .s_axi_rvalid(auto_cc_to_auto_ds_RVALID),
        .s_axi_wdata(auto_cc_to_auto_ds_WDATA),
        .s_axi_wlast(auto_cc_to_auto_ds_WLAST),
        .s_axi_wready(auto_cc_to_auto_ds_WREADY),
        .s_axi_wstrb(auto_cc_to_auto_ds_WSTRB),
        .s_axi_wvalid(auto_cc_to_auto_ds_WVALID));
  sys_top_auto_pc_3 auto_pc
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m06_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_m06_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m06_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m06_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m06_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_m06_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m06_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m06_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m06_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m06_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m06_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m06_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m06_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m06_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m06_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m06_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m06_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m06_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m06_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .s_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .s_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .s_axi_bready(auto_ds_to_auto_pc_BREADY),
        .s_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .s_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .s_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .s_axi_rready(auto_ds_to_auto_pc_RREADY),
        .s_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .s_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .s_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .s_axi_wready(auto_ds_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_pc_WVALID));
endmodule

module m07_couplers_imp_XTIF8Q
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [11:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [11:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input [15:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input [15:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [11:0]auto_cc_to_auto_ds_ARADDR;
  wire [1:0]auto_cc_to_auto_ds_ARBURST;
  wire [3:0]auto_cc_to_auto_ds_ARCACHE;
  wire [15:0]auto_cc_to_auto_ds_ARID;
  wire [7:0]auto_cc_to_auto_ds_ARLEN;
  wire [0:0]auto_cc_to_auto_ds_ARLOCK;
  wire [2:0]auto_cc_to_auto_ds_ARPROT;
  wire [3:0]auto_cc_to_auto_ds_ARQOS;
  wire auto_cc_to_auto_ds_ARREADY;
  wire [3:0]auto_cc_to_auto_ds_ARREGION;
  wire [2:0]auto_cc_to_auto_ds_ARSIZE;
  wire auto_cc_to_auto_ds_ARVALID;
  wire [11:0]auto_cc_to_auto_ds_AWADDR;
  wire [1:0]auto_cc_to_auto_ds_AWBURST;
  wire [3:0]auto_cc_to_auto_ds_AWCACHE;
  wire [15:0]auto_cc_to_auto_ds_AWID;
  wire [7:0]auto_cc_to_auto_ds_AWLEN;
  wire [0:0]auto_cc_to_auto_ds_AWLOCK;
  wire [2:0]auto_cc_to_auto_ds_AWPROT;
  wire [3:0]auto_cc_to_auto_ds_AWQOS;
  wire auto_cc_to_auto_ds_AWREADY;
  wire [3:0]auto_cc_to_auto_ds_AWREGION;
  wire [2:0]auto_cc_to_auto_ds_AWSIZE;
  wire auto_cc_to_auto_ds_AWVALID;
  wire [15:0]auto_cc_to_auto_ds_BID;
  wire auto_cc_to_auto_ds_BREADY;
  wire [1:0]auto_cc_to_auto_ds_BRESP;
  wire auto_cc_to_auto_ds_BVALID;
  wire [63:0]auto_cc_to_auto_ds_RDATA;
  wire [15:0]auto_cc_to_auto_ds_RID;
  wire auto_cc_to_auto_ds_RLAST;
  wire auto_cc_to_auto_ds_RREADY;
  wire [1:0]auto_cc_to_auto_ds_RRESP;
  wire auto_cc_to_auto_ds_RVALID;
  wire [63:0]auto_cc_to_auto_ds_WDATA;
  wire auto_cc_to_auto_ds_WLAST;
  wire auto_cc_to_auto_ds_WREADY;
  wire [7:0]auto_cc_to_auto_ds_WSTRB;
  wire auto_cc_to_auto_ds_WVALID;
  wire [11:0]auto_ds_to_m07_couplers_ARADDR;
  wire [1:0]auto_ds_to_m07_couplers_ARBURST;
  wire [3:0]auto_ds_to_m07_couplers_ARCACHE;
  wire [7:0]auto_ds_to_m07_couplers_ARLEN;
  wire [0:0]auto_ds_to_m07_couplers_ARLOCK;
  wire [2:0]auto_ds_to_m07_couplers_ARPROT;
  wire auto_ds_to_m07_couplers_ARREADY;
  wire [2:0]auto_ds_to_m07_couplers_ARSIZE;
  wire auto_ds_to_m07_couplers_ARVALID;
  wire [11:0]auto_ds_to_m07_couplers_AWADDR;
  wire [1:0]auto_ds_to_m07_couplers_AWBURST;
  wire [3:0]auto_ds_to_m07_couplers_AWCACHE;
  wire [7:0]auto_ds_to_m07_couplers_AWLEN;
  wire [0:0]auto_ds_to_m07_couplers_AWLOCK;
  wire [2:0]auto_ds_to_m07_couplers_AWPROT;
  wire auto_ds_to_m07_couplers_AWREADY;
  wire [2:0]auto_ds_to_m07_couplers_AWSIZE;
  wire auto_ds_to_m07_couplers_AWVALID;
  wire auto_ds_to_m07_couplers_BREADY;
  wire [1:0]auto_ds_to_m07_couplers_BRESP;
  wire auto_ds_to_m07_couplers_BVALID;
  wire [31:0]auto_ds_to_m07_couplers_RDATA;
  wire auto_ds_to_m07_couplers_RLAST;
  wire auto_ds_to_m07_couplers_RREADY;
  wire [1:0]auto_ds_to_m07_couplers_RRESP;
  wire auto_ds_to_m07_couplers_RVALID;
  wire [31:0]auto_ds_to_m07_couplers_WDATA;
  wire auto_ds_to_m07_couplers_WLAST;
  wire auto_ds_to_m07_couplers_WREADY;
  wire [3:0]auto_ds_to_m07_couplers_WSTRB;
  wire auto_ds_to_m07_couplers_WVALID;
  wire [39:0]m07_couplers_to_auto_cc_ARADDR;
  wire [1:0]m07_couplers_to_auto_cc_ARBURST;
  wire [3:0]m07_couplers_to_auto_cc_ARCACHE;
  wire [15:0]m07_couplers_to_auto_cc_ARID;
  wire [7:0]m07_couplers_to_auto_cc_ARLEN;
  wire [0:0]m07_couplers_to_auto_cc_ARLOCK;
  wire [2:0]m07_couplers_to_auto_cc_ARPROT;
  wire [3:0]m07_couplers_to_auto_cc_ARQOS;
  wire m07_couplers_to_auto_cc_ARREADY;
  wire [3:0]m07_couplers_to_auto_cc_ARREGION;
  wire [2:0]m07_couplers_to_auto_cc_ARSIZE;
  wire [15:0]m07_couplers_to_auto_cc_ARUSER;
  wire m07_couplers_to_auto_cc_ARVALID;
  wire [39:0]m07_couplers_to_auto_cc_AWADDR;
  wire [1:0]m07_couplers_to_auto_cc_AWBURST;
  wire [3:0]m07_couplers_to_auto_cc_AWCACHE;
  wire [15:0]m07_couplers_to_auto_cc_AWID;
  wire [7:0]m07_couplers_to_auto_cc_AWLEN;
  wire [0:0]m07_couplers_to_auto_cc_AWLOCK;
  wire [2:0]m07_couplers_to_auto_cc_AWPROT;
  wire [3:0]m07_couplers_to_auto_cc_AWQOS;
  wire m07_couplers_to_auto_cc_AWREADY;
  wire [3:0]m07_couplers_to_auto_cc_AWREGION;
  wire [2:0]m07_couplers_to_auto_cc_AWSIZE;
  wire [15:0]m07_couplers_to_auto_cc_AWUSER;
  wire m07_couplers_to_auto_cc_AWVALID;
  wire [15:0]m07_couplers_to_auto_cc_BID;
  wire m07_couplers_to_auto_cc_BREADY;
  wire [1:0]m07_couplers_to_auto_cc_BRESP;
  wire m07_couplers_to_auto_cc_BVALID;
  wire [63:0]m07_couplers_to_auto_cc_RDATA;
  wire [15:0]m07_couplers_to_auto_cc_RID;
  wire m07_couplers_to_auto_cc_RLAST;
  wire m07_couplers_to_auto_cc_RREADY;
  wire [1:0]m07_couplers_to_auto_cc_RRESP;
  wire m07_couplers_to_auto_cc_RVALID;
  wire [63:0]m07_couplers_to_auto_cc_WDATA;
  wire m07_couplers_to_auto_cc_WLAST;
  wire m07_couplers_to_auto_cc_WREADY;
  wire [7:0]m07_couplers_to_auto_cc_WSTRB;
  wire m07_couplers_to_auto_cc_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[11:0] = auto_ds_to_m07_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_ds_to_m07_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_ds_to_m07_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_ds_to_m07_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_ds_to_m07_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_ds_to_m07_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = auto_ds_to_m07_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_ds_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[11:0] = auto_ds_to_m07_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_ds_to_m07_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_ds_to_m07_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_ds_to_m07_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_ds_to_m07_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_ds_to_m07_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = auto_ds_to_m07_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_ds_to_m07_couplers_AWVALID;
  assign M_AXI_bready = auto_ds_to_m07_couplers_BREADY;
  assign M_AXI_rready = auto_ds_to_m07_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_ds_to_m07_couplers_WDATA;
  assign M_AXI_wlast = auto_ds_to_m07_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_ds_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid = auto_ds_to_m07_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m07_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m07_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bid[15:0] = m07_couplers_to_auto_cc_BID;
  assign S_AXI_bresp[1:0] = m07_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m07_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[63:0] = m07_couplers_to_auto_cc_RDATA;
  assign S_AXI_rid[15:0] = m07_couplers_to_auto_cc_RID;
  assign S_AXI_rlast = m07_couplers_to_auto_cc_RLAST;
  assign S_AXI_rresp[1:0] = m07_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m07_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m07_couplers_to_auto_cc_WREADY;
  assign auto_ds_to_m07_couplers_ARREADY = M_AXI_arready;
  assign auto_ds_to_m07_couplers_AWREADY = M_AXI_awready;
  assign auto_ds_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_ds_to_m07_couplers_BVALID = M_AXI_bvalid;
  assign auto_ds_to_m07_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_ds_to_m07_couplers_RLAST = M_AXI_rlast;
  assign auto_ds_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_ds_to_m07_couplers_RVALID = M_AXI_rvalid;
  assign auto_ds_to_m07_couplers_WREADY = M_AXI_wready;
  assign m07_couplers_to_auto_cc_ARADDR = S_AXI_araddr[39:0];
  assign m07_couplers_to_auto_cc_ARBURST = S_AXI_arburst[1:0];
  assign m07_couplers_to_auto_cc_ARCACHE = S_AXI_arcache[3:0];
  assign m07_couplers_to_auto_cc_ARID = S_AXI_arid[15:0];
  assign m07_couplers_to_auto_cc_ARLEN = S_AXI_arlen[7:0];
  assign m07_couplers_to_auto_cc_ARLOCK = S_AXI_arlock[0];
  assign m07_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m07_couplers_to_auto_cc_ARQOS = S_AXI_arqos[3:0];
  assign m07_couplers_to_auto_cc_ARREGION = S_AXI_arregion[3:0];
  assign m07_couplers_to_auto_cc_ARSIZE = S_AXI_arsize[2:0];
  assign m07_couplers_to_auto_cc_ARUSER = S_AXI_aruser[15:0];
  assign m07_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m07_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[39:0];
  assign m07_couplers_to_auto_cc_AWBURST = S_AXI_awburst[1:0];
  assign m07_couplers_to_auto_cc_AWCACHE = S_AXI_awcache[3:0];
  assign m07_couplers_to_auto_cc_AWID = S_AXI_awid[15:0];
  assign m07_couplers_to_auto_cc_AWLEN = S_AXI_awlen[7:0];
  assign m07_couplers_to_auto_cc_AWLOCK = S_AXI_awlock[0];
  assign m07_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m07_couplers_to_auto_cc_AWQOS = S_AXI_awqos[3:0];
  assign m07_couplers_to_auto_cc_AWREGION = S_AXI_awregion[3:0];
  assign m07_couplers_to_auto_cc_AWSIZE = S_AXI_awsize[2:0];
  assign m07_couplers_to_auto_cc_AWUSER = S_AXI_awuser[15:0];
  assign m07_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m07_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m07_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m07_couplers_to_auto_cc_WDATA = S_AXI_wdata[63:0];
  assign m07_couplers_to_auto_cc_WLAST = S_AXI_wlast;
  assign m07_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[7:0];
  assign m07_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  sys_top_auto_cc_8 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_auto_ds_ARADDR),
        .m_axi_arburst(auto_cc_to_auto_ds_ARBURST),
        .m_axi_arcache(auto_cc_to_auto_ds_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arid(auto_cc_to_auto_ds_ARID),
        .m_axi_arlen(auto_cc_to_auto_ds_ARLEN),
        .m_axi_arlock(auto_cc_to_auto_ds_ARLOCK),
        .m_axi_arprot(auto_cc_to_auto_ds_ARPROT),
        .m_axi_arqos(auto_cc_to_auto_ds_ARQOS),
        .m_axi_arready(auto_cc_to_auto_ds_ARREADY),
        .m_axi_arregion(auto_cc_to_auto_ds_ARREGION),
        .m_axi_arsize(auto_cc_to_auto_ds_ARSIZE),
        .m_axi_arvalid(auto_cc_to_auto_ds_ARVALID),
        .m_axi_awaddr(auto_cc_to_auto_ds_AWADDR),
        .m_axi_awburst(auto_cc_to_auto_ds_AWBURST),
        .m_axi_awcache(auto_cc_to_auto_ds_AWCACHE),
        .m_axi_awid(auto_cc_to_auto_ds_AWID),
        .m_axi_awlen(auto_cc_to_auto_ds_AWLEN),
        .m_axi_awlock(auto_cc_to_auto_ds_AWLOCK),
        .m_axi_awprot(auto_cc_to_auto_ds_AWPROT),
        .m_axi_awqos(auto_cc_to_auto_ds_AWQOS),
        .m_axi_awready(auto_cc_to_auto_ds_AWREADY),
        .m_axi_awregion(auto_cc_to_auto_ds_AWREGION),
        .m_axi_awsize(auto_cc_to_auto_ds_AWSIZE),
        .m_axi_awvalid(auto_cc_to_auto_ds_AWVALID),
        .m_axi_bid(auto_cc_to_auto_ds_BID),
        .m_axi_bready(auto_cc_to_auto_ds_BREADY),
        .m_axi_bresp(auto_cc_to_auto_ds_BRESP),
        .m_axi_bvalid(auto_cc_to_auto_ds_BVALID),
        .m_axi_rdata(auto_cc_to_auto_ds_RDATA),
        .m_axi_rid(auto_cc_to_auto_ds_RID),
        .m_axi_rlast(auto_cc_to_auto_ds_RLAST),
        .m_axi_rready(auto_cc_to_auto_ds_RREADY),
        .m_axi_rresp(auto_cc_to_auto_ds_RRESP),
        .m_axi_rvalid(auto_cc_to_auto_ds_RVALID),
        .m_axi_wdata(auto_cc_to_auto_ds_WDATA),
        .m_axi_wlast(auto_cc_to_auto_ds_WLAST),
        .m_axi_wready(auto_cc_to_auto_ds_WREADY),
        .m_axi_wstrb(auto_cc_to_auto_ds_WSTRB),
        .m_axi_wvalid(auto_cc_to_auto_ds_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m07_couplers_to_auto_cc_ARADDR[11:0]),
        .s_axi_arburst(m07_couplers_to_auto_cc_ARBURST),
        .s_axi_arcache(m07_couplers_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m07_couplers_to_auto_cc_ARID),
        .s_axi_arlen(m07_couplers_to_auto_cc_ARLEN),
        .s_axi_arlock(m07_couplers_to_auto_cc_ARLOCK),
        .s_axi_arprot(m07_couplers_to_auto_cc_ARPROT),
        .s_axi_arqos(m07_couplers_to_auto_cc_ARQOS),
        .s_axi_arready(m07_couplers_to_auto_cc_ARREADY),
        .s_axi_arregion(m07_couplers_to_auto_cc_ARREGION),
        .s_axi_arsize(m07_couplers_to_auto_cc_ARSIZE),
        .s_axi_aruser(m07_couplers_to_auto_cc_ARUSER),
        .s_axi_arvalid(m07_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m07_couplers_to_auto_cc_AWADDR[11:0]),
        .s_axi_awburst(m07_couplers_to_auto_cc_AWBURST),
        .s_axi_awcache(m07_couplers_to_auto_cc_AWCACHE),
        .s_axi_awid(m07_couplers_to_auto_cc_AWID),
        .s_axi_awlen(m07_couplers_to_auto_cc_AWLEN),
        .s_axi_awlock(m07_couplers_to_auto_cc_AWLOCK),
        .s_axi_awprot(m07_couplers_to_auto_cc_AWPROT),
        .s_axi_awqos(m07_couplers_to_auto_cc_AWQOS),
        .s_axi_awready(m07_couplers_to_auto_cc_AWREADY),
        .s_axi_awregion(m07_couplers_to_auto_cc_AWREGION),
        .s_axi_awsize(m07_couplers_to_auto_cc_AWSIZE),
        .s_axi_awuser(m07_couplers_to_auto_cc_AWUSER),
        .s_axi_awvalid(m07_couplers_to_auto_cc_AWVALID),
        .s_axi_bid(m07_couplers_to_auto_cc_BID),
        .s_axi_bready(m07_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m07_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m07_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m07_couplers_to_auto_cc_RDATA),
        .s_axi_rid(m07_couplers_to_auto_cc_RID),
        .s_axi_rlast(m07_couplers_to_auto_cc_RLAST),
        .s_axi_rready(m07_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m07_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m07_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m07_couplers_to_auto_cc_WDATA),
        .s_axi_wlast(m07_couplers_to_auto_cc_WLAST),
        .s_axi_wready(m07_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m07_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m07_couplers_to_auto_cc_WVALID));
  sys_top_auto_ds_7 auto_ds
       (.m_axi_araddr(auto_ds_to_m07_couplers_ARADDR),
        .m_axi_arburst(auto_ds_to_m07_couplers_ARBURST),
        .m_axi_arcache(auto_ds_to_m07_couplers_ARCACHE),
        .m_axi_arlen(auto_ds_to_m07_couplers_ARLEN),
        .m_axi_arlock(auto_ds_to_m07_couplers_ARLOCK),
        .m_axi_arprot(auto_ds_to_m07_couplers_ARPROT),
        .m_axi_arready(auto_ds_to_m07_couplers_ARREADY),
        .m_axi_arsize(auto_ds_to_m07_couplers_ARSIZE),
        .m_axi_arvalid(auto_ds_to_m07_couplers_ARVALID),
        .m_axi_awaddr(auto_ds_to_m07_couplers_AWADDR),
        .m_axi_awburst(auto_ds_to_m07_couplers_AWBURST),
        .m_axi_awcache(auto_ds_to_m07_couplers_AWCACHE),
        .m_axi_awlen(auto_ds_to_m07_couplers_AWLEN),
        .m_axi_awlock(auto_ds_to_m07_couplers_AWLOCK),
        .m_axi_awprot(auto_ds_to_m07_couplers_AWPROT),
        .m_axi_awready(auto_ds_to_m07_couplers_AWREADY),
        .m_axi_awsize(auto_ds_to_m07_couplers_AWSIZE),
        .m_axi_awvalid(auto_ds_to_m07_couplers_AWVALID),
        .m_axi_bready(auto_ds_to_m07_couplers_BREADY),
        .m_axi_bresp(auto_ds_to_m07_couplers_BRESP),
        .m_axi_bvalid(auto_ds_to_m07_couplers_BVALID),
        .m_axi_rdata(auto_ds_to_m07_couplers_RDATA),
        .m_axi_rlast(auto_ds_to_m07_couplers_RLAST),
        .m_axi_rready(auto_ds_to_m07_couplers_RREADY),
        .m_axi_rresp(auto_ds_to_m07_couplers_RRESP),
        .m_axi_rvalid(auto_ds_to_m07_couplers_RVALID),
        .m_axi_wdata(auto_ds_to_m07_couplers_WDATA),
        .m_axi_wlast(auto_ds_to_m07_couplers_WLAST),
        .m_axi_wready(auto_ds_to_m07_couplers_WREADY),
        .m_axi_wstrb(auto_ds_to_m07_couplers_WSTRB),
        .m_axi_wvalid(auto_ds_to_m07_couplers_WVALID),
        .s_axi_aclk(M_ACLK_1),
        .s_axi_araddr(auto_cc_to_auto_ds_ARADDR),
        .s_axi_arburst(auto_cc_to_auto_ds_ARBURST),
        .s_axi_arcache(auto_cc_to_auto_ds_ARCACHE),
        .s_axi_aresetn(M_ARESETN_1),
        .s_axi_arid(auto_cc_to_auto_ds_ARID),
        .s_axi_arlen(auto_cc_to_auto_ds_ARLEN),
        .s_axi_arlock(auto_cc_to_auto_ds_ARLOCK),
        .s_axi_arprot(auto_cc_to_auto_ds_ARPROT),
        .s_axi_arqos(auto_cc_to_auto_ds_ARQOS),
        .s_axi_arready(auto_cc_to_auto_ds_ARREADY),
        .s_axi_arregion(auto_cc_to_auto_ds_ARREGION),
        .s_axi_arsize(auto_cc_to_auto_ds_ARSIZE),
        .s_axi_arvalid(auto_cc_to_auto_ds_ARVALID),
        .s_axi_awaddr(auto_cc_to_auto_ds_AWADDR),
        .s_axi_awburst(auto_cc_to_auto_ds_AWBURST),
        .s_axi_awcache(auto_cc_to_auto_ds_AWCACHE),
        .s_axi_awid(auto_cc_to_auto_ds_AWID),
        .s_axi_awlen(auto_cc_to_auto_ds_AWLEN),
        .s_axi_awlock(auto_cc_to_auto_ds_AWLOCK),
        .s_axi_awprot(auto_cc_to_auto_ds_AWPROT),
        .s_axi_awqos(auto_cc_to_auto_ds_AWQOS),
        .s_axi_awready(auto_cc_to_auto_ds_AWREADY),
        .s_axi_awregion(auto_cc_to_auto_ds_AWREGION),
        .s_axi_awsize(auto_cc_to_auto_ds_AWSIZE),
        .s_axi_awvalid(auto_cc_to_auto_ds_AWVALID),
        .s_axi_bid(auto_cc_to_auto_ds_BID),
        .s_axi_bready(auto_cc_to_auto_ds_BREADY),
        .s_axi_bresp(auto_cc_to_auto_ds_BRESP),
        .s_axi_bvalid(auto_cc_to_auto_ds_BVALID),
        .s_axi_rdata(auto_cc_to_auto_ds_RDATA),
        .s_axi_rid(auto_cc_to_auto_ds_RID),
        .s_axi_rlast(auto_cc_to_auto_ds_RLAST),
        .s_axi_rready(auto_cc_to_auto_ds_RREADY),
        .s_axi_rresp(auto_cc_to_auto_ds_RRESP),
        .s_axi_rvalid(auto_cc_to_auto_ds_RVALID),
        .s_axi_wdata(auto_cc_to_auto_ds_WDATA),
        .s_axi_wlast(auto_cc_to_auto_ds_WLAST),
        .s_axi_wready(auto_cc_to_auto_ds_WREADY),
        .s_axi_wstrb(auto_cc_to_auto_ds_WSTRB),
        .s_axi_wvalid(auto_cc_to_auto_ds_WVALID));
endmodule

module s00_couplers_imp_1POJON1
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [15:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [15:0]M_AXI_aruser;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [15:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [15:0]M_AXI_awuser;
  output M_AXI_awvalid;
  input [15:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [15:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input [15:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input [15:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [39:0]s00_couplers_to_s00_data_fifo_ARADDR;
  wire [1:0]s00_couplers_to_s00_data_fifo_ARBURST;
  wire [3:0]s00_couplers_to_s00_data_fifo_ARCACHE;
  wire [15:0]s00_couplers_to_s00_data_fifo_ARID;
  wire [7:0]s00_couplers_to_s00_data_fifo_ARLEN;
  wire [0:0]s00_couplers_to_s00_data_fifo_ARLOCK;
  wire [2:0]s00_couplers_to_s00_data_fifo_ARPROT;
  wire [3:0]s00_couplers_to_s00_data_fifo_ARQOS;
  wire s00_couplers_to_s00_data_fifo_ARREADY;
  wire [3:0]s00_couplers_to_s00_data_fifo_ARREGION;
  wire [2:0]s00_couplers_to_s00_data_fifo_ARSIZE;
  wire [15:0]s00_couplers_to_s00_data_fifo_ARUSER;
  wire s00_couplers_to_s00_data_fifo_ARVALID;
  wire [39:0]s00_couplers_to_s00_data_fifo_AWADDR;
  wire [1:0]s00_couplers_to_s00_data_fifo_AWBURST;
  wire [3:0]s00_couplers_to_s00_data_fifo_AWCACHE;
  wire [15:0]s00_couplers_to_s00_data_fifo_AWID;
  wire [7:0]s00_couplers_to_s00_data_fifo_AWLEN;
  wire [0:0]s00_couplers_to_s00_data_fifo_AWLOCK;
  wire [2:0]s00_couplers_to_s00_data_fifo_AWPROT;
  wire [3:0]s00_couplers_to_s00_data_fifo_AWQOS;
  wire s00_couplers_to_s00_data_fifo_AWREADY;
  wire [3:0]s00_couplers_to_s00_data_fifo_AWREGION;
  wire [2:0]s00_couplers_to_s00_data_fifo_AWSIZE;
  wire [15:0]s00_couplers_to_s00_data_fifo_AWUSER;
  wire s00_couplers_to_s00_data_fifo_AWVALID;
  wire [15:0]s00_couplers_to_s00_data_fifo_BID;
  wire s00_couplers_to_s00_data_fifo_BREADY;
  wire [1:0]s00_couplers_to_s00_data_fifo_BRESP;
  wire s00_couplers_to_s00_data_fifo_BVALID;
  wire [63:0]s00_couplers_to_s00_data_fifo_RDATA;
  wire [15:0]s00_couplers_to_s00_data_fifo_RID;
  wire s00_couplers_to_s00_data_fifo_RLAST;
  wire s00_couplers_to_s00_data_fifo_RREADY;
  wire [1:0]s00_couplers_to_s00_data_fifo_RRESP;
  wire s00_couplers_to_s00_data_fifo_RVALID;
  wire [63:0]s00_couplers_to_s00_data_fifo_WDATA;
  wire s00_couplers_to_s00_data_fifo_WLAST;
  wire s00_couplers_to_s00_data_fifo_WREADY;
  wire [7:0]s00_couplers_to_s00_data_fifo_WSTRB;
  wire s00_couplers_to_s00_data_fifo_WVALID;
  wire [39:0]s00_data_fifo_to_s00_couplers_ARADDR;
  wire [1:0]s00_data_fifo_to_s00_couplers_ARBURST;
  wire [3:0]s00_data_fifo_to_s00_couplers_ARCACHE;
  wire [15:0]s00_data_fifo_to_s00_couplers_ARID;
  wire [7:0]s00_data_fifo_to_s00_couplers_ARLEN;
  wire [0:0]s00_data_fifo_to_s00_couplers_ARLOCK;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARPROT;
  wire [3:0]s00_data_fifo_to_s00_couplers_ARQOS;
  wire s00_data_fifo_to_s00_couplers_ARREADY;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARSIZE;
  wire [15:0]s00_data_fifo_to_s00_couplers_ARUSER;
  wire s00_data_fifo_to_s00_couplers_ARVALID;
  wire [39:0]s00_data_fifo_to_s00_couplers_AWADDR;
  wire [1:0]s00_data_fifo_to_s00_couplers_AWBURST;
  wire [3:0]s00_data_fifo_to_s00_couplers_AWCACHE;
  wire [15:0]s00_data_fifo_to_s00_couplers_AWID;
  wire [7:0]s00_data_fifo_to_s00_couplers_AWLEN;
  wire [0:0]s00_data_fifo_to_s00_couplers_AWLOCK;
  wire [2:0]s00_data_fifo_to_s00_couplers_AWPROT;
  wire [3:0]s00_data_fifo_to_s00_couplers_AWQOS;
  wire s00_data_fifo_to_s00_couplers_AWREADY;
  wire [2:0]s00_data_fifo_to_s00_couplers_AWSIZE;
  wire [15:0]s00_data_fifo_to_s00_couplers_AWUSER;
  wire s00_data_fifo_to_s00_couplers_AWVALID;
  wire [15:0]s00_data_fifo_to_s00_couplers_BID;
  wire s00_data_fifo_to_s00_couplers_BREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_BRESP;
  wire s00_data_fifo_to_s00_couplers_BVALID;
  wire [63:0]s00_data_fifo_to_s00_couplers_RDATA;
  wire [15:0]s00_data_fifo_to_s00_couplers_RID;
  wire s00_data_fifo_to_s00_couplers_RLAST;
  wire s00_data_fifo_to_s00_couplers_RREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_RRESP;
  wire s00_data_fifo_to_s00_couplers_RVALID;
  wire [63:0]s00_data_fifo_to_s00_couplers_WDATA;
  wire s00_data_fifo_to_s00_couplers_WLAST;
  wire s00_data_fifo_to_s00_couplers_WREADY;
  wire [7:0]s00_data_fifo_to_s00_couplers_WSTRB;
  wire s00_data_fifo_to_s00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[39:0] = s00_data_fifo_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_data_fifo_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_data_fifo_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[15:0] = s00_data_fifo_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = s00_data_fifo_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_data_fifo_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_data_fifo_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_data_fifo_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_data_fifo_to_s00_couplers_ARSIZE;
  assign M_AXI_aruser[15:0] = s00_data_fifo_to_s00_couplers_ARUSER;
  assign M_AXI_arvalid = s00_data_fifo_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = s00_data_fifo_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_data_fifo_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_data_fifo_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[15:0] = s00_data_fifo_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = s00_data_fifo_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = s00_data_fifo_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_data_fifo_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_data_fifo_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_data_fifo_to_s00_couplers_AWSIZE;
  assign M_AXI_awuser[15:0] = s00_data_fifo_to_s00_couplers_AWUSER;
  assign M_AXI_awvalid = s00_data_fifo_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_data_fifo_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_data_fifo_to_s00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = s00_data_fifo_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_data_fifo_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = s00_data_fifo_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_data_fifo_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_data_fifo_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_data_fifo_AWREADY;
  assign S_AXI_bid[15:0] = s00_couplers_to_s00_data_fifo_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_data_fifo_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_data_fifo_BVALID;
  assign S_AXI_rdata[63:0] = s00_couplers_to_s00_data_fifo_RDATA;
  assign S_AXI_rid[15:0] = s00_couplers_to_s00_data_fifo_RID;
  assign S_AXI_rlast = s00_couplers_to_s00_data_fifo_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_data_fifo_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_data_fifo_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_data_fifo_WREADY;
  assign s00_couplers_to_s00_data_fifo_ARADDR = S_AXI_araddr[39:0];
  assign s00_couplers_to_s00_data_fifo_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_data_fifo_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_data_fifo_ARID = S_AXI_arid[15:0];
  assign s00_couplers_to_s00_data_fifo_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_data_fifo_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_s00_data_fifo_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_data_fifo_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_data_fifo_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_s00_data_fifo_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_data_fifo_ARUSER = S_AXI_aruser[15:0];
  assign s00_couplers_to_s00_data_fifo_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_data_fifo_AWADDR = S_AXI_awaddr[39:0];
  assign s00_couplers_to_s00_data_fifo_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_data_fifo_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_data_fifo_AWID = S_AXI_awid[15:0];
  assign s00_couplers_to_s00_data_fifo_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_data_fifo_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_s00_data_fifo_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_data_fifo_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_data_fifo_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_s00_data_fifo_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_data_fifo_AWUSER = S_AXI_awuser[15:0];
  assign s00_couplers_to_s00_data_fifo_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_data_fifo_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_data_fifo_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_data_fifo_WDATA = S_AXI_wdata[63:0];
  assign s00_couplers_to_s00_data_fifo_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_data_fifo_WSTRB = S_AXI_wstrb[7:0];
  assign s00_couplers_to_s00_data_fifo_WVALID = S_AXI_wvalid;
  assign s00_data_fifo_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_data_fifo_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_data_fifo_to_s00_couplers_BID = M_AXI_bid[15:0];
  assign s00_data_fifo_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_data_fifo_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_data_fifo_to_s00_couplers_RDATA = M_AXI_rdata[63:0];
  assign s00_data_fifo_to_s00_couplers_RID = M_AXI_rid[15:0];
  assign s00_data_fifo_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_data_fifo_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_data_fifo_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_data_fifo_to_s00_couplers_WREADY = M_AXI_wready;
  sys_top_s00_data_fifo_194 s00_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s00_data_fifo_to_s00_couplers_ARADDR),
        .m_axi_arburst(s00_data_fifo_to_s00_couplers_ARBURST),
        .m_axi_arcache(s00_data_fifo_to_s00_couplers_ARCACHE),
        .m_axi_arid(s00_data_fifo_to_s00_couplers_ARID),
        .m_axi_arlen(s00_data_fifo_to_s00_couplers_ARLEN),
        .m_axi_arlock(s00_data_fifo_to_s00_couplers_ARLOCK),
        .m_axi_arprot(s00_data_fifo_to_s00_couplers_ARPROT),
        .m_axi_arqos(s00_data_fifo_to_s00_couplers_ARQOS),
        .m_axi_arready(s00_data_fifo_to_s00_couplers_ARREADY),
        .m_axi_arsize(s00_data_fifo_to_s00_couplers_ARSIZE),
        .m_axi_aruser(s00_data_fifo_to_s00_couplers_ARUSER),
        .m_axi_arvalid(s00_data_fifo_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_data_fifo_to_s00_couplers_AWADDR),
        .m_axi_awburst(s00_data_fifo_to_s00_couplers_AWBURST),
        .m_axi_awcache(s00_data_fifo_to_s00_couplers_AWCACHE),
        .m_axi_awid(s00_data_fifo_to_s00_couplers_AWID),
        .m_axi_awlen(s00_data_fifo_to_s00_couplers_AWLEN),
        .m_axi_awlock(s00_data_fifo_to_s00_couplers_AWLOCK),
        .m_axi_awprot(s00_data_fifo_to_s00_couplers_AWPROT),
        .m_axi_awqos(s00_data_fifo_to_s00_couplers_AWQOS),
        .m_axi_awready(s00_data_fifo_to_s00_couplers_AWREADY),
        .m_axi_awsize(s00_data_fifo_to_s00_couplers_AWSIZE),
        .m_axi_awuser(s00_data_fifo_to_s00_couplers_AWUSER),
        .m_axi_awvalid(s00_data_fifo_to_s00_couplers_AWVALID),
        .m_axi_bid(s00_data_fifo_to_s00_couplers_BID),
        .m_axi_bready(s00_data_fifo_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_data_fifo_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_data_fifo_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_data_fifo_to_s00_couplers_RDATA),
        .m_axi_rid(s00_data_fifo_to_s00_couplers_RID),
        .m_axi_rlast(s00_data_fifo_to_s00_couplers_RLAST),
        .m_axi_rready(s00_data_fifo_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_data_fifo_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_data_fifo_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_data_fifo_to_s00_couplers_WDATA),
        .m_axi_wlast(s00_data_fifo_to_s00_couplers_WLAST),
        .m_axi_wready(s00_data_fifo_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_data_fifo_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_data_fifo_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_data_fifo_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_data_fifo_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_data_fifo_ARCACHE),
        .s_axi_arid(s00_couplers_to_s00_data_fifo_ARID),
        .s_axi_arlen(s00_couplers_to_s00_data_fifo_ARLEN),
        .s_axi_arlock(s00_couplers_to_s00_data_fifo_ARLOCK),
        .s_axi_arprot(s00_couplers_to_s00_data_fifo_ARPROT),
        .s_axi_arqos(s00_couplers_to_s00_data_fifo_ARQOS),
        .s_axi_arready(s00_couplers_to_s00_data_fifo_ARREADY),
        .s_axi_arregion(s00_couplers_to_s00_data_fifo_ARREGION),
        .s_axi_arsize(s00_couplers_to_s00_data_fifo_ARSIZE),
        .s_axi_aruser(s00_couplers_to_s00_data_fifo_ARUSER),
        .s_axi_arvalid(s00_couplers_to_s00_data_fifo_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_data_fifo_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_data_fifo_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_data_fifo_AWCACHE),
        .s_axi_awid(s00_couplers_to_s00_data_fifo_AWID),
        .s_axi_awlen(s00_couplers_to_s00_data_fifo_AWLEN),
        .s_axi_awlock(s00_couplers_to_s00_data_fifo_AWLOCK),
        .s_axi_awprot(s00_couplers_to_s00_data_fifo_AWPROT),
        .s_axi_awqos(s00_couplers_to_s00_data_fifo_AWQOS),
        .s_axi_awready(s00_couplers_to_s00_data_fifo_AWREADY),
        .s_axi_awregion(s00_couplers_to_s00_data_fifo_AWREGION),
        .s_axi_awsize(s00_couplers_to_s00_data_fifo_AWSIZE),
        .s_axi_awuser(s00_couplers_to_s00_data_fifo_AWUSER),
        .s_axi_awvalid(s00_couplers_to_s00_data_fifo_AWVALID),
        .s_axi_bid(s00_couplers_to_s00_data_fifo_BID),
        .s_axi_bready(s00_couplers_to_s00_data_fifo_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_data_fifo_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_data_fifo_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_data_fifo_RDATA),
        .s_axi_rid(s00_couplers_to_s00_data_fifo_RID),
        .s_axi_rlast(s00_couplers_to_s00_data_fifo_RLAST),
        .s_axi_rready(s00_couplers_to_s00_data_fifo_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_data_fifo_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_data_fifo_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_data_fifo_WDATA),
        .s_axi_wlast(s00_couplers_to_s00_data_fifo_WLAST),
        .s_axi_wready(s00_couplers_to_s00_data_fifo_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_data_fifo_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_data_fifo_WVALID));
endmodule

module s00_couplers_imp_1WZAMLA
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_aruser,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awuser,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [15:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [3:0]M_AXI_arregion;
  output [2:0]M_AXI_arsize;
  output [15:0]M_AXI_aruser;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [15:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [3:0]M_AXI_awregion;
  output [2:0]M_AXI_awsize;
  output [15:0]M_AXI_awuser;
  output M_AXI_awvalid;
  input [15:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [15:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [15:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [15:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_cc_to_s00_data_fifo_ARADDR;
  wire [1:0]auto_cc_to_s00_data_fifo_ARBURST;
  wire [3:0]auto_cc_to_s00_data_fifo_ARCACHE;
  wire [15:0]auto_cc_to_s00_data_fifo_ARID;
  wire [7:0]auto_cc_to_s00_data_fifo_ARLEN;
  wire [0:0]auto_cc_to_s00_data_fifo_ARLOCK;
  wire [2:0]auto_cc_to_s00_data_fifo_ARPROT;
  wire [3:0]auto_cc_to_s00_data_fifo_ARQOS;
  wire auto_cc_to_s00_data_fifo_ARREADY;
  wire [3:0]auto_cc_to_s00_data_fifo_ARREGION;
  wire [2:0]auto_cc_to_s00_data_fifo_ARSIZE;
  wire [15:0]auto_cc_to_s00_data_fifo_ARUSER;
  wire auto_cc_to_s00_data_fifo_ARVALID;
  wire [39:0]auto_cc_to_s00_data_fifo_AWADDR;
  wire [1:0]auto_cc_to_s00_data_fifo_AWBURST;
  wire [3:0]auto_cc_to_s00_data_fifo_AWCACHE;
  wire [15:0]auto_cc_to_s00_data_fifo_AWID;
  wire [7:0]auto_cc_to_s00_data_fifo_AWLEN;
  wire [0:0]auto_cc_to_s00_data_fifo_AWLOCK;
  wire [2:0]auto_cc_to_s00_data_fifo_AWPROT;
  wire [3:0]auto_cc_to_s00_data_fifo_AWQOS;
  wire auto_cc_to_s00_data_fifo_AWREADY;
  wire [3:0]auto_cc_to_s00_data_fifo_AWREGION;
  wire [2:0]auto_cc_to_s00_data_fifo_AWSIZE;
  wire [15:0]auto_cc_to_s00_data_fifo_AWUSER;
  wire auto_cc_to_s00_data_fifo_AWVALID;
  wire [15:0]auto_cc_to_s00_data_fifo_BID;
  wire auto_cc_to_s00_data_fifo_BREADY;
  wire [1:0]auto_cc_to_s00_data_fifo_BRESP;
  wire auto_cc_to_s00_data_fifo_BVALID;
  wire [63:0]auto_cc_to_s00_data_fifo_RDATA;
  wire [15:0]auto_cc_to_s00_data_fifo_RID;
  wire auto_cc_to_s00_data_fifo_RLAST;
  wire auto_cc_to_s00_data_fifo_RREADY;
  wire [1:0]auto_cc_to_s00_data_fifo_RRESP;
  wire auto_cc_to_s00_data_fifo_RVALID;
  wire [63:0]auto_cc_to_s00_data_fifo_WDATA;
  wire auto_cc_to_s00_data_fifo_WLAST;
  wire auto_cc_to_s00_data_fifo_WREADY;
  wire [7:0]auto_cc_to_s00_data_fifo_WSTRB;
  wire auto_cc_to_s00_data_fifo_WVALID;
  wire [39:0]s00_couplers_to_auto_cc_ARADDR;
  wire [1:0]s00_couplers_to_auto_cc_ARBURST;
  wire [3:0]s00_couplers_to_auto_cc_ARCACHE;
  wire [15:0]s00_couplers_to_auto_cc_ARID;
  wire [7:0]s00_couplers_to_auto_cc_ARLEN;
  wire [0:0]s00_couplers_to_auto_cc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_cc_ARPROT;
  wire [3:0]s00_couplers_to_auto_cc_ARQOS;
  wire s00_couplers_to_auto_cc_ARREADY;
  wire [2:0]s00_couplers_to_auto_cc_ARSIZE;
  wire [15:0]s00_couplers_to_auto_cc_ARUSER;
  wire s00_couplers_to_auto_cc_ARVALID;
  wire [39:0]s00_couplers_to_auto_cc_AWADDR;
  wire [1:0]s00_couplers_to_auto_cc_AWBURST;
  wire [3:0]s00_couplers_to_auto_cc_AWCACHE;
  wire [15:0]s00_couplers_to_auto_cc_AWID;
  wire [7:0]s00_couplers_to_auto_cc_AWLEN;
  wire [0:0]s00_couplers_to_auto_cc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_cc_AWPROT;
  wire [3:0]s00_couplers_to_auto_cc_AWQOS;
  wire s00_couplers_to_auto_cc_AWREADY;
  wire [2:0]s00_couplers_to_auto_cc_AWSIZE;
  wire [15:0]s00_couplers_to_auto_cc_AWUSER;
  wire s00_couplers_to_auto_cc_AWVALID;
  wire [15:0]s00_couplers_to_auto_cc_BID;
  wire s00_couplers_to_auto_cc_BREADY;
  wire [1:0]s00_couplers_to_auto_cc_BRESP;
  wire s00_couplers_to_auto_cc_BVALID;
  wire [63:0]s00_couplers_to_auto_cc_RDATA;
  wire [15:0]s00_couplers_to_auto_cc_RID;
  wire s00_couplers_to_auto_cc_RLAST;
  wire s00_couplers_to_auto_cc_RREADY;
  wire [1:0]s00_couplers_to_auto_cc_RRESP;
  wire s00_couplers_to_auto_cc_RVALID;
  wire [63:0]s00_couplers_to_auto_cc_WDATA;
  wire s00_couplers_to_auto_cc_WLAST;
  wire s00_couplers_to_auto_cc_WREADY;
  wire [7:0]s00_couplers_to_auto_cc_WSTRB;
  wire s00_couplers_to_auto_cc_WVALID;
  wire [39:0]s00_data_fifo_to_s00_couplers_ARADDR;
  wire [1:0]s00_data_fifo_to_s00_couplers_ARBURST;
  wire [3:0]s00_data_fifo_to_s00_couplers_ARCACHE;
  wire [15:0]s00_data_fifo_to_s00_couplers_ARID;
  wire [7:0]s00_data_fifo_to_s00_couplers_ARLEN;
  wire [0:0]s00_data_fifo_to_s00_couplers_ARLOCK;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARPROT;
  wire [3:0]s00_data_fifo_to_s00_couplers_ARQOS;
  wire s00_data_fifo_to_s00_couplers_ARREADY;
  wire [3:0]s00_data_fifo_to_s00_couplers_ARREGION;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARSIZE;
  wire [15:0]s00_data_fifo_to_s00_couplers_ARUSER;
  wire s00_data_fifo_to_s00_couplers_ARVALID;
  wire [39:0]s00_data_fifo_to_s00_couplers_AWADDR;
  wire [1:0]s00_data_fifo_to_s00_couplers_AWBURST;
  wire [3:0]s00_data_fifo_to_s00_couplers_AWCACHE;
  wire [15:0]s00_data_fifo_to_s00_couplers_AWID;
  wire [7:0]s00_data_fifo_to_s00_couplers_AWLEN;
  wire [0:0]s00_data_fifo_to_s00_couplers_AWLOCK;
  wire [2:0]s00_data_fifo_to_s00_couplers_AWPROT;
  wire [3:0]s00_data_fifo_to_s00_couplers_AWQOS;
  wire s00_data_fifo_to_s00_couplers_AWREADY;
  wire [3:0]s00_data_fifo_to_s00_couplers_AWREGION;
  wire [2:0]s00_data_fifo_to_s00_couplers_AWSIZE;
  wire [15:0]s00_data_fifo_to_s00_couplers_AWUSER;
  wire s00_data_fifo_to_s00_couplers_AWVALID;
  wire [15:0]s00_data_fifo_to_s00_couplers_BID;
  wire s00_data_fifo_to_s00_couplers_BREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_BRESP;
  wire s00_data_fifo_to_s00_couplers_BVALID;
  wire [63:0]s00_data_fifo_to_s00_couplers_RDATA;
  wire [15:0]s00_data_fifo_to_s00_couplers_RID;
  wire s00_data_fifo_to_s00_couplers_RLAST;
  wire s00_data_fifo_to_s00_couplers_RREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_RRESP;
  wire s00_data_fifo_to_s00_couplers_RVALID;
  wire [63:0]s00_data_fifo_to_s00_couplers_WDATA;
  wire s00_data_fifo_to_s00_couplers_WLAST;
  wire s00_data_fifo_to_s00_couplers_WREADY;
  wire [7:0]s00_data_fifo_to_s00_couplers_WSTRB;
  wire s00_data_fifo_to_s00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[39:0] = s00_data_fifo_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_data_fifo_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_data_fifo_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[15:0] = s00_data_fifo_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = s00_data_fifo_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_data_fifo_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_data_fifo_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_data_fifo_to_s00_couplers_ARQOS;
  assign M_AXI_arregion[3:0] = s00_data_fifo_to_s00_couplers_ARREGION;
  assign M_AXI_arsize[2:0] = s00_data_fifo_to_s00_couplers_ARSIZE;
  assign M_AXI_aruser[15:0] = s00_data_fifo_to_s00_couplers_ARUSER;
  assign M_AXI_arvalid = s00_data_fifo_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = s00_data_fifo_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_data_fifo_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_data_fifo_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[15:0] = s00_data_fifo_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = s00_data_fifo_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = s00_data_fifo_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_data_fifo_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_data_fifo_to_s00_couplers_AWQOS;
  assign M_AXI_awregion[3:0] = s00_data_fifo_to_s00_couplers_AWREGION;
  assign M_AXI_awsize[2:0] = s00_data_fifo_to_s00_couplers_AWSIZE;
  assign M_AXI_awuser[15:0] = s00_data_fifo_to_s00_couplers_AWUSER;
  assign M_AXI_awvalid = s00_data_fifo_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_data_fifo_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_data_fifo_to_s00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = s00_data_fifo_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_data_fifo_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = s00_data_fifo_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_data_fifo_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bid[15:0] = s00_couplers_to_auto_cc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[63:0] = s00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rid[15:0] = s00_couplers_to_auto_cc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_cc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_cc_WREADY;
  assign s00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[39:0];
  assign s00_couplers_to_auto_cc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_cc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_cc_ARID = S_AXI_arid[15:0];
  assign s00_couplers_to_auto_cc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_cc_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_cc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_cc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_cc_ARUSER = S_AXI_aruser[15:0];
  assign s00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[39:0];
  assign s00_couplers_to_auto_cc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_cc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_cc_AWID = S_AXI_awid[15:0];
  assign s00_couplers_to_auto_cc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_cc_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_cc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_cc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_cc_AWUSER = S_AXI_awuser[15:0];
  assign s00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_cc_WDATA = S_AXI_wdata[63:0];
  assign s00_couplers_to_auto_cc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[7:0];
  assign s00_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  assign s00_data_fifo_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_data_fifo_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_data_fifo_to_s00_couplers_BID = M_AXI_bid[15:0];
  assign s00_data_fifo_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_data_fifo_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_data_fifo_to_s00_couplers_RDATA = M_AXI_rdata[63:0];
  assign s00_data_fifo_to_s00_couplers_RID = M_AXI_rid[15:0];
  assign s00_data_fifo_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_data_fifo_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_data_fifo_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_data_fifo_to_s00_couplers_WREADY = M_AXI_wready;
  sys_top_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_s00_data_fifo_ARADDR),
        .m_axi_arburst(auto_cc_to_s00_data_fifo_ARBURST),
        .m_axi_arcache(auto_cc_to_s00_data_fifo_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arid(auto_cc_to_s00_data_fifo_ARID),
        .m_axi_arlen(auto_cc_to_s00_data_fifo_ARLEN),
        .m_axi_arlock(auto_cc_to_s00_data_fifo_ARLOCK),
        .m_axi_arprot(auto_cc_to_s00_data_fifo_ARPROT),
        .m_axi_arqos(auto_cc_to_s00_data_fifo_ARQOS),
        .m_axi_arready(auto_cc_to_s00_data_fifo_ARREADY),
        .m_axi_arregion(auto_cc_to_s00_data_fifo_ARREGION),
        .m_axi_arsize(auto_cc_to_s00_data_fifo_ARSIZE),
        .m_axi_aruser(auto_cc_to_s00_data_fifo_ARUSER),
        .m_axi_arvalid(auto_cc_to_s00_data_fifo_ARVALID),
        .m_axi_awaddr(auto_cc_to_s00_data_fifo_AWADDR),
        .m_axi_awburst(auto_cc_to_s00_data_fifo_AWBURST),
        .m_axi_awcache(auto_cc_to_s00_data_fifo_AWCACHE),
        .m_axi_awid(auto_cc_to_s00_data_fifo_AWID),
        .m_axi_awlen(auto_cc_to_s00_data_fifo_AWLEN),
        .m_axi_awlock(auto_cc_to_s00_data_fifo_AWLOCK),
        .m_axi_awprot(auto_cc_to_s00_data_fifo_AWPROT),
        .m_axi_awqos(auto_cc_to_s00_data_fifo_AWQOS),
        .m_axi_awready(auto_cc_to_s00_data_fifo_AWREADY),
        .m_axi_awregion(auto_cc_to_s00_data_fifo_AWREGION),
        .m_axi_awsize(auto_cc_to_s00_data_fifo_AWSIZE),
        .m_axi_awuser(auto_cc_to_s00_data_fifo_AWUSER),
        .m_axi_awvalid(auto_cc_to_s00_data_fifo_AWVALID),
        .m_axi_bid(auto_cc_to_s00_data_fifo_BID),
        .m_axi_bready(auto_cc_to_s00_data_fifo_BREADY),
        .m_axi_bresp(auto_cc_to_s00_data_fifo_BRESP),
        .m_axi_bvalid(auto_cc_to_s00_data_fifo_BVALID),
        .m_axi_rdata(auto_cc_to_s00_data_fifo_RDATA),
        .m_axi_rid(auto_cc_to_s00_data_fifo_RID),
        .m_axi_rlast(auto_cc_to_s00_data_fifo_RLAST),
        .m_axi_rready(auto_cc_to_s00_data_fifo_RREADY),
        .m_axi_rresp(auto_cc_to_s00_data_fifo_RRESP),
        .m_axi_rvalid(auto_cc_to_s00_data_fifo_RVALID),
        .m_axi_wdata(auto_cc_to_s00_data_fifo_WDATA),
        .m_axi_wlast(auto_cc_to_s00_data_fifo_WLAST),
        .m_axi_wready(auto_cc_to_s00_data_fifo_WREADY),
        .m_axi_wstrb(auto_cc_to_s00_data_fifo_WSTRB),
        .m_axi_wvalid(auto_cc_to_s00_data_fifo_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_cc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_cc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_cc_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s00_couplers_to_auto_cc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_cc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_cc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_cc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_cc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_cc_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_cc_ARSIZE),
        .s_axi_aruser(s00_couplers_to_auto_cc_ARUSER),
        .s_axi_arvalid(s00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_cc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_cc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_cc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_cc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_cc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_cc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_cc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_cc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_cc_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_cc_AWSIZE),
        .s_axi_awuser(s00_couplers_to_auto_cc_AWUSER),
        .s_axi_awvalid(s00_couplers_to_auto_cc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_cc_BID),
        .s_axi_bready(s00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_cc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_cc_RID),
        .s_axi_rlast(s00_couplers_to_auto_cc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_cc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_cc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_cc_WVALID));
  sys_top_s00_data_fifo_193 s00_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s00_data_fifo_to_s00_couplers_ARADDR),
        .m_axi_arburst(s00_data_fifo_to_s00_couplers_ARBURST),
        .m_axi_arcache(s00_data_fifo_to_s00_couplers_ARCACHE),
        .m_axi_arid(s00_data_fifo_to_s00_couplers_ARID),
        .m_axi_arlen(s00_data_fifo_to_s00_couplers_ARLEN),
        .m_axi_arlock(s00_data_fifo_to_s00_couplers_ARLOCK),
        .m_axi_arprot(s00_data_fifo_to_s00_couplers_ARPROT),
        .m_axi_arqos(s00_data_fifo_to_s00_couplers_ARQOS),
        .m_axi_arready(s00_data_fifo_to_s00_couplers_ARREADY),
        .m_axi_arregion(s00_data_fifo_to_s00_couplers_ARREGION),
        .m_axi_arsize(s00_data_fifo_to_s00_couplers_ARSIZE),
        .m_axi_aruser(s00_data_fifo_to_s00_couplers_ARUSER),
        .m_axi_arvalid(s00_data_fifo_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_data_fifo_to_s00_couplers_AWADDR),
        .m_axi_awburst(s00_data_fifo_to_s00_couplers_AWBURST),
        .m_axi_awcache(s00_data_fifo_to_s00_couplers_AWCACHE),
        .m_axi_awid(s00_data_fifo_to_s00_couplers_AWID),
        .m_axi_awlen(s00_data_fifo_to_s00_couplers_AWLEN),
        .m_axi_awlock(s00_data_fifo_to_s00_couplers_AWLOCK),
        .m_axi_awprot(s00_data_fifo_to_s00_couplers_AWPROT),
        .m_axi_awqos(s00_data_fifo_to_s00_couplers_AWQOS),
        .m_axi_awready(s00_data_fifo_to_s00_couplers_AWREADY),
        .m_axi_awregion(s00_data_fifo_to_s00_couplers_AWREGION),
        .m_axi_awsize(s00_data_fifo_to_s00_couplers_AWSIZE),
        .m_axi_awuser(s00_data_fifo_to_s00_couplers_AWUSER),
        .m_axi_awvalid(s00_data_fifo_to_s00_couplers_AWVALID),
        .m_axi_bid(s00_data_fifo_to_s00_couplers_BID),
        .m_axi_bready(s00_data_fifo_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_data_fifo_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_data_fifo_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_data_fifo_to_s00_couplers_RDATA),
        .m_axi_rid(s00_data_fifo_to_s00_couplers_RID),
        .m_axi_rlast(s00_data_fifo_to_s00_couplers_RLAST),
        .m_axi_rready(s00_data_fifo_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_data_fifo_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_data_fifo_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_data_fifo_to_s00_couplers_WDATA),
        .m_axi_wlast(s00_data_fifo_to_s00_couplers_WLAST),
        .m_axi_wready(s00_data_fifo_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_data_fifo_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_data_fifo_to_s00_couplers_WVALID),
        .s_axi_araddr(auto_cc_to_s00_data_fifo_ARADDR),
        .s_axi_arburst(auto_cc_to_s00_data_fifo_ARBURST),
        .s_axi_arcache(auto_cc_to_s00_data_fifo_ARCACHE),
        .s_axi_arid(auto_cc_to_s00_data_fifo_ARID),
        .s_axi_arlen(auto_cc_to_s00_data_fifo_ARLEN),
        .s_axi_arlock(auto_cc_to_s00_data_fifo_ARLOCK),
        .s_axi_arprot(auto_cc_to_s00_data_fifo_ARPROT),
        .s_axi_arqos(auto_cc_to_s00_data_fifo_ARQOS),
        .s_axi_arready(auto_cc_to_s00_data_fifo_ARREADY),
        .s_axi_arregion(auto_cc_to_s00_data_fifo_ARREGION),
        .s_axi_arsize(auto_cc_to_s00_data_fifo_ARSIZE),
        .s_axi_aruser(auto_cc_to_s00_data_fifo_ARUSER),
        .s_axi_arvalid(auto_cc_to_s00_data_fifo_ARVALID),
        .s_axi_awaddr(auto_cc_to_s00_data_fifo_AWADDR),
        .s_axi_awburst(auto_cc_to_s00_data_fifo_AWBURST),
        .s_axi_awcache(auto_cc_to_s00_data_fifo_AWCACHE),
        .s_axi_awid(auto_cc_to_s00_data_fifo_AWID),
        .s_axi_awlen(auto_cc_to_s00_data_fifo_AWLEN),
        .s_axi_awlock(auto_cc_to_s00_data_fifo_AWLOCK),
        .s_axi_awprot(auto_cc_to_s00_data_fifo_AWPROT),
        .s_axi_awqos(auto_cc_to_s00_data_fifo_AWQOS),
        .s_axi_awready(auto_cc_to_s00_data_fifo_AWREADY),
        .s_axi_awregion(auto_cc_to_s00_data_fifo_AWREGION),
        .s_axi_awsize(auto_cc_to_s00_data_fifo_AWSIZE),
        .s_axi_awuser(auto_cc_to_s00_data_fifo_AWUSER),
        .s_axi_awvalid(auto_cc_to_s00_data_fifo_AWVALID),
        .s_axi_bid(auto_cc_to_s00_data_fifo_BID),
        .s_axi_bready(auto_cc_to_s00_data_fifo_BREADY),
        .s_axi_bresp(auto_cc_to_s00_data_fifo_BRESP),
        .s_axi_bvalid(auto_cc_to_s00_data_fifo_BVALID),
        .s_axi_rdata(auto_cc_to_s00_data_fifo_RDATA),
        .s_axi_rid(auto_cc_to_s00_data_fifo_RID),
        .s_axi_rlast(auto_cc_to_s00_data_fifo_RLAST),
        .s_axi_rready(auto_cc_to_s00_data_fifo_RREADY),
        .s_axi_rresp(auto_cc_to_s00_data_fifo_RRESP),
        .s_axi_rvalid(auto_cc_to_s00_data_fifo_RVALID),
        .s_axi_wdata(auto_cc_to_s00_data_fifo_WDATA),
        .s_axi_wlast(auto_cc_to_s00_data_fifo_WLAST),
        .s_axi_wready(auto_cc_to_s00_data_fifo_WREADY),
        .s_axi_wstrb(auto_cc_to_s00_data_fifo_WSTRB),
        .s_axi_wvalid(auto_cc_to_s00_data_fifo_WVALID));
endmodule

module s00_couplers_imp_MF6RX0
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [39:0]s00_couplers_to_s00_data_fifo_ARADDR;
  wire [2:0]s00_couplers_to_s00_data_fifo_ARPROT;
  wire s00_couplers_to_s00_data_fifo_ARREADY;
  wire s00_couplers_to_s00_data_fifo_ARVALID;
  wire [39:0]s00_couplers_to_s00_data_fifo_AWADDR;
  wire [2:0]s00_couplers_to_s00_data_fifo_AWPROT;
  wire s00_couplers_to_s00_data_fifo_AWREADY;
  wire s00_couplers_to_s00_data_fifo_AWVALID;
  wire s00_couplers_to_s00_data_fifo_BREADY;
  wire [1:0]s00_couplers_to_s00_data_fifo_BRESP;
  wire s00_couplers_to_s00_data_fifo_BVALID;
  wire [31:0]s00_couplers_to_s00_data_fifo_RDATA;
  wire s00_couplers_to_s00_data_fifo_RREADY;
  wire [1:0]s00_couplers_to_s00_data_fifo_RRESP;
  wire s00_couplers_to_s00_data_fifo_RVALID;
  wire [31:0]s00_couplers_to_s00_data_fifo_WDATA;
  wire s00_couplers_to_s00_data_fifo_WREADY;
  wire [3:0]s00_couplers_to_s00_data_fifo_WSTRB;
  wire s00_couplers_to_s00_data_fifo_WVALID;
  wire [39:0]s00_data_fifo_to_s00_couplers_ARADDR;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARPROT;
  wire s00_data_fifo_to_s00_couplers_ARREADY;
  wire s00_data_fifo_to_s00_couplers_ARVALID;
  wire [39:0]s00_data_fifo_to_s00_couplers_AWADDR;
  wire [2:0]s00_data_fifo_to_s00_couplers_AWPROT;
  wire s00_data_fifo_to_s00_couplers_AWREADY;
  wire s00_data_fifo_to_s00_couplers_AWVALID;
  wire s00_data_fifo_to_s00_couplers_BREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_BRESP;
  wire s00_data_fifo_to_s00_couplers_BVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_RDATA;
  wire s00_data_fifo_to_s00_couplers_RREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_RRESP;
  wire s00_data_fifo_to_s00_couplers_RVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_WDATA;
  wire s00_data_fifo_to_s00_couplers_WREADY;
  wire [3:0]s00_data_fifo_to_s00_couplers_WSTRB;
  wire s00_data_fifo_to_s00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[39:0] = s00_data_fifo_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_data_fifo_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = s00_data_fifo_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = s00_data_fifo_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_data_fifo_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = s00_data_fifo_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_data_fifo_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_data_fifo_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_data_fifo_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_data_fifo_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_data_fifo_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_data_fifo_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_data_fifo_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_data_fifo_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_data_fifo_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_data_fifo_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_data_fifo_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_data_fifo_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_data_fifo_WREADY;
  assign s00_couplers_to_s00_data_fifo_ARADDR = S_AXI_araddr[39:0];
  assign s00_couplers_to_s00_data_fifo_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_data_fifo_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_data_fifo_AWADDR = S_AXI_awaddr[39:0];
  assign s00_couplers_to_s00_data_fifo_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_data_fifo_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_data_fifo_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_data_fifo_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_data_fifo_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_data_fifo_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_data_fifo_WVALID = S_AXI_wvalid;
  assign s00_data_fifo_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_data_fifo_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_data_fifo_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_data_fifo_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_data_fifo_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_data_fifo_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_data_fifo_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_data_fifo_to_s00_couplers_WREADY = M_AXI_wready;
  sys_top_s00_data_fifo_196 s00_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s00_data_fifo_to_s00_couplers_ARADDR),
        .m_axi_arprot(s00_data_fifo_to_s00_couplers_ARPROT),
        .m_axi_arready(s00_data_fifo_to_s00_couplers_ARREADY),
        .m_axi_arvalid(s00_data_fifo_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_data_fifo_to_s00_couplers_AWADDR),
        .m_axi_awprot(s00_data_fifo_to_s00_couplers_AWPROT),
        .m_axi_awready(s00_data_fifo_to_s00_couplers_AWREADY),
        .m_axi_awvalid(s00_data_fifo_to_s00_couplers_AWVALID),
        .m_axi_bready(s00_data_fifo_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_data_fifo_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_data_fifo_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_data_fifo_to_s00_couplers_RDATA),
        .m_axi_rready(s00_data_fifo_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_data_fifo_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_data_fifo_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_data_fifo_to_s00_couplers_WDATA),
        .m_axi_wready(s00_data_fifo_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_data_fifo_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_data_fifo_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_data_fifo_ARADDR),
        .s_axi_arprot(s00_couplers_to_s00_data_fifo_ARPROT),
        .s_axi_arready(s00_couplers_to_s00_data_fifo_ARREADY),
        .s_axi_arvalid(s00_couplers_to_s00_data_fifo_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_data_fifo_AWADDR),
        .s_axi_awprot(s00_couplers_to_s00_data_fifo_AWPROT),
        .s_axi_awready(s00_couplers_to_s00_data_fifo_AWREADY),
        .s_axi_awvalid(s00_couplers_to_s00_data_fifo_AWVALID),
        .s_axi_bready(s00_couplers_to_s00_data_fifo_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_data_fifo_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_data_fifo_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_data_fifo_RDATA),
        .s_axi_rready(s00_couplers_to_s00_data_fifo_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_data_fifo_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_data_fifo_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_data_fifo_WDATA),
        .s_axi_wready(s00_couplers_to_s00_data_fifo_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_data_fifo_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_data_fifo_WVALID));
endmodule

module s00_couplers_imp_SNLDTS
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_pc_to_s00_data_fifo_ARADDR;
  wire [2:0]auto_pc_to_s00_data_fifo_ARPROT;
  wire auto_pc_to_s00_data_fifo_ARREADY;
  wire auto_pc_to_s00_data_fifo_ARVALID;
  wire [39:0]auto_pc_to_s00_data_fifo_AWADDR;
  wire [2:0]auto_pc_to_s00_data_fifo_AWPROT;
  wire auto_pc_to_s00_data_fifo_AWREADY;
  wire auto_pc_to_s00_data_fifo_AWVALID;
  wire auto_pc_to_s00_data_fifo_BREADY;
  wire [1:0]auto_pc_to_s00_data_fifo_BRESP;
  wire auto_pc_to_s00_data_fifo_BVALID;
  wire [63:0]auto_pc_to_s00_data_fifo_RDATA;
  wire auto_pc_to_s00_data_fifo_RREADY;
  wire [1:0]auto_pc_to_s00_data_fifo_RRESP;
  wire auto_pc_to_s00_data_fifo_RVALID;
  wire [63:0]auto_pc_to_s00_data_fifo_WDATA;
  wire auto_pc_to_s00_data_fifo_WREADY;
  wire [7:0]auto_pc_to_s00_data_fifo_WSTRB;
  wire auto_pc_to_s00_data_fifo_WVALID;
  wire [39:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [15:0]s00_couplers_to_auto_pc_ARID;
  wire [7:0]s00_couplers_to_auto_pc_ARLEN;
  wire [0:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [39:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [15:0]s00_couplers_to_auto_pc_AWID;
  wire [7:0]s00_couplers_to_auto_pc_AWLEN;
  wire [0:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [15:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [63:0]s00_couplers_to_auto_pc_RDATA;
  wire [15:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [63:0]s00_couplers_to_auto_pc_WDATA;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [7:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;
  wire [39:0]s00_data_fifo_to_s00_couplers_ARADDR;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARPROT;
  wire s00_data_fifo_to_s00_couplers_ARREADY;
  wire s00_data_fifo_to_s00_couplers_ARVALID;
  wire [39:0]s00_data_fifo_to_s00_couplers_AWADDR;
  wire [2:0]s00_data_fifo_to_s00_couplers_AWPROT;
  wire s00_data_fifo_to_s00_couplers_AWREADY;
  wire s00_data_fifo_to_s00_couplers_AWVALID;
  wire s00_data_fifo_to_s00_couplers_BREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_BRESP;
  wire s00_data_fifo_to_s00_couplers_BVALID;
  wire [63:0]s00_data_fifo_to_s00_couplers_RDATA;
  wire s00_data_fifo_to_s00_couplers_RREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_RRESP;
  wire s00_data_fifo_to_s00_couplers_RVALID;
  wire [63:0]s00_data_fifo_to_s00_couplers_WDATA;
  wire s00_data_fifo_to_s00_couplers_WREADY;
  wire [7:0]s00_data_fifo_to_s00_couplers_WSTRB;
  wire s00_data_fifo_to_s00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[39:0] = s00_data_fifo_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_data_fifo_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = s00_data_fifo_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = s00_data_fifo_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_data_fifo_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = s00_data_fifo_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_data_fifo_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_data_fifo_to_s00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = s00_data_fifo_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[7:0] = s00_data_fifo_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_data_fifo_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[15:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[63:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[15:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[39:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[15:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[39:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[15:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[63:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[7:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  assign s00_data_fifo_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_data_fifo_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_data_fifo_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_data_fifo_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_data_fifo_to_s00_couplers_RDATA = M_AXI_rdata[63:0];
  assign s00_data_fifo_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_data_fifo_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_data_fifo_to_s00_couplers_WREADY = M_AXI_wready;
  sys_top_auto_pc_4 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_data_fifo_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_data_fifo_ARPROT),
        .m_axi_arready(auto_pc_to_s00_data_fifo_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_data_fifo_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_data_fifo_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_data_fifo_AWPROT),
        .m_axi_awready(auto_pc_to_s00_data_fifo_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_data_fifo_AWVALID),
        .m_axi_bready(auto_pc_to_s00_data_fifo_BREADY),
        .m_axi_bresp(auto_pc_to_s00_data_fifo_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_data_fifo_BVALID),
        .m_axi_rdata(auto_pc_to_s00_data_fifo_RDATA),
        .m_axi_rready(auto_pc_to_s00_data_fifo_RREADY),
        .m_axi_rresp(auto_pc_to_s00_data_fifo_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_data_fifo_RVALID),
        .m_axi_wdata(auto_pc_to_s00_data_fifo_WDATA),
        .m_axi_wready(auto_pc_to_s00_data_fifo_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_data_fifo_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_data_fifo_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
  sys_top_s00_data_fifo_195 s00_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s00_data_fifo_to_s00_couplers_ARADDR),
        .m_axi_arprot(s00_data_fifo_to_s00_couplers_ARPROT),
        .m_axi_arready(s00_data_fifo_to_s00_couplers_ARREADY),
        .m_axi_arvalid(s00_data_fifo_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_data_fifo_to_s00_couplers_AWADDR),
        .m_axi_awprot(s00_data_fifo_to_s00_couplers_AWPROT),
        .m_axi_awready(s00_data_fifo_to_s00_couplers_AWREADY),
        .m_axi_awvalid(s00_data_fifo_to_s00_couplers_AWVALID),
        .m_axi_bready(s00_data_fifo_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_data_fifo_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_data_fifo_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_data_fifo_to_s00_couplers_RDATA),
        .m_axi_rready(s00_data_fifo_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_data_fifo_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_data_fifo_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_data_fifo_to_s00_couplers_WDATA),
        .m_axi_wready(s00_data_fifo_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_data_fifo_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_data_fifo_to_s00_couplers_WVALID),
        .s_axi_araddr(auto_pc_to_s00_data_fifo_ARADDR),
        .s_axi_arprot(auto_pc_to_s00_data_fifo_ARPROT),
        .s_axi_arready(auto_pc_to_s00_data_fifo_ARREADY),
        .s_axi_arvalid(auto_pc_to_s00_data_fifo_ARVALID),
        .s_axi_awaddr(auto_pc_to_s00_data_fifo_AWADDR),
        .s_axi_awprot(auto_pc_to_s00_data_fifo_AWPROT),
        .s_axi_awready(auto_pc_to_s00_data_fifo_AWREADY),
        .s_axi_awvalid(auto_pc_to_s00_data_fifo_AWVALID),
        .s_axi_bready(auto_pc_to_s00_data_fifo_BREADY),
        .s_axi_bresp(auto_pc_to_s00_data_fifo_BRESP),
        .s_axi_bvalid(auto_pc_to_s00_data_fifo_BVALID),
        .s_axi_rdata(auto_pc_to_s00_data_fifo_RDATA),
        .s_axi_rready(auto_pc_to_s00_data_fifo_RREADY),
        .s_axi_rresp(auto_pc_to_s00_data_fifo_RRESP),
        .s_axi_rvalid(auto_pc_to_s00_data_fifo_RVALID),
        .s_axi_wdata(auto_pc_to_s00_data_fifo_WDATA),
        .s_axi_wready(auto_pc_to_s00_data_fifo_WREADY),
        .s_axi_wstrb(auto_pc_to_s00_data_fifo_WSTRB),
        .s_axi_wvalid(auto_pc_to_s00_data_fifo_WVALID));
endmodule

module s00_couplers_imp_WLAVYC
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_cc_df_to_s00_couplers_ARADDR;
  wire [1:0]auto_us_cc_df_to_s00_couplers_ARBURST;
  wire [3:0]auto_us_cc_df_to_s00_couplers_ARCACHE;
  wire [7:0]auto_us_cc_df_to_s00_couplers_ARLEN;
  wire [0:0]auto_us_cc_df_to_s00_couplers_ARLOCK;
  wire [2:0]auto_us_cc_df_to_s00_couplers_ARPROT;
  wire [3:0]auto_us_cc_df_to_s00_couplers_ARQOS;
  wire auto_us_cc_df_to_s00_couplers_ARREADY;
  wire [2:0]auto_us_cc_df_to_s00_couplers_ARSIZE;
  wire auto_us_cc_df_to_s00_couplers_ARVALID;
  wire [31:0]auto_us_cc_df_to_s00_couplers_AWADDR;
  wire [1:0]auto_us_cc_df_to_s00_couplers_AWBURST;
  wire [3:0]auto_us_cc_df_to_s00_couplers_AWCACHE;
  wire [7:0]auto_us_cc_df_to_s00_couplers_AWLEN;
  wire [0:0]auto_us_cc_df_to_s00_couplers_AWLOCK;
  wire [2:0]auto_us_cc_df_to_s00_couplers_AWPROT;
  wire [3:0]auto_us_cc_df_to_s00_couplers_AWQOS;
  wire auto_us_cc_df_to_s00_couplers_AWREADY;
  wire [2:0]auto_us_cc_df_to_s00_couplers_AWSIZE;
  wire auto_us_cc_df_to_s00_couplers_AWVALID;
  wire auto_us_cc_df_to_s00_couplers_BREADY;
  wire [1:0]auto_us_cc_df_to_s00_couplers_BRESP;
  wire auto_us_cc_df_to_s00_couplers_BVALID;
  wire [63:0]auto_us_cc_df_to_s00_couplers_RDATA;
  wire auto_us_cc_df_to_s00_couplers_RLAST;
  wire auto_us_cc_df_to_s00_couplers_RREADY;
  wire [1:0]auto_us_cc_df_to_s00_couplers_RRESP;
  wire auto_us_cc_df_to_s00_couplers_RVALID;
  wire [63:0]auto_us_cc_df_to_s00_couplers_WDATA;
  wire auto_us_cc_df_to_s00_couplers_WLAST;
  wire auto_us_cc_df_to_s00_couplers_WREADY;
  wire [7:0]auto_us_cc_df_to_s00_couplers_WSTRB;
  wire auto_us_cc_df_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [1:0]s00_couplers_to_s00_regslice_ARBURST;
  wire [3:0]s00_couplers_to_s00_regslice_ARCACHE;
  wire [7:0]s00_couplers_to_s00_regslice_ARLEN;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire [2:0]s00_couplers_to_s00_regslice_ARSIZE;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [31:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [1:0]s00_couplers_to_s00_regslice_AWBURST;
  wire [3:0]s00_couplers_to_s00_regslice_AWCACHE;
  wire [7:0]s00_couplers_to_s00_regslice_AWLEN;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire [2:0]s00_couplers_to_s00_regslice_AWSIZE;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [31:0]s00_couplers_to_s00_regslice_RDATA;
  wire s00_couplers_to_s00_regslice_RLAST;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [31:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WLAST;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [3:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [31:0]s00_regslice_to_auto_us_cc_df_ARADDR;
  wire [1:0]s00_regslice_to_auto_us_cc_df_ARBURST;
  wire [3:0]s00_regslice_to_auto_us_cc_df_ARCACHE;
  wire [7:0]s00_regslice_to_auto_us_cc_df_ARLEN;
  wire [0:0]s00_regslice_to_auto_us_cc_df_ARLOCK;
  wire [2:0]s00_regslice_to_auto_us_cc_df_ARPROT;
  wire [3:0]s00_regslice_to_auto_us_cc_df_ARQOS;
  wire s00_regslice_to_auto_us_cc_df_ARREADY;
  wire [3:0]s00_regslice_to_auto_us_cc_df_ARREGION;
  wire [2:0]s00_regslice_to_auto_us_cc_df_ARSIZE;
  wire s00_regslice_to_auto_us_cc_df_ARVALID;
  wire [31:0]s00_regslice_to_auto_us_cc_df_AWADDR;
  wire [1:0]s00_regslice_to_auto_us_cc_df_AWBURST;
  wire [3:0]s00_regslice_to_auto_us_cc_df_AWCACHE;
  wire [7:0]s00_regslice_to_auto_us_cc_df_AWLEN;
  wire [0:0]s00_regslice_to_auto_us_cc_df_AWLOCK;
  wire [2:0]s00_regslice_to_auto_us_cc_df_AWPROT;
  wire [3:0]s00_regslice_to_auto_us_cc_df_AWQOS;
  wire s00_regslice_to_auto_us_cc_df_AWREADY;
  wire [3:0]s00_regslice_to_auto_us_cc_df_AWREGION;
  wire [2:0]s00_regslice_to_auto_us_cc_df_AWSIZE;
  wire s00_regslice_to_auto_us_cc_df_AWVALID;
  wire s00_regslice_to_auto_us_cc_df_BREADY;
  wire [1:0]s00_regslice_to_auto_us_cc_df_BRESP;
  wire s00_regslice_to_auto_us_cc_df_BVALID;
  wire [31:0]s00_regslice_to_auto_us_cc_df_RDATA;
  wire s00_regslice_to_auto_us_cc_df_RLAST;
  wire s00_regslice_to_auto_us_cc_df_RREADY;
  wire [1:0]s00_regslice_to_auto_us_cc_df_RRESP;
  wire s00_regslice_to_auto_us_cc_df_RVALID;
  wire [31:0]s00_regslice_to_auto_us_cc_df_WDATA;
  wire s00_regslice_to_auto_us_cc_df_WLAST;
  wire s00_regslice_to_auto_us_cc_df_WREADY;
  wire [3:0]s00_regslice_to_auto_us_cc_df_WSTRB;
  wire s00_regslice_to_auto_us_cc_df_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_us_cc_df_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_cc_df_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_cc_df_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_cc_df_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_cc_df_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_cc_df_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_cc_df_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_cc_df_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_cc_df_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_us_cc_df_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_cc_df_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_cc_df_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_cc_df_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_cc_df_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_cc_df_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_cc_df_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_cc_df_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_cc_df_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_us_cc_df_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_us_cc_df_to_s00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_us_cc_df_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_us_cc_df_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_us_cc_df_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_cc_df_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rlast = s00_couplers_to_s00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign auto_us_cc_df_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_us_cc_df_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_us_cc_df_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_cc_df_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_cc_df_to_s00_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_us_cc_df_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_us_cc_df_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_cc_df_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_cc_df_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_regslice_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  sys_top_auto_us_cc_df_0 auto_us_cc_df
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_us_cc_df_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_us_cc_df_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_us_cc_df_to_s00_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arlen(auto_us_cc_df_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_us_cc_df_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_us_cc_df_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_us_cc_df_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_us_cc_df_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_us_cc_df_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_cc_df_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_us_cc_df_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_us_cc_df_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_us_cc_df_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_us_cc_df_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_us_cc_df_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_us_cc_df_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_us_cc_df_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_us_cc_df_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_us_cc_df_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_cc_df_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_us_cc_df_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_us_cc_df_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_us_cc_df_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_us_cc_df_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_us_cc_df_to_s00_couplers_RLAST),
        .m_axi_rready(auto_us_cc_df_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_us_cc_df_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_us_cc_df_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_us_cc_df_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_us_cc_df_to_s00_couplers_WLAST),
        .m_axi_wready(auto_us_cc_df_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_us_cc_df_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_us_cc_df_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_regslice_to_auto_us_cc_df_ARADDR),
        .s_axi_arburst(s00_regslice_to_auto_us_cc_df_ARBURST),
        .s_axi_arcache(s00_regslice_to_auto_us_cc_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s00_regslice_to_auto_us_cc_df_ARLEN),
        .s_axi_arlock(s00_regslice_to_auto_us_cc_df_ARLOCK),
        .s_axi_arprot(s00_regslice_to_auto_us_cc_df_ARPROT),
        .s_axi_arqos(s00_regslice_to_auto_us_cc_df_ARQOS),
        .s_axi_arready(s00_regslice_to_auto_us_cc_df_ARREADY),
        .s_axi_arregion(s00_regslice_to_auto_us_cc_df_ARREGION),
        .s_axi_arsize(s00_regslice_to_auto_us_cc_df_ARSIZE),
        .s_axi_arvalid(s00_regslice_to_auto_us_cc_df_ARVALID),
        .s_axi_awaddr(s00_regslice_to_auto_us_cc_df_AWADDR),
        .s_axi_awburst(s00_regslice_to_auto_us_cc_df_AWBURST),
        .s_axi_awcache(s00_regslice_to_auto_us_cc_df_AWCACHE),
        .s_axi_awlen(s00_regslice_to_auto_us_cc_df_AWLEN),
        .s_axi_awlock(s00_regslice_to_auto_us_cc_df_AWLOCK),
        .s_axi_awprot(s00_regslice_to_auto_us_cc_df_AWPROT),
        .s_axi_awqos(s00_regslice_to_auto_us_cc_df_AWQOS),
        .s_axi_awready(s00_regslice_to_auto_us_cc_df_AWREADY),
        .s_axi_awregion(s00_regslice_to_auto_us_cc_df_AWREGION),
        .s_axi_awsize(s00_regslice_to_auto_us_cc_df_AWSIZE),
        .s_axi_awvalid(s00_regslice_to_auto_us_cc_df_AWVALID),
        .s_axi_bready(s00_regslice_to_auto_us_cc_df_BREADY),
        .s_axi_bresp(s00_regslice_to_auto_us_cc_df_BRESP),
        .s_axi_bvalid(s00_regslice_to_auto_us_cc_df_BVALID),
        .s_axi_rdata(s00_regslice_to_auto_us_cc_df_RDATA),
        .s_axi_rlast(s00_regslice_to_auto_us_cc_df_RLAST),
        .s_axi_rready(s00_regslice_to_auto_us_cc_df_RREADY),
        .s_axi_rresp(s00_regslice_to_auto_us_cc_df_RRESP),
        .s_axi_rvalid(s00_regslice_to_auto_us_cc_df_RVALID),
        .s_axi_wdata(s00_regslice_to_auto_us_cc_df_WDATA),
        .s_axi_wlast(s00_regslice_to_auto_us_cc_df_WLAST),
        .s_axi_wready(s00_regslice_to_auto_us_cc_df_WREADY),
        .s_axi_wstrb(s00_regslice_to_auto_us_cc_df_WSTRB),
        .s_axi_wvalid(s00_regslice_to_auto_us_cc_df_WVALID));
  sys_top_s00_regslice_0 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_auto_us_cc_df_ARADDR),
        .m_axi_arburst(s00_regslice_to_auto_us_cc_df_ARBURST),
        .m_axi_arcache(s00_regslice_to_auto_us_cc_df_ARCACHE),
        .m_axi_arlen(s00_regslice_to_auto_us_cc_df_ARLEN),
        .m_axi_arlock(s00_regslice_to_auto_us_cc_df_ARLOCK),
        .m_axi_arprot(s00_regslice_to_auto_us_cc_df_ARPROT),
        .m_axi_arqos(s00_regslice_to_auto_us_cc_df_ARQOS),
        .m_axi_arready(s00_regslice_to_auto_us_cc_df_ARREADY),
        .m_axi_arregion(s00_regslice_to_auto_us_cc_df_ARREGION),
        .m_axi_arsize(s00_regslice_to_auto_us_cc_df_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_auto_us_cc_df_ARVALID),
        .m_axi_awaddr(s00_regslice_to_auto_us_cc_df_AWADDR),
        .m_axi_awburst(s00_regslice_to_auto_us_cc_df_AWBURST),
        .m_axi_awcache(s00_regslice_to_auto_us_cc_df_AWCACHE),
        .m_axi_awlen(s00_regslice_to_auto_us_cc_df_AWLEN),
        .m_axi_awlock(s00_regslice_to_auto_us_cc_df_AWLOCK),
        .m_axi_awprot(s00_regslice_to_auto_us_cc_df_AWPROT),
        .m_axi_awqos(s00_regslice_to_auto_us_cc_df_AWQOS),
        .m_axi_awready(s00_regslice_to_auto_us_cc_df_AWREADY),
        .m_axi_awregion(s00_regslice_to_auto_us_cc_df_AWREGION),
        .m_axi_awsize(s00_regslice_to_auto_us_cc_df_AWSIZE),
        .m_axi_awvalid(s00_regslice_to_auto_us_cc_df_AWVALID),
        .m_axi_bready(s00_regslice_to_auto_us_cc_df_BREADY),
        .m_axi_bresp(s00_regslice_to_auto_us_cc_df_BRESP),
        .m_axi_bvalid(s00_regslice_to_auto_us_cc_df_BVALID),
        .m_axi_rdata(s00_regslice_to_auto_us_cc_df_RDATA),
        .m_axi_rlast(s00_regslice_to_auto_us_cc_df_RLAST),
        .m_axi_rready(s00_regslice_to_auto_us_cc_df_RREADY),
        .m_axi_rresp(s00_regslice_to_auto_us_cc_df_RRESP),
        .m_axi_rvalid(s00_regslice_to_auto_us_cc_df_RVALID),
        .m_axi_wdata(s00_regslice_to_auto_us_cc_df_WDATA),
        .m_axi_wlast(s00_regslice_to_auto_us_cc_df_WLAST),
        .m_axi_wready(s00_regslice_to_auto_us_cc_df_WREADY),
        .m_axi_wstrb(s00_regslice_to_auto_us_cc_df_WSTRB),
        .m_axi_wvalid(s00_regslice_to_auto_us_cc_df_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_regslice_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_regslice_ARCACHE),
        .s_axi_arlen(s00_couplers_to_s00_regslice_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_s00_regslice_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_regslice_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_regslice_AWCACHE),
        .s_axi_awlen(s00_couplers_to_s00_regslice_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_s00_regslice_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rlast(s00_couplers_to_s00_regslice_RLAST),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wlast(s00_couplers_to_s00_regslice_WLAST),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module s01_couplers_imp_1VDEY9Z
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_cc_df_to_s01_couplers_ARADDR;
  wire [1:0]auto_us_cc_df_to_s01_couplers_ARBURST;
  wire [3:0]auto_us_cc_df_to_s01_couplers_ARCACHE;
  wire [7:0]auto_us_cc_df_to_s01_couplers_ARLEN;
  wire [0:0]auto_us_cc_df_to_s01_couplers_ARLOCK;
  wire [2:0]auto_us_cc_df_to_s01_couplers_ARPROT;
  wire [3:0]auto_us_cc_df_to_s01_couplers_ARQOS;
  wire auto_us_cc_df_to_s01_couplers_ARREADY;
  wire [2:0]auto_us_cc_df_to_s01_couplers_ARSIZE;
  wire auto_us_cc_df_to_s01_couplers_ARVALID;
  wire [31:0]auto_us_cc_df_to_s01_couplers_AWADDR;
  wire [1:0]auto_us_cc_df_to_s01_couplers_AWBURST;
  wire [3:0]auto_us_cc_df_to_s01_couplers_AWCACHE;
  wire [7:0]auto_us_cc_df_to_s01_couplers_AWLEN;
  wire [0:0]auto_us_cc_df_to_s01_couplers_AWLOCK;
  wire [2:0]auto_us_cc_df_to_s01_couplers_AWPROT;
  wire [3:0]auto_us_cc_df_to_s01_couplers_AWQOS;
  wire auto_us_cc_df_to_s01_couplers_AWREADY;
  wire [2:0]auto_us_cc_df_to_s01_couplers_AWSIZE;
  wire auto_us_cc_df_to_s01_couplers_AWVALID;
  wire auto_us_cc_df_to_s01_couplers_BREADY;
  wire [1:0]auto_us_cc_df_to_s01_couplers_BRESP;
  wire auto_us_cc_df_to_s01_couplers_BVALID;
  wire [63:0]auto_us_cc_df_to_s01_couplers_RDATA;
  wire auto_us_cc_df_to_s01_couplers_RLAST;
  wire auto_us_cc_df_to_s01_couplers_RREADY;
  wire [1:0]auto_us_cc_df_to_s01_couplers_RRESP;
  wire auto_us_cc_df_to_s01_couplers_RVALID;
  wire [63:0]auto_us_cc_df_to_s01_couplers_WDATA;
  wire auto_us_cc_df_to_s01_couplers_WLAST;
  wire auto_us_cc_df_to_s01_couplers_WREADY;
  wire [7:0]auto_us_cc_df_to_s01_couplers_WSTRB;
  wire auto_us_cc_df_to_s01_couplers_WVALID;
  wire [31:0]s01_couplers_to_s01_regslice_ARADDR;
  wire [1:0]s01_couplers_to_s01_regslice_ARBURST;
  wire [3:0]s01_couplers_to_s01_regslice_ARCACHE;
  wire [7:0]s01_couplers_to_s01_regslice_ARLEN;
  wire [2:0]s01_couplers_to_s01_regslice_ARPROT;
  wire s01_couplers_to_s01_regslice_ARREADY;
  wire [2:0]s01_couplers_to_s01_regslice_ARSIZE;
  wire s01_couplers_to_s01_regslice_ARVALID;
  wire [31:0]s01_couplers_to_s01_regslice_AWADDR;
  wire [1:0]s01_couplers_to_s01_regslice_AWBURST;
  wire [3:0]s01_couplers_to_s01_regslice_AWCACHE;
  wire [7:0]s01_couplers_to_s01_regslice_AWLEN;
  wire [2:0]s01_couplers_to_s01_regslice_AWPROT;
  wire s01_couplers_to_s01_regslice_AWREADY;
  wire [2:0]s01_couplers_to_s01_regslice_AWSIZE;
  wire s01_couplers_to_s01_regslice_AWVALID;
  wire s01_couplers_to_s01_regslice_BREADY;
  wire [1:0]s01_couplers_to_s01_regslice_BRESP;
  wire s01_couplers_to_s01_regslice_BVALID;
  wire [31:0]s01_couplers_to_s01_regslice_RDATA;
  wire s01_couplers_to_s01_regslice_RLAST;
  wire s01_couplers_to_s01_regslice_RREADY;
  wire [1:0]s01_couplers_to_s01_regslice_RRESP;
  wire s01_couplers_to_s01_regslice_RVALID;
  wire [31:0]s01_couplers_to_s01_regslice_WDATA;
  wire s01_couplers_to_s01_regslice_WLAST;
  wire s01_couplers_to_s01_regslice_WREADY;
  wire [3:0]s01_couplers_to_s01_regslice_WSTRB;
  wire s01_couplers_to_s01_regslice_WVALID;
  wire [31:0]s01_regslice_to_auto_us_cc_df_ARADDR;
  wire [1:0]s01_regslice_to_auto_us_cc_df_ARBURST;
  wire [3:0]s01_regslice_to_auto_us_cc_df_ARCACHE;
  wire [7:0]s01_regslice_to_auto_us_cc_df_ARLEN;
  wire [0:0]s01_regslice_to_auto_us_cc_df_ARLOCK;
  wire [2:0]s01_regslice_to_auto_us_cc_df_ARPROT;
  wire [3:0]s01_regslice_to_auto_us_cc_df_ARQOS;
  wire s01_regslice_to_auto_us_cc_df_ARREADY;
  wire [3:0]s01_regslice_to_auto_us_cc_df_ARREGION;
  wire [2:0]s01_regslice_to_auto_us_cc_df_ARSIZE;
  wire s01_regslice_to_auto_us_cc_df_ARVALID;
  wire [31:0]s01_regslice_to_auto_us_cc_df_AWADDR;
  wire [1:0]s01_regslice_to_auto_us_cc_df_AWBURST;
  wire [3:0]s01_regslice_to_auto_us_cc_df_AWCACHE;
  wire [7:0]s01_regslice_to_auto_us_cc_df_AWLEN;
  wire [0:0]s01_regslice_to_auto_us_cc_df_AWLOCK;
  wire [2:0]s01_regslice_to_auto_us_cc_df_AWPROT;
  wire [3:0]s01_regslice_to_auto_us_cc_df_AWQOS;
  wire s01_regslice_to_auto_us_cc_df_AWREADY;
  wire [3:0]s01_regslice_to_auto_us_cc_df_AWREGION;
  wire [2:0]s01_regslice_to_auto_us_cc_df_AWSIZE;
  wire s01_regslice_to_auto_us_cc_df_AWVALID;
  wire s01_regslice_to_auto_us_cc_df_BREADY;
  wire [1:0]s01_regslice_to_auto_us_cc_df_BRESP;
  wire s01_regslice_to_auto_us_cc_df_BVALID;
  wire [31:0]s01_regslice_to_auto_us_cc_df_RDATA;
  wire s01_regslice_to_auto_us_cc_df_RLAST;
  wire s01_regslice_to_auto_us_cc_df_RREADY;
  wire [1:0]s01_regslice_to_auto_us_cc_df_RRESP;
  wire s01_regslice_to_auto_us_cc_df_RVALID;
  wire [31:0]s01_regslice_to_auto_us_cc_df_WDATA;
  wire s01_regslice_to_auto_us_cc_df_WLAST;
  wire s01_regslice_to_auto_us_cc_df_WREADY;
  wire [3:0]s01_regslice_to_auto_us_cc_df_WSTRB;
  wire s01_regslice_to_auto_us_cc_df_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_us_cc_df_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_cc_df_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_cc_df_to_s01_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_cc_df_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_cc_df_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_cc_df_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_cc_df_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_cc_df_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_cc_df_to_s01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_us_cc_df_to_s01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_cc_df_to_s01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_cc_df_to_s01_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_cc_df_to_s01_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_cc_df_to_s01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_cc_df_to_s01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_cc_df_to_s01_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_cc_df_to_s01_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_cc_df_to_s01_couplers_AWVALID;
  assign M_AXI_bready = auto_us_cc_df_to_s01_couplers_BREADY;
  assign M_AXI_rready = auto_us_cc_df_to_s01_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_us_cc_df_to_s01_couplers_WDATA;
  assign M_AXI_wlast = auto_us_cc_df_to_s01_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_us_cc_df_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_cc_df_to_s01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s01_couplers_to_s01_regslice_ARREADY;
  assign S_AXI_awready = s01_couplers_to_s01_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s01_couplers_to_s01_regslice_BRESP;
  assign S_AXI_bvalid = s01_couplers_to_s01_regslice_BVALID;
  assign S_AXI_rdata[31:0] = s01_couplers_to_s01_regslice_RDATA;
  assign S_AXI_rlast = s01_couplers_to_s01_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_s01_regslice_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_s01_regslice_RVALID;
  assign S_AXI_wready = s01_couplers_to_s01_regslice_WREADY;
  assign auto_us_cc_df_to_s01_couplers_ARREADY = M_AXI_arready;
  assign auto_us_cc_df_to_s01_couplers_AWREADY = M_AXI_awready;
  assign auto_us_cc_df_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_cc_df_to_s01_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_cc_df_to_s01_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_us_cc_df_to_s01_couplers_RLAST = M_AXI_rlast;
  assign auto_us_cc_df_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_cc_df_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_cc_df_to_s01_couplers_WREADY = M_AXI_wready;
  assign s01_couplers_to_s01_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s01_couplers_to_s01_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_s01_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_s01_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_s01_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_s01_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_s01_regslice_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_s01_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s01_couplers_to_s01_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_s01_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_s01_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_s01_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_s01_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_s01_regslice_AWVALID = S_AXI_awvalid;
  assign s01_couplers_to_s01_regslice_BREADY = S_AXI_bready;
  assign s01_couplers_to_s01_regslice_RREADY = S_AXI_rready;
  assign s01_couplers_to_s01_regslice_WDATA = S_AXI_wdata[31:0];
  assign s01_couplers_to_s01_regslice_WLAST = S_AXI_wlast;
  assign s01_couplers_to_s01_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s01_couplers_to_s01_regslice_WVALID = S_AXI_wvalid;
  sys_top_auto_us_cc_df_1 auto_us_cc_df
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_us_cc_df_to_s01_couplers_ARADDR),
        .m_axi_arburst(auto_us_cc_df_to_s01_couplers_ARBURST),
        .m_axi_arcache(auto_us_cc_df_to_s01_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arlen(auto_us_cc_df_to_s01_couplers_ARLEN),
        .m_axi_arlock(auto_us_cc_df_to_s01_couplers_ARLOCK),
        .m_axi_arprot(auto_us_cc_df_to_s01_couplers_ARPROT),
        .m_axi_arqos(auto_us_cc_df_to_s01_couplers_ARQOS),
        .m_axi_arready(auto_us_cc_df_to_s01_couplers_ARREADY),
        .m_axi_arsize(auto_us_cc_df_to_s01_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_cc_df_to_s01_couplers_ARVALID),
        .m_axi_awaddr(auto_us_cc_df_to_s01_couplers_AWADDR),
        .m_axi_awburst(auto_us_cc_df_to_s01_couplers_AWBURST),
        .m_axi_awcache(auto_us_cc_df_to_s01_couplers_AWCACHE),
        .m_axi_awlen(auto_us_cc_df_to_s01_couplers_AWLEN),
        .m_axi_awlock(auto_us_cc_df_to_s01_couplers_AWLOCK),
        .m_axi_awprot(auto_us_cc_df_to_s01_couplers_AWPROT),
        .m_axi_awqos(auto_us_cc_df_to_s01_couplers_AWQOS),
        .m_axi_awready(auto_us_cc_df_to_s01_couplers_AWREADY),
        .m_axi_awsize(auto_us_cc_df_to_s01_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_cc_df_to_s01_couplers_AWVALID),
        .m_axi_bready(auto_us_cc_df_to_s01_couplers_BREADY),
        .m_axi_bresp(auto_us_cc_df_to_s01_couplers_BRESP),
        .m_axi_bvalid(auto_us_cc_df_to_s01_couplers_BVALID),
        .m_axi_rdata(auto_us_cc_df_to_s01_couplers_RDATA),
        .m_axi_rlast(auto_us_cc_df_to_s01_couplers_RLAST),
        .m_axi_rready(auto_us_cc_df_to_s01_couplers_RREADY),
        .m_axi_rresp(auto_us_cc_df_to_s01_couplers_RRESP),
        .m_axi_rvalid(auto_us_cc_df_to_s01_couplers_RVALID),
        .m_axi_wdata(auto_us_cc_df_to_s01_couplers_WDATA),
        .m_axi_wlast(auto_us_cc_df_to_s01_couplers_WLAST),
        .m_axi_wready(auto_us_cc_df_to_s01_couplers_WREADY),
        .m_axi_wstrb(auto_us_cc_df_to_s01_couplers_WSTRB),
        .m_axi_wvalid(auto_us_cc_df_to_s01_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s01_regslice_to_auto_us_cc_df_ARADDR),
        .s_axi_arburst(s01_regslice_to_auto_us_cc_df_ARBURST),
        .s_axi_arcache(s01_regslice_to_auto_us_cc_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s01_regslice_to_auto_us_cc_df_ARLEN),
        .s_axi_arlock(s01_regslice_to_auto_us_cc_df_ARLOCK),
        .s_axi_arprot(s01_regslice_to_auto_us_cc_df_ARPROT),
        .s_axi_arqos(s01_regslice_to_auto_us_cc_df_ARQOS),
        .s_axi_arready(s01_regslice_to_auto_us_cc_df_ARREADY),
        .s_axi_arregion(s01_regslice_to_auto_us_cc_df_ARREGION),
        .s_axi_arsize(s01_regslice_to_auto_us_cc_df_ARSIZE),
        .s_axi_arvalid(s01_regslice_to_auto_us_cc_df_ARVALID),
        .s_axi_awaddr(s01_regslice_to_auto_us_cc_df_AWADDR),
        .s_axi_awburst(s01_regslice_to_auto_us_cc_df_AWBURST),
        .s_axi_awcache(s01_regslice_to_auto_us_cc_df_AWCACHE),
        .s_axi_awlen(s01_regslice_to_auto_us_cc_df_AWLEN),
        .s_axi_awlock(s01_regslice_to_auto_us_cc_df_AWLOCK),
        .s_axi_awprot(s01_regslice_to_auto_us_cc_df_AWPROT),
        .s_axi_awqos(s01_regslice_to_auto_us_cc_df_AWQOS),
        .s_axi_awready(s01_regslice_to_auto_us_cc_df_AWREADY),
        .s_axi_awregion(s01_regslice_to_auto_us_cc_df_AWREGION),
        .s_axi_awsize(s01_regslice_to_auto_us_cc_df_AWSIZE),
        .s_axi_awvalid(s01_regslice_to_auto_us_cc_df_AWVALID),
        .s_axi_bready(s01_regslice_to_auto_us_cc_df_BREADY),
        .s_axi_bresp(s01_regslice_to_auto_us_cc_df_BRESP),
        .s_axi_bvalid(s01_regslice_to_auto_us_cc_df_BVALID),
        .s_axi_rdata(s01_regslice_to_auto_us_cc_df_RDATA),
        .s_axi_rlast(s01_regslice_to_auto_us_cc_df_RLAST),
        .s_axi_rready(s01_regslice_to_auto_us_cc_df_RREADY),
        .s_axi_rresp(s01_regslice_to_auto_us_cc_df_RRESP),
        .s_axi_rvalid(s01_regslice_to_auto_us_cc_df_RVALID),
        .s_axi_wdata(s01_regslice_to_auto_us_cc_df_WDATA),
        .s_axi_wlast(s01_regslice_to_auto_us_cc_df_WLAST),
        .s_axi_wready(s01_regslice_to_auto_us_cc_df_WREADY),
        .s_axi_wstrb(s01_regslice_to_auto_us_cc_df_WSTRB),
        .s_axi_wvalid(s01_regslice_to_auto_us_cc_df_WVALID));
  sys_top_s01_regslice_0 s01_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s01_regslice_to_auto_us_cc_df_ARADDR),
        .m_axi_arburst(s01_regslice_to_auto_us_cc_df_ARBURST),
        .m_axi_arcache(s01_regslice_to_auto_us_cc_df_ARCACHE),
        .m_axi_arlen(s01_regslice_to_auto_us_cc_df_ARLEN),
        .m_axi_arlock(s01_regslice_to_auto_us_cc_df_ARLOCK),
        .m_axi_arprot(s01_regslice_to_auto_us_cc_df_ARPROT),
        .m_axi_arqos(s01_regslice_to_auto_us_cc_df_ARQOS),
        .m_axi_arready(s01_regslice_to_auto_us_cc_df_ARREADY),
        .m_axi_arregion(s01_regslice_to_auto_us_cc_df_ARREGION),
        .m_axi_arsize(s01_regslice_to_auto_us_cc_df_ARSIZE),
        .m_axi_arvalid(s01_regslice_to_auto_us_cc_df_ARVALID),
        .m_axi_awaddr(s01_regslice_to_auto_us_cc_df_AWADDR),
        .m_axi_awburst(s01_regslice_to_auto_us_cc_df_AWBURST),
        .m_axi_awcache(s01_regslice_to_auto_us_cc_df_AWCACHE),
        .m_axi_awlen(s01_regslice_to_auto_us_cc_df_AWLEN),
        .m_axi_awlock(s01_regslice_to_auto_us_cc_df_AWLOCK),
        .m_axi_awprot(s01_regslice_to_auto_us_cc_df_AWPROT),
        .m_axi_awqos(s01_regslice_to_auto_us_cc_df_AWQOS),
        .m_axi_awready(s01_regslice_to_auto_us_cc_df_AWREADY),
        .m_axi_awregion(s01_regslice_to_auto_us_cc_df_AWREGION),
        .m_axi_awsize(s01_regslice_to_auto_us_cc_df_AWSIZE),
        .m_axi_awvalid(s01_regslice_to_auto_us_cc_df_AWVALID),
        .m_axi_bready(s01_regslice_to_auto_us_cc_df_BREADY),
        .m_axi_bresp(s01_regslice_to_auto_us_cc_df_BRESP),
        .m_axi_bvalid(s01_regslice_to_auto_us_cc_df_BVALID),
        .m_axi_rdata(s01_regslice_to_auto_us_cc_df_RDATA),
        .m_axi_rlast(s01_regslice_to_auto_us_cc_df_RLAST),
        .m_axi_rready(s01_regslice_to_auto_us_cc_df_RREADY),
        .m_axi_rresp(s01_regslice_to_auto_us_cc_df_RRESP),
        .m_axi_rvalid(s01_regslice_to_auto_us_cc_df_RVALID),
        .m_axi_wdata(s01_regslice_to_auto_us_cc_df_WDATA),
        .m_axi_wlast(s01_regslice_to_auto_us_cc_df_WLAST),
        .m_axi_wready(s01_regslice_to_auto_us_cc_df_WREADY),
        .m_axi_wstrb(s01_regslice_to_auto_us_cc_df_WSTRB),
        .m_axi_wvalid(s01_regslice_to_auto_us_cc_df_WVALID),
        .s_axi_araddr(s01_couplers_to_s01_regslice_ARADDR),
        .s_axi_arburst(s01_couplers_to_s01_regslice_ARBURST),
        .s_axi_arcache(s01_couplers_to_s01_regslice_ARCACHE),
        .s_axi_arlen(s01_couplers_to_s01_regslice_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s01_couplers_to_s01_regslice_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s01_couplers_to_s01_regslice_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s01_couplers_to_s01_regslice_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_s01_regslice_ARVALID),
        .s_axi_awaddr(s01_couplers_to_s01_regslice_AWADDR),
        .s_axi_awburst(s01_couplers_to_s01_regslice_AWBURST),
        .s_axi_awcache(s01_couplers_to_s01_regslice_AWCACHE),
        .s_axi_awlen(s01_couplers_to_s01_regslice_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s01_couplers_to_s01_regslice_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s01_couplers_to_s01_regslice_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s01_couplers_to_s01_regslice_AWSIZE),
        .s_axi_awvalid(s01_couplers_to_s01_regslice_AWVALID),
        .s_axi_bready(s01_couplers_to_s01_regslice_BREADY),
        .s_axi_bresp(s01_couplers_to_s01_regslice_BRESP),
        .s_axi_bvalid(s01_couplers_to_s01_regslice_BVALID),
        .s_axi_rdata(s01_couplers_to_s01_regslice_RDATA),
        .s_axi_rlast(s01_couplers_to_s01_regslice_RLAST),
        .s_axi_rready(s01_couplers_to_s01_regslice_RREADY),
        .s_axi_rresp(s01_couplers_to_s01_regslice_RRESP),
        .s_axi_rvalid(s01_couplers_to_s01_regslice_RVALID),
        .s_axi_wdata(s01_couplers_to_s01_regslice_WDATA),
        .s_axi_wlast(s01_couplers_to_s01_regslice_WLAST),
        .s_axi_wready(s01_couplers_to_s01_regslice_WREADY),
        .s_axi_wstrb(s01_couplers_to_s01_regslice_WSTRB),
        .s_axi_wvalid(s01_couplers_to_s01_regslice_WVALID));
endmodule

module s02_couplers_imp_18R3TZ7
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_cc_df_to_s02_couplers_ARADDR;
  wire [1:0]auto_us_cc_df_to_s02_couplers_ARBURST;
  wire [3:0]auto_us_cc_df_to_s02_couplers_ARCACHE;
  wire [7:0]auto_us_cc_df_to_s02_couplers_ARLEN;
  wire [0:0]auto_us_cc_df_to_s02_couplers_ARLOCK;
  wire [2:0]auto_us_cc_df_to_s02_couplers_ARPROT;
  wire [3:0]auto_us_cc_df_to_s02_couplers_ARQOS;
  wire auto_us_cc_df_to_s02_couplers_ARREADY;
  wire [2:0]auto_us_cc_df_to_s02_couplers_ARSIZE;
  wire auto_us_cc_df_to_s02_couplers_ARVALID;
  wire [31:0]auto_us_cc_df_to_s02_couplers_AWADDR;
  wire [1:0]auto_us_cc_df_to_s02_couplers_AWBURST;
  wire [3:0]auto_us_cc_df_to_s02_couplers_AWCACHE;
  wire [7:0]auto_us_cc_df_to_s02_couplers_AWLEN;
  wire [0:0]auto_us_cc_df_to_s02_couplers_AWLOCK;
  wire [2:0]auto_us_cc_df_to_s02_couplers_AWPROT;
  wire [3:0]auto_us_cc_df_to_s02_couplers_AWQOS;
  wire auto_us_cc_df_to_s02_couplers_AWREADY;
  wire [2:0]auto_us_cc_df_to_s02_couplers_AWSIZE;
  wire auto_us_cc_df_to_s02_couplers_AWVALID;
  wire auto_us_cc_df_to_s02_couplers_BREADY;
  wire [1:0]auto_us_cc_df_to_s02_couplers_BRESP;
  wire auto_us_cc_df_to_s02_couplers_BVALID;
  wire [63:0]auto_us_cc_df_to_s02_couplers_RDATA;
  wire auto_us_cc_df_to_s02_couplers_RLAST;
  wire auto_us_cc_df_to_s02_couplers_RREADY;
  wire [1:0]auto_us_cc_df_to_s02_couplers_RRESP;
  wire auto_us_cc_df_to_s02_couplers_RVALID;
  wire [63:0]auto_us_cc_df_to_s02_couplers_WDATA;
  wire auto_us_cc_df_to_s02_couplers_WLAST;
  wire auto_us_cc_df_to_s02_couplers_WREADY;
  wire [7:0]auto_us_cc_df_to_s02_couplers_WSTRB;
  wire auto_us_cc_df_to_s02_couplers_WVALID;
  wire [31:0]s02_couplers_to_s02_regslice_ARADDR;
  wire [1:0]s02_couplers_to_s02_regslice_ARBURST;
  wire [3:0]s02_couplers_to_s02_regslice_ARCACHE;
  wire [7:0]s02_couplers_to_s02_regslice_ARLEN;
  wire [2:0]s02_couplers_to_s02_regslice_ARPROT;
  wire s02_couplers_to_s02_regslice_ARREADY;
  wire [2:0]s02_couplers_to_s02_regslice_ARSIZE;
  wire s02_couplers_to_s02_regslice_ARVALID;
  wire [31:0]s02_couplers_to_s02_regslice_AWADDR;
  wire [1:0]s02_couplers_to_s02_regslice_AWBURST;
  wire [3:0]s02_couplers_to_s02_regslice_AWCACHE;
  wire [7:0]s02_couplers_to_s02_regslice_AWLEN;
  wire [2:0]s02_couplers_to_s02_regslice_AWPROT;
  wire s02_couplers_to_s02_regslice_AWREADY;
  wire [2:0]s02_couplers_to_s02_regslice_AWSIZE;
  wire s02_couplers_to_s02_regslice_AWVALID;
  wire s02_couplers_to_s02_regslice_BREADY;
  wire [1:0]s02_couplers_to_s02_regslice_BRESP;
  wire s02_couplers_to_s02_regslice_BVALID;
  wire [31:0]s02_couplers_to_s02_regslice_RDATA;
  wire s02_couplers_to_s02_regslice_RLAST;
  wire s02_couplers_to_s02_regslice_RREADY;
  wire [1:0]s02_couplers_to_s02_regslice_RRESP;
  wire s02_couplers_to_s02_regslice_RVALID;
  wire [31:0]s02_couplers_to_s02_regslice_WDATA;
  wire s02_couplers_to_s02_regslice_WLAST;
  wire s02_couplers_to_s02_regslice_WREADY;
  wire [3:0]s02_couplers_to_s02_regslice_WSTRB;
  wire s02_couplers_to_s02_regslice_WVALID;
  wire [31:0]s02_regslice_to_auto_us_cc_df_ARADDR;
  wire [1:0]s02_regslice_to_auto_us_cc_df_ARBURST;
  wire [3:0]s02_regslice_to_auto_us_cc_df_ARCACHE;
  wire [7:0]s02_regslice_to_auto_us_cc_df_ARLEN;
  wire [0:0]s02_regslice_to_auto_us_cc_df_ARLOCK;
  wire [2:0]s02_regslice_to_auto_us_cc_df_ARPROT;
  wire [3:0]s02_regslice_to_auto_us_cc_df_ARQOS;
  wire s02_regslice_to_auto_us_cc_df_ARREADY;
  wire [3:0]s02_regslice_to_auto_us_cc_df_ARREGION;
  wire [2:0]s02_regslice_to_auto_us_cc_df_ARSIZE;
  wire s02_regslice_to_auto_us_cc_df_ARVALID;
  wire [31:0]s02_regslice_to_auto_us_cc_df_AWADDR;
  wire [1:0]s02_regslice_to_auto_us_cc_df_AWBURST;
  wire [3:0]s02_regslice_to_auto_us_cc_df_AWCACHE;
  wire [7:0]s02_regslice_to_auto_us_cc_df_AWLEN;
  wire [0:0]s02_regslice_to_auto_us_cc_df_AWLOCK;
  wire [2:0]s02_regslice_to_auto_us_cc_df_AWPROT;
  wire [3:0]s02_regslice_to_auto_us_cc_df_AWQOS;
  wire s02_regslice_to_auto_us_cc_df_AWREADY;
  wire [3:0]s02_regslice_to_auto_us_cc_df_AWREGION;
  wire [2:0]s02_regslice_to_auto_us_cc_df_AWSIZE;
  wire s02_regslice_to_auto_us_cc_df_AWVALID;
  wire s02_regslice_to_auto_us_cc_df_BREADY;
  wire [1:0]s02_regslice_to_auto_us_cc_df_BRESP;
  wire s02_regslice_to_auto_us_cc_df_BVALID;
  wire [31:0]s02_regslice_to_auto_us_cc_df_RDATA;
  wire s02_regslice_to_auto_us_cc_df_RLAST;
  wire s02_regslice_to_auto_us_cc_df_RREADY;
  wire [1:0]s02_regslice_to_auto_us_cc_df_RRESP;
  wire s02_regslice_to_auto_us_cc_df_RVALID;
  wire [31:0]s02_regslice_to_auto_us_cc_df_WDATA;
  wire s02_regslice_to_auto_us_cc_df_WLAST;
  wire s02_regslice_to_auto_us_cc_df_WREADY;
  wire [3:0]s02_regslice_to_auto_us_cc_df_WSTRB;
  wire s02_regslice_to_auto_us_cc_df_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_us_cc_df_to_s02_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_cc_df_to_s02_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_cc_df_to_s02_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_cc_df_to_s02_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_cc_df_to_s02_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_cc_df_to_s02_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_cc_df_to_s02_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_cc_df_to_s02_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_cc_df_to_s02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_us_cc_df_to_s02_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_cc_df_to_s02_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_cc_df_to_s02_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_cc_df_to_s02_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_cc_df_to_s02_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_cc_df_to_s02_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_cc_df_to_s02_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_cc_df_to_s02_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_cc_df_to_s02_couplers_AWVALID;
  assign M_AXI_bready = auto_us_cc_df_to_s02_couplers_BREADY;
  assign M_AXI_rready = auto_us_cc_df_to_s02_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_us_cc_df_to_s02_couplers_WDATA;
  assign M_AXI_wlast = auto_us_cc_df_to_s02_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_us_cc_df_to_s02_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_cc_df_to_s02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s02_couplers_to_s02_regslice_ARREADY;
  assign S_AXI_awready = s02_couplers_to_s02_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s02_couplers_to_s02_regslice_BRESP;
  assign S_AXI_bvalid = s02_couplers_to_s02_regslice_BVALID;
  assign S_AXI_rdata[31:0] = s02_couplers_to_s02_regslice_RDATA;
  assign S_AXI_rlast = s02_couplers_to_s02_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s02_couplers_to_s02_regslice_RRESP;
  assign S_AXI_rvalid = s02_couplers_to_s02_regslice_RVALID;
  assign S_AXI_wready = s02_couplers_to_s02_regslice_WREADY;
  assign auto_us_cc_df_to_s02_couplers_ARREADY = M_AXI_arready;
  assign auto_us_cc_df_to_s02_couplers_AWREADY = M_AXI_awready;
  assign auto_us_cc_df_to_s02_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_cc_df_to_s02_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_cc_df_to_s02_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_us_cc_df_to_s02_couplers_RLAST = M_AXI_rlast;
  assign auto_us_cc_df_to_s02_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_cc_df_to_s02_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_cc_df_to_s02_couplers_WREADY = M_AXI_wready;
  assign s02_couplers_to_s02_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s02_couplers_to_s02_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s02_couplers_to_s02_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s02_couplers_to_s02_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s02_couplers_to_s02_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s02_couplers_to_s02_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s02_couplers_to_s02_regslice_ARVALID = S_AXI_arvalid;
  assign s02_couplers_to_s02_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s02_couplers_to_s02_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s02_couplers_to_s02_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s02_couplers_to_s02_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s02_couplers_to_s02_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s02_couplers_to_s02_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s02_couplers_to_s02_regslice_AWVALID = S_AXI_awvalid;
  assign s02_couplers_to_s02_regslice_BREADY = S_AXI_bready;
  assign s02_couplers_to_s02_regslice_RREADY = S_AXI_rready;
  assign s02_couplers_to_s02_regslice_WDATA = S_AXI_wdata[31:0];
  assign s02_couplers_to_s02_regslice_WLAST = S_AXI_wlast;
  assign s02_couplers_to_s02_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s02_couplers_to_s02_regslice_WVALID = S_AXI_wvalid;
  sys_top_auto_us_cc_df_2 auto_us_cc_df
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_us_cc_df_to_s02_couplers_ARADDR),
        .m_axi_arburst(auto_us_cc_df_to_s02_couplers_ARBURST),
        .m_axi_arcache(auto_us_cc_df_to_s02_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arlen(auto_us_cc_df_to_s02_couplers_ARLEN),
        .m_axi_arlock(auto_us_cc_df_to_s02_couplers_ARLOCK),
        .m_axi_arprot(auto_us_cc_df_to_s02_couplers_ARPROT),
        .m_axi_arqos(auto_us_cc_df_to_s02_couplers_ARQOS),
        .m_axi_arready(auto_us_cc_df_to_s02_couplers_ARREADY),
        .m_axi_arsize(auto_us_cc_df_to_s02_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_cc_df_to_s02_couplers_ARVALID),
        .m_axi_awaddr(auto_us_cc_df_to_s02_couplers_AWADDR),
        .m_axi_awburst(auto_us_cc_df_to_s02_couplers_AWBURST),
        .m_axi_awcache(auto_us_cc_df_to_s02_couplers_AWCACHE),
        .m_axi_awlen(auto_us_cc_df_to_s02_couplers_AWLEN),
        .m_axi_awlock(auto_us_cc_df_to_s02_couplers_AWLOCK),
        .m_axi_awprot(auto_us_cc_df_to_s02_couplers_AWPROT),
        .m_axi_awqos(auto_us_cc_df_to_s02_couplers_AWQOS),
        .m_axi_awready(auto_us_cc_df_to_s02_couplers_AWREADY),
        .m_axi_awsize(auto_us_cc_df_to_s02_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_cc_df_to_s02_couplers_AWVALID),
        .m_axi_bready(auto_us_cc_df_to_s02_couplers_BREADY),
        .m_axi_bresp(auto_us_cc_df_to_s02_couplers_BRESP),
        .m_axi_bvalid(auto_us_cc_df_to_s02_couplers_BVALID),
        .m_axi_rdata(auto_us_cc_df_to_s02_couplers_RDATA),
        .m_axi_rlast(auto_us_cc_df_to_s02_couplers_RLAST),
        .m_axi_rready(auto_us_cc_df_to_s02_couplers_RREADY),
        .m_axi_rresp(auto_us_cc_df_to_s02_couplers_RRESP),
        .m_axi_rvalid(auto_us_cc_df_to_s02_couplers_RVALID),
        .m_axi_wdata(auto_us_cc_df_to_s02_couplers_WDATA),
        .m_axi_wlast(auto_us_cc_df_to_s02_couplers_WLAST),
        .m_axi_wready(auto_us_cc_df_to_s02_couplers_WREADY),
        .m_axi_wstrb(auto_us_cc_df_to_s02_couplers_WSTRB),
        .m_axi_wvalid(auto_us_cc_df_to_s02_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s02_regslice_to_auto_us_cc_df_ARADDR),
        .s_axi_arburst(s02_regslice_to_auto_us_cc_df_ARBURST),
        .s_axi_arcache(s02_regslice_to_auto_us_cc_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s02_regslice_to_auto_us_cc_df_ARLEN),
        .s_axi_arlock(s02_regslice_to_auto_us_cc_df_ARLOCK),
        .s_axi_arprot(s02_regslice_to_auto_us_cc_df_ARPROT),
        .s_axi_arqos(s02_regslice_to_auto_us_cc_df_ARQOS),
        .s_axi_arready(s02_regslice_to_auto_us_cc_df_ARREADY),
        .s_axi_arregion(s02_regslice_to_auto_us_cc_df_ARREGION),
        .s_axi_arsize(s02_regslice_to_auto_us_cc_df_ARSIZE),
        .s_axi_arvalid(s02_regslice_to_auto_us_cc_df_ARVALID),
        .s_axi_awaddr(s02_regslice_to_auto_us_cc_df_AWADDR),
        .s_axi_awburst(s02_regslice_to_auto_us_cc_df_AWBURST),
        .s_axi_awcache(s02_regslice_to_auto_us_cc_df_AWCACHE),
        .s_axi_awlen(s02_regslice_to_auto_us_cc_df_AWLEN),
        .s_axi_awlock(s02_regslice_to_auto_us_cc_df_AWLOCK),
        .s_axi_awprot(s02_regslice_to_auto_us_cc_df_AWPROT),
        .s_axi_awqos(s02_regslice_to_auto_us_cc_df_AWQOS),
        .s_axi_awready(s02_regslice_to_auto_us_cc_df_AWREADY),
        .s_axi_awregion(s02_regslice_to_auto_us_cc_df_AWREGION),
        .s_axi_awsize(s02_regslice_to_auto_us_cc_df_AWSIZE),
        .s_axi_awvalid(s02_regslice_to_auto_us_cc_df_AWVALID),
        .s_axi_bready(s02_regslice_to_auto_us_cc_df_BREADY),
        .s_axi_bresp(s02_regslice_to_auto_us_cc_df_BRESP),
        .s_axi_bvalid(s02_regslice_to_auto_us_cc_df_BVALID),
        .s_axi_rdata(s02_regslice_to_auto_us_cc_df_RDATA),
        .s_axi_rlast(s02_regslice_to_auto_us_cc_df_RLAST),
        .s_axi_rready(s02_regslice_to_auto_us_cc_df_RREADY),
        .s_axi_rresp(s02_regslice_to_auto_us_cc_df_RRESP),
        .s_axi_rvalid(s02_regslice_to_auto_us_cc_df_RVALID),
        .s_axi_wdata(s02_regslice_to_auto_us_cc_df_WDATA),
        .s_axi_wlast(s02_regslice_to_auto_us_cc_df_WLAST),
        .s_axi_wready(s02_regslice_to_auto_us_cc_df_WREADY),
        .s_axi_wstrb(s02_regslice_to_auto_us_cc_df_WSTRB),
        .s_axi_wvalid(s02_regslice_to_auto_us_cc_df_WVALID));
  sys_top_s02_regslice_0 s02_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s02_regslice_to_auto_us_cc_df_ARADDR),
        .m_axi_arburst(s02_regslice_to_auto_us_cc_df_ARBURST),
        .m_axi_arcache(s02_regslice_to_auto_us_cc_df_ARCACHE),
        .m_axi_arlen(s02_regslice_to_auto_us_cc_df_ARLEN),
        .m_axi_arlock(s02_regslice_to_auto_us_cc_df_ARLOCK),
        .m_axi_arprot(s02_regslice_to_auto_us_cc_df_ARPROT),
        .m_axi_arqos(s02_regslice_to_auto_us_cc_df_ARQOS),
        .m_axi_arready(s02_regslice_to_auto_us_cc_df_ARREADY),
        .m_axi_arregion(s02_regslice_to_auto_us_cc_df_ARREGION),
        .m_axi_arsize(s02_regslice_to_auto_us_cc_df_ARSIZE),
        .m_axi_arvalid(s02_regslice_to_auto_us_cc_df_ARVALID),
        .m_axi_awaddr(s02_regslice_to_auto_us_cc_df_AWADDR),
        .m_axi_awburst(s02_regslice_to_auto_us_cc_df_AWBURST),
        .m_axi_awcache(s02_regslice_to_auto_us_cc_df_AWCACHE),
        .m_axi_awlen(s02_regslice_to_auto_us_cc_df_AWLEN),
        .m_axi_awlock(s02_regslice_to_auto_us_cc_df_AWLOCK),
        .m_axi_awprot(s02_regslice_to_auto_us_cc_df_AWPROT),
        .m_axi_awqos(s02_regslice_to_auto_us_cc_df_AWQOS),
        .m_axi_awready(s02_regslice_to_auto_us_cc_df_AWREADY),
        .m_axi_awregion(s02_regslice_to_auto_us_cc_df_AWREGION),
        .m_axi_awsize(s02_regslice_to_auto_us_cc_df_AWSIZE),
        .m_axi_awvalid(s02_regslice_to_auto_us_cc_df_AWVALID),
        .m_axi_bready(s02_regslice_to_auto_us_cc_df_BREADY),
        .m_axi_bresp(s02_regslice_to_auto_us_cc_df_BRESP),
        .m_axi_bvalid(s02_regslice_to_auto_us_cc_df_BVALID),
        .m_axi_rdata(s02_regslice_to_auto_us_cc_df_RDATA),
        .m_axi_rlast(s02_regslice_to_auto_us_cc_df_RLAST),
        .m_axi_rready(s02_regslice_to_auto_us_cc_df_RREADY),
        .m_axi_rresp(s02_regslice_to_auto_us_cc_df_RRESP),
        .m_axi_rvalid(s02_regslice_to_auto_us_cc_df_RVALID),
        .m_axi_wdata(s02_regslice_to_auto_us_cc_df_WDATA),
        .m_axi_wlast(s02_regslice_to_auto_us_cc_df_WLAST),
        .m_axi_wready(s02_regslice_to_auto_us_cc_df_WREADY),
        .m_axi_wstrb(s02_regslice_to_auto_us_cc_df_WSTRB),
        .m_axi_wvalid(s02_regslice_to_auto_us_cc_df_WVALID),
        .s_axi_araddr(s02_couplers_to_s02_regslice_ARADDR),
        .s_axi_arburst(s02_couplers_to_s02_regslice_ARBURST),
        .s_axi_arcache(s02_couplers_to_s02_regslice_ARCACHE),
        .s_axi_arlen(s02_couplers_to_s02_regslice_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s02_couplers_to_s02_regslice_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s02_couplers_to_s02_regslice_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s02_couplers_to_s02_regslice_ARSIZE),
        .s_axi_arvalid(s02_couplers_to_s02_regslice_ARVALID),
        .s_axi_awaddr(s02_couplers_to_s02_regslice_AWADDR),
        .s_axi_awburst(s02_couplers_to_s02_regslice_AWBURST),
        .s_axi_awcache(s02_couplers_to_s02_regslice_AWCACHE),
        .s_axi_awlen(s02_couplers_to_s02_regslice_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s02_couplers_to_s02_regslice_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s02_couplers_to_s02_regslice_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s02_couplers_to_s02_regslice_AWSIZE),
        .s_axi_awvalid(s02_couplers_to_s02_regslice_AWVALID),
        .s_axi_bready(s02_couplers_to_s02_regslice_BREADY),
        .s_axi_bresp(s02_couplers_to_s02_regslice_BRESP),
        .s_axi_bvalid(s02_couplers_to_s02_regslice_BVALID),
        .s_axi_rdata(s02_couplers_to_s02_regslice_RDATA),
        .s_axi_rlast(s02_couplers_to_s02_regslice_RLAST),
        .s_axi_rready(s02_couplers_to_s02_regslice_RREADY),
        .s_axi_rresp(s02_couplers_to_s02_regslice_RRESP),
        .s_axi_rvalid(s02_couplers_to_s02_regslice_RVALID),
        .s_axi_wdata(s02_couplers_to_s02_regslice_WDATA),
        .s_axi_wlast(s02_couplers_to_s02_regslice_WLAST),
        .s_axi_wready(s02_couplers_to_s02_regslice_WREADY),
        .s_axi_wstrb(s02_couplers_to_s02_regslice_WSTRB),
        .s_axi_wvalid(s02_couplers_to_s02_regslice_WVALID));
endmodule

module s03_couplers_imp_ASSBSW
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_cc_df_to_s03_couplers_ARADDR;
  wire [1:0]auto_us_cc_df_to_s03_couplers_ARBURST;
  wire [3:0]auto_us_cc_df_to_s03_couplers_ARCACHE;
  wire [7:0]auto_us_cc_df_to_s03_couplers_ARLEN;
  wire [0:0]auto_us_cc_df_to_s03_couplers_ARLOCK;
  wire [2:0]auto_us_cc_df_to_s03_couplers_ARPROT;
  wire [3:0]auto_us_cc_df_to_s03_couplers_ARQOS;
  wire auto_us_cc_df_to_s03_couplers_ARREADY;
  wire [2:0]auto_us_cc_df_to_s03_couplers_ARSIZE;
  wire auto_us_cc_df_to_s03_couplers_ARVALID;
  wire [31:0]auto_us_cc_df_to_s03_couplers_AWADDR;
  wire [1:0]auto_us_cc_df_to_s03_couplers_AWBURST;
  wire [3:0]auto_us_cc_df_to_s03_couplers_AWCACHE;
  wire [7:0]auto_us_cc_df_to_s03_couplers_AWLEN;
  wire [0:0]auto_us_cc_df_to_s03_couplers_AWLOCK;
  wire [2:0]auto_us_cc_df_to_s03_couplers_AWPROT;
  wire [3:0]auto_us_cc_df_to_s03_couplers_AWQOS;
  wire auto_us_cc_df_to_s03_couplers_AWREADY;
  wire [2:0]auto_us_cc_df_to_s03_couplers_AWSIZE;
  wire auto_us_cc_df_to_s03_couplers_AWVALID;
  wire auto_us_cc_df_to_s03_couplers_BREADY;
  wire [1:0]auto_us_cc_df_to_s03_couplers_BRESP;
  wire auto_us_cc_df_to_s03_couplers_BVALID;
  wire [63:0]auto_us_cc_df_to_s03_couplers_RDATA;
  wire auto_us_cc_df_to_s03_couplers_RLAST;
  wire auto_us_cc_df_to_s03_couplers_RREADY;
  wire [1:0]auto_us_cc_df_to_s03_couplers_RRESP;
  wire auto_us_cc_df_to_s03_couplers_RVALID;
  wire [63:0]auto_us_cc_df_to_s03_couplers_WDATA;
  wire auto_us_cc_df_to_s03_couplers_WLAST;
  wire auto_us_cc_df_to_s03_couplers_WREADY;
  wire [7:0]auto_us_cc_df_to_s03_couplers_WSTRB;
  wire auto_us_cc_df_to_s03_couplers_WVALID;
  wire [31:0]s03_couplers_to_s03_regslice_ARADDR;
  wire [1:0]s03_couplers_to_s03_regslice_ARBURST;
  wire [3:0]s03_couplers_to_s03_regslice_ARCACHE;
  wire [7:0]s03_couplers_to_s03_regslice_ARLEN;
  wire [2:0]s03_couplers_to_s03_regslice_ARPROT;
  wire s03_couplers_to_s03_regslice_ARREADY;
  wire [2:0]s03_couplers_to_s03_regslice_ARSIZE;
  wire s03_couplers_to_s03_regslice_ARVALID;
  wire [31:0]s03_couplers_to_s03_regslice_AWADDR;
  wire [1:0]s03_couplers_to_s03_regslice_AWBURST;
  wire [3:0]s03_couplers_to_s03_regslice_AWCACHE;
  wire [7:0]s03_couplers_to_s03_regslice_AWLEN;
  wire [2:0]s03_couplers_to_s03_regslice_AWPROT;
  wire s03_couplers_to_s03_regslice_AWREADY;
  wire [2:0]s03_couplers_to_s03_regslice_AWSIZE;
  wire s03_couplers_to_s03_regslice_AWVALID;
  wire s03_couplers_to_s03_regslice_BREADY;
  wire [1:0]s03_couplers_to_s03_regslice_BRESP;
  wire s03_couplers_to_s03_regslice_BVALID;
  wire [31:0]s03_couplers_to_s03_regslice_RDATA;
  wire s03_couplers_to_s03_regslice_RLAST;
  wire s03_couplers_to_s03_regslice_RREADY;
  wire [1:0]s03_couplers_to_s03_regslice_RRESP;
  wire s03_couplers_to_s03_regslice_RVALID;
  wire [31:0]s03_couplers_to_s03_regslice_WDATA;
  wire s03_couplers_to_s03_regslice_WLAST;
  wire s03_couplers_to_s03_regslice_WREADY;
  wire [3:0]s03_couplers_to_s03_regslice_WSTRB;
  wire s03_couplers_to_s03_regslice_WVALID;
  wire [31:0]s03_regslice_to_auto_us_cc_df_ARADDR;
  wire [1:0]s03_regslice_to_auto_us_cc_df_ARBURST;
  wire [3:0]s03_regslice_to_auto_us_cc_df_ARCACHE;
  wire [7:0]s03_regslice_to_auto_us_cc_df_ARLEN;
  wire [0:0]s03_regslice_to_auto_us_cc_df_ARLOCK;
  wire [2:0]s03_regslice_to_auto_us_cc_df_ARPROT;
  wire [3:0]s03_regslice_to_auto_us_cc_df_ARQOS;
  wire s03_regslice_to_auto_us_cc_df_ARREADY;
  wire [3:0]s03_regslice_to_auto_us_cc_df_ARREGION;
  wire [2:0]s03_regslice_to_auto_us_cc_df_ARSIZE;
  wire s03_regslice_to_auto_us_cc_df_ARVALID;
  wire [31:0]s03_regslice_to_auto_us_cc_df_AWADDR;
  wire [1:0]s03_regslice_to_auto_us_cc_df_AWBURST;
  wire [3:0]s03_regslice_to_auto_us_cc_df_AWCACHE;
  wire [7:0]s03_regslice_to_auto_us_cc_df_AWLEN;
  wire [0:0]s03_regslice_to_auto_us_cc_df_AWLOCK;
  wire [2:0]s03_regslice_to_auto_us_cc_df_AWPROT;
  wire [3:0]s03_regslice_to_auto_us_cc_df_AWQOS;
  wire s03_regslice_to_auto_us_cc_df_AWREADY;
  wire [3:0]s03_regslice_to_auto_us_cc_df_AWREGION;
  wire [2:0]s03_regslice_to_auto_us_cc_df_AWSIZE;
  wire s03_regslice_to_auto_us_cc_df_AWVALID;
  wire s03_regslice_to_auto_us_cc_df_BREADY;
  wire [1:0]s03_regslice_to_auto_us_cc_df_BRESP;
  wire s03_regslice_to_auto_us_cc_df_BVALID;
  wire [31:0]s03_regslice_to_auto_us_cc_df_RDATA;
  wire s03_regslice_to_auto_us_cc_df_RLAST;
  wire s03_regslice_to_auto_us_cc_df_RREADY;
  wire [1:0]s03_regslice_to_auto_us_cc_df_RRESP;
  wire s03_regslice_to_auto_us_cc_df_RVALID;
  wire [31:0]s03_regslice_to_auto_us_cc_df_WDATA;
  wire s03_regslice_to_auto_us_cc_df_WLAST;
  wire s03_regslice_to_auto_us_cc_df_WREADY;
  wire [3:0]s03_regslice_to_auto_us_cc_df_WSTRB;
  wire s03_regslice_to_auto_us_cc_df_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_us_cc_df_to_s03_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_cc_df_to_s03_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_cc_df_to_s03_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_cc_df_to_s03_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_cc_df_to_s03_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_cc_df_to_s03_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_cc_df_to_s03_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_cc_df_to_s03_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_cc_df_to_s03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_us_cc_df_to_s03_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_cc_df_to_s03_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_cc_df_to_s03_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_cc_df_to_s03_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_cc_df_to_s03_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_cc_df_to_s03_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_cc_df_to_s03_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_cc_df_to_s03_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_cc_df_to_s03_couplers_AWVALID;
  assign M_AXI_bready = auto_us_cc_df_to_s03_couplers_BREADY;
  assign M_AXI_rready = auto_us_cc_df_to_s03_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_us_cc_df_to_s03_couplers_WDATA;
  assign M_AXI_wlast = auto_us_cc_df_to_s03_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_us_cc_df_to_s03_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_cc_df_to_s03_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s03_couplers_to_s03_regslice_ARREADY;
  assign S_AXI_awready = s03_couplers_to_s03_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s03_couplers_to_s03_regslice_BRESP;
  assign S_AXI_bvalid = s03_couplers_to_s03_regslice_BVALID;
  assign S_AXI_rdata[31:0] = s03_couplers_to_s03_regslice_RDATA;
  assign S_AXI_rlast = s03_couplers_to_s03_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s03_couplers_to_s03_regslice_RRESP;
  assign S_AXI_rvalid = s03_couplers_to_s03_regslice_RVALID;
  assign S_AXI_wready = s03_couplers_to_s03_regslice_WREADY;
  assign auto_us_cc_df_to_s03_couplers_ARREADY = M_AXI_arready;
  assign auto_us_cc_df_to_s03_couplers_AWREADY = M_AXI_awready;
  assign auto_us_cc_df_to_s03_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_cc_df_to_s03_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_cc_df_to_s03_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_us_cc_df_to_s03_couplers_RLAST = M_AXI_rlast;
  assign auto_us_cc_df_to_s03_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_cc_df_to_s03_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_cc_df_to_s03_couplers_WREADY = M_AXI_wready;
  assign s03_couplers_to_s03_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s03_couplers_to_s03_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s03_couplers_to_s03_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s03_couplers_to_s03_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s03_couplers_to_s03_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s03_couplers_to_s03_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s03_couplers_to_s03_regslice_ARVALID = S_AXI_arvalid;
  assign s03_couplers_to_s03_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s03_couplers_to_s03_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s03_couplers_to_s03_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s03_couplers_to_s03_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s03_couplers_to_s03_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s03_couplers_to_s03_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s03_couplers_to_s03_regslice_AWVALID = S_AXI_awvalid;
  assign s03_couplers_to_s03_regslice_BREADY = S_AXI_bready;
  assign s03_couplers_to_s03_regslice_RREADY = S_AXI_rready;
  assign s03_couplers_to_s03_regslice_WDATA = S_AXI_wdata[31:0];
  assign s03_couplers_to_s03_regslice_WLAST = S_AXI_wlast;
  assign s03_couplers_to_s03_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s03_couplers_to_s03_regslice_WVALID = S_AXI_wvalid;
  sys_top_auto_us_cc_df_3 auto_us_cc_df
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_us_cc_df_to_s03_couplers_ARADDR),
        .m_axi_arburst(auto_us_cc_df_to_s03_couplers_ARBURST),
        .m_axi_arcache(auto_us_cc_df_to_s03_couplers_ARCACHE),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arlen(auto_us_cc_df_to_s03_couplers_ARLEN),
        .m_axi_arlock(auto_us_cc_df_to_s03_couplers_ARLOCK),
        .m_axi_arprot(auto_us_cc_df_to_s03_couplers_ARPROT),
        .m_axi_arqos(auto_us_cc_df_to_s03_couplers_ARQOS),
        .m_axi_arready(auto_us_cc_df_to_s03_couplers_ARREADY),
        .m_axi_arsize(auto_us_cc_df_to_s03_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_cc_df_to_s03_couplers_ARVALID),
        .m_axi_awaddr(auto_us_cc_df_to_s03_couplers_AWADDR),
        .m_axi_awburst(auto_us_cc_df_to_s03_couplers_AWBURST),
        .m_axi_awcache(auto_us_cc_df_to_s03_couplers_AWCACHE),
        .m_axi_awlen(auto_us_cc_df_to_s03_couplers_AWLEN),
        .m_axi_awlock(auto_us_cc_df_to_s03_couplers_AWLOCK),
        .m_axi_awprot(auto_us_cc_df_to_s03_couplers_AWPROT),
        .m_axi_awqos(auto_us_cc_df_to_s03_couplers_AWQOS),
        .m_axi_awready(auto_us_cc_df_to_s03_couplers_AWREADY),
        .m_axi_awsize(auto_us_cc_df_to_s03_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_cc_df_to_s03_couplers_AWVALID),
        .m_axi_bready(auto_us_cc_df_to_s03_couplers_BREADY),
        .m_axi_bresp(auto_us_cc_df_to_s03_couplers_BRESP),
        .m_axi_bvalid(auto_us_cc_df_to_s03_couplers_BVALID),
        .m_axi_rdata(auto_us_cc_df_to_s03_couplers_RDATA),
        .m_axi_rlast(auto_us_cc_df_to_s03_couplers_RLAST),
        .m_axi_rready(auto_us_cc_df_to_s03_couplers_RREADY),
        .m_axi_rresp(auto_us_cc_df_to_s03_couplers_RRESP),
        .m_axi_rvalid(auto_us_cc_df_to_s03_couplers_RVALID),
        .m_axi_wdata(auto_us_cc_df_to_s03_couplers_WDATA),
        .m_axi_wlast(auto_us_cc_df_to_s03_couplers_WLAST),
        .m_axi_wready(auto_us_cc_df_to_s03_couplers_WREADY),
        .m_axi_wstrb(auto_us_cc_df_to_s03_couplers_WSTRB),
        .m_axi_wvalid(auto_us_cc_df_to_s03_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s03_regslice_to_auto_us_cc_df_ARADDR),
        .s_axi_arburst(s03_regslice_to_auto_us_cc_df_ARBURST),
        .s_axi_arcache(s03_regslice_to_auto_us_cc_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s03_regslice_to_auto_us_cc_df_ARLEN),
        .s_axi_arlock(s03_regslice_to_auto_us_cc_df_ARLOCK),
        .s_axi_arprot(s03_regslice_to_auto_us_cc_df_ARPROT),
        .s_axi_arqos(s03_regslice_to_auto_us_cc_df_ARQOS),
        .s_axi_arready(s03_regslice_to_auto_us_cc_df_ARREADY),
        .s_axi_arregion(s03_regslice_to_auto_us_cc_df_ARREGION),
        .s_axi_arsize(s03_regslice_to_auto_us_cc_df_ARSIZE),
        .s_axi_arvalid(s03_regslice_to_auto_us_cc_df_ARVALID),
        .s_axi_awaddr(s03_regslice_to_auto_us_cc_df_AWADDR),
        .s_axi_awburst(s03_regslice_to_auto_us_cc_df_AWBURST),
        .s_axi_awcache(s03_regslice_to_auto_us_cc_df_AWCACHE),
        .s_axi_awlen(s03_regslice_to_auto_us_cc_df_AWLEN),
        .s_axi_awlock(s03_regslice_to_auto_us_cc_df_AWLOCK),
        .s_axi_awprot(s03_regslice_to_auto_us_cc_df_AWPROT),
        .s_axi_awqos(s03_regslice_to_auto_us_cc_df_AWQOS),
        .s_axi_awready(s03_regslice_to_auto_us_cc_df_AWREADY),
        .s_axi_awregion(s03_regslice_to_auto_us_cc_df_AWREGION),
        .s_axi_awsize(s03_regslice_to_auto_us_cc_df_AWSIZE),
        .s_axi_awvalid(s03_regslice_to_auto_us_cc_df_AWVALID),
        .s_axi_bready(s03_regslice_to_auto_us_cc_df_BREADY),
        .s_axi_bresp(s03_regslice_to_auto_us_cc_df_BRESP),
        .s_axi_bvalid(s03_regslice_to_auto_us_cc_df_BVALID),
        .s_axi_rdata(s03_regslice_to_auto_us_cc_df_RDATA),
        .s_axi_rlast(s03_regslice_to_auto_us_cc_df_RLAST),
        .s_axi_rready(s03_regslice_to_auto_us_cc_df_RREADY),
        .s_axi_rresp(s03_regslice_to_auto_us_cc_df_RRESP),
        .s_axi_rvalid(s03_regslice_to_auto_us_cc_df_RVALID),
        .s_axi_wdata(s03_regslice_to_auto_us_cc_df_WDATA),
        .s_axi_wlast(s03_regslice_to_auto_us_cc_df_WLAST),
        .s_axi_wready(s03_regslice_to_auto_us_cc_df_WREADY),
        .s_axi_wstrb(s03_regslice_to_auto_us_cc_df_WSTRB),
        .s_axi_wvalid(s03_regslice_to_auto_us_cc_df_WVALID));
  sys_top_s03_regslice_0 s03_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s03_regslice_to_auto_us_cc_df_ARADDR),
        .m_axi_arburst(s03_regslice_to_auto_us_cc_df_ARBURST),
        .m_axi_arcache(s03_regslice_to_auto_us_cc_df_ARCACHE),
        .m_axi_arlen(s03_regslice_to_auto_us_cc_df_ARLEN),
        .m_axi_arlock(s03_regslice_to_auto_us_cc_df_ARLOCK),
        .m_axi_arprot(s03_regslice_to_auto_us_cc_df_ARPROT),
        .m_axi_arqos(s03_regslice_to_auto_us_cc_df_ARQOS),
        .m_axi_arready(s03_regslice_to_auto_us_cc_df_ARREADY),
        .m_axi_arregion(s03_regslice_to_auto_us_cc_df_ARREGION),
        .m_axi_arsize(s03_regslice_to_auto_us_cc_df_ARSIZE),
        .m_axi_arvalid(s03_regslice_to_auto_us_cc_df_ARVALID),
        .m_axi_awaddr(s03_regslice_to_auto_us_cc_df_AWADDR),
        .m_axi_awburst(s03_regslice_to_auto_us_cc_df_AWBURST),
        .m_axi_awcache(s03_regslice_to_auto_us_cc_df_AWCACHE),
        .m_axi_awlen(s03_regslice_to_auto_us_cc_df_AWLEN),
        .m_axi_awlock(s03_regslice_to_auto_us_cc_df_AWLOCK),
        .m_axi_awprot(s03_regslice_to_auto_us_cc_df_AWPROT),
        .m_axi_awqos(s03_regslice_to_auto_us_cc_df_AWQOS),
        .m_axi_awready(s03_regslice_to_auto_us_cc_df_AWREADY),
        .m_axi_awregion(s03_regslice_to_auto_us_cc_df_AWREGION),
        .m_axi_awsize(s03_regslice_to_auto_us_cc_df_AWSIZE),
        .m_axi_awvalid(s03_regslice_to_auto_us_cc_df_AWVALID),
        .m_axi_bready(s03_regslice_to_auto_us_cc_df_BREADY),
        .m_axi_bresp(s03_regslice_to_auto_us_cc_df_BRESP),
        .m_axi_bvalid(s03_regslice_to_auto_us_cc_df_BVALID),
        .m_axi_rdata(s03_regslice_to_auto_us_cc_df_RDATA),
        .m_axi_rlast(s03_regslice_to_auto_us_cc_df_RLAST),
        .m_axi_rready(s03_regslice_to_auto_us_cc_df_RREADY),
        .m_axi_rresp(s03_regslice_to_auto_us_cc_df_RRESP),
        .m_axi_rvalid(s03_regslice_to_auto_us_cc_df_RVALID),
        .m_axi_wdata(s03_regslice_to_auto_us_cc_df_WDATA),
        .m_axi_wlast(s03_regslice_to_auto_us_cc_df_WLAST),
        .m_axi_wready(s03_regslice_to_auto_us_cc_df_WREADY),
        .m_axi_wstrb(s03_regslice_to_auto_us_cc_df_WSTRB),
        .m_axi_wvalid(s03_regslice_to_auto_us_cc_df_WVALID),
        .s_axi_araddr(s03_couplers_to_s03_regslice_ARADDR),
        .s_axi_arburst(s03_couplers_to_s03_regslice_ARBURST),
        .s_axi_arcache(s03_couplers_to_s03_regslice_ARCACHE),
        .s_axi_arlen(s03_couplers_to_s03_regslice_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s03_couplers_to_s03_regslice_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s03_couplers_to_s03_regslice_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s03_couplers_to_s03_regslice_ARSIZE),
        .s_axi_arvalid(s03_couplers_to_s03_regslice_ARVALID),
        .s_axi_awaddr(s03_couplers_to_s03_regslice_AWADDR),
        .s_axi_awburst(s03_couplers_to_s03_regslice_AWBURST),
        .s_axi_awcache(s03_couplers_to_s03_regslice_AWCACHE),
        .s_axi_awlen(s03_couplers_to_s03_regslice_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s03_couplers_to_s03_regslice_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s03_couplers_to_s03_regslice_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s03_couplers_to_s03_regslice_AWSIZE),
        .s_axi_awvalid(s03_couplers_to_s03_regslice_AWVALID),
        .s_axi_bready(s03_couplers_to_s03_regslice_BREADY),
        .s_axi_bresp(s03_couplers_to_s03_regslice_BRESP),
        .s_axi_bvalid(s03_couplers_to_s03_regslice_BVALID),
        .s_axi_rdata(s03_couplers_to_s03_regslice_RDATA),
        .s_axi_rlast(s03_couplers_to_s03_regslice_RLAST),
        .s_axi_rready(s03_couplers_to_s03_regslice_RREADY),
        .s_axi_rresp(s03_couplers_to_s03_regslice_RRESP),
        .s_axi_rvalid(s03_couplers_to_s03_regslice_RVALID),
        .s_axi_wdata(s03_couplers_to_s03_regslice_WDATA),
        .s_axi_wlast(s03_couplers_to_s03_regslice_WLAST),
        .s_axi_wready(s03_couplers_to_s03_regslice_WREADY),
        .s_axi_wstrb(s03_couplers_to_s03_regslice_WSTRB),
        .s_axi_wvalid(s03_couplers_to_s03_regslice_WVALID));
endmodule

(* CORE_GENERATION_INFO = "sys_top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=sys_top,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=108,numReposBlks=82,numNonXlnxBlks=16,numHierBlks=26,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "sys_top.hwdef" *) 
module sys_top
   (nand_if_0_nand_ale,
    nand_if_0_nand_ce,
    nand_if_0_nand_cle,
    nand_if_0_nand_dq,
    nand_if_0_nand_dqs_n,
    nand_if_0_nand_dqs_p,
    nand_if_0_nand_rb,
    nand_if_0_nand_re_n,
    nand_if_0_nand_re_p,
    nand_if_0_nand_we,
    nand_if_0_nand_wp,
    nand_if_1_nand_ale,
    nand_if_1_nand_ce,
    nand_if_1_nand_cle,
    nand_if_1_nand_dq,
    nand_if_1_nand_dqs_n,
    nand_if_1_nand_dqs_p,
    nand_if_1_nand_rb,
    nand_if_1_nand_re_n,
    nand_if_1_nand_re_p,
    nand_if_1_nand_we,
    nand_if_1_nand_wp,
    nand_if_2_nand_ale,
    nand_if_2_nand_ce,
    nand_if_2_nand_cle,
    nand_if_2_nand_dq,
    nand_if_2_nand_dqs_n,
    nand_if_2_nand_dqs_p,
    nand_if_2_nand_rb,
    nand_if_2_nand_re_n,
    nand_if_2_nand_re_p,
    nand_if_2_nand_we,
    nand_if_2_nand_wp,
    nand_if_3_nand_ale,
    nand_if_3_nand_ce,
    nand_if_3_nand_cle,
    nand_if_3_nand_dq,
    nand_if_3_nand_dqs_n,
    nand_if_3_nand_dqs_p,
    nand_if_3_nand_rb,
    nand_if_3_nand_re_n,
    nand_if_3_nand_re_p,
    nand_if_3_nand_we,
    nand_if_3_nand_wp,
    pci_exp_0_rxn,
    pci_exp_0_rxp,
    pci_exp_0_txn,
    pci_exp_0_txp,
    pcie_perst_n,
    pcie_ref_clk_n,
    pcie_ref_clk_p,
    user_lnk_up_0);
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_0 NAND_ALE" *) output nand_if_0_nand_ale;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_0 NAND_CE" *) output [7:0]nand_if_0_nand_ce;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_0 NAND_CLE" *) output nand_if_0_nand_cle;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_0 NAND_DQ" *) inout [7:0]nand_if_0_nand_dq;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_0 NAND_DQS_N" *) inout nand_if_0_nand_dqs_n;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_0 NAND_DQS_P" *) inout nand_if_0_nand_dqs_p;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_0 NAND_RB" *) input [7:0]nand_if_0_nand_rb;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_0 NAND_RE_N" *) output nand_if_0_nand_re_n;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_0 NAND_RE_P" *) output nand_if_0_nand_re_p;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_0 NAND_WE" *) output nand_if_0_nand_we;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_0 NAND_WP" *) output nand_if_0_nand_wp;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_1 NAND_ALE" *) output nand_if_1_nand_ale;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_1 NAND_CE" *) output [7:0]nand_if_1_nand_ce;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_1 NAND_CLE" *) output nand_if_1_nand_cle;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_1 NAND_DQ" *) inout [7:0]nand_if_1_nand_dq;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_1 NAND_DQS_N" *) inout nand_if_1_nand_dqs_n;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_1 NAND_DQS_P" *) inout nand_if_1_nand_dqs_p;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_1 NAND_RB" *) input [7:0]nand_if_1_nand_rb;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_1 NAND_RE_N" *) output nand_if_1_nand_re_n;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_1 NAND_RE_P" *) output nand_if_1_nand_re_p;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_1 NAND_WE" *) output nand_if_1_nand_we;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_1 NAND_WP" *) output nand_if_1_nand_wp;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_2 NAND_ALE" *) output nand_if_2_nand_ale;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_2 NAND_CE" *) output [7:0]nand_if_2_nand_ce;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_2 NAND_CLE" *) output nand_if_2_nand_cle;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_2 NAND_DQ" *) inout [7:0]nand_if_2_nand_dq;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_2 NAND_DQS_N" *) inout nand_if_2_nand_dqs_n;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_2 NAND_DQS_P" *) inout nand_if_2_nand_dqs_p;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_2 NAND_RB" *) input [7:0]nand_if_2_nand_rb;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_2 NAND_RE_N" *) output nand_if_2_nand_re_n;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_2 NAND_RE_P" *) output nand_if_2_nand_re_p;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_2 NAND_WE" *) output nand_if_2_nand_we;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_2 NAND_WP" *) output nand_if_2_nand_wp;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_3 NAND_ALE" *) output nand_if_3_nand_ale;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_3 NAND_CE" *) output [7:0]nand_if_3_nand_ce;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_3 NAND_CLE" *) output nand_if_3_nand_cle;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_3 NAND_DQ" *) inout [7:0]nand_if_3_nand_dq;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_3 NAND_DQS_N" *) inout nand_if_3_nand_dqs_n;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_3 NAND_DQS_P" *) inout nand_if_3_nand_dqs_p;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_3 NAND_RB" *) input [7:0]nand_if_3_nand_rb;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_3 NAND_RE_N" *) output nand_if_3_nand_re_n;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_3 NAND_RE_P" *) output nand_if_3_nand_re_p;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_3 NAND_WE" *) output nand_if_3_nand_we;
  (* X_INTERFACE_INFO = "enclab:user:nand_if:1.0 nand_if_3 NAND_WP" *) output nand_if_3_nand_wp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pci_exp_0 rxn" *) input [15:0]pci_exp_0_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pci_exp_0 rxp" *) input [15:0]pci_exp_0_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pci_exp_0 txn" *) output [15:0]pci_exp_0_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pci_exp_0 txp" *) output [15:0]pci_exp_0_txp;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.PCIE_PERST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.PCIE_PERST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input pcie_perst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie_ref CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie_ref, CAN_DEBUG false, FREQ_HZ 100000000" *) input pcie_ref_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie_ref CLK_P" *) input pcie_ref_clk_p;
  output user_lnk_up_0;

  wire [0:0]ARESETN_1;
  wire CH0C133BUF_BUFGCE_O;
  wire CH1C133BUF_BUFGCE_O;
  wire CH2C133BUF_BUFGCE_O;
  wire CH3C133BUF_BUFGCE_O;
  wire [0:0]M00_ARESETN_1;
  wire [0:0]M00_ARESETN_2;
  wire [0:0]M02_ARESETN_1;
  wire [0:0]M04_ARESETN_1;
  wire [0:0]M06_ARESETN_1;
  wire [0:0]S00_ARESETN_1;
  wire [39:0]S00_AXI_1_ARADDR;
  wire [1:0]S00_AXI_1_ARBURST;
  wire [3:0]S00_AXI_1_ARCACHE;
  wire [15:0]S00_AXI_1_ARID;
  wire [7:0]S00_AXI_1_ARLEN;
  wire S00_AXI_1_ARLOCK;
  wire [2:0]S00_AXI_1_ARPROT;
  wire [3:0]S00_AXI_1_ARQOS;
  wire S00_AXI_1_ARREADY;
  wire [2:0]S00_AXI_1_ARSIZE;
  wire S00_AXI_1_ARVALID;
  wire [39:0]S00_AXI_1_AWADDR;
  wire [1:0]S00_AXI_1_AWBURST;
  wire [3:0]S00_AXI_1_AWCACHE;
  wire [15:0]S00_AXI_1_AWID;
  wire [7:0]S00_AXI_1_AWLEN;
  wire S00_AXI_1_AWLOCK;
  wire [2:0]S00_AXI_1_AWPROT;
  wire [3:0]S00_AXI_1_AWQOS;
  wire S00_AXI_1_AWREADY;
  wire [2:0]S00_AXI_1_AWSIZE;
  wire S00_AXI_1_AWVALID;
  wire [15:0]S00_AXI_1_BID;
  wire S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire S00_AXI_1_BVALID;
  wire [63:0]S00_AXI_1_RDATA;
  wire [15:0]S00_AXI_1_RID;
  wire S00_AXI_1_RLAST;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire S00_AXI_1_RVALID;
  wire [63:0]S00_AXI_1_WDATA;
  wire S00_AXI_1_WLAST;
  wire S00_AXI_1_WREADY;
  wire [7:0]S00_AXI_1_WSTRB;
  wire S00_AXI_1_WVALID;
  wire [31:0]S01_AXI_1_ARADDR;
  wire [1:0]S01_AXI_1_ARBURST;
  wire [3:0]S01_AXI_1_ARCACHE;
  wire [7:0]S01_AXI_1_ARLEN;
  wire [2:0]S01_AXI_1_ARPROT;
  wire S01_AXI_1_ARREADY;
  wire [2:0]S01_AXI_1_ARSIZE;
  wire S01_AXI_1_ARVALID;
  wire [31:0]S01_AXI_1_AWADDR;
  wire [1:0]S01_AXI_1_AWBURST;
  wire [3:0]S01_AXI_1_AWCACHE;
  wire [7:0]S01_AXI_1_AWLEN;
  wire [2:0]S01_AXI_1_AWPROT;
  wire S01_AXI_1_AWREADY;
  wire [2:0]S01_AXI_1_AWSIZE;
  wire S01_AXI_1_AWVALID;
  wire S01_AXI_1_BREADY;
  wire [1:0]S01_AXI_1_BRESP;
  wire S01_AXI_1_BVALID;
  wire [31:0]S01_AXI_1_RDATA;
  wire S01_AXI_1_RLAST;
  wire S01_AXI_1_RREADY;
  wire [1:0]S01_AXI_1_RRESP;
  wire S01_AXI_1_RVALID;
  wire [31:0]S01_AXI_1_WDATA;
  wire S01_AXI_1_WLAST;
  wire S01_AXI_1_WREADY;
  wire [3:0]S01_AXI_1_WSTRB;
  wire S01_AXI_1_WVALID;
  wire [31:0]S02_AXI_1_ARADDR;
  wire [1:0]S02_AXI_1_ARBURST;
  wire [3:0]S02_AXI_1_ARCACHE;
  wire [7:0]S02_AXI_1_ARLEN;
  wire [2:0]S02_AXI_1_ARPROT;
  wire S02_AXI_1_ARREADY;
  wire [2:0]S02_AXI_1_ARSIZE;
  wire S02_AXI_1_ARVALID;
  wire [31:0]S02_AXI_1_AWADDR;
  wire [1:0]S02_AXI_1_AWBURST;
  wire [3:0]S02_AXI_1_AWCACHE;
  wire [7:0]S02_AXI_1_AWLEN;
  wire [2:0]S02_AXI_1_AWPROT;
  wire S02_AXI_1_AWREADY;
  wire [2:0]S02_AXI_1_AWSIZE;
  wire S02_AXI_1_AWVALID;
  wire S02_AXI_1_BREADY;
  wire [1:0]S02_AXI_1_BRESP;
  wire S02_AXI_1_BVALID;
  wire [31:0]S02_AXI_1_RDATA;
  wire S02_AXI_1_RLAST;
  wire S02_AXI_1_RREADY;
  wire [1:0]S02_AXI_1_RRESP;
  wire S02_AXI_1_RVALID;
  wire [31:0]S02_AXI_1_WDATA;
  wire S02_AXI_1_WLAST;
  wire S02_AXI_1_WREADY;
  wire [3:0]S02_AXI_1_WSTRB;
  wire S02_AXI_1_WVALID;
  wire [31:0]S03_AXI_1_ARADDR;
  wire [1:0]S03_AXI_1_ARBURST;
  wire [3:0]S03_AXI_1_ARCACHE;
  wire [7:0]S03_AXI_1_ARLEN;
  wire [2:0]S03_AXI_1_ARPROT;
  wire S03_AXI_1_ARREADY;
  wire [2:0]S03_AXI_1_ARSIZE;
  wire S03_AXI_1_ARVALID;
  wire [31:0]S03_AXI_1_AWADDR;
  wire [1:0]S03_AXI_1_AWBURST;
  wire [3:0]S03_AXI_1_AWCACHE;
  wire [7:0]S03_AXI_1_AWLEN;
  wire [2:0]S03_AXI_1_AWPROT;
  wire S03_AXI_1_AWREADY;
  wire [2:0]S03_AXI_1_AWSIZE;
  wire S03_AXI_1_AWVALID;
  wire S03_AXI_1_BREADY;
  wire [1:0]S03_AXI_1_BRESP;
  wire S03_AXI_1_BVALID;
  wire [31:0]S03_AXI_1_RDATA;
  wire S03_AXI_1_RLAST;
  wire S03_AXI_1_RREADY;
  wire [1:0]S03_AXI_1_RRESP;
  wire S03_AXI_1_RVALID;
  wire [31:0]S03_AXI_1_WDATA;
  wire S03_AXI_1_WLAST;
  wire S03_AXI_1_WREADY;
  wire [3:0]S03_AXI_1_WSTRB;
  wire S03_AXI_1_WVALID;
  wire [11:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [11:0]axi_bram_ctrl_1_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_1_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_1_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_1_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_1_BRAM_PORTA_EN;
  wire axi_bram_ctrl_1_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_1_BRAM_PORTA_WE;
  wire [11:0]axi_bram_ctrl_2_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_2_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_2_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_2_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_2_BRAM_PORTA_EN;
  wire axi_bram_ctrl_2_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_2_BRAM_PORTA_WE;
  wire [11:0]axi_bram_ctrl_3_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_3_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_3_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_3_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_3_BRAM_PORTA_EN;
  wire axi_bram_ctrl_3_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_3_BRAM_PORTA_WE;
  wire [39:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_ARBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_ARCACHE;
  wire [15:0]axi_interconnect_0_M00_AXI_ARID;
  wire [7:0]axi_interconnect_0_M00_AXI_ARLEN;
  wire [0:0]axi_interconnect_0_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_ARPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_ARQOS;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_ARREGION;
  wire [2:0]axi_interconnect_0_M00_AXI_ARSIZE;
  wire [15:0]axi_interconnect_0_M00_AXI_ARUSER;
  wire axi_interconnect_0_M00_AXI_ARVALID;
  wire [39:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_AWBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_AWCACHE;
  wire [15:0]axi_interconnect_0_M00_AXI_AWID;
  wire [7:0]axi_interconnect_0_M00_AXI_AWLEN;
  wire [0:0]axi_interconnect_0_M00_AXI_AWLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_AWPROT;
  wire [3:0]axi_interconnect_0_M00_AXI_AWQOS;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_AWREGION;
  wire [2:0]axi_interconnect_0_M00_AXI_AWSIZE;
  wire [15:0]axi_interconnect_0_M00_AXI_AWUSER;
  wire axi_interconnect_0_M00_AXI_AWVALID;
  wire [15:0]axi_interconnect_0_M00_AXI_BID;
  wire axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [63:0]axi_interconnect_0_M00_AXI_RDATA;
  wire [15:0]axi_interconnect_0_M00_AXI_RID;
  wire axi_interconnect_0_M00_AXI_RLAST;
  wire axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire axi_interconnect_0_M00_AXI_RVALID;
  wire [63:0]axi_interconnect_0_M00_AXI_WDATA;
  wire axi_interconnect_0_M00_AXI_WLAST;
  wire axi_interconnect_0_M00_AXI_WREADY;
  wire [7:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire axi_interconnect_0_M00_AXI_WVALID;
  wire bch_sccs_256B_21B_13b_0_bch_skes_if_CSAvailable;
  wire [1:0]bch_sccs_256B_21B_13b_0_bch_skes_if_CorrectionFail;
  wire [1:0]bch_sccs_256B_21B_13b_0_bch_skes_if_DecodeNeeded;
  wire [359:0]bch_sccs_256B_21B_13b_0_bch_skes_if_ELPCoefficients;
  wire [17:0]bch_sccs_256B_21B_13b_0_bch_skes_if_ErrorCount;
  wire [1:0]bch_sccs_256B_21B_13b_0_bch_skes_if_ErrorDetectionEnd;
  wire [1:0]bch_sccs_256B_21B_13b_0_bch_skes_if_ErroredChunk;
  wire bch_sccs_256B_21B_13b_0_bch_skes_if_IntraSharedKESEnd;
  wire bch_sccs_256B_21B_13b_0_bch_skes_if_SharedKESReady;
  wire [647:0]bch_sccs_256B_21B_13b_0_bch_skes_if_Syndromes;
  wire [31:0]bch_sccs_256B_21B_13b_0_from_ecc_if_RAddress;
  wire bch_sccs_256B_21B_13b_0_from_ecc_if_RCmdReady;
  wire bch_sccs_256B_21B_13b_0_from_ecc_if_RCmdValid;
  wire [31:0]bch_sccs_256B_21B_13b_0_from_ecc_if_RData;
  wire bch_sccs_256B_21B_13b_0_from_ecc_if_RLast;
  wire [15:0]bch_sccs_256B_21B_13b_0_from_ecc_if_RLength;
  wire [5:0]bch_sccs_256B_21B_13b_0_from_ecc_if_ROpcode;
  wire bch_sccs_256B_21B_13b_0_from_ecc_if_RReady;
  wire [4:0]bch_sccs_256B_21B_13b_0_from_ecc_if_RSourceID;
  wire [4:0]bch_sccs_256B_21B_13b_0_from_ecc_if_RTargetID;
  wire bch_sccs_256B_21B_13b_0_from_ecc_if_RValid;
  wire [31:0]bch_sccs_256B_21B_13b_0_from_ecc_if_WAddress;
  wire bch_sccs_256B_21B_13b_0_from_ecc_if_WCmdReady;
  wire bch_sccs_256B_21B_13b_0_from_ecc_if_WCmdValid;
  wire [31:0]bch_sccs_256B_21B_13b_0_from_ecc_if_WData;
  wire bch_sccs_256B_21B_13b_0_from_ecc_if_WLast;
  wire [15:0]bch_sccs_256B_21B_13b_0_from_ecc_if_WLength;
  wire [5:0]bch_sccs_256B_21B_13b_0_from_ecc_if_WOpcode;
  wire bch_sccs_256B_21B_13b_0_from_ecc_if_WReady;
  wire [4:0]bch_sccs_256B_21B_13b_0_from_ecc_if_WSourceID;
  wire [4:0]bch_sccs_256B_21B_13b_0_from_ecc_if_WTargetID;
  wire bch_sccs_256B_21B_13b_0_from_ecc_if_WValid;
  wire bch_sccs_256B_21B_13b_1_bch_skes_if_CSAvailable;
  wire [1:0]bch_sccs_256B_21B_13b_1_bch_skes_if_CorrectionFail;
  wire [1:0]bch_sccs_256B_21B_13b_1_bch_skes_if_DecodeNeeded;
  wire [359:0]bch_sccs_256B_21B_13b_1_bch_skes_if_ELPCoefficients;
  wire [17:0]bch_sccs_256B_21B_13b_1_bch_skes_if_ErrorCount;
  wire [1:0]bch_sccs_256B_21B_13b_1_bch_skes_if_ErrorDetectionEnd;
  wire [1:0]bch_sccs_256B_21B_13b_1_bch_skes_if_ErroredChunk;
  wire bch_sccs_256B_21B_13b_1_bch_skes_if_IntraSharedKESEnd;
  wire bch_sccs_256B_21B_13b_1_bch_skes_if_SharedKESReady;
  wire [647:0]bch_sccs_256B_21B_13b_1_bch_skes_if_Syndromes;
  wire [31:0]bch_sccs_256B_21B_13b_1_from_ecc_if_RAddress;
  wire bch_sccs_256B_21B_13b_1_from_ecc_if_RCmdReady;
  wire bch_sccs_256B_21B_13b_1_from_ecc_if_RCmdValid;
  wire [31:0]bch_sccs_256B_21B_13b_1_from_ecc_if_RData;
  wire bch_sccs_256B_21B_13b_1_from_ecc_if_RLast;
  wire [15:0]bch_sccs_256B_21B_13b_1_from_ecc_if_RLength;
  wire [5:0]bch_sccs_256B_21B_13b_1_from_ecc_if_ROpcode;
  wire bch_sccs_256B_21B_13b_1_from_ecc_if_RReady;
  wire [4:0]bch_sccs_256B_21B_13b_1_from_ecc_if_RSourceID;
  wire [4:0]bch_sccs_256B_21B_13b_1_from_ecc_if_RTargetID;
  wire bch_sccs_256B_21B_13b_1_from_ecc_if_RValid;
  wire [31:0]bch_sccs_256B_21B_13b_1_from_ecc_if_WAddress;
  wire bch_sccs_256B_21B_13b_1_from_ecc_if_WCmdReady;
  wire bch_sccs_256B_21B_13b_1_from_ecc_if_WCmdValid;
  wire [31:0]bch_sccs_256B_21B_13b_1_from_ecc_if_WData;
  wire bch_sccs_256B_21B_13b_1_from_ecc_if_WLast;
  wire [15:0]bch_sccs_256B_21B_13b_1_from_ecc_if_WLength;
  wire [5:0]bch_sccs_256B_21B_13b_1_from_ecc_if_WOpcode;
  wire bch_sccs_256B_21B_13b_1_from_ecc_if_WReady;
  wire [4:0]bch_sccs_256B_21B_13b_1_from_ecc_if_WSourceID;
  wire [4:0]bch_sccs_256B_21B_13b_1_from_ecc_if_WTargetID;
  wire bch_sccs_256B_21B_13b_1_from_ecc_if_WValid;
  wire bch_sccs_256B_21B_13b_2_bch_skes_if_CSAvailable;
  wire [1:0]bch_sccs_256B_21B_13b_2_bch_skes_if_CorrectionFail;
  wire [1:0]bch_sccs_256B_21B_13b_2_bch_skes_if_DecodeNeeded;
  wire [359:0]bch_sccs_256B_21B_13b_2_bch_skes_if_ELPCoefficients;
  wire [17:0]bch_sccs_256B_21B_13b_2_bch_skes_if_ErrorCount;
  wire [1:0]bch_sccs_256B_21B_13b_2_bch_skes_if_ErrorDetectionEnd;
  wire [1:0]bch_sccs_256B_21B_13b_2_bch_skes_if_ErroredChunk;
  wire bch_sccs_256B_21B_13b_2_bch_skes_if_IntraSharedKESEnd;
  wire bch_sccs_256B_21B_13b_2_bch_skes_if_SharedKESReady;
  wire [647:0]bch_sccs_256B_21B_13b_2_bch_skes_if_Syndromes;
  wire [31:0]bch_sccs_256B_21B_13b_2_from_ecc_if_RAddress;
  wire bch_sccs_256B_21B_13b_2_from_ecc_if_RCmdReady;
  wire bch_sccs_256B_21B_13b_2_from_ecc_if_RCmdValid;
  wire [31:0]bch_sccs_256B_21B_13b_2_from_ecc_if_RData;
  wire bch_sccs_256B_21B_13b_2_from_ecc_if_RLast;
  wire [15:0]bch_sccs_256B_21B_13b_2_from_ecc_if_RLength;
  wire [5:0]bch_sccs_256B_21B_13b_2_from_ecc_if_ROpcode;
  wire bch_sccs_256B_21B_13b_2_from_ecc_if_RReady;
  wire [4:0]bch_sccs_256B_21B_13b_2_from_ecc_if_RSourceID;
  wire [4:0]bch_sccs_256B_21B_13b_2_from_ecc_if_RTargetID;
  wire bch_sccs_256B_21B_13b_2_from_ecc_if_RValid;
  wire [31:0]bch_sccs_256B_21B_13b_2_from_ecc_if_WAddress;
  wire bch_sccs_256B_21B_13b_2_from_ecc_if_WCmdReady;
  wire bch_sccs_256B_21B_13b_2_from_ecc_if_WCmdValid;
  wire [31:0]bch_sccs_256B_21B_13b_2_from_ecc_if_WData;
  wire bch_sccs_256B_21B_13b_2_from_ecc_if_WLast;
  wire [15:0]bch_sccs_256B_21B_13b_2_from_ecc_if_WLength;
  wire [5:0]bch_sccs_256B_21B_13b_2_from_ecc_if_WOpcode;
  wire bch_sccs_256B_21B_13b_2_from_ecc_if_WReady;
  wire [4:0]bch_sccs_256B_21B_13b_2_from_ecc_if_WSourceID;
  wire [4:0]bch_sccs_256B_21B_13b_2_from_ecc_if_WTargetID;
  wire bch_sccs_256B_21B_13b_2_from_ecc_if_WValid;
  wire bch_sccs_256B_21B_13b_3_bch_skes_if_CSAvailable;
  wire [1:0]bch_sccs_256B_21B_13b_3_bch_skes_if_CorrectionFail;
  wire [1:0]bch_sccs_256B_21B_13b_3_bch_skes_if_DecodeNeeded;
  wire [359:0]bch_sccs_256B_21B_13b_3_bch_skes_if_ELPCoefficients;
  wire [17:0]bch_sccs_256B_21B_13b_3_bch_skes_if_ErrorCount;
  wire [1:0]bch_sccs_256B_21B_13b_3_bch_skes_if_ErrorDetectionEnd;
  wire [1:0]bch_sccs_256B_21B_13b_3_bch_skes_if_ErroredChunk;
  wire bch_sccs_256B_21B_13b_3_bch_skes_if_IntraSharedKESEnd;
  wire bch_sccs_256B_21B_13b_3_bch_skes_if_SharedKESReady;
  wire [647:0]bch_sccs_256B_21B_13b_3_bch_skes_if_Syndromes;
  wire [31:0]bch_sccs_256B_21B_13b_3_from_ecc_if_RAddress;
  wire bch_sccs_256B_21B_13b_3_from_ecc_if_RCmdReady;
  wire bch_sccs_256B_21B_13b_3_from_ecc_if_RCmdValid;
  wire [31:0]bch_sccs_256B_21B_13b_3_from_ecc_if_RData;
  wire bch_sccs_256B_21B_13b_3_from_ecc_if_RLast;
  wire [15:0]bch_sccs_256B_21B_13b_3_from_ecc_if_RLength;
  wire [5:0]bch_sccs_256B_21B_13b_3_from_ecc_if_ROpcode;
  wire bch_sccs_256B_21B_13b_3_from_ecc_if_RReady;
  wire [4:0]bch_sccs_256B_21B_13b_3_from_ecc_if_RSourceID;
  wire [4:0]bch_sccs_256B_21B_13b_3_from_ecc_if_RTargetID;
  wire bch_sccs_256B_21B_13b_3_from_ecc_if_RValid;
  wire [31:0]bch_sccs_256B_21B_13b_3_from_ecc_if_WAddress;
  wire bch_sccs_256B_21B_13b_3_from_ecc_if_WCmdReady;
  wire bch_sccs_256B_21B_13b_3_from_ecc_if_WCmdValid;
  wire [31:0]bch_sccs_256B_21B_13b_3_from_ecc_if_WData;
  wire bch_sccs_256B_21B_13b_3_from_ecc_if_WLast;
  wire [15:0]bch_sccs_256B_21B_13b_3_from_ecc_if_WLength;
  wire [5:0]bch_sccs_256B_21B_13b_3_from_ecc_if_WOpcode;
  wire bch_sccs_256B_21B_13b_3_from_ecc_if_WReady;
  wire [4:0]bch_sccs_256B_21B_13b_3_from_ecc_if_WSourceID;
  wire [4:0]bch_sccs_256B_21B_13b_3_from_ecc_if_WTargetID;
  wire bch_sccs_256B_21B_13b_3_from_ecc_if_WValid;
  wire [11:0]gpic_0_M01_AXI_ARADDR;
  wire [1:0]gpic_0_M01_AXI_ARBURST;
  wire [3:0]gpic_0_M01_AXI_ARCACHE;
  wire [7:0]gpic_0_M01_AXI_ARLEN;
  wire [0:0]gpic_0_M01_AXI_ARLOCK;
  wire [2:0]gpic_0_M01_AXI_ARPROT;
  wire gpic_0_M01_AXI_ARREADY;
  wire [2:0]gpic_0_M01_AXI_ARSIZE;
  wire gpic_0_M01_AXI_ARVALID;
  wire [11:0]gpic_0_M01_AXI_AWADDR;
  wire [1:0]gpic_0_M01_AXI_AWBURST;
  wire [3:0]gpic_0_M01_AXI_AWCACHE;
  wire [7:0]gpic_0_M01_AXI_AWLEN;
  wire [0:0]gpic_0_M01_AXI_AWLOCK;
  wire [2:0]gpic_0_M01_AXI_AWPROT;
  wire gpic_0_M01_AXI_AWREADY;
  wire [2:0]gpic_0_M01_AXI_AWSIZE;
  wire gpic_0_M01_AXI_AWVALID;
  wire gpic_0_M01_AXI_BREADY;
  wire [1:0]gpic_0_M01_AXI_BRESP;
  wire gpic_0_M01_AXI_BVALID;
  wire [31:0]gpic_0_M01_AXI_RDATA;
  wire gpic_0_M01_AXI_RLAST;
  wire gpic_0_M01_AXI_RREADY;
  wire [1:0]gpic_0_M01_AXI_RRESP;
  wire gpic_0_M01_AXI_RVALID;
  wire [31:0]gpic_0_M01_AXI_WDATA;
  wire gpic_0_M01_AXI_WLAST;
  wire gpic_0_M01_AXI_WREADY;
  wire [3:0]gpic_0_M01_AXI_WSTRB;
  wire gpic_0_M01_AXI_WVALID;
  wire [11:0]gpic_0_M03_AXI_ARADDR;
  wire [1:0]gpic_0_M03_AXI_ARBURST;
  wire [3:0]gpic_0_M03_AXI_ARCACHE;
  wire [7:0]gpic_0_M03_AXI_ARLEN;
  wire [0:0]gpic_0_M03_AXI_ARLOCK;
  wire [2:0]gpic_0_M03_AXI_ARPROT;
  wire gpic_0_M03_AXI_ARREADY;
  wire [2:0]gpic_0_M03_AXI_ARSIZE;
  wire gpic_0_M03_AXI_ARVALID;
  wire [11:0]gpic_0_M03_AXI_AWADDR;
  wire [1:0]gpic_0_M03_AXI_AWBURST;
  wire [3:0]gpic_0_M03_AXI_AWCACHE;
  wire [7:0]gpic_0_M03_AXI_AWLEN;
  wire [0:0]gpic_0_M03_AXI_AWLOCK;
  wire [2:0]gpic_0_M03_AXI_AWPROT;
  wire gpic_0_M03_AXI_AWREADY;
  wire [2:0]gpic_0_M03_AXI_AWSIZE;
  wire gpic_0_M03_AXI_AWVALID;
  wire gpic_0_M03_AXI_BREADY;
  wire [1:0]gpic_0_M03_AXI_BRESP;
  wire gpic_0_M03_AXI_BVALID;
  wire [31:0]gpic_0_M03_AXI_RDATA;
  wire gpic_0_M03_AXI_RLAST;
  wire gpic_0_M03_AXI_RREADY;
  wire [1:0]gpic_0_M03_AXI_RRESP;
  wire gpic_0_M03_AXI_RVALID;
  wire [31:0]gpic_0_M03_AXI_WDATA;
  wire gpic_0_M03_AXI_WLAST;
  wire gpic_0_M03_AXI_WREADY;
  wire [3:0]gpic_0_M03_AXI_WSTRB;
  wire gpic_0_M03_AXI_WVALID;
  wire [11:0]gpic_0_M05_AXI_ARADDR;
  wire [1:0]gpic_0_M05_AXI_ARBURST;
  wire [3:0]gpic_0_M05_AXI_ARCACHE;
  wire [7:0]gpic_0_M05_AXI_ARLEN;
  wire [0:0]gpic_0_M05_AXI_ARLOCK;
  wire [2:0]gpic_0_M05_AXI_ARPROT;
  wire gpic_0_M05_AXI_ARREADY;
  wire [2:0]gpic_0_M05_AXI_ARSIZE;
  wire gpic_0_M05_AXI_ARVALID;
  wire [11:0]gpic_0_M05_AXI_AWADDR;
  wire [1:0]gpic_0_M05_AXI_AWBURST;
  wire [3:0]gpic_0_M05_AXI_AWCACHE;
  wire [7:0]gpic_0_M05_AXI_AWLEN;
  wire [0:0]gpic_0_M05_AXI_AWLOCK;
  wire [2:0]gpic_0_M05_AXI_AWPROT;
  wire gpic_0_M05_AXI_AWREADY;
  wire [2:0]gpic_0_M05_AXI_AWSIZE;
  wire gpic_0_M05_AXI_AWVALID;
  wire gpic_0_M05_AXI_BREADY;
  wire [1:0]gpic_0_M05_AXI_BRESP;
  wire gpic_0_M05_AXI_BVALID;
  wire [31:0]gpic_0_M05_AXI_RDATA;
  wire gpic_0_M05_AXI_RLAST;
  wire gpic_0_M05_AXI_RREADY;
  wire [1:0]gpic_0_M05_AXI_RRESP;
  wire gpic_0_M05_AXI_RVALID;
  wire [31:0]gpic_0_M05_AXI_WDATA;
  wire gpic_0_M05_AXI_WLAST;
  wire gpic_0_M05_AXI_WREADY;
  wire [3:0]gpic_0_M05_AXI_WSTRB;
  wire gpic_0_M05_AXI_WVALID;
  wire [11:0]gpic_0_M07_AXI_ARADDR;
  wire [1:0]gpic_0_M07_AXI_ARBURST;
  wire [3:0]gpic_0_M07_AXI_ARCACHE;
  wire [7:0]gpic_0_M07_AXI_ARLEN;
  wire [0:0]gpic_0_M07_AXI_ARLOCK;
  wire [2:0]gpic_0_M07_AXI_ARPROT;
  wire gpic_0_M07_AXI_ARREADY;
  wire [2:0]gpic_0_M07_AXI_ARSIZE;
  wire gpic_0_M07_AXI_ARVALID;
  wire [11:0]gpic_0_M07_AXI_AWADDR;
  wire [1:0]gpic_0_M07_AXI_AWBURST;
  wire [3:0]gpic_0_M07_AXI_AWCACHE;
  wire [7:0]gpic_0_M07_AXI_AWLEN;
  wire [0:0]gpic_0_M07_AXI_AWLOCK;
  wire [2:0]gpic_0_M07_AXI_AWPROT;
  wire gpic_0_M07_AXI_AWREADY;
  wire [2:0]gpic_0_M07_AXI_AWSIZE;
  wire gpic_0_M07_AXI_AWVALID;
  wire gpic_0_M07_AXI_BREADY;
  wire [1:0]gpic_0_M07_AXI_BRESP;
  wire gpic_0_M07_AXI_BVALID;
  wire [31:0]gpic_0_M07_AXI_RDATA;
  wire gpic_0_M07_AXI_RLAST;
  wire gpic_0_M07_AXI_RREADY;
  wire [1:0]gpic_0_M07_AXI_RRESP;
  wire gpic_0_M07_AXI_RVALID;
  wire [31:0]gpic_0_M07_AXI_WDATA;
  wire gpic_0_M07_AXI_WLAST;
  wire gpic_0_M07_AXI_WREADY;
  wire [3:0]gpic_0_M07_AXI_WSTRB;
  wire gpic_0_M07_AXI_WVALID;
  wire [31:0]gpic_0_sub_0_M00_AXI_ARADDR;
  wire [2:0]gpic_0_sub_0_M00_AXI_ARPROT;
  wire gpic_0_sub_0_M00_AXI_ARREADY;
  wire gpic_0_sub_0_M00_AXI_ARVALID;
  wire [31:0]gpic_0_sub_0_M00_AXI_AWADDR;
  wire [2:0]gpic_0_sub_0_M00_AXI_AWPROT;
  wire gpic_0_sub_0_M00_AXI_AWREADY;
  wire gpic_0_sub_0_M00_AXI_AWVALID;
  wire gpic_0_sub_0_M00_AXI_BREADY;
  wire [1:0]gpic_0_sub_0_M00_AXI_BRESP;
  wire gpic_0_sub_0_M00_AXI_BVALID;
  wire [31:0]gpic_0_sub_0_M00_AXI_RDATA;
  wire gpic_0_sub_0_M00_AXI_RREADY;
  wire [1:0]gpic_0_sub_0_M00_AXI_RRESP;
  wire gpic_0_sub_0_M00_AXI_RVALID;
  wire [31:0]gpic_0_sub_0_M00_AXI_WDATA;
  wire gpic_0_sub_0_M00_AXI_WREADY;
  wire [3:0]gpic_0_sub_0_M00_AXI_WSTRB;
  wire gpic_0_sub_0_M00_AXI_WVALID;
  wire [31:0]gpic_0_sub_0_M02_AXI_ARADDR;
  wire [2:0]gpic_0_sub_0_M02_AXI_ARPROT;
  wire gpic_0_sub_0_M02_AXI_ARREADY;
  wire gpic_0_sub_0_M02_AXI_ARVALID;
  wire [31:0]gpic_0_sub_0_M02_AXI_AWADDR;
  wire [2:0]gpic_0_sub_0_M02_AXI_AWPROT;
  wire gpic_0_sub_0_M02_AXI_AWREADY;
  wire gpic_0_sub_0_M02_AXI_AWVALID;
  wire gpic_0_sub_0_M02_AXI_BREADY;
  wire [1:0]gpic_0_sub_0_M02_AXI_BRESP;
  wire gpic_0_sub_0_M02_AXI_BVALID;
  wire [31:0]gpic_0_sub_0_M02_AXI_RDATA;
  wire gpic_0_sub_0_M02_AXI_RREADY;
  wire [1:0]gpic_0_sub_0_M02_AXI_RRESP;
  wire gpic_0_sub_0_M02_AXI_RVALID;
  wire [31:0]gpic_0_sub_0_M02_AXI_WDATA;
  wire gpic_0_sub_0_M02_AXI_WREADY;
  wire [3:0]gpic_0_sub_0_M02_AXI_WSTRB;
  wire gpic_0_sub_0_M02_AXI_WVALID;
  wire [31:0]gpic_0_sub_0_M04_AXI_ARADDR;
  wire [2:0]gpic_0_sub_0_M04_AXI_ARPROT;
  wire gpic_0_sub_0_M04_AXI_ARREADY;
  wire gpic_0_sub_0_M04_AXI_ARVALID;
  wire [31:0]gpic_0_sub_0_M04_AXI_AWADDR;
  wire [2:0]gpic_0_sub_0_M04_AXI_AWPROT;
  wire gpic_0_sub_0_M04_AXI_AWREADY;
  wire gpic_0_sub_0_M04_AXI_AWVALID;
  wire gpic_0_sub_0_M04_AXI_BREADY;
  wire [1:0]gpic_0_sub_0_M04_AXI_BRESP;
  wire gpic_0_sub_0_M04_AXI_BVALID;
  wire [31:0]gpic_0_sub_0_M04_AXI_RDATA;
  wire gpic_0_sub_0_M04_AXI_RREADY;
  wire [1:0]gpic_0_sub_0_M04_AXI_RRESP;
  wire gpic_0_sub_0_M04_AXI_RVALID;
  wire [31:0]gpic_0_sub_0_M04_AXI_WDATA;
  wire gpic_0_sub_0_M04_AXI_WREADY;
  wire [3:0]gpic_0_sub_0_M04_AXI_WSTRB;
  wire gpic_0_sub_0_M04_AXI_WVALID;
  wire [31:0]gpic_0_sub_0_M06_AXI_ARADDR;
  wire [2:0]gpic_0_sub_0_M06_AXI_ARPROT;
  wire gpic_0_sub_0_M06_AXI_ARREADY;
  wire gpic_0_sub_0_M06_AXI_ARVALID;
  wire [31:0]gpic_0_sub_0_M06_AXI_AWADDR;
  wire [2:0]gpic_0_sub_0_M06_AXI_AWPROT;
  wire gpic_0_sub_0_M06_AXI_AWREADY;
  wire gpic_0_sub_0_M06_AXI_AWVALID;
  wire gpic_0_sub_0_M06_AXI_BREADY;
  wire [1:0]gpic_0_sub_0_M06_AXI_BRESP;
  wire gpic_0_sub_0_M06_AXI_BVALID;
  wire [31:0]gpic_0_sub_0_M06_AXI_RDATA;
  wire gpic_0_sub_0_M06_AXI_RREADY;
  wire [1:0]gpic_0_sub_0_M06_AXI_RRESP;
  wire gpic_0_sub_0_M06_AXI_RVALID;
  wire [31:0]gpic_0_sub_0_M06_AXI_WDATA;
  wire gpic_0_sub_0_M06_AXI_WREADY;
  wire [3:0]gpic_0_sub_0_M06_AXI_WSTRB;
  wire gpic_0_sub_0_M06_AXI_WVALID;
  wire [31:0]gpic_0_sub_M00_AXI_ARADDR;
  wire [2:0]gpic_0_sub_M00_AXI_ARPROT;
  wire gpic_0_sub_M00_AXI_ARREADY;
  wire gpic_0_sub_M00_AXI_ARVALID;
  wire [31:0]gpic_0_sub_M00_AXI_AWADDR;
  wire [2:0]gpic_0_sub_M00_AXI_AWPROT;
  wire gpic_0_sub_M00_AXI_AWREADY;
  wire gpic_0_sub_M00_AXI_AWVALID;
  wire gpic_0_sub_M00_AXI_BREADY;
  wire [1:0]gpic_0_sub_M00_AXI_BRESP;
  wire gpic_0_sub_M00_AXI_BVALID;
  wire [31:0]gpic_0_sub_M00_AXI_RDATA;
  wire gpic_0_sub_M00_AXI_RREADY;
  wire [1:0]gpic_0_sub_M00_AXI_RRESP;
  wire gpic_0_sub_M00_AXI_RVALID;
  wire [31:0]gpic_0_sub_M00_AXI_WDATA;
  wire gpic_0_sub_M00_AXI_WREADY;
  wire [3:0]gpic_0_sub_M00_AXI_WSTRB;
  wire gpic_0_sub_M00_AXI_WVALID;
  wire [31:0]gpic_0_sub_M01_AXI_ARADDR;
  wire [2:0]gpic_0_sub_M01_AXI_ARPROT;
  wire gpic_0_sub_M01_AXI_ARREADY;
  wire gpic_0_sub_M01_AXI_ARVALID;
  wire [31:0]gpic_0_sub_M01_AXI_AWADDR;
  wire [2:0]gpic_0_sub_M01_AXI_AWPROT;
  wire gpic_0_sub_M01_AXI_AWREADY;
  wire gpic_0_sub_M01_AXI_AWVALID;
  wire gpic_0_sub_M01_AXI_BREADY;
  wire [1:0]gpic_0_sub_M01_AXI_BRESP;
  wire gpic_0_sub_M01_AXI_BVALID;
  wire [31:0]gpic_0_sub_M01_AXI_RDATA;
  wire gpic_0_sub_M01_AXI_RREADY;
  wire [1:0]gpic_0_sub_M01_AXI_RRESP;
  wire gpic_0_sub_M01_AXI_RVALID;
  wire [31:0]gpic_0_sub_M01_AXI_WDATA;
  wire gpic_0_sub_M01_AXI_WREADY;
  wire [3:0]gpic_0_sub_M01_AXI_WSTRB;
  wire gpic_0_sub_M01_AXI_WVALID;
  wire [39:0]gpic_1_M00_AXI_ARADDR;
  wire [2:0]gpic_1_M00_AXI_ARPROT;
  wire gpic_1_M00_AXI_ARREADY;
  wire gpic_1_M00_AXI_ARVALID;
  wire [39:0]gpic_1_M00_AXI_AWADDR;
  wire [2:0]gpic_1_M00_AXI_AWPROT;
  wire gpic_1_M00_AXI_AWREADY;
  wire gpic_1_M00_AXI_AWVALID;
  wire gpic_1_M00_AXI_BREADY;
  wire [1:0]gpic_1_M00_AXI_BRESP;
  wire gpic_1_M00_AXI_BVALID;
  wire [31:0]gpic_1_M00_AXI_RDATA;
  wire gpic_1_M00_AXI_RREADY;
  wire [1:0]gpic_1_M00_AXI_RRESP;
  wire gpic_1_M00_AXI_RVALID;
  wire [31:0]gpic_1_M00_AXI_WDATA;
  wire gpic_1_M00_AXI_WREADY;
  wire [3:0]gpic_1_M00_AXI_WSTRB;
  wire gpic_1_M00_AXI_WVALID;
  wire [31:0]gpic_1_M01_AXI_ARADDR;
  wire [2:0]gpic_1_M01_AXI_ARPROT;
  wire gpic_1_M01_AXI_ARREADY;
  wire gpic_1_M01_AXI_ARVALID;
  wire [31:0]gpic_1_M01_AXI_AWADDR;
  wire [2:0]gpic_1_M01_AXI_AWPROT;
  wire gpic_1_M01_AXI_AWREADY;
  wire gpic_1_M01_AXI_AWVALID;
  wire gpic_1_M01_AXI_BREADY;
  wire [1:0]gpic_1_M01_AXI_BRESP;
  wire gpic_1_M01_AXI_BVALID;
  wire [31:0]gpic_1_M01_AXI_RDATA;
  wire gpic_1_M01_AXI_RREADY;
  wire [1:0]gpic_1_M01_AXI_RRESP;
  wire gpic_1_M01_AXI_RVALID;
  wire [31:0]gpic_1_M01_AXI_WDATA;
  wire gpic_1_M01_AXI_WREADY;
  wire [3:0]gpic_1_M01_AXI_WSTRB;
  wire gpic_1_M01_AXI_WVALID;
  wire [31:0]hpic_0_M00_AXI_ARADDR;
  wire [1:0]hpic_0_M00_AXI_ARBURST;
  wire [3:0]hpic_0_M00_AXI_ARCACHE;
  wire [1:0]hpic_0_M00_AXI_ARID;
  wire [7:0]hpic_0_M00_AXI_ARLEN;
  wire [0:0]hpic_0_M00_AXI_ARLOCK;
  wire [2:0]hpic_0_M00_AXI_ARPROT;
  wire [3:0]hpic_0_M00_AXI_ARQOS;
  wire hpic_0_M00_AXI_ARREADY;
  wire [2:0]hpic_0_M00_AXI_ARSIZE;
  wire [0:0]hpic_0_M00_AXI_ARVALID;
  wire [31:0]hpic_0_M00_AXI_AWADDR;
  wire [1:0]hpic_0_M00_AXI_AWBURST;
  wire [3:0]hpic_0_M00_AXI_AWCACHE;
  wire [1:0]hpic_0_M00_AXI_AWID;
  wire [7:0]hpic_0_M00_AXI_AWLEN;
  wire [0:0]hpic_0_M00_AXI_AWLOCK;
  wire [2:0]hpic_0_M00_AXI_AWPROT;
  wire [3:0]hpic_0_M00_AXI_AWQOS;
  wire hpic_0_M00_AXI_AWREADY;
  wire [2:0]hpic_0_M00_AXI_AWSIZE;
  wire [0:0]hpic_0_M00_AXI_AWVALID;
  wire [5:0]hpic_0_M00_AXI_BID;
  wire [0:0]hpic_0_M00_AXI_BREADY;
  wire [1:0]hpic_0_M00_AXI_BRESP;
  wire hpic_0_M00_AXI_BVALID;
  wire [63:0]hpic_0_M00_AXI_RDATA;
  wire [5:0]hpic_0_M00_AXI_RID;
  wire hpic_0_M00_AXI_RLAST;
  wire [0:0]hpic_0_M00_AXI_RREADY;
  wire [1:0]hpic_0_M00_AXI_RRESP;
  wire hpic_0_M00_AXI_RVALID;
  wire [63:0]hpic_0_M00_AXI_WDATA;
  wire [0:0]hpic_0_M00_AXI_WLAST;
  wire hpic_0_M00_AXI_WREADY;
  wire [7:0]hpic_0_M00_AXI_WSTRB;
  wire [0:0]hpic_0_M00_AXI_WVALID;
  wire [8:0]iodelay_if_0_dqs_iodly_00__tap;
  wire [1:0]iodelay_if_0_dqs_iodly_00__tap_load;
  wire [8:0]iodelay_if_0_dqs_iodly_01__tap;
  wire [1:0]iodelay_if_0_dqs_iodly_01__tap_load;
  wire [8:0]iodelay_if_0_dqs_iodly_02__tap;
  wire [1:0]iodelay_if_0_dqs_iodly_02__tap_load;
  wire [8:0]iodelay_if_0_dqs_iodly_03__tap;
  wire [1:0]iodelay_if_0_dqs_iodly_03__tap_load;
  wire [8:0]iodelay_if_0_iodly_00__tap;
  wire [1:0]iodelay_if_0_iodly_00__tap_load;
  wire [8:0]iodelay_if_0_iodly_01__tap;
  wire [1:0]iodelay_if_0_iodly_01__tap_load;
  wire [8:0]iodelay_if_0_iodly_02__tap;
  wire [1:0]iodelay_if_0_iodly_02__tap_load;
  wire [8:0]iodelay_if_0_iodly_03__tap;
  wire [1:0]iodelay_if_0_iodly_03__tap_load;
  wire [8:0]iodelay_if_0_iodly_04__tap;
  wire [1:0]iodelay_if_0_iodly_04__tap_load;
  wire [8:0]iodelay_if_0_iodly_05__tap;
  wire [1:0]iodelay_if_0_iodly_05__tap_load;
  wire [8:0]iodelay_if_0_iodly_06__tap;
  wire [1:0]iodelay_if_0_iodly_06__tap_load;
  wire [8:0]iodelay_if_0_iodly_07__tap;
  wire [1:0]iodelay_if_0_iodly_07__tap_load;
  wire [8:0]iodelay_if_0_iodly_08__tap;
  wire [1:0]iodelay_if_0_iodly_08__tap_load;
  wire [8:0]iodelay_if_0_iodly_09__tap;
  wire [1:0]iodelay_if_0_iodly_09__tap_load;
  wire [8:0]iodelay_if_0_iodly_10__tap;
  wire [1:0]iodelay_if_0_iodly_10__tap_load;
  wire [8:0]iodelay_if_0_iodly_11__tap;
  wire [1:0]iodelay_if_0_iodly_11__tap_load;
  wire [8:0]iodelay_if_0_iodly_12__tap;
  wire [1:0]iodelay_if_0_iodly_12__tap_load;
  wire [8:0]iodelay_if_0_iodly_13__tap;
  wire [1:0]iodelay_if_0_iodly_13__tap_load;
  wire [8:0]iodelay_if_0_iodly_14__tap;
  wire [1:0]iodelay_if_0_iodly_14__tap_load;
  wire [8:0]iodelay_if_0_iodly_15__tap;
  wire [1:0]iodelay_if_0_iodly_15__tap_load;
  wire [8:0]iodelay_if_0_iodly_16__tap;
  wire [1:0]iodelay_if_0_iodly_16__tap_load;
  wire [8:0]iodelay_if_0_iodly_17__tap;
  wire [1:0]iodelay_if_0_iodly_17__tap_load;
  wire [8:0]iodelay_if_0_iodly_18__tap;
  wire [1:0]iodelay_if_0_iodly_18__tap_load;
  wire [8:0]iodelay_if_0_iodly_19__tap;
  wire [1:0]iodelay_if_0_iodly_19__tap_load;
  wire [8:0]iodelay_if_0_iodly_20__tap;
  wire [1:0]iodelay_if_0_iodly_20__tap_load;
  wire [8:0]iodelay_if_0_iodly_21__tap;
  wire [1:0]iodelay_if_0_iodly_21__tap_load;
  wire [8:0]iodelay_if_0_iodly_22__tap;
  wire [1:0]iodelay_if_0_iodly_22__tap_load;
  wire [8:0]iodelay_if_0_iodly_23__tap;
  wire [1:0]iodelay_if_0_iodly_23__tap_load;
  wire [8:0]iodelay_if_0_iodly_24__tap;
  wire [1:0]iodelay_if_0_iodly_24__tap_load;
  wire [8:0]iodelay_if_0_iodly_25__tap;
  wire [1:0]iodelay_if_0_iodly_25__tap_load;
  wire [8:0]iodelay_if_0_iodly_26__tap;
  wire [1:0]iodelay_if_0_iodly_26__tap_load;
  wire [8:0]iodelay_if_0_iodly_27__tap;
  wire [1:0]iodelay_if_0_iodly_27__tap_load;
  wire [8:0]iodelay_if_0_iodly_28__tap;
  wire [1:0]iodelay_if_0_iodly_28__tap_load;
  wire [8:0]iodelay_if_0_iodly_29__tap;
  wire [1:0]iodelay_if_0_iodly_29__tap_load;
  wire [8:0]iodelay_if_0_iodly_30__tap;
  wire [1:0]iodelay_if_0_iodly_30__tap_load;
  wire [8:0]iodelay_if_0_iodly_31__tap;
  wire [1:0]iodelay_if_0_iodly_31__tap_load;
  wire nvme_ctrl_0_dev_irq_assert;
  wire [31:0]nvme_ctrl_0_m0_axi_ARADDR;
  wire [1:0]nvme_ctrl_0_m0_axi_ARBURST;
  wire [3:0]nvme_ctrl_0_m0_axi_ARCACHE;
  wire [0:0]nvme_ctrl_0_m0_axi_ARID;
  wire [7:0]nvme_ctrl_0_m0_axi_ARLEN;
  wire nvme_ctrl_0_m0_axi_ARLOCK;
  wire [2:0]nvme_ctrl_0_m0_axi_ARPROT;
  wire [3:0]nvme_ctrl_0_m0_axi_ARQOS;
  wire nvme_ctrl_0_m0_axi_ARREADY;
  wire [2:0]nvme_ctrl_0_m0_axi_ARSIZE;
  wire [0:0]nvme_ctrl_0_m0_axi_ARUSER;
  wire nvme_ctrl_0_m0_axi_ARVALID;
  wire [31:0]nvme_ctrl_0_m0_axi_AWADDR;
  wire [1:0]nvme_ctrl_0_m0_axi_AWBURST;
  wire [3:0]nvme_ctrl_0_m0_axi_AWCACHE;
  wire [0:0]nvme_ctrl_0_m0_axi_AWID;
  wire [7:0]nvme_ctrl_0_m0_axi_AWLEN;
  wire nvme_ctrl_0_m0_axi_AWLOCK;
  wire [2:0]nvme_ctrl_0_m0_axi_AWPROT;
  wire [3:0]nvme_ctrl_0_m0_axi_AWQOS;
  wire nvme_ctrl_0_m0_axi_AWREADY;
  wire [2:0]nvme_ctrl_0_m0_axi_AWSIZE;
  wire [0:0]nvme_ctrl_0_m0_axi_AWUSER;
  wire nvme_ctrl_0_m0_axi_AWVALID;
  wire [0:0]nvme_ctrl_0_m0_axi_BID;
  wire nvme_ctrl_0_m0_axi_BREADY;
  wire [1:0]nvme_ctrl_0_m0_axi_BRESP;
  wire [0:0]nvme_ctrl_0_m0_axi_BUSER;
  wire nvme_ctrl_0_m0_axi_BVALID;
  wire [63:0]nvme_ctrl_0_m0_axi_RDATA;
  wire [0:0]nvme_ctrl_0_m0_axi_RID;
  wire nvme_ctrl_0_m0_axi_RLAST;
  wire nvme_ctrl_0_m0_axi_RREADY;
  wire [1:0]nvme_ctrl_0_m0_axi_RRESP;
  wire nvme_ctrl_0_m0_axi_RVALID;
  wire [63:0]nvme_ctrl_0_m0_axi_WDATA;
  wire nvme_ctrl_0_m0_axi_WLAST;
  wire nvme_ctrl_0_m0_axi_WREADY;
  wire [7:0]nvme_ctrl_0_m0_axi_WSTRB;
  wire nvme_ctrl_0_m0_axi_WVALID;
  wire [15:0]nvme_ctrl_0_pci_exp_rxn;
  wire [15:0]nvme_ctrl_0_pci_exp_rxp;
  wire [15:0]nvme_ctrl_0_pci_exp_txn;
  wire [15:0]nvme_ctrl_0_pci_exp_txp;
  wire nvme_ctrl_0_user_lnk_up;
  wire pcie_perst_n_0_1;
  wire pcie_ref_0_1_CLK_N;
  wire pcie_ref_0_1_CLK_P;
  wire pll_bank10_clk_out2;
  wire pll_bank10_clk_out3;
  wire pll_bank10_locked;
  wire pll_bank11_clk_out2;
  wire pll_bank11_clk_out3;
  wire pll_bank11_locked;
  wire pll_bank12_clk_out2;
  wire pll_bank12_clk_out3;
  wire pll_bank12_locked;
  wire pll_bank13_clk_out2;
  wire pll_bank13_clk_out3;
  wire pll_bank13_locked;
  wire [0:0]proc_sys_reset_0_peripheral_reset;
  wire [0:0]proc_sys_reset_1_peripheral_aresetn;
  wire [0:0]proc_sys_reset_1_peripheral_reset;
  wire [0:0]proc_sys_reset_2_interconnect_aresetn;
  wire [0:0]proc_sys_reset_3_peripheral_aresetn;
  wire [0:0]proc_sys_reset_3_peripheral_reset;
  wire [0:0]proc_sys_reset_4_peripheral_aresetn;
  wire [0:0]proc_sys_reset_4_peripheral_reset;
  wire [0:0]proc_sys_reset_5_peripheral_aresetn;
  wire [0:0]proc_sys_reset_5_peripheral_reset;
  wire [0:0]proc_sys_reset_6_peripheral_aresetn;
  wire [0:0]proc_sys_reset_7_peripheral_aresetn;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_CLK2;
  wire [48:0]smartconnect_0_M00_AXI_ARADDR;
  wire [1:0]smartconnect_0_M00_AXI_ARBURST;
  wire [3:0]smartconnect_0_M00_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M00_AXI_ARLEN;
  wire [0:0]smartconnect_0_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M00_AXI_ARPROT;
  wire [3:0]smartconnect_0_M00_AXI_ARQOS;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire [2:0]smartconnect_0_M00_AXI_ARSIZE;
  wire [0:0]smartconnect_0_M00_AXI_ARUSER;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [48:0]smartconnect_0_M00_AXI_AWADDR;
  wire [1:0]smartconnect_0_M00_AXI_AWBURST;
  wire [3:0]smartconnect_0_M00_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M00_AXI_AWLEN;
  wire [0:0]smartconnect_0_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M00_AXI_AWPROT;
  wire [3:0]smartconnect_0_M00_AXI_AWQOS;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire [2:0]smartconnect_0_M00_AXI_AWSIZE;
  wire [0:0]smartconnect_0_M00_AXI_AWUSER;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [63:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RLAST;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [63:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WLAST;
  wire smartconnect_0_M00_AXI_WREADY;
  wire [7:0]smartconnect_0_M00_AXI_WSTRB;
  wire smartconnect_0_M00_AXI_WVALID;
  wire [31:0]t4nfc_hlper_0_nfch_data_if_ARADDR;
  wire [1:0]t4nfc_hlper_0_nfch_data_if_ARBURST;
  wire [3:0]t4nfc_hlper_0_nfch_data_if_ARCACHE;
  wire [7:0]t4nfc_hlper_0_nfch_data_if_ARLEN;
  wire [2:0]t4nfc_hlper_0_nfch_data_if_ARPROT;
  wire t4nfc_hlper_0_nfch_data_if_ARREADY;
  wire [2:0]t4nfc_hlper_0_nfch_data_if_ARSIZE;
  wire t4nfc_hlper_0_nfch_data_if_ARVALID;
  wire [31:0]t4nfc_hlper_0_nfch_data_if_AWADDR;
  wire [1:0]t4nfc_hlper_0_nfch_data_if_AWBURST;
  wire [3:0]t4nfc_hlper_0_nfch_data_if_AWCACHE;
  wire [7:0]t4nfc_hlper_0_nfch_data_if_AWLEN;
  wire [2:0]t4nfc_hlper_0_nfch_data_if_AWPROT;
  wire t4nfc_hlper_0_nfch_data_if_AWREADY;
  wire [2:0]t4nfc_hlper_0_nfch_data_if_AWSIZE;
  wire t4nfc_hlper_0_nfch_data_if_AWVALID;
  wire t4nfc_hlper_0_nfch_data_if_BREADY;
  wire [1:0]t4nfc_hlper_0_nfch_data_if_BRESP;
  wire t4nfc_hlper_0_nfch_data_if_BVALID;
  wire [31:0]t4nfc_hlper_0_nfch_data_if_RDATA;
  wire t4nfc_hlper_0_nfch_data_if_RLAST;
  wire t4nfc_hlper_0_nfch_data_if_RREADY;
  wire [1:0]t4nfc_hlper_0_nfch_data_if_RRESP;
  wire t4nfc_hlper_0_nfch_data_if_RVALID;
  wire [31:0]t4nfc_hlper_0_nfch_data_if_WDATA;
  wire t4nfc_hlper_0_nfch_data_if_WLAST;
  wire t4nfc_hlper_0_nfch_data_if_WREADY;
  wire [3:0]t4nfc_hlper_0_nfch_data_if_WSTRB;
  wire t4nfc_hlper_0_nfch_data_if_WVALID;
  wire [31:0]t4nfc_hlper_0_to_ecc_if_RAddress;
  wire t4nfc_hlper_0_to_ecc_if_RCmdReady;
  wire t4nfc_hlper_0_to_ecc_if_RCmdValid;
  wire [31:0]t4nfc_hlper_0_to_ecc_if_RData;
  wire t4nfc_hlper_0_to_ecc_if_RLast;
  wire [15:0]t4nfc_hlper_0_to_ecc_if_RLength;
  wire [5:0]t4nfc_hlper_0_to_ecc_if_ROpcode;
  wire t4nfc_hlper_0_to_ecc_if_RReady;
  wire [4:0]t4nfc_hlper_0_to_ecc_if_RSourceID;
  wire [4:0]t4nfc_hlper_0_to_ecc_if_RTargetID;
  wire t4nfc_hlper_0_to_ecc_if_RValid;
  wire [31:0]t4nfc_hlper_0_to_ecc_if_WAddress;
  wire t4nfc_hlper_0_to_ecc_if_WCmdReady;
  wire t4nfc_hlper_0_to_ecc_if_WCmdValid;
  wire [31:0]t4nfc_hlper_0_to_ecc_if_WData;
  wire t4nfc_hlper_0_to_ecc_if_WLast;
  wire [15:0]t4nfc_hlper_0_to_ecc_if_WLength;
  wire [5:0]t4nfc_hlper_0_to_ecc_if_WOpcode;
  wire t4nfc_hlper_0_to_ecc_if_WReady;
  wire [4:0]t4nfc_hlper_0_to_ecc_if_WSourceID;
  wire [4:0]t4nfc_hlper_0_to_ecc_if_WTargetID;
  wire t4nfc_hlper_0_to_ecc_if_WValid;
  wire [31:0]t4nfc_hlper_0_ucode_if_ADDR;
  wire t4nfc_hlper_0_ucode_if_CLK;
  wire [31:0]t4nfc_hlper_0_ucode_if_DIN;
  wire [31:0]t4nfc_hlper_0_ucode_if_DOUT;
  wire t4nfc_hlper_0_ucode_if_EN;
  wire t4nfc_hlper_0_ucode_if_RST;
  wire t4nfc_hlper_0_ucode_if_WE;
  wire [31:0]t4nfc_hlper_0_v2nfc_if_Address;
  wire t4nfc_hlper_0_v2nfc_if_CMDReady;
  wire t4nfc_hlper_0_v2nfc_if_CMDValid;
  wire [15:0]t4nfc_hlper_0_v2nfc_if_Length;
  wire [5:0]t4nfc_hlper_0_v2nfc_if_Opcode;
  wire [31:0]t4nfc_hlper_0_v2nfc_if_ReadData;
  wire t4nfc_hlper_0_v2nfc_if_ReadLast;
  wire t4nfc_hlper_0_v2nfc_if_ReadReady;
  wire t4nfc_hlper_0_v2nfc_if_ReadValid;
  wire [4:0]t4nfc_hlper_0_v2nfc_if_SourceID;
  wire [4:0]t4nfc_hlper_0_v2nfc_if_TargetID;
  wire [31:0]t4nfc_hlper_0_v2nfc_if_WriteData;
  wire t4nfc_hlper_0_v2nfc_if_WriteLast;
  wire t4nfc_hlper_0_v2nfc_if_WriteReady;
  wire t4nfc_hlper_0_v2nfc_if_WriteValid;
  wire [31:0]t4nfc_hlper_1_to_ecc_if_RAddress;
  wire t4nfc_hlper_1_to_ecc_if_RCmdReady;
  wire t4nfc_hlper_1_to_ecc_if_RCmdValid;
  wire [31:0]t4nfc_hlper_1_to_ecc_if_RData;
  wire t4nfc_hlper_1_to_ecc_if_RLast;
  wire [15:0]t4nfc_hlper_1_to_ecc_if_RLength;
  wire [5:0]t4nfc_hlper_1_to_ecc_if_ROpcode;
  wire t4nfc_hlper_1_to_ecc_if_RReady;
  wire [4:0]t4nfc_hlper_1_to_ecc_if_RSourceID;
  wire [4:0]t4nfc_hlper_1_to_ecc_if_RTargetID;
  wire t4nfc_hlper_1_to_ecc_if_RValid;
  wire [31:0]t4nfc_hlper_1_to_ecc_if_WAddress;
  wire t4nfc_hlper_1_to_ecc_if_WCmdReady;
  wire t4nfc_hlper_1_to_ecc_if_WCmdValid;
  wire [31:0]t4nfc_hlper_1_to_ecc_if_WData;
  wire t4nfc_hlper_1_to_ecc_if_WLast;
  wire [15:0]t4nfc_hlper_1_to_ecc_if_WLength;
  wire [5:0]t4nfc_hlper_1_to_ecc_if_WOpcode;
  wire t4nfc_hlper_1_to_ecc_if_WReady;
  wire [4:0]t4nfc_hlper_1_to_ecc_if_WSourceID;
  wire [4:0]t4nfc_hlper_1_to_ecc_if_WTargetID;
  wire t4nfc_hlper_1_to_ecc_if_WValid;
  wire [31:0]t4nfc_hlper_1_ucode_if_ADDR;
  wire t4nfc_hlper_1_ucode_if_CLK;
  wire [31:0]t4nfc_hlper_1_ucode_if_DIN;
  wire [31:0]t4nfc_hlper_1_ucode_if_DOUT;
  wire t4nfc_hlper_1_ucode_if_EN;
  wire t4nfc_hlper_1_ucode_if_RST;
  wire t4nfc_hlper_1_ucode_if_WE;
  wire [31:0]t4nfc_hlper_1_v2nfc_if_Address;
  wire t4nfc_hlper_1_v2nfc_if_CMDReady;
  wire t4nfc_hlper_1_v2nfc_if_CMDValid;
  wire [15:0]t4nfc_hlper_1_v2nfc_if_Length;
  wire [5:0]t4nfc_hlper_1_v2nfc_if_Opcode;
  wire [31:0]t4nfc_hlper_1_v2nfc_if_ReadData;
  wire t4nfc_hlper_1_v2nfc_if_ReadLast;
  wire t4nfc_hlper_1_v2nfc_if_ReadReady;
  wire t4nfc_hlper_1_v2nfc_if_ReadValid;
  wire [4:0]t4nfc_hlper_1_v2nfc_if_SourceID;
  wire [4:0]t4nfc_hlper_1_v2nfc_if_TargetID;
  wire [31:0]t4nfc_hlper_1_v2nfc_if_WriteData;
  wire t4nfc_hlper_1_v2nfc_if_WriteLast;
  wire t4nfc_hlper_1_v2nfc_if_WriteReady;
  wire t4nfc_hlper_1_v2nfc_if_WriteValid;
  wire [31:0]t4nfc_hlper_2_to_ecc_if_RAddress;
  wire t4nfc_hlper_2_to_ecc_if_RCmdReady;
  wire t4nfc_hlper_2_to_ecc_if_RCmdValid;
  wire [31:0]t4nfc_hlper_2_to_ecc_if_RData;
  wire t4nfc_hlper_2_to_ecc_if_RLast;
  wire [15:0]t4nfc_hlper_2_to_ecc_if_RLength;
  wire [5:0]t4nfc_hlper_2_to_ecc_if_ROpcode;
  wire t4nfc_hlper_2_to_ecc_if_RReady;
  wire [4:0]t4nfc_hlper_2_to_ecc_if_RSourceID;
  wire [4:0]t4nfc_hlper_2_to_ecc_if_RTargetID;
  wire t4nfc_hlper_2_to_ecc_if_RValid;
  wire [31:0]t4nfc_hlper_2_to_ecc_if_WAddress;
  wire t4nfc_hlper_2_to_ecc_if_WCmdReady;
  wire t4nfc_hlper_2_to_ecc_if_WCmdValid;
  wire [31:0]t4nfc_hlper_2_to_ecc_if_WData;
  wire t4nfc_hlper_2_to_ecc_if_WLast;
  wire [15:0]t4nfc_hlper_2_to_ecc_if_WLength;
  wire [5:0]t4nfc_hlper_2_to_ecc_if_WOpcode;
  wire t4nfc_hlper_2_to_ecc_if_WReady;
  wire [4:0]t4nfc_hlper_2_to_ecc_if_WSourceID;
  wire [4:0]t4nfc_hlper_2_to_ecc_if_WTargetID;
  wire t4nfc_hlper_2_to_ecc_if_WValid;
  wire [31:0]t4nfc_hlper_2_ucode_if_ADDR;
  wire t4nfc_hlper_2_ucode_if_CLK;
  wire [31:0]t4nfc_hlper_2_ucode_if_DIN;
  wire [31:0]t4nfc_hlper_2_ucode_if_DOUT;
  wire t4nfc_hlper_2_ucode_if_EN;
  wire t4nfc_hlper_2_ucode_if_RST;
  wire t4nfc_hlper_2_ucode_if_WE;
  wire [31:0]t4nfc_hlper_2_v2nfc_if_Address;
  wire t4nfc_hlper_2_v2nfc_if_CMDReady;
  wire t4nfc_hlper_2_v2nfc_if_CMDValid;
  wire [15:0]t4nfc_hlper_2_v2nfc_if_Length;
  wire [5:0]t4nfc_hlper_2_v2nfc_if_Opcode;
  wire [31:0]t4nfc_hlper_2_v2nfc_if_ReadData;
  wire t4nfc_hlper_2_v2nfc_if_ReadLast;
  wire t4nfc_hlper_2_v2nfc_if_ReadReady;
  wire t4nfc_hlper_2_v2nfc_if_ReadValid;
  wire [4:0]t4nfc_hlper_2_v2nfc_if_SourceID;
  wire [4:0]t4nfc_hlper_2_v2nfc_if_TargetID;
  wire [31:0]t4nfc_hlper_2_v2nfc_if_WriteData;
  wire t4nfc_hlper_2_v2nfc_if_WriteLast;
  wire t4nfc_hlper_2_v2nfc_if_WriteReady;
  wire t4nfc_hlper_2_v2nfc_if_WriteValid;
  wire [31:0]t4nfc_hlper_3_to_ecc_if_RAddress;
  wire t4nfc_hlper_3_to_ecc_if_RCmdReady;
  wire t4nfc_hlper_3_to_ecc_if_RCmdValid;
  wire [31:0]t4nfc_hlper_3_to_ecc_if_RData;
  wire t4nfc_hlper_3_to_ecc_if_RLast;
  wire [15:0]t4nfc_hlper_3_to_ecc_if_RLength;
  wire [5:0]t4nfc_hlper_3_to_ecc_if_ROpcode;
  wire t4nfc_hlper_3_to_ecc_if_RReady;
  wire [4:0]t4nfc_hlper_3_to_ecc_if_RSourceID;
  wire [4:0]t4nfc_hlper_3_to_ecc_if_RTargetID;
  wire t4nfc_hlper_3_to_ecc_if_RValid;
  wire [31:0]t4nfc_hlper_3_to_ecc_if_WAddress;
  wire t4nfc_hlper_3_to_ecc_if_WCmdReady;
  wire t4nfc_hlper_3_to_ecc_if_WCmdValid;
  wire [31:0]t4nfc_hlper_3_to_ecc_if_WData;
  wire t4nfc_hlper_3_to_ecc_if_WLast;
  wire [15:0]t4nfc_hlper_3_to_ecc_if_WLength;
  wire [5:0]t4nfc_hlper_3_to_ecc_if_WOpcode;
  wire t4nfc_hlper_3_to_ecc_if_WReady;
  wire [4:0]t4nfc_hlper_3_to_ecc_if_WSourceID;
  wire [4:0]t4nfc_hlper_3_to_ecc_if_WTargetID;
  wire t4nfc_hlper_3_to_ecc_if_WValid;
  wire [31:0]t4nfc_hlper_3_ucode_if_ADDR;
  wire t4nfc_hlper_3_ucode_if_CLK;
  wire [31:0]t4nfc_hlper_3_ucode_if_DIN;
  wire [31:0]t4nfc_hlper_3_ucode_if_DOUT;
  wire t4nfc_hlper_3_ucode_if_EN;
  wire t4nfc_hlper_3_ucode_if_RST;
  wire t4nfc_hlper_3_ucode_if_WE;
  wire [31:0]t4nfc_hlper_3_v2nfc_if_Address;
  wire t4nfc_hlper_3_v2nfc_if_CMDReady;
  wire t4nfc_hlper_3_v2nfc_if_CMDValid;
  wire [15:0]t4nfc_hlper_3_v2nfc_if_Length;
  wire [5:0]t4nfc_hlper_3_v2nfc_if_Opcode;
  wire [31:0]t4nfc_hlper_3_v2nfc_if_ReadData;
  wire t4nfc_hlper_3_v2nfc_if_ReadLast;
  wire t4nfc_hlper_3_v2nfc_if_ReadReady;
  wire t4nfc_hlper_3_v2nfc_if_ReadValid;
  wire [4:0]t4nfc_hlper_3_v2nfc_if_SourceID;
  wire [4:0]t4nfc_hlper_3_v2nfc_if_TargetID;
  wire [31:0]t4nfc_hlper_3_v2nfc_if_WriteData;
  wire t4nfc_hlper_3_v2nfc_if_WriteLast;
  wire t4nfc_hlper_3_v2nfc_if_WriteReady;
  wire t4nfc_hlper_3_v2nfc_if_WriteValid;
  wire v2nfc_0_nand_if_NAND_ALE;
  wire [7:0]v2nfc_0_nand_if_NAND_CE;
  wire v2nfc_0_nand_if_NAND_CLE;
  wire [7:0]v2nfc_0_nand_if_NAND_DQ;
  wire v2nfc_0_nand_if_NAND_DQS_N;
  wire v2nfc_0_nand_if_NAND_DQS_P;
  wire [7:0]v2nfc_0_nand_if_NAND_RB;
  wire v2nfc_0_nand_if_NAND_RE_N;
  wire v2nfc_0_nand_if_NAND_RE_P;
  wire v2nfc_0_nand_if_NAND_WE;
  wire v2nfc_0_nand_if_NAND_WP;
  wire [7:0]v2nfc_0_oReadyBusy;
  wire v2nfc_1_nand_if_NAND_ALE;
  wire [7:0]v2nfc_1_nand_if_NAND_CE;
  wire v2nfc_1_nand_if_NAND_CLE;
  wire [7:0]v2nfc_1_nand_if_NAND_DQ;
  wire v2nfc_1_nand_if_NAND_DQS_N;
  wire v2nfc_1_nand_if_NAND_DQS_P;
  wire [7:0]v2nfc_1_nand_if_NAND_RB;
  wire v2nfc_1_nand_if_NAND_RE_N;
  wire v2nfc_1_nand_if_NAND_RE_P;
  wire v2nfc_1_nand_if_NAND_WE;
  wire v2nfc_1_nand_if_NAND_WP;
  wire [7:0]v2nfc_1_oReadyBusy;
  wire v2nfc_2_nand_if_NAND_ALE;
  wire [7:0]v2nfc_2_nand_if_NAND_CE;
  wire v2nfc_2_nand_if_NAND_CLE;
  wire [7:0]v2nfc_2_nand_if_NAND_DQ;
  wire v2nfc_2_nand_if_NAND_DQS_N;
  wire v2nfc_2_nand_if_NAND_DQS_P;
  wire [7:0]v2nfc_2_nand_if_NAND_RB;
  wire v2nfc_2_nand_if_NAND_RE_N;
  wire v2nfc_2_nand_if_NAND_RE_P;
  wire v2nfc_2_nand_if_NAND_WE;
  wire v2nfc_2_nand_if_NAND_WP;
  wire [7:0]v2nfc_2_oReadyBusy;
  wire v2nfc_3_nand_if_NAND_ALE;
  wire [7:0]v2nfc_3_nand_if_NAND_CE;
  wire v2nfc_3_nand_if_NAND_CLE;
  wire [7:0]v2nfc_3_nand_if_NAND_DQ;
  wire v2nfc_3_nand_if_NAND_DQS_N;
  wire v2nfc_3_nand_if_NAND_DQS_P;
  wire [7:0]v2nfc_3_nand_if_NAND_RB;
  wire v2nfc_3_nand_if_NAND_RE_N;
  wire v2nfc_3_nand_if_NAND_RE_P;
  wire v2nfc_3_nand_if_NAND_WE;
  wire v2nfc_3_nand_if_NAND_WP;
  wire [7:0]v2nfc_3_oReadyBusy;
  wire [0:0]xlconcat_0_dout;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID;
  wire [63:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID;
  wire [63:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID;
  wire zynq_ultra_ps_e_0_pl_clk2;
  wire zynq_ultra_ps_e_0_pl_clk3;
  wire zynq_ultra_ps_e_0_pl_resetn0;
  wire zynq_ultra_ps_e_0_pl_resetn1;
  wire zynq_ultra_ps_e_0_pl_resetn2;
  wire zynq_ultra_ps_e_0_pl_resetn3;

  assign nand_if_0_nand_ale = v2nfc_0_nand_if_NAND_ALE;
  assign nand_if_0_nand_ce[7:0] = v2nfc_0_nand_if_NAND_CE;
  assign nand_if_0_nand_cle = v2nfc_0_nand_if_NAND_CLE;
  assign nand_if_0_nand_re_n = v2nfc_0_nand_if_NAND_RE_N;
  assign nand_if_0_nand_re_p = v2nfc_0_nand_if_NAND_RE_P;
  assign nand_if_0_nand_we = v2nfc_0_nand_if_NAND_WE;
  assign nand_if_0_nand_wp = v2nfc_0_nand_if_NAND_WP;
  assign nand_if_1_nand_ale = v2nfc_1_nand_if_NAND_ALE;
  assign nand_if_1_nand_ce[7:0] = v2nfc_1_nand_if_NAND_CE;
  assign nand_if_1_nand_cle = v2nfc_1_nand_if_NAND_CLE;
  assign nand_if_1_nand_re_n = v2nfc_1_nand_if_NAND_RE_N;
  assign nand_if_1_nand_re_p = v2nfc_1_nand_if_NAND_RE_P;
  assign nand_if_1_nand_we = v2nfc_1_nand_if_NAND_WE;
  assign nand_if_1_nand_wp = v2nfc_1_nand_if_NAND_WP;
  assign nand_if_2_nand_ale = v2nfc_2_nand_if_NAND_ALE;
  assign nand_if_2_nand_ce[7:0] = v2nfc_2_nand_if_NAND_CE;
  assign nand_if_2_nand_cle = v2nfc_2_nand_if_NAND_CLE;
  assign nand_if_2_nand_re_n = v2nfc_2_nand_if_NAND_RE_N;
  assign nand_if_2_nand_re_p = v2nfc_2_nand_if_NAND_RE_P;
  assign nand_if_2_nand_we = v2nfc_2_nand_if_NAND_WE;
  assign nand_if_2_nand_wp = v2nfc_2_nand_if_NAND_WP;
  assign nand_if_3_nand_ale = v2nfc_3_nand_if_NAND_ALE;
  assign nand_if_3_nand_ce[7:0] = v2nfc_3_nand_if_NAND_CE;
  assign nand_if_3_nand_cle = v2nfc_3_nand_if_NAND_CLE;
  assign nand_if_3_nand_re_n = v2nfc_3_nand_if_NAND_RE_N;
  assign nand_if_3_nand_re_p = v2nfc_3_nand_if_NAND_RE_P;
  assign nand_if_3_nand_we = v2nfc_3_nand_if_NAND_WE;
  assign nand_if_3_nand_wp = v2nfc_3_nand_if_NAND_WP;
  assign nvme_ctrl_0_pci_exp_rxn = pci_exp_0_rxn[15:0];
  assign nvme_ctrl_0_pci_exp_rxp = pci_exp_0_rxp[15:0];
  assign pci_exp_0_txn[15:0] = nvme_ctrl_0_pci_exp_txn;
  assign pci_exp_0_txp[15:0] = nvme_ctrl_0_pci_exp_txp;
  assign pcie_perst_n_0_1 = pcie_perst_n;
  assign pcie_ref_0_1_CLK_N = pcie_ref_clk_n;
  assign pcie_ref_0_1_CLK_P = pcie_ref_clk_p;
  assign user_lnk_up_0 = nvme_ctrl_0_user_lnk_up;
  assign v2nfc_0_nand_if_NAND_RB = nand_if_0_nand_rb[7:0];
  assign v2nfc_1_nand_if_NAND_RB = nand_if_1_nand_rb[7:0];
  assign v2nfc_2_nand_if_NAND_RB = nand_if_2_nand_rb[7:0];
  assign v2nfc_3_nand_if_NAND_RB = nand_if_3_nand_rb[7:0];
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x45000000 32 > sys_top blk_mem_gen_0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  sys_top_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(pll_bank10_clk_out2),
        .s_axi_araddr(gpic_0_M01_AXI_ARADDR),
        .s_axi_arburst(gpic_0_M01_AXI_ARBURST),
        .s_axi_arcache(gpic_0_M01_AXI_ARCACHE),
        .s_axi_aresetn(proc_sys_reset_5_peripheral_aresetn),
        .s_axi_arlen(gpic_0_M01_AXI_ARLEN),
        .s_axi_arlock(gpic_0_M01_AXI_ARLOCK),
        .s_axi_arprot(gpic_0_M01_AXI_ARPROT),
        .s_axi_arready(gpic_0_M01_AXI_ARREADY),
        .s_axi_arsize(gpic_0_M01_AXI_ARSIZE),
        .s_axi_arvalid(gpic_0_M01_AXI_ARVALID),
        .s_axi_awaddr(gpic_0_M01_AXI_AWADDR),
        .s_axi_awburst(gpic_0_M01_AXI_AWBURST),
        .s_axi_awcache(gpic_0_M01_AXI_AWCACHE),
        .s_axi_awlen(gpic_0_M01_AXI_AWLEN),
        .s_axi_awlock(gpic_0_M01_AXI_AWLOCK),
        .s_axi_awprot(gpic_0_M01_AXI_AWPROT),
        .s_axi_awready(gpic_0_M01_AXI_AWREADY),
        .s_axi_awsize(gpic_0_M01_AXI_AWSIZE),
        .s_axi_awvalid(gpic_0_M01_AXI_AWVALID),
        .s_axi_bready(gpic_0_M01_AXI_BREADY),
        .s_axi_bresp(gpic_0_M01_AXI_BRESP),
        .s_axi_bvalid(gpic_0_M01_AXI_BVALID),
        .s_axi_rdata(gpic_0_M01_AXI_RDATA),
        .s_axi_rlast(gpic_0_M01_AXI_RLAST),
        .s_axi_rready(gpic_0_M01_AXI_RREADY),
        .s_axi_rresp(gpic_0_M01_AXI_RRESP),
        .s_axi_rvalid(gpic_0_M01_AXI_RVALID),
        .s_axi_wdata(gpic_0_M01_AXI_WDATA),
        .s_axi_wlast(gpic_0_M01_AXI_WLAST),
        .s_axi_wready(gpic_0_M01_AXI_WREADY),
        .s_axi_wstrb(gpic_0_M01_AXI_WSTRB),
        .s_axi_wvalid(gpic_0_M01_AXI_WVALID));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x45100000 32 > sys_top blk_mem_gen_1" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  sys_top_axi_bram_ctrl_1_0 axi_bram_ctrl_1
       (.bram_addr_a(axi_bram_ctrl_1_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_1_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_1_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_1_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_1_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_1_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_1_BRAM_PORTA_DIN),
        .s_axi_aclk(pll_bank11_clk_out2),
        .s_axi_araddr(gpic_0_M03_AXI_ARADDR),
        .s_axi_arburst(gpic_0_M03_AXI_ARBURST),
        .s_axi_arcache(gpic_0_M03_AXI_ARCACHE),
        .s_axi_aresetn(proc_sys_reset_3_peripheral_aresetn),
        .s_axi_arlen(gpic_0_M03_AXI_ARLEN),
        .s_axi_arlock(gpic_0_M03_AXI_ARLOCK),
        .s_axi_arprot(gpic_0_M03_AXI_ARPROT),
        .s_axi_arready(gpic_0_M03_AXI_ARREADY),
        .s_axi_arsize(gpic_0_M03_AXI_ARSIZE),
        .s_axi_arvalid(gpic_0_M03_AXI_ARVALID),
        .s_axi_awaddr(gpic_0_M03_AXI_AWADDR),
        .s_axi_awburst(gpic_0_M03_AXI_AWBURST),
        .s_axi_awcache(gpic_0_M03_AXI_AWCACHE),
        .s_axi_awlen(gpic_0_M03_AXI_AWLEN),
        .s_axi_awlock(gpic_0_M03_AXI_AWLOCK),
        .s_axi_awprot(gpic_0_M03_AXI_AWPROT),
        .s_axi_awready(gpic_0_M03_AXI_AWREADY),
        .s_axi_awsize(gpic_0_M03_AXI_AWSIZE),
        .s_axi_awvalid(gpic_0_M03_AXI_AWVALID),
        .s_axi_bready(gpic_0_M03_AXI_BREADY),
        .s_axi_bresp(gpic_0_M03_AXI_BRESP),
        .s_axi_bvalid(gpic_0_M03_AXI_BVALID),
        .s_axi_rdata(gpic_0_M03_AXI_RDATA),
        .s_axi_rlast(gpic_0_M03_AXI_RLAST),
        .s_axi_rready(gpic_0_M03_AXI_RREADY),
        .s_axi_rresp(gpic_0_M03_AXI_RRESP),
        .s_axi_rvalid(gpic_0_M03_AXI_RVALID),
        .s_axi_wdata(gpic_0_M03_AXI_WDATA),
        .s_axi_wlast(gpic_0_M03_AXI_WLAST),
        .s_axi_wready(gpic_0_M03_AXI_WREADY),
        .s_axi_wstrb(gpic_0_M03_AXI_WSTRB),
        .s_axi_wvalid(gpic_0_M03_AXI_WVALID));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x45200000 32 > sys_top blk_mem_gen_2" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  sys_top_axi_bram_ctrl_2_0 axi_bram_ctrl_2
       (.bram_addr_a(axi_bram_ctrl_2_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_2_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_2_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_2_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_2_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_2_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_2_BRAM_PORTA_DIN),
        .s_axi_aclk(pll_bank12_clk_out2),
        .s_axi_araddr(gpic_0_M05_AXI_ARADDR),
        .s_axi_arburst(gpic_0_M05_AXI_ARBURST),
        .s_axi_arcache(gpic_0_M05_AXI_ARCACHE),
        .s_axi_aresetn(proc_sys_reset_4_peripheral_aresetn),
        .s_axi_arlen(gpic_0_M05_AXI_ARLEN),
        .s_axi_arlock(gpic_0_M05_AXI_ARLOCK),
        .s_axi_arprot(gpic_0_M05_AXI_ARPROT),
        .s_axi_arready(gpic_0_M05_AXI_ARREADY),
        .s_axi_arsize(gpic_0_M05_AXI_ARSIZE),
        .s_axi_arvalid(gpic_0_M05_AXI_ARVALID),
        .s_axi_awaddr(gpic_0_M05_AXI_AWADDR),
        .s_axi_awburst(gpic_0_M05_AXI_AWBURST),
        .s_axi_awcache(gpic_0_M05_AXI_AWCACHE),
        .s_axi_awlen(gpic_0_M05_AXI_AWLEN),
        .s_axi_awlock(gpic_0_M05_AXI_AWLOCK),
        .s_axi_awprot(gpic_0_M05_AXI_AWPROT),
        .s_axi_awready(gpic_0_M05_AXI_AWREADY),
        .s_axi_awsize(gpic_0_M05_AXI_AWSIZE),
        .s_axi_awvalid(gpic_0_M05_AXI_AWVALID),
        .s_axi_bready(gpic_0_M05_AXI_BREADY),
        .s_axi_bresp(gpic_0_M05_AXI_BRESP),
        .s_axi_bvalid(gpic_0_M05_AXI_BVALID),
        .s_axi_rdata(gpic_0_M05_AXI_RDATA),
        .s_axi_rlast(gpic_0_M05_AXI_RLAST),
        .s_axi_rready(gpic_0_M05_AXI_RREADY),
        .s_axi_rresp(gpic_0_M05_AXI_RRESP),
        .s_axi_rvalid(gpic_0_M05_AXI_RVALID),
        .s_axi_wdata(gpic_0_M05_AXI_WDATA),
        .s_axi_wlast(gpic_0_M05_AXI_WLAST),
        .s_axi_wready(gpic_0_M05_AXI_WREADY),
        .s_axi_wstrb(gpic_0_M05_AXI_WSTRB),
        .s_axi_wvalid(gpic_0_M05_AXI_WVALID));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x45300000 32 > sys_top blk_mem_gen_3" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  sys_top_axi_bram_ctrl_3_0 axi_bram_ctrl_3
       (.bram_addr_a(axi_bram_ctrl_3_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_3_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_3_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_3_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_3_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_3_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_3_BRAM_PORTA_DIN),
        .s_axi_aclk(pll_bank13_clk_out2),
        .s_axi_araddr(gpic_0_M07_AXI_ARADDR),
        .s_axi_arburst(gpic_0_M07_AXI_ARBURST),
        .s_axi_arcache(gpic_0_M07_AXI_ARCACHE),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arlen(gpic_0_M07_AXI_ARLEN),
        .s_axi_arlock(gpic_0_M07_AXI_ARLOCK),
        .s_axi_arprot(gpic_0_M07_AXI_ARPROT),
        .s_axi_arready(gpic_0_M07_AXI_ARREADY),
        .s_axi_arsize(gpic_0_M07_AXI_ARSIZE),
        .s_axi_arvalid(gpic_0_M07_AXI_ARVALID),
        .s_axi_awaddr(gpic_0_M07_AXI_AWADDR),
        .s_axi_awburst(gpic_0_M07_AXI_AWBURST),
        .s_axi_awcache(gpic_0_M07_AXI_AWCACHE),
        .s_axi_awlen(gpic_0_M07_AXI_AWLEN),
        .s_axi_awlock(gpic_0_M07_AXI_AWLOCK),
        .s_axi_awprot(gpic_0_M07_AXI_AWPROT),
        .s_axi_awready(gpic_0_M07_AXI_AWREADY),
        .s_axi_awsize(gpic_0_M07_AXI_AWSIZE),
        .s_axi_awvalid(gpic_0_M07_AXI_AWVALID),
        .s_axi_bready(gpic_0_M07_AXI_BREADY),
        .s_axi_bresp(gpic_0_M07_AXI_BRESP),
        .s_axi_bvalid(gpic_0_M07_AXI_BVALID),
        .s_axi_rdata(gpic_0_M07_AXI_RDATA),
        .s_axi_rlast(gpic_0_M07_AXI_RLAST),
        .s_axi_rready(gpic_0_M07_AXI_RREADY),
        .s_axi_rresp(gpic_0_M07_AXI_RRESP),
        .s_axi_rvalid(gpic_0_M07_AXI_RVALID),
        .s_axi_wdata(gpic_0_M07_AXI_WDATA),
        .s_axi_wlast(gpic_0_M07_AXI_WLAST),
        .s_axi_wready(gpic_0_M07_AXI_WREADY),
        .s_axi_wstrb(gpic_0_M07_AXI_WSTRB),
        .s_axi_wvalid(gpic_0_M07_AXI_WVALID));
  sys_top_bch_sccs_256B_21B_13b_0_0 bch_sccs_256B_21B_13b_0
       (.iClock(pll_bank10_clk_out2),
        .iCorrectionFail(bch_sccs_256B_21B_13b_0_bch_skes_if_CorrectionFail),
        .iELPCoefficients(bch_sccs_256B_21B_13b_0_bch_skes_if_ELPCoefficients),
        .iErrorCount(bch_sccs_256B_21B_13b_0_bch_skes_if_ErrorCount),
        .iErroredChunk(bch_sccs_256B_21B_13b_0_bch_skes_if_ErroredChunk),
        .iIntraSharedKESEnd(bch_sccs_256B_21B_13b_0_bch_skes_if_IntraSharedKESEnd),
        .iReset(proc_sys_reset_5_peripheral_reset),
        .iSharedKESReady(bch_sccs_256B_21B_13b_0_bch_skes_if_SharedKESReady),
        .iToECCRAddress(t4nfc_hlper_0_to_ecc_if_RAddress),
        .iToECCRCmdValid(t4nfc_hlper_0_to_ecc_if_RCmdValid),
        .iToECCRLength(t4nfc_hlper_0_to_ecc_if_RLength),
        .iToECCROpcode(t4nfc_hlper_0_to_ecc_if_ROpcode),
        .iToECCRReady(t4nfc_hlper_0_to_ecc_if_RReady),
        .iToECCRSourceID(t4nfc_hlper_0_to_ecc_if_RSourceID),
        .iToECCRTargetID(t4nfc_hlper_0_to_ecc_if_RTargetID),
        .iToECCWAddress(t4nfc_hlper_0_to_ecc_if_WAddress),
        .iToECCWCmdValid(t4nfc_hlper_0_to_ecc_if_WCmdValid),
        .iToECCWData(t4nfc_hlper_0_to_ecc_if_WData),
        .iToECCWLast(t4nfc_hlper_0_to_ecc_if_WLast),
        .iToECCWLength(t4nfc_hlper_0_to_ecc_if_WLength),
        .iToECCWOpcode(t4nfc_hlper_0_to_ecc_if_WOpcode),
        .iToECCWSourceID(t4nfc_hlper_0_to_ecc_if_WSourceID),
        .iToECCWTargetID(t4nfc_hlper_0_to_ecc_if_WTargetID),
        .iToECCWValid(t4nfc_hlper_0_to_ecc_if_WValid),
        .ifromECCRCmdReady(bch_sccs_256B_21B_13b_0_from_ecc_if_RCmdReady),
        .ifromECCRData(bch_sccs_256B_21B_13b_0_from_ecc_if_RData),
        .ifromECCRLast(bch_sccs_256B_21B_13b_0_from_ecc_if_RLast),
        .ifromECCRValid(bch_sccs_256B_21B_13b_0_from_ecc_if_RValid),
        .ifromECCWCmdReady(bch_sccs_256B_21B_13b_0_from_ecc_if_WCmdReady),
        .ifromECCWReady(bch_sccs_256B_21B_13b_0_from_ecc_if_WReady),
        .oCSAvailable(bch_sccs_256B_21B_13b_0_bch_skes_if_CSAvailable),
        .oDecodeNeeded(bch_sccs_256B_21B_13b_0_bch_skes_if_DecodeNeeded),
        .oErrorDetectionEnd(bch_sccs_256B_21B_13b_0_bch_skes_if_ErrorDetectionEnd),
        .oSyndromes(bch_sccs_256B_21B_13b_0_bch_skes_if_Syndromes),
        .oToECCRCmdReady(t4nfc_hlper_0_to_ecc_if_RCmdReady),
        .oToECCRData(t4nfc_hlper_0_to_ecc_if_RData),
        .oToECCRLast(t4nfc_hlper_0_to_ecc_if_RLast),
        .oToECCRValid(t4nfc_hlper_0_to_ecc_if_RValid),
        .oToECCWCmdReady(t4nfc_hlper_0_to_ecc_if_WCmdReady),
        .oToECCWReady(t4nfc_hlper_0_to_ecc_if_WReady),
        .ofromECCRAddress(bch_sccs_256B_21B_13b_0_from_ecc_if_RAddress),
        .ofromECCRCmdValid(bch_sccs_256B_21B_13b_0_from_ecc_if_RCmdValid),
        .ofromECCRLength(bch_sccs_256B_21B_13b_0_from_ecc_if_RLength),
        .ofromECCROpcode(bch_sccs_256B_21B_13b_0_from_ecc_if_ROpcode),
        .ofromECCRReady(bch_sccs_256B_21B_13b_0_from_ecc_if_RReady),
        .ofromECCRSourceID(bch_sccs_256B_21B_13b_0_from_ecc_if_RSourceID),
        .ofromECCRTargetID(bch_sccs_256B_21B_13b_0_from_ecc_if_RTargetID),
        .ofromECCWAddress(bch_sccs_256B_21B_13b_0_from_ecc_if_WAddress),
        .ofromECCWCmdValid(bch_sccs_256B_21B_13b_0_from_ecc_if_WCmdValid),
        .ofromECCWData(bch_sccs_256B_21B_13b_0_from_ecc_if_WData),
        .ofromECCWLast(bch_sccs_256B_21B_13b_0_from_ecc_if_WLast),
        .ofromECCWLength(bch_sccs_256B_21B_13b_0_from_ecc_if_WLength),
        .ofromECCWOpcode(bch_sccs_256B_21B_13b_0_from_ecc_if_WOpcode),
        .ofromECCWSourceID(bch_sccs_256B_21B_13b_0_from_ecc_if_WSourceID),
        .ofromECCWTargetID(bch_sccs_256B_21B_13b_0_from_ecc_if_WTargetID),
        .ofromECCWValid(bch_sccs_256B_21B_13b_0_from_ecc_if_WValid));
  sys_top_bch_sccs_256B_21B_13b_1_0 bch_sccs_256B_21B_13b_1
       (.iClock(pll_bank11_clk_out2),
        .iCorrectionFail(bch_sccs_256B_21B_13b_1_bch_skes_if_CorrectionFail),
        .iELPCoefficients(bch_sccs_256B_21B_13b_1_bch_skes_if_ELPCoefficients),
        .iErrorCount(bch_sccs_256B_21B_13b_1_bch_skes_if_ErrorCount),
        .iErroredChunk(bch_sccs_256B_21B_13b_1_bch_skes_if_ErroredChunk),
        .iIntraSharedKESEnd(bch_sccs_256B_21B_13b_1_bch_skes_if_IntraSharedKESEnd),
        .iReset(proc_sys_reset_3_peripheral_reset),
        .iSharedKESReady(bch_sccs_256B_21B_13b_1_bch_skes_if_SharedKESReady),
        .iToECCRAddress(t4nfc_hlper_1_to_ecc_if_RAddress),
        .iToECCRCmdValid(t4nfc_hlper_1_to_ecc_if_RCmdValid),
        .iToECCRLength(t4nfc_hlper_1_to_ecc_if_RLength),
        .iToECCROpcode(t4nfc_hlper_1_to_ecc_if_ROpcode),
        .iToECCRReady(t4nfc_hlper_1_to_ecc_if_RReady),
        .iToECCRSourceID(t4nfc_hlper_1_to_ecc_if_RSourceID),
        .iToECCRTargetID(t4nfc_hlper_1_to_ecc_if_RTargetID),
        .iToECCWAddress(t4nfc_hlper_1_to_ecc_if_WAddress),
        .iToECCWCmdValid(t4nfc_hlper_1_to_ecc_if_WCmdValid),
        .iToECCWData(t4nfc_hlper_1_to_ecc_if_WData),
        .iToECCWLast(t4nfc_hlper_1_to_ecc_if_WLast),
        .iToECCWLength(t4nfc_hlper_1_to_ecc_if_WLength),
        .iToECCWOpcode(t4nfc_hlper_1_to_ecc_if_WOpcode),
        .iToECCWSourceID(t4nfc_hlper_1_to_ecc_if_WSourceID),
        .iToECCWTargetID(t4nfc_hlper_1_to_ecc_if_WTargetID),
        .iToECCWValid(t4nfc_hlper_1_to_ecc_if_WValid),
        .ifromECCRCmdReady(bch_sccs_256B_21B_13b_1_from_ecc_if_RCmdReady),
        .ifromECCRData(bch_sccs_256B_21B_13b_1_from_ecc_if_RData),
        .ifromECCRLast(bch_sccs_256B_21B_13b_1_from_ecc_if_RLast),
        .ifromECCRValid(bch_sccs_256B_21B_13b_1_from_ecc_if_RValid),
        .ifromECCWCmdReady(bch_sccs_256B_21B_13b_1_from_ecc_if_WCmdReady),
        .ifromECCWReady(bch_sccs_256B_21B_13b_1_from_ecc_if_WReady),
        .oCSAvailable(bch_sccs_256B_21B_13b_1_bch_skes_if_CSAvailable),
        .oDecodeNeeded(bch_sccs_256B_21B_13b_1_bch_skes_if_DecodeNeeded),
        .oErrorDetectionEnd(bch_sccs_256B_21B_13b_1_bch_skes_if_ErrorDetectionEnd),
        .oSyndromes(bch_sccs_256B_21B_13b_1_bch_skes_if_Syndromes),
        .oToECCRCmdReady(t4nfc_hlper_1_to_ecc_if_RCmdReady),
        .oToECCRData(t4nfc_hlper_1_to_ecc_if_RData),
        .oToECCRLast(t4nfc_hlper_1_to_ecc_if_RLast),
        .oToECCRValid(t4nfc_hlper_1_to_ecc_if_RValid),
        .oToECCWCmdReady(t4nfc_hlper_1_to_ecc_if_WCmdReady),
        .oToECCWReady(t4nfc_hlper_1_to_ecc_if_WReady),
        .ofromECCRAddress(bch_sccs_256B_21B_13b_1_from_ecc_if_RAddress),
        .ofromECCRCmdValid(bch_sccs_256B_21B_13b_1_from_ecc_if_RCmdValid),
        .ofromECCRLength(bch_sccs_256B_21B_13b_1_from_ecc_if_RLength),
        .ofromECCROpcode(bch_sccs_256B_21B_13b_1_from_ecc_if_ROpcode),
        .ofromECCRReady(bch_sccs_256B_21B_13b_1_from_ecc_if_RReady),
        .ofromECCRSourceID(bch_sccs_256B_21B_13b_1_from_ecc_if_RSourceID),
        .ofromECCRTargetID(bch_sccs_256B_21B_13b_1_from_ecc_if_RTargetID),
        .ofromECCWAddress(bch_sccs_256B_21B_13b_1_from_ecc_if_WAddress),
        .ofromECCWCmdValid(bch_sccs_256B_21B_13b_1_from_ecc_if_WCmdValid),
        .ofromECCWData(bch_sccs_256B_21B_13b_1_from_ecc_if_WData),
        .ofromECCWLast(bch_sccs_256B_21B_13b_1_from_ecc_if_WLast),
        .ofromECCWLength(bch_sccs_256B_21B_13b_1_from_ecc_if_WLength),
        .ofromECCWOpcode(bch_sccs_256B_21B_13b_1_from_ecc_if_WOpcode),
        .ofromECCWSourceID(bch_sccs_256B_21B_13b_1_from_ecc_if_WSourceID),
        .ofromECCWTargetID(bch_sccs_256B_21B_13b_1_from_ecc_if_WTargetID),
        .ofromECCWValid(bch_sccs_256B_21B_13b_1_from_ecc_if_WValid));
  sys_top_bch_sccs_256B_21B_13b_2_0 bch_sccs_256B_21B_13b_2
       (.iClock(pll_bank12_clk_out2),
        .iCorrectionFail(bch_sccs_256B_21B_13b_2_bch_skes_if_CorrectionFail),
        .iELPCoefficients(bch_sccs_256B_21B_13b_2_bch_skes_if_ELPCoefficients),
        .iErrorCount(bch_sccs_256B_21B_13b_2_bch_skes_if_ErrorCount),
        .iErroredChunk(bch_sccs_256B_21B_13b_2_bch_skes_if_ErroredChunk),
        .iIntraSharedKESEnd(bch_sccs_256B_21B_13b_2_bch_skes_if_IntraSharedKESEnd),
        .iReset(proc_sys_reset_4_peripheral_reset),
        .iSharedKESReady(bch_sccs_256B_21B_13b_2_bch_skes_if_SharedKESReady),
        .iToECCRAddress(t4nfc_hlper_2_to_ecc_if_RAddress),
        .iToECCRCmdValid(t4nfc_hlper_2_to_ecc_if_RCmdValid),
        .iToECCRLength(t4nfc_hlper_2_to_ecc_if_RLength),
        .iToECCROpcode(t4nfc_hlper_2_to_ecc_if_ROpcode),
        .iToECCRReady(t4nfc_hlper_2_to_ecc_if_RReady),
        .iToECCRSourceID(t4nfc_hlper_2_to_ecc_if_RSourceID),
        .iToECCRTargetID(t4nfc_hlper_2_to_ecc_if_RTargetID),
        .iToECCWAddress(t4nfc_hlper_2_to_ecc_if_WAddress),
        .iToECCWCmdValid(t4nfc_hlper_2_to_ecc_if_WCmdValid),
        .iToECCWData(t4nfc_hlper_2_to_ecc_if_WData),
        .iToECCWLast(t4nfc_hlper_2_to_ecc_if_WLast),
        .iToECCWLength(t4nfc_hlper_2_to_ecc_if_WLength),
        .iToECCWOpcode(t4nfc_hlper_2_to_ecc_if_WOpcode),
        .iToECCWSourceID(t4nfc_hlper_2_to_ecc_if_WSourceID),
        .iToECCWTargetID(t4nfc_hlper_2_to_ecc_if_WTargetID),
        .iToECCWValid(t4nfc_hlper_2_to_ecc_if_WValid),
        .ifromECCRCmdReady(bch_sccs_256B_21B_13b_2_from_ecc_if_RCmdReady),
        .ifromECCRData(bch_sccs_256B_21B_13b_2_from_ecc_if_RData),
        .ifromECCRLast(bch_sccs_256B_21B_13b_2_from_ecc_if_RLast),
        .ifromECCRValid(bch_sccs_256B_21B_13b_2_from_ecc_if_RValid),
        .ifromECCWCmdReady(bch_sccs_256B_21B_13b_2_from_ecc_if_WCmdReady),
        .ifromECCWReady(bch_sccs_256B_21B_13b_2_from_ecc_if_WReady),
        .oCSAvailable(bch_sccs_256B_21B_13b_2_bch_skes_if_CSAvailable),
        .oDecodeNeeded(bch_sccs_256B_21B_13b_2_bch_skes_if_DecodeNeeded),
        .oErrorDetectionEnd(bch_sccs_256B_21B_13b_2_bch_skes_if_ErrorDetectionEnd),
        .oSyndromes(bch_sccs_256B_21B_13b_2_bch_skes_if_Syndromes),
        .oToECCRCmdReady(t4nfc_hlper_2_to_ecc_if_RCmdReady),
        .oToECCRData(t4nfc_hlper_2_to_ecc_if_RData),
        .oToECCRLast(t4nfc_hlper_2_to_ecc_if_RLast),
        .oToECCRValid(t4nfc_hlper_2_to_ecc_if_RValid),
        .oToECCWCmdReady(t4nfc_hlper_2_to_ecc_if_WCmdReady),
        .oToECCWReady(t4nfc_hlper_2_to_ecc_if_WReady),
        .ofromECCRAddress(bch_sccs_256B_21B_13b_2_from_ecc_if_RAddress),
        .ofromECCRCmdValid(bch_sccs_256B_21B_13b_2_from_ecc_if_RCmdValid),
        .ofromECCRLength(bch_sccs_256B_21B_13b_2_from_ecc_if_RLength),
        .ofromECCROpcode(bch_sccs_256B_21B_13b_2_from_ecc_if_ROpcode),
        .ofromECCRReady(bch_sccs_256B_21B_13b_2_from_ecc_if_RReady),
        .ofromECCRSourceID(bch_sccs_256B_21B_13b_2_from_ecc_if_RSourceID),
        .ofromECCRTargetID(bch_sccs_256B_21B_13b_2_from_ecc_if_RTargetID),
        .ofromECCWAddress(bch_sccs_256B_21B_13b_2_from_ecc_if_WAddress),
        .ofromECCWCmdValid(bch_sccs_256B_21B_13b_2_from_ecc_if_WCmdValid),
        .ofromECCWData(bch_sccs_256B_21B_13b_2_from_ecc_if_WData),
        .ofromECCWLast(bch_sccs_256B_21B_13b_2_from_ecc_if_WLast),
        .ofromECCWLength(bch_sccs_256B_21B_13b_2_from_ecc_if_WLength),
        .ofromECCWOpcode(bch_sccs_256B_21B_13b_2_from_ecc_if_WOpcode),
        .ofromECCWSourceID(bch_sccs_256B_21B_13b_2_from_ecc_if_WSourceID),
        .ofromECCWTargetID(bch_sccs_256B_21B_13b_2_from_ecc_if_WTargetID),
        .ofromECCWValid(bch_sccs_256B_21B_13b_2_from_ecc_if_WValid));
  sys_top_bch_sccs_256B_21B_13b_3_0 bch_sccs_256B_21B_13b_3
       (.iClock(pll_bank13_clk_out2),
        .iCorrectionFail(bch_sccs_256B_21B_13b_3_bch_skes_if_CorrectionFail),
        .iELPCoefficients(bch_sccs_256B_21B_13b_3_bch_skes_if_ELPCoefficients),
        .iErrorCount(bch_sccs_256B_21B_13b_3_bch_skes_if_ErrorCount),
        .iErroredChunk(bch_sccs_256B_21B_13b_3_bch_skes_if_ErroredChunk),
        .iIntraSharedKESEnd(bch_sccs_256B_21B_13b_3_bch_skes_if_IntraSharedKESEnd),
        .iReset(proc_sys_reset_1_peripheral_reset),
        .iSharedKESReady(bch_sccs_256B_21B_13b_3_bch_skes_if_SharedKESReady),
        .iToECCRAddress(t4nfc_hlper_3_to_ecc_if_RAddress),
        .iToECCRCmdValid(t4nfc_hlper_3_to_ecc_if_RCmdValid),
        .iToECCRLength(t4nfc_hlper_3_to_ecc_if_RLength),
        .iToECCROpcode(t4nfc_hlper_3_to_ecc_if_ROpcode),
        .iToECCRReady(t4nfc_hlper_3_to_ecc_if_RReady),
        .iToECCRSourceID(t4nfc_hlper_3_to_ecc_if_RSourceID),
        .iToECCRTargetID(t4nfc_hlper_3_to_ecc_if_RTargetID),
        .iToECCWAddress(t4nfc_hlper_3_to_ecc_if_WAddress),
        .iToECCWCmdValid(t4nfc_hlper_3_to_ecc_if_WCmdValid),
        .iToECCWData(t4nfc_hlper_3_to_ecc_if_WData),
        .iToECCWLast(t4nfc_hlper_3_to_ecc_if_WLast),
        .iToECCWLength(t4nfc_hlper_3_to_ecc_if_WLength),
        .iToECCWOpcode(t4nfc_hlper_3_to_ecc_if_WOpcode),
        .iToECCWSourceID(t4nfc_hlper_3_to_ecc_if_WSourceID),
        .iToECCWTargetID(t4nfc_hlper_3_to_ecc_if_WTargetID),
        .iToECCWValid(t4nfc_hlper_3_to_ecc_if_WValid),
        .ifromECCRCmdReady(bch_sccs_256B_21B_13b_3_from_ecc_if_RCmdReady),
        .ifromECCRData(bch_sccs_256B_21B_13b_3_from_ecc_if_RData),
        .ifromECCRLast(bch_sccs_256B_21B_13b_3_from_ecc_if_RLast),
        .ifromECCRValid(bch_sccs_256B_21B_13b_3_from_ecc_if_RValid),
        .ifromECCWCmdReady(bch_sccs_256B_21B_13b_3_from_ecc_if_WCmdReady),
        .ifromECCWReady(bch_sccs_256B_21B_13b_3_from_ecc_if_WReady),
        .oCSAvailable(bch_sccs_256B_21B_13b_3_bch_skes_if_CSAvailable),
        .oDecodeNeeded(bch_sccs_256B_21B_13b_3_bch_skes_if_DecodeNeeded),
        .oErrorDetectionEnd(bch_sccs_256B_21B_13b_3_bch_skes_if_ErrorDetectionEnd),
        .oSyndromes(bch_sccs_256B_21B_13b_3_bch_skes_if_Syndromes),
        .oToECCRCmdReady(t4nfc_hlper_3_to_ecc_if_RCmdReady),
        .oToECCRData(t4nfc_hlper_3_to_ecc_if_RData),
        .oToECCRLast(t4nfc_hlper_3_to_ecc_if_RLast),
        .oToECCRValid(t4nfc_hlper_3_to_ecc_if_RValid),
        .oToECCWCmdReady(t4nfc_hlper_3_to_ecc_if_WCmdReady),
        .oToECCWReady(t4nfc_hlper_3_to_ecc_if_WReady),
        .ofromECCRAddress(bch_sccs_256B_21B_13b_3_from_ecc_if_RAddress),
        .ofromECCRCmdValid(bch_sccs_256B_21B_13b_3_from_ecc_if_RCmdValid),
        .ofromECCRLength(bch_sccs_256B_21B_13b_3_from_ecc_if_RLength),
        .ofromECCROpcode(bch_sccs_256B_21B_13b_3_from_ecc_if_ROpcode),
        .ofromECCRReady(bch_sccs_256B_21B_13b_3_from_ecc_if_RReady),
        .ofromECCRSourceID(bch_sccs_256B_21B_13b_3_from_ecc_if_RSourceID),
        .ofromECCRTargetID(bch_sccs_256B_21B_13b_3_from_ecc_if_RTargetID),
        .ofromECCWAddress(bch_sccs_256B_21B_13b_3_from_ecc_if_WAddress),
        .ofromECCWCmdValid(bch_sccs_256B_21B_13b_3_from_ecc_if_WCmdValid),
        .ofromECCWData(bch_sccs_256B_21B_13b_3_from_ecc_if_WData),
        .ofromECCWLast(bch_sccs_256B_21B_13b_3_from_ecc_if_WLast),
        .ofromECCWLength(bch_sccs_256B_21B_13b_3_from_ecc_if_WLength),
        .ofromECCWOpcode(bch_sccs_256B_21B_13b_3_from_ecc_if_WOpcode),
        .ofromECCWSourceID(bch_sccs_256B_21B_13b_3_from_ecc_if_WSourceID),
        .ofromECCWTargetID(bch_sccs_256B_21B_13b_3_from_ecc_if_WTargetID),
        .ofromECCWValid(bch_sccs_256B_21B_13b_3_from_ecc_if_WValid));
  sys_top_bch_skes_256B_21B_13b_0_0 bch_skes_256B_21B_13b_0
       (.iCSAvailable_0(bch_sccs_256B_21B_13b_0_bch_skes_if_CSAvailable),
        .iCSAvailable_1(bch_sccs_256B_21B_13b_1_bch_skes_if_CSAvailable),
        .iCSAvailable_2(bch_sccs_256B_21B_13b_2_bch_skes_if_CSAvailable),
        .iCSAvailable_3(bch_sccs_256B_21B_13b_3_bch_skes_if_CSAvailable),
        .iClock(processing_system7_0_FCLK_CLK0),
        .iDecodeNeeded_0(bch_sccs_256B_21B_13b_0_bch_skes_if_DecodeNeeded),
        .iDecodeNeeded_1(bch_sccs_256B_21B_13b_1_bch_skes_if_DecodeNeeded),
        .iDecodeNeeded_2(bch_sccs_256B_21B_13b_2_bch_skes_if_DecodeNeeded),
        .iDecodeNeeded_3(bch_sccs_256B_21B_13b_3_bch_skes_if_DecodeNeeded),
        .iErrorDetectionEnd_0(bch_sccs_256B_21B_13b_0_bch_skes_if_ErrorDetectionEnd),
        .iErrorDetectionEnd_1(bch_sccs_256B_21B_13b_1_bch_skes_if_ErrorDetectionEnd),
        .iErrorDetectionEnd_2(bch_sccs_256B_21B_13b_2_bch_skes_if_ErrorDetectionEnd),
        .iErrorDetectionEnd_3(bch_sccs_256B_21B_13b_3_bch_skes_if_ErrorDetectionEnd),
        .iReset(proc_sys_reset_0_peripheral_reset),
        .iSyndromes_0(bch_sccs_256B_21B_13b_0_bch_skes_if_Syndromes),
        .iSyndromes_1(bch_sccs_256B_21B_13b_1_bch_skes_if_Syndromes),
        .iSyndromes_2(bch_sccs_256B_21B_13b_2_bch_skes_if_Syndromes),
        .iSyndromes_3(bch_sccs_256B_21B_13b_3_bch_skes_if_Syndromes),
        .oClusterErrorCount_0(bch_sccs_256B_21B_13b_0_bch_skes_if_ErrorCount),
        .oClusterErrorCount_1(bch_sccs_256B_21B_13b_1_bch_skes_if_ErrorCount),
        .oClusterErrorCount_2(bch_sccs_256B_21B_13b_2_bch_skes_if_ErrorCount),
        .oClusterErrorCount_3(bch_sccs_256B_21B_13b_3_bch_skes_if_ErrorCount),
        .oCorrectionFail_0(bch_sccs_256B_21B_13b_0_bch_skes_if_CorrectionFail),
        .oCorrectionFail_1(bch_sccs_256B_21B_13b_1_bch_skes_if_CorrectionFail),
        .oCorrectionFail_2(bch_sccs_256B_21B_13b_2_bch_skes_if_CorrectionFail),
        .oCorrectionFail_3(bch_sccs_256B_21B_13b_3_bch_skes_if_CorrectionFail),
        .oELPCoefficients_0(bch_sccs_256B_21B_13b_0_bch_skes_if_ELPCoefficients),
        .oELPCoefficients_1(bch_sccs_256B_21B_13b_1_bch_skes_if_ELPCoefficients),
        .oELPCoefficients_2(bch_sccs_256B_21B_13b_2_bch_skes_if_ELPCoefficients),
        .oELPCoefficients_3(bch_sccs_256B_21B_13b_3_bch_skes_if_ELPCoefficients),
        .oErroredChunk_0(bch_sccs_256B_21B_13b_0_bch_skes_if_ErroredChunk),
        .oErroredChunk_1(bch_sccs_256B_21B_13b_1_bch_skes_if_ErroredChunk),
        .oErroredChunk_2(bch_sccs_256B_21B_13b_2_bch_skes_if_ErroredChunk),
        .oErroredChunk_3(bch_sccs_256B_21B_13b_3_bch_skes_if_ErroredChunk),
        .oIntraSharedKESEnd_0(bch_sccs_256B_21B_13b_0_bch_skes_if_IntraSharedKESEnd),
        .oIntraSharedKESEnd_1(bch_sccs_256B_21B_13b_1_bch_skes_if_IntraSharedKESEnd),
        .oIntraSharedKESEnd_2(bch_sccs_256B_21B_13b_2_bch_skes_if_IntraSharedKESEnd),
        .oIntraSharedKESEnd_3(bch_sccs_256B_21B_13b_3_bch_skes_if_IntraSharedKESEnd),
        .oSharedKESReady_0(bch_sccs_256B_21B_13b_0_bch_skes_if_SharedKESReady),
        .oSharedKESReady_1(bch_sccs_256B_21B_13b_1_bch_skes_if_SharedKESReady),
        .oSharedKESReady_2(bch_sccs_256B_21B_13b_2_bch_skes_if_SharedKESReady),
        .oSharedKESReady_3(bch_sccs_256B_21B_13b_3_bch_skes_if_SharedKESReady));
  sys_top_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra(t4nfc_hlper_0_ucode_if_ADDR),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .clka(t4nfc_hlper_0_ucode_if_CLK),
        .clkb(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .dina(t4nfc_hlper_0_ucode_if_DIN),
        .dinb(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .douta(t4nfc_hlper_0_ucode_if_DOUT),
        .doutb(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .ena(t4nfc_hlper_0_ucode_if_EN),
        .enb(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .rsta(t4nfc_hlper_0_ucode_if_RST),
        .rstb(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .wea({t4nfc_hlper_0_ucode_if_WE,t4nfc_hlper_0_ucode_if_WE,t4nfc_hlper_0_ucode_if_WE,t4nfc_hlper_0_ucode_if_WE}),
        .web(axi_bram_ctrl_0_BRAM_PORTA_WE));
  sys_top_blk_mem_gen_1_0 blk_mem_gen_1
       (.addra(t4nfc_hlper_1_ucode_if_ADDR),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_1_BRAM_PORTA_ADDR}),
        .clka(t4nfc_hlper_1_ucode_if_CLK),
        .clkb(axi_bram_ctrl_1_BRAM_PORTA_CLK),
        .dina(t4nfc_hlper_1_ucode_if_DIN),
        .dinb(axi_bram_ctrl_1_BRAM_PORTA_DIN),
        .douta(t4nfc_hlper_1_ucode_if_DOUT),
        .doutb(axi_bram_ctrl_1_BRAM_PORTA_DOUT),
        .ena(t4nfc_hlper_1_ucode_if_EN),
        .enb(axi_bram_ctrl_1_BRAM_PORTA_EN),
        .rsta(t4nfc_hlper_1_ucode_if_RST),
        .rstb(axi_bram_ctrl_1_BRAM_PORTA_RST),
        .wea({t4nfc_hlper_1_ucode_if_WE,t4nfc_hlper_1_ucode_if_WE,t4nfc_hlper_1_ucode_if_WE,t4nfc_hlper_1_ucode_if_WE}),
        .web(axi_bram_ctrl_1_BRAM_PORTA_WE));
  sys_top_blk_mem_gen_2_0 blk_mem_gen_2
       (.addra(t4nfc_hlper_2_ucode_if_ADDR),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_2_BRAM_PORTA_ADDR}),
        .clka(t4nfc_hlper_2_ucode_if_CLK),
        .clkb(axi_bram_ctrl_2_BRAM_PORTA_CLK),
        .dina(t4nfc_hlper_2_ucode_if_DIN),
        .dinb(axi_bram_ctrl_2_BRAM_PORTA_DIN),
        .douta(t4nfc_hlper_2_ucode_if_DOUT),
        .doutb(axi_bram_ctrl_2_BRAM_PORTA_DOUT),
        .ena(t4nfc_hlper_2_ucode_if_EN),
        .enb(axi_bram_ctrl_2_BRAM_PORTA_EN),
        .rsta(t4nfc_hlper_2_ucode_if_RST),
        .rstb(axi_bram_ctrl_2_BRAM_PORTA_RST),
        .wea({t4nfc_hlper_2_ucode_if_WE,t4nfc_hlper_2_ucode_if_WE,t4nfc_hlper_2_ucode_if_WE,t4nfc_hlper_2_ucode_if_WE}),
        .web(axi_bram_ctrl_2_BRAM_PORTA_WE));
  sys_top_blk_mem_gen_3_0 blk_mem_gen_3
       (.addra(t4nfc_hlper_3_ucode_if_ADDR),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_3_BRAM_PORTA_ADDR}),
        .clka(t4nfc_hlper_3_ucode_if_CLK),
        .clkb(axi_bram_ctrl_3_BRAM_PORTA_CLK),
        .dina(t4nfc_hlper_3_ucode_if_DIN),
        .dinb(axi_bram_ctrl_3_BRAM_PORTA_DIN),
        .douta(t4nfc_hlper_3_ucode_if_DOUT),
        .doutb(axi_bram_ctrl_3_BRAM_PORTA_DOUT),
        .ena(t4nfc_hlper_3_ucode_if_EN),
        .enb(axi_bram_ctrl_3_BRAM_PORTA_EN),
        .rsta(t4nfc_hlper_3_ucode_if_RST),
        .rstb(axi_bram_ctrl_3_BRAM_PORTA_RST),
        .wea({t4nfc_hlper_3_ucode_if_WE,t4nfc_hlper_3_ucode_if_WE,t4nfc_hlper_3_ucode_if_WE,t4nfc_hlper_3_ucode_if_WE}),
        .web(axi_bram_ctrl_3_BRAM_PORTA_WE));
  sys_top_gpic_0_0 gpic_0
       (.ACLK(processing_system7_0_FCLK_CLK2),
        .ARESETN(proc_sys_reset_2_interconnect_aresetn),
        .M00_ACLK(processing_system7_0_FCLK_CLK0),
        .M00_ARESETN(S00_ARESETN_1),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_interconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_interconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_interconnect_0_M00_AXI_ARID),
        .M00_AXI_arlen(axi_interconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_interconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_interconnect_0_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arregion(axi_interconnect_0_M00_AXI_ARREGION),
        .M00_AXI_arsize(axi_interconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_aruser(axi_interconnect_0_M00_AXI_ARUSER),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_interconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_interconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_interconnect_0_M00_AXI_AWID),
        .M00_AXI_awlen(axi_interconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_interconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_interconnect_0_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awregion(axi_interconnect_0_M00_AXI_AWREGION),
        .M00_AXI_awsize(axi_interconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awuser(axi_interconnect_0_M00_AXI_AWUSER),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_interconnect_0_M00_AXI_BID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rid(axi_interconnect_0_M00_AXI_RID),
        .M00_AXI_rlast(axi_interconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_interconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .S00_ACLK(processing_system7_0_FCLK_CLK2),
        .S00_ARESETN(M00_ARESETN_1),
        .S00_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .S00_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .S00_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .S00_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .S00_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .S00_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .S00_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .S00_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .S00_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .S00_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .S00_AXI_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER),
        .S00_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .S00_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .S00_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .S00_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .S00_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .S00_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .S00_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .S00_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .S00_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .S00_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .S00_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .S00_AXI_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER),
        .S00_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .S00_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .S00_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .S00_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .S00_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .S00_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .S00_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .S00_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .S00_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .S00_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .S00_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .S00_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .S00_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .S00_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .S00_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .S00_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID));
  sys_top_gpic_1_1 gpic_0_sub
       (.ACLK(processing_system7_0_FCLK_CLK2),
        .ARESETN(proc_sys_reset_2_interconnect_aresetn),
        .M00_ACLK(processing_system7_0_FCLK_CLK0),
        .M00_ARESETN(S00_ARESETN_1),
        .M00_AXI_araddr(gpic_0_sub_M00_AXI_ARADDR),
        .M00_AXI_arprot(gpic_0_sub_M00_AXI_ARPROT),
        .M00_AXI_arready(gpic_0_sub_M00_AXI_ARREADY),
        .M00_AXI_arvalid(gpic_0_sub_M00_AXI_ARVALID),
        .M00_AXI_awaddr(gpic_0_sub_M00_AXI_AWADDR),
        .M00_AXI_awprot(gpic_0_sub_M00_AXI_AWPROT),
        .M00_AXI_awready(gpic_0_sub_M00_AXI_AWREADY),
        .M00_AXI_awvalid(gpic_0_sub_M00_AXI_AWVALID),
        .M00_AXI_bready(gpic_0_sub_M00_AXI_BREADY),
        .M00_AXI_bresp(gpic_0_sub_M00_AXI_BRESP),
        .M00_AXI_bvalid(gpic_0_sub_M00_AXI_BVALID),
        .M00_AXI_rdata(gpic_0_sub_M00_AXI_RDATA),
        .M00_AXI_rready(gpic_0_sub_M00_AXI_RREADY),
        .M00_AXI_rresp(gpic_0_sub_M00_AXI_RRESP),
        .M00_AXI_rvalid(gpic_0_sub_M00_AXI_RVALID),
        .M00_AXI_wdata(gpic_0_sub_M00_AXI_WDATA),
        .M00_AXI_wready(gpic_0_sub_M00_AXI_WREADY),
        .M00_AXI_wstrb(gpic_0_sub_M00_AXI_WSTRB),
        .M00_AXI_wvalid(gpic_0_sub_M00_AXI_WVALID),
        .M01_ACLK(processing_system7_0_FCLK_CLK0),
        .M01_ARESETN(S00_ARESETN_1),
        .M01_AXI_araddr(gpic_0_sub_M01_AXI_ARADDR),
        .M01_AXI_arprot(gpic_0_sub_M01_AXI_ARPROT),
        .M01_AXI_arready(gpic_0_sub_M01_AXI_ARREADY),
        .M01_AXI_arvalid(gpic_0_sub_M01_AXI_ARVALID),
        .M01_AXI_awaddr(gpic_0_sub_M01_AXI_AWADDR),
        .M01_AXI_awprot(gpic_0_sub_M01_AXI_AWPROT),
        .M01_AXI_awready(gpic_0_sub_M01_AXI_AWREADY),
        .M01_AXI_awvalid(gpic_0_sub_M01_AXI_AWVALID),
        .M01_AXI_bready(gpic_0_sub_M01_AXI_BREADY),
        .M01_AXI_bresp(gpic_0_sub_M01_AXI_BRESP),
        .M01_AXI_bvalid(gpic_0_sub_M01_AXI_BVALID),
        .M01_AXI_rdata(gpic_0_sub_M01_AXI_RDATA),
        .M01_AXI_rready(gpic_0_sub_M01_AXI_RREADY),
        .M01_AXI_rresp(gpic_0_sub_M01_AXI_RRESP),
        .M01_AXI_rvalid(gpic_0_sub_M01_AXI_RVALID),
        .M01_AXI_wdata(gpic_0_sub_M01_AXI_WDATA),
        .M01_AXI_wready(gpic_0_sub_M01_AXI_WREADY),
        .M01_AXI_wstrb(gpic_0_sub_M01_AXI_WSTRB),
        .M01_AXI_wvalid(gpic_0_sub_M01_AXI_WVALID),
        .S00_ACLK(processing_system7_0_FCLK_CLK2),
        .S00_ARESETN(M00_ARESETN_1),
        .S00_AXI_araddr(gpic_1_M00_AXI_ARADDR),
        .S00_AXI_arprot(gpic_1_M00_AXI_ARPROT),
        .S00_AXI_arready(gpic_1_M00_AXI_ARREADY),
        .S00_AXI_arvalid(gpic_1_M00_AXI_ARVALID),
        .S00_AXI_awaddr(gpic_1_M00_AXI_AWADDR),
        .S00_AXI_awprot(gpic_1_M00_AXI_AWPROT),
        .S00_AXI_awready(gpic_1_M00_AXI_AWREADY),
        .S00_AXI_awvalid(gpic_1_M00_AXI_AWVALID),
        .S00_AXI_bready(gpic_1_M00_AXI_BREADY),
        .S00_AXI_bresp(gpic_1_M00_AXI_BRESP),
        .S00_AXI_bvalid(gpic_1_M00_AXI_BVALID),
        .S00_AXI_rdata(gpic_1_M00_AXI_RDATA),
        .S00_AXI_rready(gpic_1_M00_AXI_RREADY),
        .S00_AXI_rresp(gpic_1_M00_AXI_RRESP),
        .S00_AXI_rvalid(gpic_1_M00_AXI_RVALID),
        .S00_AXI_wdata(gpic_1_M00_AXI_WDATA),
        .S00_AXI_wready(gpic_1_M00_AXI_WREADY),
        .S00_AXI_wstrb(gpic_1_M00_AXI_WSTRB),
        .S00_AXI_wvalid(gpic_1_M00_AXI_WVALID));
  sys_top_gpic_0_sub_0_0 gpic_0_sub_0
       (.ACLK(processing_system7_0_FCLK_CLK0),
        .ARESETN(ARESETN_1),
        .M00_ACLK(pll_bank10_clk_out2),
        .M00_ARESETN(M00_ARESETN_2),
        .M00_AXI_araddr(gpic_0_sub_0_M00_AXI_ARADDR),
        .M00_AXI_arprot(gpic_0_sub_0_M00_AXI_ARPROT),
        .M00_AXI_arready(gpic_0_sub_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(gpic_0_sub_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(gpic_0_sub_0_M00_AXI_AWADDR),
        .M00_AXI_awprot(gpic_0_sub_0_M00_AXI_AWPROT),
        .M00_AXI_awready(gpic_0_sub_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(gpic_0_sub_0_M00_AXI_AWVALID),
        .M00_AXI_bready(gpic_0_sub_0_M00_AXI_BREADY),
        .M00_AXI_bresp(gpic_0_sub_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(gpic_0_sub_0_M00_AXI_BVALID),
        .M00_AXI_rdata(gpic_0_sub_0_M00_AXI_RDATA),
        .M00_AXI_rready(gpic_0_sub_0_M00_AXI_RREADY),
        .M00_AXI_rresp(gpic_0_sub_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(gpic_0_sub_0_M00_AXI_RVALID),
        .M00_AXI_wdata(gpic_0_sub_0_M00_AXI_WDATA),
        .M00_AXI_wready(gpic_0_sub_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(gpic_0_sub_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(gpic_0_sub_0_M00_AXI_WVALID),
        .M01_ACLK(pll_bank10_clk_out2),
        .M01_ARESETN(M00_ARESETN_2),
        .M01_AXI_araddr(gpic_0_M01_AXI_ARADDR),
        .M01_AXI_arburst(gpic_0_M01_AXI_ARBURST),
        .M01_AXI_arcache(gpic_0_M01_AXI_ARCACHE),
        .M01_AXI_arlen(gpic_0_M01_AXI_ARLEN),
        .M01_AXI_arlock(gpic_0_M01_AXI_ARLOCK),
        .M01_AXI_arprot(gpic_0_M01_AXI_ARPROT),
        .M01_AXI_arready(gpic_0_M01_AXI_ARREADY),
        .M01_AXI_arsize(gpic_0_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(gpic_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(gpic_0_M01_AXI_AWADDR),
        .M01_AXI_awburst(gpic_0_M01_AXI_AWBURST),
        .M01_AXI_awcache(gpic_0_M01_AXI_AWCACHE),
        .M01_AXI_awlen(gpic_0_M01_AXI_AWLEN),
        .M01_AXI_awlock(gpic_0_M01_AXI_AWLOCK),
        .M01_AXI_awprot(gpic_0_M01_AXI_AWPROT),
        .M01_AXI_awready(gpic_0_M01_AXI_AWREADY),
        .M01_AXI_awsize(gpic_0_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(gpic_0_M01_AXI_AWVALID),
        .M01_AXI_bready(gpic_0_M01_AXI_BREADY),
        .M01_AXI_bresp(gpic_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(gpic_0_M01_AXI_BVALID),
        .M01_AXI_rdata(gpic_0_M01_AXI_RDATA),
        .M01_AXI_rlast(gpic_0_M01_AXI_RLAST),
        .M01_AXI_rready(gpic_0_M01_AXI_RREADY),
        .M01_AXI_rresp(gpic_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(gpic_0_M01_AXI_RVALID),
        .M01_AXI_wdata(gpic_0_M01_AXI_WDATA),
        .M01_AXI_wlast(gpic_0_M01_AXI_WLAST),
        .M01_AXI_wready(gpic_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(gpic_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(gpic_0_M01_AXI_WVALID),
        .M02_ACLK(pll_bank11_clk_out2),
        .M02_ARESETN(M02_ARESETN_1),
        .M02_AXI_araddr(gpic_0_sub_0_M02_AXI_ARADDR),
        .M02_AXI_arprot(gpic_0_sub_0_M02_AXI_ARPROT),
        .M02_AXI_arready(gpic_0_sub_0_M02_AXI_ARREADY),
        .M02_AXI_arvalid(gpic_0_sub_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(gpic_0_sub_0_M02_AXI_AWADDR),
        .M02_AXI_awprot(gpic_0_sub_0_M02_AXI_AWPROT),
        .M02_AXI_awready(gpic_0_sub_0_M02_AXI_AWREADY),
        .M02_AXI_awvalid(gpic_0_sub_0_M02_AXI_AWVALID),
        .M02_AXI_bready(gpic_0_sub_0_M02_AXI_BREADY),
        .M02_AXI_bresp(gpic_0_sub_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(gpic_0_sub_0_M02_AXI_BVALID),
        .M02_AXI_rdata(gpic_0_sub_0_M02_AXI_RDATA),
        .M02_AXI_rready(gpic_0_sub_0_M02_AXI_RREADY),
        .M02_AXI_rresp(gpic_0_sub_0_M02_AXI_RRESP),
        .M02_AXI_rvalid(gpic_0_sub_0_M02_AXI_RVALID),
        .M02_AXI_wdata(gpic_0_sub_0_M02_AXI_WDATA),
        .M02_AXI_wready(gpic_0_sub_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(gpic_0_sub_0_M02_AXI_WSTRB),
        .M02_AXI_wvalid(gpic_0_sub_0_M02_AXI_WVALID),
        .M03_ACLK(pll_bank11_clk_out2),
        .M03_ARESETN(M02_ARESETN_1),
        .M03_AXI_araddr(gpic_0_M03_AXI_ARADDR),
        .M03_AXI_arburst(gpic_0_M03_AXI_ARBURST),
        .M03_AXI_arcache(gpic_0_M03_AXI_ARCACHE),
        .M03_AXI_arlen(gpic_0_M03_AXI_ARLEN),
        .M03_AXI_arlock(gpic_0_M03_AXI_ARLOCK),
        .M03_AXI_arprot(gpic_0_M03_AXI_ARPROT),
        .M03_AXI_arready(gpic_0_M03_AXI_ARREADY),
        .M03_AXI_arsize(gpic_0_M03_AXI_ARSIZE),
        .M03_AXI_arvalid(gpic_0_M03_AXI_ARVALID),
        .M03_AXI_awaddr(gpic_0_M03_AXI_AWADDR),
        .M03_AXI_awburst(gpic_0_M03_AXI_AWBURST),
        .M03_AXI_awcache(gpic_0_M03_AXI_AWCACHE),
        .M03_AXI_awlen(gpic_0_M03_AXI_AWLEN),
        .M03_AXI_awlock(gpic_0_M03_AXI_AWLOCK),
        .M03_AXI_awprot(gpic_0_M03_AXI_AWPROT),
        .M03_AXI_awready(gpic_0_M03_AXI_AWREADY),
        .M03_AXI_awsize(gpic_0_M03_AXI_AWSIZE),
        .M03_AXI_awvalid(gpic_0_M03_AXI_AWVALID),
        .M03_AXI_bready(gpic_0_M03_AXI_BREADY),
        .M03_AXI_bresp(gpic_0_M03_AXI_BRESP),
        .M03_AXI_bvalid(gpic_0_M03_AXI_BVALID),
        .M03_AXI_rdata(gpic_0_M03_AXI_RDATA),
        .M03_AXI_rlast(gpic_0_M03_AXI_RLAST),
        .M03_AXI_rready(gpic_0_M03_AXI_RREADY),
        .M03_AXI_rresp(gpic_0_M03_AXI_RRESP),
        .M03_AXI_rvalid(gpic_0_M03_AXI_RVALID),
        .M03_AXI_wdata(gpic_0_M03_AXI_WDATA),
        .M03_AXI_wlast(gpic_0_M03_AXI_WLAST),
        .M03_AXI_wready(gpic_0_M03_AXI_WREADY),
        .M03_AXI_wstrb(gpic_0_M03_AXI_WSTRB),
        .M03_AXI_wvalid(gpic_0_M03_AXI_WVALID),
        .M04_ACLK(pll_bank12_clk_out2),
        .M04_ARESETN(M04_ARESETN_1),
        .M04_AXI_araddr(gpic_0_sub_0_M04_AXI_ARADDR),
        .M04_AXI_arprot(gpic_0_sub_0_M04_AXI_ARPROT),
        .M04_AXI_arready(gpic_0_sub_0_M04_AXI_ARREADY),
        .M04_AXI_arvalid(gpic_0_sub_0_M04_AXI_ARVALID),
        .M04_AXI_awaddr(gpic_0_sub_0_M04_AXI_AWADDR),
        .M04_AXI_awprot(gpic_0_sub_0_M04_AXI_AWPROT),
        .M04_AXI_awready(gpic_0_sub_0_M04_AXI_AWREADY),
        .M04_AXI_awvalid(gpic_0_sub_0_M04_AXI_AWVALID),
        .M04_AXI_bready(gpic_0_sub_0_M04_AXI_BREADY),
        .M04_AXI_bresp(gpic_0_sub_0_M04_AXI_BRESP),
        .M04_AXI_bvalid(gpic_0_sub_0_M04_AXI_BVALID),
        .M04_AXI_rdata(gpic_0_sub_0_M04_AXI_RDATA),
        .M04_AXI_rready(gpic_0_sub_0_M04_AXI_RREADY),
        .M04_AXI_rresp(gpic_0_sub_0_M04_AXI_RRESP),
        .M04_AXI_rvalid(gpic_0_sub_0_M04_AXI_RVALID),
        .M04_AXI_wdata(gpic_0_sub_0_M04_AXI_WDATA),
        .M04_AXI_wready(gpic_0_sub_0_M04_AXI_WREADY),
        .M04_AXI_wstrb(gpic_0_sub_0_M04_AXI_WSTRB),
        .M04_AXI_wvalid(gpic_0_sub_0_M04_AXI_WVALID),
        .M05_ACLK(pll_bank12_clk_out2),
        .M05_ARESETN(M04_ARESETN_1),
        .M05_AXI_araddr(gpic_0_M05_AXI_ARADDR),
        .M05_AXI_arburst(gpic_0_M05_AXI_ARBURST),
        .M05_AXI_arcache(gpic_0_M05_AXI_ARCACHE),
        .M05_AXI_arlen(gpic_0_M05_AXI_ARLEN),
        .M05_AXI_arlock(gpic_0_M05_AXI_ARLOCK),
        .M05_AXI_arprot(gpic_0_M05_AXI_ARPROT),
        .M05_AXI_arready(gpic_0_M05_AXI_ARREADY),
        .M05_AXI_arsize(gpic_0_M05_AXI_ARSIZE),
        .M05_AXI_arvalid(gpic_0_M05_AXI_ARVALID),
        .M05_AXI_awaddr(gpic_0_M05_AXI_AWADDR),
        .M05_AXI_awburst(gpic_0_M05_AXI_AWBURST),
        .M05_AXI_awcache(gpic_0_M05_AXI_AWCACHE),
        .M05_AXI_awlen(gpic_0_M05_AXI_AWLEN),
        .M05_AXI_awlock(gpic_0_M05_AXI_AWLOCK),
        .M05_AXI_awprot(gpic_0_M05_AXI_AWPROT),
        .M05_AXI_awready(gpic_0_M05_AXI_AWREADY),
        .M05_AXI_awsize(gpic_0_M05_AXI_AWSIZE),
        .M05_AXI_awvalid(gpic_0_M05_AXI_AWVALID),
        .M05_AXI_bready(gpic_0_M05_AXI_BREADY),
        .M05_AXI_bresp(gpic_0_M05_AXI_BRESP),
        .M05_AXI_bvalid(gpic_0_M05_AXI_BVALID),
        .M05_AXI_rdata(gpic_0_M05_AXI_RDATA),
        .M05_AXI_rlast(gpic_0_M05_AXI_RLAST),
        .M05_AXI_rready(gpic_0_M05_AXI_RREADY),
        .M05_AXI_rresp(gpic_0_M05_AXI_RRESP),
        .M05_AXI_rvalid(gpic_0_M05_AXI_RVALID),
        .M05_AXI_wdata(gpic_0_M05_AXI_WDATA),
        .M05_AXI_wlast(gpic_0_M05_AXI_WLAST),
        .M05_AXI_wready(gpic_0_M05_AXI_WREADY),
        .M05_AXI_wstrb(gpic_0_M05_AXI_WSTRB),
        .M05_AXI_wvalid(gpic_0_M05_AXI_WVALID),
        .M06_ACLK(pll_bank13_clk_out2),
        .M06_ARESETN(M06_ARESETN_1),
        .M06_AXI_araddr(gpic_0_sub_0_M06_AXI_ARADDR),
        .M06_AXI_arprot(gpic_0_sub_0_M06_AXI_ARPROT),
        .M06_AXI_arready(gpic_0_sub_0_M06_AXI_ARREADY),
        .M06_AXI_arvalid(gpic_0_sub_0_M06_AXI_ARVALID),
        .M06_AXI_awaddr(gpic_0_sub_0_M06_AXI_AWADDR),
        .M06_AXI_awprot(gpic_0_sub_0_M06_AXI_AWPROT),
        .M06_AXI_awready(gpic_0_sub_0_M06_AXI_AWREADY),
        .M06_AXI_awvalid(gpic_0_sub_0_M06_AXI_AWVALID),
        .M06_AXI_bready(gpic_0_sub_0_M06_AXI_BREADY),
        .M06_AXI_bresp(gpic_0_sub_0_M06_AXI_BRESP),
        .M06_AXI_bvalid(gpic_0_sub_0_M06_AXI_BVALID),
        .M06_AXI_rdata(gpic_0_sub_0_M06_AXI_RDATA),
        .M06_AXI_rready(gpic_0_sub_0_M06_AXI_RREADY),
        .M06_AXI_rresp(gpic_0_sub_0_M06_AXI_RRESP),
        .M06_AXI_rvalid(gpic_0_sub_0_M06_AXI_RVALID),
        .M06_AXI_wdata(gpic_0_sub_0_M06_AXI_WDATA),
        .M06_AXI_wready(gpic_0_sub_0_M06_AXI_WREADY),
        .M06_AXI_wstrb(gpic_0_sub_0_M06_AXI_WSTRB),
        .M06_AXI_wvalid(gpic_0_sub_0_M06_AXI_WVALID),
        .M07_ACLK(pll_bank13_clk_out2),
        .M07_ARESETN(M06_ARESETN_1),
        .M07_AXI_araddr(gpic_0_M07_AXI_ARADDR),
        .M07_AXI_arburst(gpic_0_M07_AXI_ARBURST),
        .M07_AXI_arcache(gpic_0_M07_AXI_ARCACHE),
        .M07_AXI_arlen(gpic_0_M07_AXI_ARLEN),
        .M07_AXI_arlock(gpic_0_M07_AXI_ARLOCK),
        .M07_AXI_arprot(gpic_0_M07_AXI_ARPROT),
        .M07_AXI_arready(gpic_0_M07_AXI_ARREADY),
        .M07_AXI_arsize(gpic_0_M07_AXI_ARSIZE),
        .M07_AXI_arvalid(gpic_0_M07_AXI_ARVALID),
        .M07_AXI_awaddr(gpic_0_M07_AXI_AWADDR),
        .M07_AXI_awburst(gpic_0_M07_AXI_AWBURST),
        .M07_AXI_awcache(gpic_0_M07_AXI_AWCACHE),
        .M07_AXI_awlen(gpic_0_M07_AXI_AWLEN),
        .M07_AXI_awlock(gpic_0_M07_AXI_AWLOCK),
        .M07_AXI_awprot(gpic_0_M07_AXI_AWPROT),
        .M07_AXI_awready(gpic_0_M07_AXI_AWREADY),
        .M07_AXI_awsize(gpic_0_M07_AXI_AWSIZE),
        .M07_AXI_awvalid(gpic_0_M07_AXI_AWVALID),
        .M07_AXI_bready(gpic_0_M07_AXI_BREADY),
        .M07_AXI_bresp(gpic_0_M07_AXI_BRESP),
        .M07_AXI_bvalid(gpic_0_M07_AXI_BVALID),
        .M07_AXI_rdata(gpic_0_M07_AXI_RDATA),
        .M07_AXI_rlast(gpic_0_M07_AXI_RLAST),
        .M07_AXI_rready(gpic_0_M07_AXI_RREADY),
        .M07_AXI_rresp(gpic_0_M07_AXI_RRESP),
        .M07_AXI_rvalid(gpic_0_M07_AXI_RVALID),
        .M07_AXI_wdata(gpic_0_M07_AXI_WDATA),
        .M07_AXI_wlast(gpic_0_M07_AXI_WLAST),
        .M07_AXI_wready(gpic_0_M07_AXI_WREADY),
        .M07_AXI_wstrb(gpic_0_M07_AXI_WSTRB),
        .M07_AXI_wvalid(gpic_0_M07_AXI_WVALID),
        .S00_ACLK(processing_system7_0_FCLK_CLK0),
        .S00_ARESETN(S00_ARESETN_1),
        .S00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .S00_AXI_arburst(axi_interconnect_0_M00_AXI_ARBURST),
        .S00_AXI_arcache(axi_interconnect_0_M00_AXI_ARCACHE),
        .S00_AXI_arid(axi_interconnect_0_M00_AXI_ARID),
        .S00_AXI_arlen(axi_interconnect_0_M00_AXI_ARLEN),
        .S00_AXI_arlock(axi_interconnect_0_M00_AXI_ARLOCK),
        .S00_AXI_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .S00_AXI_arqos(axi_interconnect_0_M00_AXI_ARQOS),
        .S00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .S00_AXI_arregion(axi_interconnect_0_M00_AXI_ARREGION),
        .S00_AXI_arsize(axi_interconnect_0_M00_AXI_ARSIZE),
        .S00_AXI_aruser(axi_interconnect_0_M00_AXI_ARUSER),
        .S00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .S00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .S00_AXI_awburst(axi_interconnect_0_M00_AXI_AWBURST),
        .S00_AXI_awcache(axi_interconnect_0_M00_AXI_AWCACHE),
        .S00_AXI_awid(axi_interconnect_0_M00_AXI_AWID),
        .S00_AXI_awlen(axi_interconnect_0_M00_AXI_AWLEN),
        .S00_AXI_awlock(axi_interconnect_0_M00_AXI_AWLOCK),
        .S00_AXI_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .S00_AXI_awqos(axi_interconnect_0_M00_AXI_AWQOS),
        .S00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .S00_AXI_awregion(axi_interconnect_0_M00_AXI_AWREGION),
        .S00_AXI_awsize(axi_interconnect_0_M00_AXI_AWSIZE),
        .S00_AXI_awuser(axi_interconnect_0_M00_AXI_AWUSER),
        .S00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .S00_AXI_bid(axi_interconnect_0_M00_AXI_BID),
        .S00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .S00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .S00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .S00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .S00_AXI_rid(axi_interconnect_0_M00_AXI_RID),
        .S00_AXI_rlast(axi_interconnect_0_M00_AXI_RLAST),
        .S00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .S00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .S00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .S00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .S00_AXI_wlast(axi_interconnect_0_M00_AXI_WLAST),
        .S00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .S00_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .S00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID));
  sys_top_gpic_1_0 gpic_1
       (.ACLK(processing_system7_0_FCLK_CLK2),
        .ARESETN(proc_sys_reset_2_interconnect_aresetn),
        .M00_ACLK(processing_system7_0_FCLK_CLK2),
        .M00_ARESETN(M00_ARESETN_1),
        .M00_AXI_araddr(gpic_1_M00_AXI_ARADDR),
        .M00_AXI_arprot(gpic_1_M00_AXI_ARPROT),
        .M00_AXI_arready(gpic_1_M00_AXI_ARREADY),
        .M00_AXI_arvalid(gpic_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(gpic_1_M00_AXI_AWADDR),
        .M00_AXI_awprot(gpic_1_M00_AXI_AWPROT),
        .M00_AXI_awready(gpic_1_M00_AXI_AWREADY),
        .M00_AXI_awvalid(gpic_1_M00_AXI_AWVALID),
        .M00_AXI_bready(gpic_1_M00_AXI_BREADY),
        .M00_AXI_bresp(gpic_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(gpic_1_M00_AXI_BVALID),
        .M00_AXI_rdata(gpic_1_M00_AXI_RDATA),
        .M00_AXI_rready(gpic_1_M00_AXI_RREADY),
        .M00_AXI_rresp(gpic_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(gpic_1_M00_AXI_RVALID),
        .M00_AXI_wdata(gpic_1_M00_AXI_WDATA),
        .M00_AXI_wready(gpic_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(gpic_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(gpic_1_M00_AXI_WVALID),
        .M01_ACLK(zynq_ultra_ps_e_0_pl_clk2),
        .M01_ARESETN(proc_sys_reset_7_peripheral_aresetn),
        .M01_AXI_araddr(gpic_1_M01_AXI_ARADDR),
        .M01_AXI_arprot(gpic_1_M01_AXI_ARPROT),
        .M01_AXI_arready(gpic_1_M01_AXI_ARREADY),
        .M01_AXI_arvalid(gpic_1_M01_AXI_ARVALID),
        .M01_AXI_awaddr(gpic_1_M01_AXI_AWADDR),
        .M01_AXI_awprot(gpic_1_M01_AXI_AWPROT),
        .M01_AXI_awready(gpic_1_M01_AXI_AWREADY),
        .M01_AXI_awvalid(gpic_1_M01_AXI_AWVALID),
        .M01_AXI_bready(gpic_1_M01_AXI_BREADY),
        .M01_AXI_bresp(gpic_1_M01_AXI_BRESP),
        .M01_AXI_bvalid(gpic_1_M01_AXI_BVALID),
        .M01_AXI_rdata(gpic_1_M01_AXI_RDATA),
        .M01_AXI_rready(gpic_1_M01_AXI_RREADY),
        .M01_AXI_rresp(gpic_1_M01_AXI_RRESP),
        .M01_AXI_rvalid(gpic_1_M01_AXI_RVALID),
        .M01_AXI_wdata(gpic_1_M01_AXI_WDATA),
        .M01_AXI_wready(gpic_1_M01_AXI_WREADY),
        .M01_AXI_wstrb(gpic_1_M01_AXI_WSTRB),
        .M01_AXI_wvalid(gpic_1_M01_AXI_WVALID),
        .S00_ACLK(processing_system7_0_FCLK_CLK2),
        .S00_ARESETN(M00_ARESETN_1),
        .S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arburst(S00_AXI_1_ARBURST),
        .S00_AXI_arcache(S00_AXI_1_ARCACHE),
        .S00_AXI_arid(S00_AXI_1_ARID),
        .S00_AXI_arlen(S00_AXI_1_ARLEN),
        .S00_AXI_arlock(S00_AXI_1_ARLOCK),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arqos(S00_AXI_1_ARQOS),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arsize(S00_AXI_1_ARSIZE),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_1_AWADDR),
        .S00_AXI_awburst(S00_AXI_1_AWBURST),
        .S00_AXI_awcache(S00_AXI_1_AWCACHE),
        .S00_AXI_awid(S00_AXI_1_AWID),
        .S00_AXI_awlen(S00_AXI_1_AWLEN),
        .S00_AXI_awlock(S00_AXI_1_AWLOCK),
        .S00_AXI_awprot(S00_AXI_1_AWPROT),
        .S00_AXI_awqos(S00_AXI_1_AWQOS),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_awsize(S00_AXI_1_AWSIZE),
        .S00_AXI_awvalid(S00_AXI_1_AWVALID),
        .S00_AXI_bid(S00_AXI_1_BID),
        .S00_AXI_bready(S00_AXI_1_BREADY),
        .S00_AXI_bresp(S00_AXI_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rid(S00_AXI_1_RID),
        .S00_AXI_rlast(S00_AXI_1_RLAST),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wdata(S00_AXI_1_WDATA),
        .S00_AXI_wlast(S00_AXI_1_WLAST),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_1_WVALID));
  sys_top_hpic_0_0 hpic_0
       (.ACLK(processing_system7_0_FCLK_CLK2),
        .ARESETN(proc_sys_reset_2_interconnect_aresetn),
        .M00_ACLK(processing_system7_0_FCLK_CLK2),
        .M00_ARESETN(M00_ARESETN_1),
        .M00_AXI_araddr(hpic_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(hpic_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(hpic_0_M00_AXI_ARCACHE),
        .M00_AXI_arid(hpic_0_M00_AXI_ARID),
        .M00_AXI_arlen(hpic_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(hpic_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(hpic_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(hpic_0_M00_AXI_ARQOS),
        .M00_AXI_arready(hpic_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(hpic_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(hpic_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(hpic_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(hpic_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(hpic_0_M00_AXI_AWCACHE),
        .M00_AXI_awid(hpic_0_M00_AXI_AWID),
        .M00_AXI_awlen(hpic_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(hpic_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(hpic_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(hpic_0_M00_AXI_AWQOS),
        .M00_AXI_awready(hpic_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(hpic_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(hpic_0_M00_AXI_AWVALID),
        .M00_AXI_bid(hpic_0_M00_AXI_BID),
        .M00_AXI_bready(hpic_0_M00_AXI_BREADY),
        .M00_AXI_bresp(hpic_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(hpic_0_M00_AXI_BVALID),
        .M00_AXI_rdata(hpic_0_M00_AXI_RDATA),
        .M00_AXI_rid(hpic_0_M00_AXI_RID),
        .M00_AXI_rlast(hpic_0_M00_AXI_RLAST),
        .M00_AXI_rready(hpic_0_M00_AXI_RREADY),
        .M00_AXI_rresp(hpic_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(hpic_0_M00_AXI_RVALID),
        .M00_AXI_wdata(hpic_0_M00_AXI_WDATA),
        .M00_AXI_wlast(hpic_0_M00_AXI_WLAST),
        .M00_AXI_wready(hpic_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(hpic_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(hpic_0_M00_AXI_WVALID),
        .S00_ACLK(pll_bank10_clk_out2),
        .S00_ARESETN(M00_ARESETN_2),
        .S00_AXI_araddr(t4nfc_hlper_0_nfch_data_if_ARADDR),
        .S00_AXI_arburst(t4nfc_hlper_0_nfch_data_if_ARBURST),
        .S00_AXI_arcache(t4nfc_hlper_0_nfch_data_if_ARCACHE),
        .S00_AXI_arlen(t4nfc_hlper_0_nfch_data_if_ARLEN),
        .S00_AXI_arprot(t4nfc_hlper_0_nfch_data_if_ARPROT),
        .S00_AXI_arready(t4nfc_hlper_0_nfch_data_if_ARREADY),
        .S00_AXI_arsize(t4nfc_hlper_0_nfch_data_if_ARSIZE),
        .S00_AXI_arvalid(t4nfc_hlper_0_nfch_data_if_ARVALID),
        .S00_AXI_awaddr(t4nfc_hlper_0_nfch_data_if_AWADDR),
        .S00_AXI_awburst(t4nfc_hlper_0_nfch_data_if_AWBURST),
        .S00_AXI_awcache(t4nfc_hlper_0_nfch_data_if_AWCACHE),
        .S00_AXI_awlen(t4nfc_hlper_0_nfch_data_if_AWLEN),
        .S00_AXI_awprot(t4nfc_hlper_0_nfch_data_if_AWPROT),
        .S00_AXI_awready(t4nfc_hlper_0_nfch_data_if_AWREADY),
        .S00_AXI_awsize(t4nfc_hlper_0_nfch_data_if_AWSIZE),
        .S00_AXI_awvalid(t4nfc_hlper_0_nfch_data_if_AWVALID),
        .S00_AXI_bready(t4nfc_hlper_0_nfch_data_if_BREADY),
        .S00_AXI_bresp(t4nfc_hlper_0_nfch_data_if_BRESP),
        .S00_AXI_bvalid(t4nfc_hlper_0_nfch_data_if_BVALID),
        .S00_AXI_rdata(t4nfc_hlper_0_nfch_data_if_RDATA),
        .S00_AXI_rlast(t4nfc_hlper_0_nfch_data_if_RLAST),
        .S00_AXI_rready(t4nfc_hlper_0_nfch_data_if_RREADY),
        .S00_AXI_rresp(t4nfc_hlper_0_nfch_data_if_RRESP),
        .S00_AXI_rvalid(t4nfc_hlper_0_nfch_data_if_RVALID),
        .S00_AXI_wdata(t4nfc_hlper_0_nfch_data_if_WDATA),
        .S00_AXI_wlast(t4nfc_hlper_0_nfch_data_if_WLAST),
        .S00_AXI_wready(t4nfc_hlper_0_nfch_data_if_WREADY),
        .S00_AXI_wstrb(t4nfc_hlper_0_nfch_data_if_WSTRB),
        .S00_AXI_wvalid(t4nfc_hlper_0_nfch_data_if_WVALID),
        .S01_ACLK(pll_bank11_clk_out2),
        .S01_ARESETN(M02_ARESETN_1),
        .S01_AXI_araddr(S01_AXI_1_ARADDR),
        .S01_AXI_arburst(S01_AXI_1_ARBURST),
        .S01_AXI_arcache(S01_AXI_1_ARCACHE),
        .S01_AXI_arlen(S01_AXI_1_ARLEN),
        .S01_AXI_arprot(S01_AXI_1_ARPROT),
        .S01_AXI_arready(S01_AXI_1_ARREADY),
        .S01_AXI_arsize(S01_AXI_1_ARSIZE),
        .S01_AXI_arvalid(S01_AXI_1_ARVALID),
        .S01_AXI_awaddr(S01_AXI_1_AWADDR),
        .S01_AXI_awburst(S01_AXI_1_AWBURST),
        .S01_AXI_awcache(S01_AXI_1_AWCACHE),
        .S01_AXI_awlen(S01_AXI_1_AWLEN),
        .S01_AXI_awprot(S01_AXI_1_AWPROT),
        .S01_AXI_awready(S01_AXI_1_AWREADY),
        .S01_AXI_awsize(S01_AXI_1_AWSIZE),
        .S01_AXI_awvalid(S01_AXI_1_AWVALID),
        .S01_AXI_bready(S01_AXI_1_BREADY),
        .S01_AXI_bresp(S01_AXI_1_BRESP),
        .S01_AXI_bvalid(S01_AXI_1_BVALID),
        .S01_AXI_rdata(S01_AXI_1_RDATA),
        .S01_AXI_rlast(S01_AXI_1_RLAST),
        .S01_AXI_rready(S01_AXI_1_RREADY),
        .S01_AXI_rresp(S01_AXI_1_RRESP),
        .S01_AXI_rvalid(S01_AXI_1_RVALID),
        .S01_AXI_wdata(S01_AXI_1_WDATA),
        .S01_AXI_wlast(S01_AXI_1_WLAST),
        .S01_AXI_wready(S01_AXI_1_WREADY),
        .S01_AXI_wstrb(S01_AXI_1_WSTRB),
        .S01_AXI_wvalid(S01_AXI_1_WVALID),
        .S02_ACLK(pll_bank12_clk_out2),
        .S02_ARESETN(M04_ARESETN_1),
        .S02_AXI_araddr(S02_AXI_1_ARADDR),
        .S02_AXI_arburst(S02_AXI_1_ARBURST),
        .S02_AXI_arcache(S02_AXI_1_ARCACHE),
        .S02_AXI_arlen(S02_AXI_1_ARLEN),
        .S02_AXI_arprot(S02_AXI_1_ARPROT),
        .S02_AXI_arready(S02_AXI_1_ARREADY),
        .S02_AXI_arsize(S02_AXI_1_ARSIZE),
        .S02_AXI_arvalid(S02_AXI_1_ARVALID),
        .S02_AXI_awaddr(S02_AXI_1_AWADDR),
        .S02_AXI_awburst(S02_AXI_1_AWBURST),
        .S02_AXI_awcache(S02_AXI_1_AWCACHE),
        .S02_AXI_awlen(S02_AXI_1_AWLEN),
        .S02_AXI_awprot(S02_AXI_1_AWPROT),
        .S02_AXI_awready(S02_AXI_1_AWREADY),
        .S02_AXI_awsize(S02_AXI_1_AWSIZE),
        .S02_AXI_awvalid(S02_AXI_1_AWVALID),
        .S02_AXI_bready(S02_AXI_1_BREADY),
        .S02_AXI_bresp(S02_AXI_1_BRESP),
        .S02_AXI_bvalid(S02_AXI_1_BVALID),
        .S02_AXI_rdata(S02_AXI_1_RDATA),
        .S02_AXI_rlast(S02_AXI_1_RLAST),
        .S02_AXI_rready(S02_AXI_1_RREADY),
        .S02_AXI_rresp(S02_AXI_1_RRESP),
        .S02_AXI_rvalid(S02_AXI_1_RVALID),
        .S02_AXI_wdata(S02_AXI_1_WDATA),
        .S02_AXI_wlast(S02_AXI_1_WLAST),
        .S02_AXI_wready(S02_AXI_1_WREADY),
        .S02_AXI_wstrb(S02_AXI_1_WSTRB),
        .S02_AXI_wvalid(S02_AXI_1_WVALID),
        .S03_ACLK(pll_bank13_clk_out2),
        .S03_ARESETN(M06_ARESETN_1),
        .S03_AXI_araddr(S03_AXI_1_ARADDR),
        .S03_AXI_arburst(S03_AXI_1_ARBURST),
        .S03_AXI_arcache(S03_AXI_1_ARCACHE),
        .S03_AXI_arlen(S03_AXI_1_ARLEN),
        .S03_AXI_arprot(S03_AXI_1_ARPROT),
        .S03_AXI_arready(S03_AXI_1_ARREADY),
        .S03_AXI_arsize(S03_AXI_1_ARSIZE),
        .S03_AXI_arvalid(S03_AXI_1_ARVALID),
        .S03_AXI_awaddr(S03_AXI_1_AWADDR),
        .S03_AXI_awburst(S03_AXI_1_AWBURST),
        .S03_AXI_awcache(S03_AXI_1_AWCACHE),
        .S03_AXI_awlen(S03_AXI_1_AWLEN),
        .S03_AXI_awprot(S03_AXI_1_AWPROT),
        .S03_AXI_awready(S03_AXI_1_AWREADY),
        .S03_AXI_awsize(S03_AXI_1_AWSIZE),
        .S03_AXI_awvalid(S03_AXI_1_AWVALID),
        .S03_AXI_bready(S03_AXI_1_BREADY),
        .S03_AXI_bresp(S03_AXI_1_BRESP),
        .S03_AXI_bvalid(S03_AXI_1_BVALID),
        .S03_AXI_rdata(S03_AXI_1_RDATA),
        .S03_AXI_rlast(S03_AXI_1_RLAST),
        .S03_AXI_rready(S03_AXI_1_RREADY),
        .S03_AXI_rresp(S03_AXI_1_RRESP),
        .S03_AXI_rvalid(S03_AXI_1_RVALID),
        .S03_AXI_wdata(S03_AXI_1_WDATA),
        .S03_AXI_wlast(S03_AXI_1_WLAST),
        .S03_AXI_wready(S03_AXI_1_WREADY),
        .S03_AXI_wstrb(S03_AXI_1_WSTRB),
        .S03_AXI_wvalid(S03_AXI_1_WVALID));
  sys_top_iodelay_if_0_0 iodelay_if_0
       (.ctrl__s_araddr(gpic_0_sub_M00_AXI_ARADDR),
        .ctrl__s_arprot(gpic_0_sub_M00_AXI_ARPROT),
        .ctrl__s_arready(gpic_0_sub_M00_AXI_ARREADY),
        .ctrl__s_arvalid(gpic_0_sub_M00_AXI_ARVALID),
        .ctrl__s_awaddr(gpic_0_sub_M00_AXI_AWADDR),
        .ctrl__s_awprot(gpic_0_sub_M00_AXI_AWPROT),
        .ctrl__s_awready(gpic_0_sub_M00_AXI_AWREADY),
        .ctrl__s_awvalid(gpic_0_sub_M00_AXI_AWVALID),
        .ctrl__s_bready(gpic_0_sub_M00_AXI_BREADY),
        .ctrl__s_bresp(gpic_0_sub_M00_AXI_BRESP),
        .ctrl__s_bvalid(gpic_0_sub_M00_AXI_BVALID),
        .ctrl__s_rdata(gpic_0_sub_M00_AXI_RDATA),
        .ctrl__s_rready(gpic_0_sub_M00_AXI_RREADY),
        .ctrl__s_rresp(gpic_0_sub_M00_AXI_RRESP),
        .ctrl__s_rvalid(gpic_0_sub_M00_AXI_RVALID),
        .ctrl__s_wdata(gpic_0_sub_M00_AXI_WDATA),
        .ctrl__s_wready(gpic_0_sub_M00_AXI_WREADY),
        .ctrl__s_wstrb(gpic_0_sub_M00_AXI_WSTRB),
        .ctrl__s_wvalid(gpic_0_sub_M00_AXI_WVALID),
        .iodly_00__tap(iodelay_if_0_iodly_00__tap),
        .iodly_00__tap_load(iodelay_if_0_iodly_00__tap_load),
        .iodly_01__tap(iodelay_if_0_iodly_01__tap),
        .iodly_01__tap_load(iodelay_if_0_iodly_01__tap_load),
        .iodly_02__tap(iodelay_if_0_iodly_02__tap),
        .iodly_02__tap_load(iodelay_if_0_iodly_02__tap_load),
        .iodly_03__tap(iodelay_if_0_iodly_03__tap),
        .iodly_03__tap_load(iodelay_if_0_iodly_03__tap_load),
        .iodly_04__tap(iodelay_if_0_iodly_04__tap),
        .iodly_04__tap_load(iodelay_if_0_iodly_04__tap_load),
        .iodly_05__tap(iodelay_if_0_iodly_05__tap),
        .iodly_05__tap_load(iodelay_if_0_iodly_05__tap_load),
        .iodly_06__tap(iodelay_if_0_iodly_06__tap),
        .iodly_06__tap_load(iodelay_if_0_iodly_06__tap_load),
        .iodly_07__tap(iodelay_if_0_iodly_07__tap),
        .iodly_07__tap_load(iodelay_if_0_iodly_07__tap_load),
        .iodly_08__tap(iodelay_if_0_iodly_08__tap),
        .iodly_08__tap_load(iodelay_if_0_iodly_08__tap_load),
        .iodly_09__tap(iodelay_if_0_iodly_09__tap),
        .iodly_09__tap_load(iodelay_if_0_iodly_09__tap_load),
        .iodly_10__tap(iodelay_if_0_iodly_10__tap),
        .iodly_10__tap_load(iodelay_if_0_iodly_10__tap_load),
        .iodly_11__tap(iodelay_if_0_iodly_11__tap),
        .iodly_11__tap_load(iodelay_if_0_iodly_11__tap_load),
        .iodly_12__tap(iodelay_if_0_iodly_12__tap),
        .iodly_12__tap_load(iodelay_if_0_iodly_12__tap_load),
        .iodly_13__tap(iodelay_if_0_iodly_13__tap),
        .iodly_13__tap_load(iodelay_if_0_iodly_13__tap_load),
        .iodly_14__tap(iodelay_if_0_iodly_14__tap),
        .iodly_14__tap_load(iodelay_if_0_iodly_14__tap_load),
        .iodly_15__tap(iodelay_if_0_iodly_15__tap),
        .iodly_15__tap_load(iodelay_if_0_iodly_15__tap_load),
        .iodly_16__tap(iodelay_if_0_iodly_16__tap),
        .iodly_16__tap_load(iodelay_if_0_iodly_16__tap_load),
        .iodly_17__tap(iodelay_if_0_iodly_17__tap),
        .iodly_17__tap_load(iodelay_if_0_iodly_17__tap_load),
        .iodly_18__tap(iodelay_if_0_iodly_18__tap),
        .iodly_18__tap_load(iodelay_if_0_iodly_18__tap_load),
        .iodly_19__tap(iodelay_if_0_iodly_19__tap),
        .iodly_19__tap_load(iodelay_if_0_iodly_19__tap_load),
        .iodly_20__tap(iodelay_if_0_iodly_20__tap),
        .iodly_20__tap_load(iodelay_if_0_iodly_20__tap_load),
        .iodly_21__tap(iodelay_if_0_iodly_21__tap),
        .iodly_21__tap_load(iodelay_if_0_iodly_21__tap_load),
        .iodly_22__tap(iodelay_if_0_iodly_22__tap),
        .iodly_22__tap_load(iodelay_if_0_iodly_22__tap_load),
        .iodly_23__tap(iodelay_if_0_iodly_23__tap),
        .iodly_23__tap_load(iodelay_if_0_iodly_23__tap_load),
        .iodly_24__tap(iodelay_if_0_iodly_24__tap),
        .iodly_24__tap_load(iodelay_if_0_iodly_24__tap_load),
        .iodly_25__tap(iodelay_if_0_iodly_25__tap),
        .iodly_25__tap_load(iodelay_if_0_iodly_25__tap_load),
        .iodly_26__tap(iodelay_if_0_iodly_26__tap),
        .iodly_26__tap_load(iodelay_if_0_iodly_26__tap_load),
        .iodly_27__tap(iodelay_if_0_iodly_27__tap),
        .iodly_27__tap_load(iodelay_if_0_iodly_27__tap_load),
        .iodly_28__tap(iodelay_if_0_iodly_28__tap),
        .iodly_28__tap_load(iodelay_if_0_iodly_28__tap_load),
        .iodly_29__tap(iodelay_if_0_iodly_29__tap),
        .iodly_29__tap_load(iodelay_if_0_iodly_29__tap_load),
        .iodly_30__tap(iodelay_if_0_iodly_30__tap),
        .iodly_30__tap_load(iodelay_if_0_iodly_30__tap_load),
        .iodly_31__tap(iodelay_if_0_iodly_31__tap),
        .iodly_31__tap_load(iodelay_if_0_iodly_31__tap_load),
        .sys__clk(processing_system7_0_FCLK_CLK0),
        .sys__srstn(S00_ARESETN_1));
  sys_top_iodelay_if_0_2 iodelay_if_0_dqs
       (.ctrl__s_araddr(gpic_0_sub_M01_AXI_ARADDR),
        .ctrl__s_arprot(gpic_0_sub_M01_AXI_ARPROT),
        .ctrl__s_arready(gpic_0_sub_M01_AXI_ARREADY),
        .ctrl__s_arvalid(gpic_0_sub_M01_AXI_ARVALID),
        .ctrl__s_awaddr(gpic_0_sub_M01_AXI_AWADDR),
        .ctrl__s_awprot(gpic_0_sub_M01_AXI_AWPROT),
        .ctrl__s_awready(gpic_0_sub_M01_AXI_AWREADY),
        .ctrl__s_awvalid(gpic_0_sub_M01_AXI_AWVALID),
        .ctrl__s_bready(gpic_0_sub_M01_AXI_BREADY),
        .ctrl__s_bresp(gpic_0_sub_M01_AXI_BRESP),
        .ctrl__s_bvalid(gpic_0_sub_M01_AXI_BVALID),
        .ctrl__s_rdata(gpic_0_sub_M01_AXI_RDATA),
        .ctrl__s_rready(gpic_0_sub_M01_AXI_RREADY),
        .ctrl__s_rresp(gpic_0_sub_M01_AXI_RRESP),
        .ctrl__s_rvalid(gpic_0_sub_M01_AXI_RVALID),
        .ctrl__s_wdata(gpic_0_sub_M01_AXI_WDATA),
        .ctrl__s_wready(gpic_0_sub_M01_AXI_WREADY),
        .ctrl__s_wstrb(gpic_0_sub_M01_AXI_WSTRB),
        .ctrl__s_wvalid(gpic_0_sub_M01_AXI_WVALID),
        .iodly_00__tap(iodelay_if_0_dqs_iodly_00__tap),
        .iodly_00__tap_load(iodelay_if_0_dqs_iodly_00__tap_load),
        .iodly_01__tap(iodelay_if_0_dqs_iodly_01__tap),
        .iodly_01__tap_load(iodelay_if_0_dqs_iodly_01__tap_load),
        .iodly_02__tap(iodelay_if_0_dqs_iodly_02__tap),
        .iodly_02__tap_load(iodelay_if_0_dqs_iodly_02__tap_load),
        .iodly_03__tap(iodelay_if_0_dqs_iodly_03__tap),
        .iodly_03__tap_load(iodelay_if_0_dqs_iodly_03__tap_load),
        .sys__clk(processing_system7_0_FCLK_CLK0),
        .sys__srstn(S00_ARESETN_1));
  sys_top_nvme_ctrl_0_0 nvme_ctrl_0
       (.dev_irq_assert(nvme_ctrl_0_dev_irq_assert),
        .m0_axi_aclk(zynq_ultra_ps_e_0_pl_clk3),
        .m0_axi_araddr(nvme_ctrl_0_m0_axi_ARADDR),
        .m0_axi_arburst(nvme_ctrl_0_m0_axi_ARBURST),
        .m0_axi_arcache(nvme_ctrl_0_m0_axi_ARCACHE),
        .m0_axi_aresetn(proc_sys_reset_6_peripheral_aresetn),
        .m0_axi_arid(nvme_ctrl_0_m0_axi_ARID),
        .m0_axi_arlen(nvme_ctrl_0_m0_axi_ARLEN),
        .m0_axi_arlock(nvme_ctrl_0_m0_axi_ARLOCK),
        .m0_axi_arprot(nvme_ctrl_0_m0_axi_ARPROT),
        .m0_axi_arqos(nvme_ctrl_0_m0_axi_ARQOS),
        .m0_axi_arready(nvme_ctrl_0_m0_axi_ARREADY),
        .m0_axi_arsize(nvme_ctrl_0_m0_axi_ARSIZE),
        .m0_axi_aruser(nvme_ctrl_0_m0_axi_ARUSER),
        .m0_axi_arvalid(nvme_ctrl_0_m0_axi_ARVALID),
        .m0_axi_awaddr(nvme_ctrl_0_m0_axi_AWADDR),
        .m0_axi_awburst(nvme_ctrl_0_m0_axi_AWBURST),
        .m0_axi_awcache(nvme_ctrl_0_m0_axi_AWCACHE),
        .m0_axi_awid(nvme_ctrl_0_m0_axi_AWID),
        .m0_axi_awlen(nvme_ctrl_0_m0_axi_AWLEN),
        .m0_axi_awlock(nvme_ctrl_0_m0_axi_AWLOCK),
        .m0_axi_awprot(nvme_ctrl_0_m0_axi_AWPROT),
        .m0_axi_awqos(nvme_ctrl_0_m0_axi_AWQOS),
        .m0_axi_awready(nvme_ctrl_0_m0_axi_AWREADY),
        .m0_axi_awsize(nvme_ctrl_0_m0_axi_AWSIZE),
        .m0_axi_awuser(nvme_ctrl_0_m0_axi_AWUSER),
        .m0_axi_awvalid(nvme_ctrl_0_m0_axi_AWVALID),
        .m0_axi_bid(nvme_ctrl_0_m0_axi_BID),
        .m0_axi_bready(nvme_ctrl_0_m0_axi_BREADY),
        .m0_axi_bresp(nvme_ctrl_0_m0_axi_BRESP),
        .m0_axi_buser(nvme_ctrl_0_m0_axi_BUSER),
        .m0_axi_bvalid(nvme_ctrl_0_m0_axi_BVALID),
        .m0_axi_rdata(nvme_ctrl_0_m0_axi_RDATA),
        .m0_axi_rid(nvme_ctrl_0_m0_axi_RID),
        .m0_axi_rlast(nvme_ctrl_0_m0_axi_RLAST),
        .m0_axi_rready(nvme_ctrl_0_m0_axi_RREADY),
        .m0_axi_rresp(nvme_ctrl_0_m0_axi_RRESP),
        .m0_axi_ruser(1'b0),
        .m0_axi_rvalid(nvme_ctrl_0_m0_axi_RVALID),
        .m0_axi_wdata(nvme_ctrl_0_m0_axi_WDATA),
        .m0_axi_wlast(nvme_ctrl_0_m0_axi_WLAST),
        .m0_axi_wready(nvme_ctrl_0_m0_axi_WREADY),
        .m0_axi_wstrb(nvme_ctrl_0_m0_axi_WSTRB),
        .m0_axi_wvalid(nvme_ctrl_0_m0_axi_WVALID),
        .pci_exp_rxn(nvme_ctrl_0_pci_exp_rxn),
        .pci_exp_rxp(nvme_ctrl_0_pci_exp_rxp),
        .pci_exp_txn(nvme_ctrl_0_pci_exp_txn),
        .pci_exp_txp(nvme_ctrl_0_pci_exp_txp),
        .pcie_perst_n(pcie_perst_n_0_1),
        .pcie_ref_clk_n(pcie_ref_0_1_CLK_N),
        .pcie_ref_clk_p(pcie_ref_0_1_CLK_P),
        .s0_axi_aclk(zynq_ultra_ps_e_0_pl_clk2),
        .s0_axi_araddr(gpic_1_M01_AXI_ARADDR),
        .s0_axi_aresetn(proc_sys_reset_7_peripheral_aresetn),
        .s0_axi_arprot(gpic_1_M01_AXI_ARPROT),
        .s0_axi_arready(gpic_1_M01_AXI_ARREADY),
        .s0_axi_arvalid(gpic_1_M01_AXI_ARVALID),
        .s0_axi_awaddr(gpic_1_M01_AXI_AWADDR),
        .s0_axi_awprot(gpic_1_M01_AXI_AWPROT),
        .s0_axi_awready(gpic_1_M01_AXI_AWREADY),
        .s0_axi_awvalid(gpic_1_M01_AXI_AWVALID),
        .s0_axi_bready(gpic_1_M01_AXI_BREADY),
        .s0_axi_bresp(gpic_1_M01_AXI_BRESP),
        .s0_axi_bvalid(gpic_1_M01_AXI_BVALID),
        .s0_axi_rdata(gpic_1_M01_AXI_RDATA),
        .s0_axi_rready(gpic_1_M01_AXI_RREADY),
        .s0_axi_rresp(gpic_1_M01_AXI_RRESP),
        .s0_axi_rvalid(gpic_1_M01_AXI_RVALID),
        .s0_axi_wdata(gpic_1_M01_AXI_WDATA),
        .s0_axi_wready(gpic_1_M01_AXI_WREADY),
        .s0_axi_wstrb(gpic_1_M01_AXI_WSTRB),
        .s0_axi_wvalid(gpic_1_M01_AXI_WVALID),
        .user_lnk_up(nvme_ctrl_0_user_lnk_up));
  sys_top_clk_wiz_0_0 pll_bank10
       (.clk_in1(processing_system7_0_FCLK_CLK0),
        .clk_out1(CH0C133BUF_BUFGCE_O),
        .clk_out2(pll_bank10_clk_out2),
        .clk_out3(pll_bank10_clk_out3),
        .locked(pll_bank10_locked),
        .reset(proc_sys_reset_0_peripheral_reset));
  sys_top_proc_sys_reset_5_0 pll_bank10_psr
       (.aux_reset_in(1'b1),
        .dcm_locked(pll_bank10_locked),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .interconnect_aresetn(M00_ARESETN_2),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_5_peripheral_aresetn),
        .peripheral_reset(proc_sys_reset_5_peripheral_reset),
        .slowest_sync_clk(pll_bank10_clk_out2));
  sys_top_pll_bank11_0 pll_bank11
       (.clk_in1(processing_system7_0_FCLK_CLK0),
        .clk_out1(CH1C133BUF_BUFGCE_O),
        .clk_out2(pll_bank11_clk_out2),
        .clk_out3(pll_bank11_clk_out3),
        .locked(pll_bank11_locked),
        .reset(proc_sys_reset_0_peripheral_reset));
  sys_top_proc_sys_reset_3_0 pll_bank11_psr
       (.aux_reset_in(1'b1),
        .dcm_locked(pll_bank11_locked),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .interconnect_aresetn(M02_ARESETN_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_3_peripheral_aresetn),
        .peripheral_reset(proc_sys_reset_3_peripheral_reset),
        .slowest_sync_clk(pll_bank11_clk_out2));
  sys_top_pll_bank12_0 pll_bank12
       (.clk_in1(processing_system7_0_FCLK_CLK0),
        .clk_out1(CH2C133BUF_BUFGCE_O),
        .clk_out2(pll_bank12_clk_out2),
        .clk_out3(pll_bank12_clk_out3),
        .locked(pll_bank12_locked),
        .reset(proc_sys_reset_0_peripheral_reset));
  sys_top_proc_sys_reset_4_0 pll_bank12_psr
       (.aux_reset_in(1'b1),
        .dcm_locked(pll_bank12_locked),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .interconnect_aresetn(M04_ARESETN_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_4_peripheral_aresetn),
        .peripheral_reset(proc_sys_reset_4_peripheral_reset),
        .slowest_sync_clk(pll_bank12_clk_out2));
  sys_top_pll_bank13_0 pll_bank13
       (.clk_in1(processing_system7_0_FCLK_CLK0),
        .clk_out1(CH3C133BUF_BUFGCE_O),
        .clk_out2(pll_bank13_clk_out2),
        .clk_out3(pll_bank13_clk_out3),
        .locked(pll_bank13_locked),
        .reset(proc_sys_reset_0_peripheral_reset));
  sys_top_proc_sys_reset_1_0 pll_bank13_psr
       (.aux_reset_in(1'b1),
        .dcm_locked(pll_bank13_locked),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .interconnect_aresetn(M06_ARESETN_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .peripheral_reset(proc_sys_reset_1_peripheral_reset),
        .slowest_sync_clk(pll_bank13_clk_out2));
  sys_top_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .interconnect_aresetn(ARESETN_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(S00_ARESETN_1),
        .peripheral_reset(proc_sys_reset_0_peripheral_reset),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK0));
  sys_top_proc_sys_reset_2_0 proc_sys_reset_2
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn1),
        .interconnect_aresetn(proc_sys_reset_2_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(M00_ARESETN_1),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK2));
  sys_top_proc_sys_reset_6_0 proc_sys_reset_6
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn3),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_6_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk3));
  sys_top_proc_sys_reset_7_0 proc_sys_reset_7
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn2),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_7_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk2));
  sys_top_smartconnect_0_0 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_0_M00_AXI_ARQOS),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_aruser(smartconnect_0_M00_AXI_ARUSER),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(smartconnect_0_M00_AXI_AWQOS),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awuser(smartconnect_0_M00_AXI_AWUSER),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_buser(1'b0),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .S00_AXI_araddr(nvme_ctrl_0_m0_axi_ARADDR),
        .S00_AXI_arburst(nvme_ctrl_0_m0_axi_ARBURST),
        .S00_AXI_arcache(nvme_ctrl_0_m0_axi_ARCACHE),
        .S00_AXI_arid(nvme_ctrl_0_m0_axi_ARID),
        .S00_AXI_arlen(nvme_ctrl_0_m0_axi_ARLEN),
        .S00_AXI_arlock(nvme_ctrl_0_m0_axi_ARLOCK),
        .S00_AXI_arprot(nvme_ctrl_0_m0_axi_ARPROT),
        .S00_AXI_arqos(nvme_ctrl_0_m0_axi_ARQOS),
        .S00_AXI_arready(nvme_ctrl_0_m0_axi_ARREADY),
        .S00_AXI_arsize(nvme_ctrl_0_m0_axi_ARSIZE),
        .S00_AXI_aruser(nvme_ctrl_0_m0_axi_ARUSER),
        .S00_AXI_arvalid(nvme_ctrl_0_m0_axi_ARVALID),
        .S00_AXI_awaddr(nvme_ctrl_0_m0_axi_AWADDR),
        .S00_AXI_awburst(nvme_ctrl_0_m0_axi_AWBURST),
        .S00_AXI_awcache(nvme_ctrl_0_m0_axi_AWCACHE),
        .S00_AXI_awid(nvme_ctrl_0_m0_axi_AWID),
        .S00_AXI_awlen(nvme_ctrl_0_m0_axi_AWLEN),
        .S00_AXI_awlock(nvme_ctrl_0_m0_axi_AWLOCK),
        .S00_AXI_awprot(nvme_ctrl_0_m0_axi_AWPROT),
        .S00_AXI_awqos(nvme_ctrl_0_m0_axi_AWQOS),
        .S00_AXI_awready(nvme_ctrl_0_m0_axi_AWREADY),
        .S00_AXI_awsize(nvme_ctrl_0_m0_axi_AWSIZE),
        .S00_AXI_awuser(nvme_ctrl_0_m0_axi_AWUSER),
        .S00_AXI_awvalid(nvme_ctrl_0_m0_axi_AWVALID),
        .S00_AXI_bid(nvme_ctrl_0_m0_axi_BID),
        .S00_AXI_bready(nvme_ctrl_0_m0_axi_BREADY),
        .S00_AXI_bresp(nvme_ctrl_0_m0_axi_BRESP),
        .S00_AXI_buser(nvme_ctrl_0_m0_axi_BUSER),
        .S00_AXI_bvalid(nvme_ctrl_0_m0_axi_BVALID),
        .S00_AXI_rdata(nvme_ctrl_0_m0_axi_RDATA),
        .S00_AXI_rid(nvme_ctrl_0_m0_axi_RID),
        .S00_AXI_rlast(nvme_ctrl_0_m0_axi_RLAST),
        .S00_AXI_rready(nvme_ctrl_0_m0_axi_RREADY),
        .S00_AXI_rresp(nvme_ctrl_0_m0_axi_RRESP),
        .S00_AXI_rvalid(nvme_ctrl_0_m0_axi_RVALID),
        .S00_AXI_wdata(nvme_ctrl_0_m0_axi_WDATA),
        .S00_AXI_wlast(nvme_ctrl_0_m0_axi_WLAST),
        .S00_AXI_wready(nvme_ctrl_0_m0_axi_WREADY),
        .S00_AXI_wstrb(nvme_ctrl_0_m0_axi_WSTRB),
        .S00_AXI_wvalid(nvme_ctrl_0_m0_axi_WVALID),
        .aclk(zynq_ultra_ps_e_0_pl_clk3),
        .aresetn(proc_sys_reset_6_peripheral_aresetn));
  sys_top_t4nfc_hlper_0_0 t4nfc_hlper_0
       (.C_ARADDR(gpic_0_sub_0_M00_AXI_ARADDR),
        .C_ARPROT(gpic_0_sub_0_M00_AXI_ARPROT),
        .C_ARREADY(gpic_0_sub_0_M00_AXI_ARREADY),
        .C_ARVALID(gpic_0_sub_0_M00_AXI_ARVALID),
        .C_AWADDR(gpic_0_sub_0_M00_AXI_AWADDR),
        .C_AWPROT(gpic_0_sub_0_M00_AXI_AWPROT),
        .C_AWREADY(gpic_0_sub_0_M00_AXI_AWREADY),
        .C_AWVALID(gpic_0_sub_0_M00_AXI_AWVALID),
        .C_BREADY(gpic_0_sub_0_M00_AXI_BREADY),
        .C_BRESP(gpic_0_sub_0_M00_AXI_BRESP),
        .C_BVALID(gpic_0_sub_0_M00_AXI_BVALID),
        .C_RDATA(gpic_0_sub_0_M00_AXI_RDATA),
        .C_RREADY(gpic_0_sub_0_M00_AXI_RREADY),
        .C_RRESP(gpic_0_sub_0_M00_AXI_RRESP),
        .C_RVALID(gpic_0_sub_0_M00_AXI_RVALID),
        .C_WDATA(gpic_0_sub_0_M00_AXI_WDATA),
        .C_WREADY(gpic_0_sub_0_M00_AXI_WREADY),
        .C_WSTRB(gpic_0_sub_0_M00_AXI_WSTRB),
        .C_WVALID(gpic_0_sub_0_M00_AXI_WVALID),
        .D_ARADDR(t4nfc_hlper_0_nfch_data_if_ARADDR),
        .D_ARBURST(t4nfc_hlper_0_nfch_data_if_ARBURST),
        .D_ARCACHE(t4nfc_hlper_0_nfch_data_if_ARCACHE),
        .D_ARLEN(t4nfc_hlper_0_nfch_data_if_ARLEN),
        .D_ARPROT(t4nfc_hlper_0_nfch_data_if_ARPROT),
        .D_ARREADY(t4nfc_hlper_0_nfch_data_if_ARREADY),
        .D_ARSIZE(t4nfc_hlper_0_nfch_data_if_ARSIZE),
        .D_ARVALID(t4nfc_hlper_0_nfch_data_if_ARVALID),
        .D_AWADDR(t4nfc_hlper_0_nfch_data_if_AWADDR),
        .D_AWBURST(t4nfc_hlper_0_nfch_data_if_AWBURST),
        .D_AWCACHE(t4nfc_hlper_0_nfch_data_if_AWCACHE),
        .D_AWLEN(t4nfc_hlper_0_nfch_data_if_AWLEN),
        .D_AWPROT(t4nfc_hlper_0_nfch_data_if_AWPROT),
        .D_AWREADY(t4nfc_hlper_0_nfch_data_if_AWREADY),
        .D_AWSIZE(t4nfc_hlper_0_nfch_data_if_AWSIZE),
        .D_AWVALID(t4nfc_hlper_0_nfch_data_if_AWVALID),
        .D_BREADY(t4nfc_hlper_0_nfch_data_if_BREADY),
        .D_BRESP(t4nfc_hlper_0_nfch_data_if_BRESP),
        .D_BVALID(t4nfc_hlper_0_nfch_data_if_BVALID),
        .D_RDATA(t4nfc_hlper_0_nfch_data_if_RDATA),
        .D_RLAST(t4nfc_hlper_0_nfch_data_if_RLAST),
        .D_RREADY(t4nfc_hlper_0_nfch_data_if_RREADY),
        .D_RRESP(t4nfc_hlper_0_nfch_data_if_RRESP),
        .D_RVALID(t4nfc_hlper_0_nfch_data_if_RVALID),
        .D_WDATA(t4nfc_hlper_0_nfch_data_if_WDATA),
        .D_WLAST(t4nfc_hlper_0_nfch_data_if_WLAST),
        .D_WREADY(t4nfc_hlper_0_nfch_data_if_WREADY),
        .D_WSTRB(t4nfc_hlper_0_nfch_data_if_WSTRB),
        .D_WVALID(t4nfc_hlper_0_nfch_data_if_WVALID),
        .iCMDReady(t4nfc_hlper_0_v2nfc_if_CMDReady),
        .iClock(pll_bank10_clk_out2),
        .iROMRData(t4nfc_hlper_0_ucode_if_DOUT),
        .iReadData(t4nfc_hlper_0_v2nfc_if_ReadData),
        .iReadLast(t4nfc_hlper_0_v2nfc_if_ReadLast),
        .iReadValid(t4nfc_hlper_0_v2nfc_if_ReadValid),
        .iReadyBusy(v2nfc_0_oReadyBusy),
        .iReset(proc_sys_reset_5_peripheral_reset),
        .iToECCRCmdReady(t4nfc_hlper_0_to_ecc_if_RCmdReady),
        .iToECCRData(t4nfc_hlper_0_to_ecc_if_RData),
        .iToECCRLast(t4nfc_hlper_0_to_ecc_if_RLast),
        .iToECCRValid(t4nfc_hlper_0_to_ecc_if_RValid),
        .iToECCWCmdReady(t4nfc_hlper_0_to_ecc_if_WCmdReady),
        .iToECCWReady(t4nfc_hlper_0_to_ecc_if_WReady),
        .iWriteReady(t4nfc_hlper_0_v2nfc_if_WriteReady),
        .ifromECCRAddress(bch_sccs_256B_21B_13b_0_from_ecc_if_RAddress),
        .ifromECCRCmdValid(bch_sccs_256B_21B_13b_0_from_ecc_if_RCmdValid),
        .ifromECCRLength(bch_sccs_256B_21B_13b_0_from_ecc_if_RLength),
        .ifromECCROpcode(bch_sccs_256B_21B_13b_0_from_ecc_if_ROpcode),
        .ifromECCRReady(bch_sccs_256B_21B_13b_0_from_ecc_if_RReady),
        .ifromECCRSourceID(bch_sccs_256B_21B_13b_0_from_ecc_if_RSourceID),
        .ifromECCRTargetID(bch_sccs_256B_21B_13b_0_from_ecc_if_RTargetID),
        .ifromECCWAddress(bch_sccs_256B_21B_13b_0_from_ecc_if_WAddress),
        .ifromECCWCmdValid(bch_sccs_256B_21B_13b_0_from_ecc_if_WCmdValid),
        .ifromECCWData(bch_sccs_256B_21B_13b_0_from_ecc_if_WData),
        .ifromECCWLast(bch_sccs_256B_21B_13b_0_from_ecc_if_WLast),
        .ifromECCWLength(bch_sccs_256B_21B_13b_0_from_ecc_if_WLength),
        .ifromECCWOpcode(bch_sccs_256B_21B_13b_0_from_ecc_if_WOpcode),
        .ifromECCWSourceID(bch_sccs_256B_21B_13b_0_from_ecc_if_WSourceID),
        .ifromECCWTargetID(bch_sccs_256B_21B_13b_0_from_ecc_if_WTargetID),
        .ifromECCWValid(bch_sccs_256B_21B_13b_0_from_ecc_if_WValid),
        .oAddress(t4nfc_hlper_0_v2nfc_if_Address),
        .oCMDValid(t4nfc_hlper_0_v2nfc_if_CMDValid),
        .oLength(t4nfc_hlper_0_v2nfc_if_Length),
        .oOpcode(t4nfc_hlper_0_v2nfc_if_Opcode),
        .oROMAddr(t4nfc_hlper_0_ucode_if_ADDR),
        .oROMClock(t4nfc_hlper_0_ucode_if_CLK),
        .oROMEnable(t4nfc_hlper_0_ucode_if_EN),
        .oROMRW(t4nfc_hlper_0_ucode_if_WE),
        .oROMReset(t4nfc_hlper_0_ucode_if_RST),
        .oROMWData(t4nfc_hlper_0_ucode_if_DIN),
        .oReadReady(t4nfc_hlper_0_v2nfc_if_ReadReady),
        .oSourceID(t4nfc_hlper_0_v2nfc_if_SourceID),
        .oTargetID(t4nfc_hlper_0_v2nfc_if_TargetID),
        .oToECCRAddress(t4nfc_hlper_0_to_ecc_if_RAddress),
        .oToECCRCmdValid(t4nfc_hlper_0_to_ecc_if_RCmdValid),
        .oToECCRLength(t4nfc_hlper_0_to_ecc_if_RLength),
        .oToECCROpcode(t4nfc_hlper_0_to_ecc_if_ROpcode),
        .oToECCRReady(t4nfc_hlper_0_to_ecc_if_RReady),
        .oToECCRSourceID(t4nfc_hlper_0_to_ecc_if_RSourceID),
        .oToECCRTargetID(t4nfc_hlper_0_to_ecc_if_RTargetID),
        .oToECCWAddress(t4nfc_hlper_0_to_ecc_if_WAddress),
        .oToECCWCmdValid(t4nfc_hlper_0_to_ecc_if_WCmdValid),
        .oToECCWData(t4nfc_hlper_0_to_ecc_if_WData),
        .oToECCWLast(t4nfc_hlper_0_to_ecc_if_WLast),
        .oToECCWLength(t4nfc_hlper_0_to_ecc_if_WLength),
        .oToECCWOpcode(t4nfc_hlper_0_to_ecc_if_WOpcode),
        .oToECCWSourceID(t4nfc_hlper_0_to_ecc_if_WSourceID),
        .oToECCWTargetID(t4nfc_hlper_0_to_ecc_if_WTargetID),
        .oToECCWValid(t4nfc_hlper_0_to_ecc_if_WValid),
        .oWriteData(t4nfc_hlper_0_v2nfc_if_WriteData),
        .oWriteLast(t4nfc_hlper_0_v2nfc_if_WriteLast),
        .oWriteValid(t4nfc_hlper_0_v2nfc_if_WriteValid),
        .ofromECCRCmdReady(bch_sccs_256B_21B_13b_0_from_ecc_if_RCmdReady),
        .ofromECCRData(bch_sccs_256B_21B_13b_0_from_ecc_if_RData),
        .ofromECCRLast(bch_sccs_256B_21B_13b_0_from_ecc_if_RLast),
        .ofromECCRValid(bch_sccs_256B_21B_13b_0_from_ecc_if_RValid),
        .ofromECCWCmdReady(bch_sccs_256B_21B_13b_0_from_ecc_if_WCmdReady),
        .ofromECCWReady(bch_sccs_256B_21B_13b_0_from_ecc_if_WReady));
  sys_top_t4nfc_hlper_1_0 t4nfc_hlper_1
       (.C_ARADDR(gpic_0_sub_0_M02_AXI_ARADDR),
        .C_ARPROT(gpic_0_sub_0_M02_AXI_ARPROT),
        .C_ARREADY(gpic_0_sub_0_M02_AXI_ARREADY),
        .C_ARVALID(gpic_0_sub_0_M02_AXI_ARVALID),
        .C_AWADDR(gpic_0_sub_0_M02_AXI_AWADDR),
        .C_AWPROT(gpic_0_sub_0_M02_AXI_AWPROT),
        .C_AWREADY(gpic_0_sub_0_M02_AXI_AWREADY),
        .C_AWVALID(gpic_0_sub_0_M02_AXI_AWVALID),
        .C_BREADY(gpic_0_sub_0_M02_AXI_BREADY),
        .C_BRESP(gpic_0_sub_0_M02_AXI_BRESP),
        .C_BVALID(gpic_0_sub_0_M02_AXI_BVALID),
        .C_RDATA(gpic_0_sub_0_M02_AXI_RDATA),
        .C_RREADY(gpic_0_sub_0_M02_AXI_RREADY),
        .C_RRESP(gpic_0_sub_0_M02_AXI_RRESP),
        .C_RVALID(gpic_0_sub_0_M02_AXI_RVALID),
        .C_WDATA(gpic_0_sub_0_M02_AXI_WDATA),
        .C_WREADY(gpic_0_sub_0_M02_AXI_WREADY),
        .C_WSTRB(gpic_0_sub_0_M02_AXI_WSTRB),
        .C_WVALID(gpic_0_sub_0_M02_AXI_WVALID),
        .D_ARADDR(S01_AXI_1_ARADDR),
        .D_ARBURST(S01_AXI_1_ARBURST),
        .D_ARCACHE(S01_AXI_1_ARCACHE),
        .D_ARLEN(S01_AXI_1_ARLEN),
        .D_ARPROT(S01_AXI_1_ARPROT),
        .D_ARREADY(S01_AXI_1_ARREADY),
        .D_ARSIZE(S01_AXI_1_ARSIZE),
        .D_ARVALID(S01_AXI_1_ARVALID),
        .D_AWADDR(S01_AXI_1_AWADDR),
        .D_AWBURST(S01_AXI_1_AWBURST),
        .D_AWCACHE(S01_AXI_1_AWCACHE),
        .D_AWLEN(S01_AXI_1_AWLEN),
        .D_AWPROT(S01_AXI_1_AWPROT),
        .D_AWREADY(S01_AXI_1_AWREADY),
        .D_AWSIZE(S01_AXI_1_AWSIZE),
        .D_AWVALID(S01_AXI_1_AWVALID),
        .D_BREADY(S01_AXI_1_BREADY),
        .D_BRESP(S01_AXI_1_BRESP),
        .D_BVALID(S01_AXI_1_BVALID),
        .D_RDATA(S01_AXI_1_RDATA),
        .D_RLAST(S01_AXI_1_RLAST),
        .D_RREADY(S01_AXI_1_RREADY),
        .D_RRESP(S01_AXI_1_RRESP),
        .D_RVALID(S01_AXI_1_RVALID),
        .D_WDATA(S01_AXI_1_WDATA),
        .D_WLAST(S01_AXI_1_WLAST),
        .D_WREADY(S01_AXI_1_WREADY),
        .D_WSTRB(S01_AXI_1_WSTRB),
        .D_WVALID(S01_AXI_1_WVALID),
        .iCMDReady(t4nfc_hlper_1_v2nfc_if_CMDReady),
        .iClock(pll_bank11_clk_out2),
        .iROMRData(t4nfc_hlper_1_ucode_if_DOUT),
        .iReadData(t4nfc_hlper_1_v2nfc_if_ReadData),
        .iReadLast(t4nfc_hlper_1_v2nfc_if_ReadLast),
        .iReadValid(t4nfc_hlper_1_v2nfc_if_ReadValid),
        .iReadyBusy(v2nfc_1_oReadyBusy),
        .iReset(proc_sys_reset_3_peripheral_reset),
        .iToECCRCmdReady(t4nfc_hlper_1_to_ecc_if_RCmdReady),
        .iToECCRData(t4nfc_hlper_1_to_ecc_if_RData),
        .iToECCRLast(t4nfc_hlper_1_to_ecc_if_RLast),
        .iToECCRValid(t4nfc_hlper_1_to_ecc_if_RValid),
        .iToECCWCmdReady(t4nfc_hlper_1_to_ecc_if_WCmdReady),
        .iToECCWReady(t4nfc_hlper_1_to_ecc_if_WReady),
        .iWriteReady(t4nfc_hlper_1_v2nfc_if_WriteReady),
        .ifromECCRAddress(bch_sccs_256B_21B_13b_1_from_ecc_if_RAddress),
        .ifromECCRCmdValid(bch_sccs_256B_21B_13b_1_from_ecc_if_RCmdValid),
        .ifromECCRLength(bch_sccs_256B_21B_13b_1_from_ecc_if_RLength),
        .ifromECCROpcode(bch_sccs_256B_21B_13b_1_from_ecc_if_ROpcode),
        .ifromECCRReady(bch_sccs_256B_21B_13b_1_from_ecc_if_RReady),
        .ifromECCRSourceID(bch_sccs_256B_21B_13b_1_from_ecc_if_RSourceID),
        .ifromECCRTargetID(bch_sccs_256B_21B_13b_1_from_ecc_if_RTargetID),
        .ifromECCWAddress(bch_sccs_256B_21B_13b_1_from_ecc_if_WAddress),
        .ifromECCWCmdValid(bch_sccs_256B_21B_13b_1_from_ecc_if_WCmdValid),
        .ifromECCWData(bch_sccs_256B_21B_13b_1_from_ecc_if_WData),
        .ifromECCWLast(bch_sccs_256B_21B_13b_1_from_ecc_if_WLast),
        .ifromECCWLength(bch_sccs_256B_21B_13b_1_from_ecc_if_WLength),
        .ifromECCWOpcode(bch_sccs_256B_21B_13b_1_from_ecc_if_WOpcode),
        .ifromECCWSourceID(bch_sccs_256B_21B_13b_1_from_ecc_if_WSourceID),
        .ifromECCWTargetID(bch_sccs_256B_21B_13b_1_from_ecc_if_WTargetID),
        .ifromECCWValid(bch_sccs_256B_21B_13b_1_from_ecc_if_WValid),
        .oAddress(t4nfc_hlper_1_v2nfc_if_Address),
        .oCMDValid(t4nfc_hlper_1_v2nfc_if_CMDValid),
        .oLength(t4nfc_hlper_1_v2nfc_if_Length),
        .oOpcode(t4nfc_hlper_1_v2nfc_if_Opcode),
        .oROMAddr(t4nfc_hlper_1_ucode_if_ADDR),
        .oROMClock(t4nfc_hlper_1_ucode_if_CLK),
        .oROMEnable(t4nfc_hlper_1_ucode_if_EN),
        .oROMRW(t4nfc_hlper_1_ucode_if_WE),
        .oROMReset(t4nfc_hlper_1_ucode_if_RST),
        .oROMWData(t4nfc_hlper_1_ucode_if_DIN),
        .oReadReady(t4nfc_hlper_1_v2nfc_if_ReadReady),
        .oSourceID(t4nfc_hlper_1_v2nfc_if_SourceID),
        .oTargetID(t4nfc_hlper_1_v2nfc_if_TargetID),
        .oToECCRAddress(t4nfc_hlper_1_to_ecc_if_RAddress),
        .oToECCRCmdValid(t4nfc_hlper_1_to_ecc_if_RCmdValid),
        .oToECCRLength(t4nfc_hlper_1_to_ecc_if_RLength),
        .oToECCROpcode(t4nfc_hlper_1_to_ecc_if_ROpcode),
        .oToECCRReady(t4nfc_hlper_1_to_ecc_if_RReady),
        .oToECCRSourceID(t4nfc_hlper_1_to_ecc_if_RSourceID),
        .oToECCRTargetID(t4nfc_hlper_1_to_ecc_if_RTargetID),
        .oToECCWAddress(t4nfc_hlper_1_to_ecc_if_WAddress),
        .oToECCWCmdValid(t4nfc_hlper_1_to_ecc_if_WCmdValid),
        .oToECCWData(t4nfc_hlper_1_to_ecc_if_WData),
        .oToECCWLast(t4nfc_hlper_1_to_ecc_if_WLast),
        .oToECCWLength(t4nfc_hlper_1_to_ecc_if_WLength),
        .oToECCWOpcode(t4nfc_hlper_1_to_ecc_if_WOpcode),
        .oToECCWSourceID(t4nfc_hlper_1_to_ecc_if_WSourceID),
        .oToECCWTargetID(t4nfc_hlper_1_to_ecc_if_WTargetID),
        .oToECCWValid(t4nfc_hlper_1_to_ecc_if_WValid),
        .oWriteData(t4nfc_hlper_1_v2nfc_if_WriteData),
        .oWriteLast(t4nfc_hlper_1_v2nfc_if_WriteLast),
        .oWriteValid(t4nfc_hlper_1_v2nfc_if_WriteValid),
        .ofromECCRCmdReady(bch_sccs_256B_21B_13b_1_from_ecc_if_RCmdReady),
        .ofromECCRData(bch_sccs_256B_21B_13b_1_from_ecc_if_RData),
        .ofromECCRLast(bch_sccs_256B_21B_13b_1_from_ecc_if_RLast),
        .ofromECCRValid(bch_sccs_256B_21B_13b_1_from_ecc_if_RValid),
        .ofromECCWCmdReady(bch_sccs_256B_21B_13b_1_from_ecc_if_WCmdReady),
        .ofromECCWReady(bch_sccs_256B_21B_13b_1_from_ecc_if_WReady));
  sys_top_t4nfc_hlper_2_0 t4nfc_hlper_2
       (.C_ARADDR(gpic_0_sub_0_M04_AXI_ARADDR),
        .C_ARPROT(gpic_0_sub_0_M04_AXI_ARPROT),
        .C_ARREADY(gpic_0_sub_0_M04_AXI_ARREADY),
        .C_ARVALID(gpic_0_sub_0_M04_AXI_ARVALID),
        .C_AWADDR(gpic_0_sub_0_M04_AXI_AWADDR),
        .C_AWPROT(gpic_0_sub_0_M04_AXI_AWPROT),
        .C_AWREADY(gpic_0_sub_0_M04_AXI_AWREADY),
        .C_AWVALID(gpic_0_sub_0_M04_AXI_AWVALID),
        .C_BREADY(gpic_0_sub_0_M04_AXI_BREADY),
        .C_BRESP(gpic_0_sub_0_M04_AXI_BRESP),
        .C_BVALID(gpic_0_sub_0_M04_AXI_BVALID),
        .C_RDATA(gpic_0_sub_0_M04_AXI_RDATA),
        .C_RREADY(gpic_0_sub_0_M04_AXI_RREADY),
        .C_RRESP(gpic_0_sub_0_M04_AXI_RRESP),
        .C_RVALID(gpic_0_sub_0_M04_AXI_RVALID),
        .C_WDATA(gpic_0_sub_0_M04_AXI_WDATA),
        .C_WREADY(gpic_0_sub_0_M04_AXI_WREADY),
        .C_WSTRB(gpic_0_sub_0_M04_AXI_WSTRB),
        .C_WVALID(gpic_0_sub_0_M04_AXI_WVALID),
        .D_ARADDR(S02_AXI_1_ARADDR),
        .D_ARBURST(S02_AXI_1_ARBURST),
        .D_ARCACHE(S02_AXI_1_ARCACHE),
        .D_ARLEN(S02_AXI_1_ARLEN),
        .D_ARPROT(S02_AXI_1_ARPROT),
        .D_ARREADY(S02_AXI_1_ARREADY),
        .D_ARSIZE(S02_AXI_1_ARSIZE),
        .D_ARVALID(S02_AXI_1_ARVALID),
        .D_AWADDR(S02_AXI_1_AWADDR),
        .D_AWBURST(S02_AXI_1_AWBURST),
        .D_AWCACHE(S02_AXI_1_AWCACHE),
        .D_AWLEN(S02_AXI_1_AWLEN),
        .D_AWPROT(S02_AXI_1_AWPROT),
        .D_AWREADY(S02_AXI_1_AWREADY),
        .D_AWSIZE(S02_AXI_1_AWSIZE),
        .D_AWVALID(S02_AXI_1_AWVALID),
        .D_BREADY(S02_AXI_1_BREADY),
        .D_BRESP(S02_AXI_1_BRESP),
        .D_BVALID(S02_AXI_1_BVALID),
        .D_RDATA(S02_AXI_1_RDATA),
        .D_RLAST(S02_AXI_1_RLAST),
        .D_RREADY(S02_AXI_1_RREADY),
        .D_RRESP(S02_AXI_1_RRESP),
        .D_RVALID(S02_AXI_1_RVALID),
        .D_WDATA(S02_AXI_1_WDATA),
        .D_WLAST(S02_AXI_1_WLAST),
        .D_WREADY(S02_AXI_1_WREADY),
        .D_WSTRB(S02_AXI_1_WSTRB),
        .D_WVALID(S02_AXI_1_WVALID),
        .iCMDReady(t4nfc_hlper_2_v2nfc_if_CMDReady),
        .iClock(pll_bank12_clk_out2),
        .iROMRData(t4nfc_hlper_2_ucode_if_DOUT),
        .iReadData(t4nfc_hlper_2_v2nfc_if_ReadData),
        .iReadLast(t4nfc_hlper_2_v2nfc_if_ReadLast),
        .iReadValid(t4nfc_hlper_2_v2nfc_if_ReadValid),
        .iReadyBusy(v2nfc_2_oReadyBusy),
        .iReset(proc_sys_reset_4_peripheral_reset),
        .iToECCRCmdReady(t4nfc_hlper_2_to_ecc_if_RCmdReady),
        .iToECCRData(t4nfc_hlper_2_to_ecc_if_RData),
        .iToECCRLast(t4nfc_hlper_2_to_ecc_if_RLast),
        .iToECCRValid(t4nfc_hlper_2_to_ecc_if_RValid),
        .iToECCWCmdReady(t4nfc_hlper_2_to_ecc_if_WCmdReady),
        .iToECCWReady(t4nfc_hlper_2_to_ecc_if_WReady),
        .iWriteReady(t4nfc_hlper_2_v2nfc_if_WriteReady),
        .ifromECCRAddress(bch_sccs_256B_21B_13b_2_from_ecc_if_RAddress),
        .ifromECCRCmdValid(bch_sccs_256B_21B_13b_2_from_ecc_if_RCmdValid),
        .ifromECCRLength(bch_sccs_256B_21B_13b_2_from_ecc_if_RLength),
        .ifromECCROpcode(bch_sccs_256B_21B_13b_2_from_ecc_if_ROpcode),
        .ifromECCRReady(bch_sccs_256B_21B_13b_2_from_ecc_if_RReady),
        .ifromECCRSourceID(bch_sccs_256B_21B_13b_2_from_ecc_if_RSourceID),
        .ifromECCRTargetID(bch_sccs_256B_21B_13b_2_from_ecc_if_RTargetID),
        .ifromECCWAddress(bch_sccs_256B_21B_13b_2_from_ecc_if_WAddress),
        .ifromECCWCmdValid(bch_sccs_256B_21B_13b_2_from_ecc_if_WCmdValid),
        .ifromECCWData(bch_sccs_256B_21B_13b_2_from_ecc_if_WData),
        .ifromECCWLast(bch_sccs_256B_21B_13b_2_from_ecc_if_WLast),
        .ifromECCWLength(bch_sccs_256B_21B_13b_2_from_ecc_if_WLength),
        .ifromECCWOpcode(bch_sccs_256B_21B_13b_2_from_ecc_if_WOpcode),
        .ifromECCWSourceID(bch_sccs_256B_21B_13b_2_from_ecc_if_WSourceID),
        .ifromECCWTargetID(bch_sccs_256B_21B_13b_2_from_ecc_if_WTargetID),
        .ifromECCWValid(bch_sccs_256B_21B_13b_2_from_ecc_if_WValid),
        .oAddress(t4nfc_hlper_2_v2nfc_if_Address),
        .oCMDValid(t4nfc_hlper_2_v2nfc_if_CMDValid),
        .oLength(t4nfc_hlper_2_v2nfc_if_Length),
        .oOpcode(t4nfc_hlper_2_v2nfc_if_Opcode),
        .oROMAddr(t4nfc_hlper_2_ucode_if_ADDR),
        .oROMClock(t4nfc_hlper_2_ucode_if_CLK),
        .oROMEnable(t4nfc_hlper_2_ucode_if_EN),
        .oROMRW(t4nfc_hlper_2_ucode_if_WE),
        .oROMReset(t4nfc_hlper_2_ucode_if_RST),
        .oROMWData(t4nfc_hlper_2_ucode_if_DIN),
        .oReadReady(t4nfc_hlper_2_v2nfc_if_ReadReady),
        .oSourceID(t4nfc_hlper_2_v2nfc_if_SourceID),
        .oTargetID(t4nfc_hlper_2_v2nfc_if_TargetID),
        .oToECCRAddress(t4nfc_hlper_2_to_ecc_if_RAddress),
        .oToECCRCmdValid(t4nfc_hlper_2_to_ecc_if_RCmdValid),
        .oToECCRLength(t4nfc_hlper_2_to_ecc_if_RLength),
        .oToECCROpcode(t4nfc_hlper_2_to_ecc_if_ROpcode),
        .oToECCRReady(t4nfc_hlper_2_to_ecc_if_RReady),
        .oToECCRSourceID(t4nfc_hlper_2_to_ecc_if_RSourceID),
        .oToECCRTargetID(t4nfc_hlper_2_to_ecc_if_RTargetID),
        .oToECCWAddress(t4nfc_hlper_2_to_ecc_if_WAddress),
        .oToECCWCmdValid(t4nfc_hlper_2_to_ecc_if_WCmdValid),
        .oToECCWData(t4nfc_hlper_2_to_ecc_if_WData),
        .oToECCWLast(t4nfc_hlper_2_to_ecc_if_WLast),
        .oToECCWLength(t4nfc_hlper_2_to_ecc_if_WLength),
        .oToECCWOpcode(t4nfc_hlper_2_to_ecc_if_WOpcode),
        .oToECCWSourceID(t4nfc_hlper_2_to_ecc_if_WSourceID),
        .oToECCWTargetID(t4nfc_hlper_2_to_ecc_if_WTargetID),
        .oToECCWValid(t4nfc_hlper_2_to_ecc_if_WValid),
        .oWriteData(t4nfc_hlper_2_v2nfc_if_WriteData),
        .oWriteLast(t4nfc_hlper_2_v2nfc_if_WriteLast),
        .oWriteValid(t4nfc_hlper_2_v2nfc_if_WriteValid),
        .ofromECCRCmdReady(bch_sccs_256B_21B_13b_2_from_ecc_if_RCmdReady),
        .ofromECCRData(bch_sccs_256B_21B_13b_2_from_ecc_if_RData),
        .ofromECCRLast(bch_sccs_256B_21B_13b_2_from_ecc_if_RLast),
        .ofromECCRValid(bch_sccs_256B_21B_13b_2_from_ecc_if_RValid),
        .ofromECCWCmdReady(bch_sccs_256B_21B_13b_2_from_ecc_if_WCmdReady),
        .ofromECCWReady(bch_sccs_256B_21B_13b_2_from_ecc_if_WReady));
  sys_top_t4nfc_hlper_3_0 t4nfc_hlper_3
       (.C_ARADDR(gpic_0_sub_0_M06_AXI_ARADDR),
        .C_ARPROT(gpic_0_sub_0_M06_AXI_ARPROT),
        .C_ARREADY(gpic_0_sub_0_M06_AXI_ARREADY),
        .C_ARVALID(gpic_0_sub_0_M06_AXI_ARVALID),
        .C_AWADDR(gpic_0_sub_0_M06_AXI_AWADDR),
        .C_AWPROT(gpic_0_sub_0_M06_AXI_AWPROT),
        .C_AWREADY(gpic_0_sub_0_M06_AXI_AWREADY),
        .C_AWVALID(gpic_0_sub_0_M06_AXI_AWVALID),
        .C_BREADY(gpic_0_sub_0_M06_AXI_BREADY),
        .C_BRESP(gpic_0_sub_0_M06_AXI_BRESP),
        .C_BVALID(gpic_0_sub_0_M06_AXI_BVALID),
        .C_RDATA(gpic_0_sub_0_M06_AXI_RDATA),
        .C_RREADY(gpic_0_sub_0_M06_AXI_RREADY),
        .C_RRESP(gpic_0_sub_0_M06_AXI_RRESP),
        .C_RVALID(gpic_0_sub_0_M06_AXI_RVALID),
        .C_WDATA(gpic_0_sub_0_M06_AXI_WDATA),
        .C_WREADY(gpic_0_sub_0_M06_AXI_WREADY),
        .C_WSTRB(gpic_0_sub_0_M06_AXI_WSTRB),
        .C_WVALID(gpic_0_sub_0_M06_AXI_WVALID),
        .D_ARADDR(S03_AXI_1_ARADDR),
        .D_ARBURST(S03_AXI_1_ARBURST),
        .D_ARCACHE(S03_AXI_1_ARCACHE),
        .D_ARLEN(S03_AXI_1_ARLEN),
        .D_ARPROT(S03_AXI_1_ARPROT),
        .D_ARREADY(S03_AXI_1_ARREADY),
        .D_ARSIZE(S03_AXI_1_ARSIZE),
        .D_ARVALID(S03_AXI_1_ARVALID),
        .D_AWADDR(S03_AXI_1_AWADDR),
        .D_AWBURST(S03_AXI_1_AWBURST),
        .D_AWCACHE(S03_AXI_1_AWCACHE),
        .D_AWLEN(S03_AXI_1_AWLEN),
        .D_AWPROT(S03_AXI_1_AWPROT),
        .D_AWREADY(S03_AXI_1_AWREADY),
        .D_AWSIZE(S03_AXI_1_AWSIZE),
        .D_AWVALID(S03_AXI_1_AWVALID),
        .D_BREADY(S03_AXI_1_BREADY),
        .D_BRESP(S03_AXI_1_BRESP),
        .D_BVALID(S03_AXI_1_BVALID),
        .D_RDATA(S03_AXI_1_RDATA),
        .D_RLAST(S03_AXI_1_RLAST),
        .D_RREADY(S03_AXI_1_RREADY),
        .D_RRESP(S03_AXI_1_RRESP),
        .D_RVALID(S03_AXI_1_RVALID),
        .D_WDATA(S03_AXI_1_WDATA),
        .D_WLAST(S03_AXI_1_WLAST),
        .D_WREADY(S03_AXI_1_WREADY),
        .D_WSTRB(S03_AXI_1_WSTRB),
        .D_WVALID(S03_AXI_1_WVALID),
        .iCMDReady(t4nfc_hlper_3_v2nfc_if_CMDReady),
        .iClock(pll_bank13_clk_out2),
        .iROMRData(t4nfc_hlper_3_ucode_if_DOUT),
        .iReadData(t4nfc_hlper_3_v2nfc_if_ReadData),
        .iReadLast(t4nfc_hlper_3_v2nfc_if_ReadLast),
        .iReadValid(t4nfc_hlper_3_v2nfc_if_ReadValid),
        .iReadyBusy(v2nfc_3_oReadyBusy),
        .iReset(proc_sys_reset_1_peripheral_reset),
        .iToECCRCmdReady(t4nfc_hlper_3_to_ecc_if_RCmdReady),
        .iToECCRData(t4nfc_hlper_3_to_ecc_if_RData),
        .iToECCRLast(t4nfc_hlper_3_to_ecc_if_RLast),
        .iToECCRValid(t4nfc_hlper_3_to_ecc_if_RValid),
        .iToECCWCmdReady(t4nfc_hlper_3_to_ecc_if_WCmdReady),
        .iToECCWReady(t4nfc_hlper_3_to_ecc_if_WReady),
        .iWriteReady(t4nfc_hlper_3_v2nfc_if_WriteReady),
        .ifromECCRAddress(bch_sccs_256B_21B_13b_3_from_ecc_if_RAddress),
        .ifromECCRCmdValid(bch_sccs_256B_21B_13b_3_from_ecc_if_RCmdValid),
        .ifromECCRLength(bch_sccs_256B_21B_13b_3_from_ecc_if_RLength),
        .ifromECCROpcode(bch_sccs_256B_21B_13b_3_from_ecc_if_ROpcode),
        .ifromECCRReady(bch_sccs_256B_21B_13b_3_from_ecc_if_RReady),
        .ifromECCRSourceID(bch_sccs_256B_21B_13b_3_from_ecc_if_RSourceID),
        .ifromECCRTargetID(bch_sccs_256B_21B_13b_3_from_ecc_if_RTargetID),
        .ifromECCWAddress(bch_sccs_256B_21B_13b_3_from_ecc_if_WAddress),
        .ifromECCWCmdValid(bch_sccs_256B_21B_13b_3_from_ecc_if_WCmdValid),
        .ifromECCWData(bch_sccs_256B_21B_13b_3_from_ecc_if_WData),
        .ifromECCWLast(bch_sccs_256B_21B_13b_3_from_ecc_if_WLast),
        .ifromECCWLength(bch_sccs_256B_21B_13b_3_from_ecc_if_WLength),
        .ifromECCWOpcode(bch_sccs_256B_21B_13b_3_from_ecc_if_WOpcode),
        .ifromECCWSourceID(bch_sccs_256B_21B_13b_3_from_ecc_if_WSourceID),
        .ifromECCWTargetID(bch_sccs_256B_21B_13b_3_from_ecc_if_WTargetID),
        .ifromECCWValid(bch_sccs_256B_21B_13b_3_from_ecc_if_WValid),
        .oAddress(t4nfc_hlper_3_v2nfc_if_Address),
        .oCMDValid(t4nfc_hlper_3_v2nfc_if_CMDValid),
        .oLength(t4nfc_hlper_3_v2nfc_if_Length),
        .oOpcode(t4nfc_hlper_3_v2nfc_if_Opcode),
        .oROMAddr(t4nfc_hlper_3_ucode_if_ADDR),
        .oROMClock(t4nfc_hlper_3_ucode_if_CLK),
        .oROMEnable(t4nfc_hlper_3_ucode_if_EN),
        .oROMRW(t4nfc_hlper_3_ucode_if_WE),
        .oROMReset(t4nfc_hlper_3_ucode_if_RST),
        .oROMWData(t4nfc_hlper_3_ucode_if_DIN),
        .oReadReady(t4nfc_hlper_3_v2nfc_if_ReadReady),
        .oSourceID(t4nfc_hlper_3_v2nfc_if_SourceID),
        .oTargetID(t4nfc_hlper_3_v2nfc_if_TargetID),
        .oToECCRAddress(t4nfc_hlper_3_to_ecc_if_RAddress),
        .oToECCRCmdValid(t4nfc_hlper_3_to_ecc_if_RCmdValid),
        .oToECCRLength(t4nfc_hlper_3_to_ecc_if_RLength),
        .oToECCROpcode(t4nfc_hlper_3_to_ecc_if_ROpcode),
        .oToECCRReady(t4nfc_hlper_3_to_ecc_if_RReady),
        .oToECCRSourceID(t4nfc_hlper_3_to_ecc_if_RSourceID),
        .oToECCRTargetID(t4nfc_hlper_3_to_ecc_if_RTargetID),
        .oToECCWAddress(t4nfc_hlper_3_to_ecc_if_WAddress),
        .oToECCWCmdValid(t4nfc_hlper_3_to_ecc_if_WCmdValid),
        .oToECCWData(t4nfc_hlper_3_to_ecc_if_WData),
        .oToECCWLast(t4nfc_hlper_3_to_ecc_if_WLast),
        .oToECCWLength(t4nfc_hlper_3_to_ecc_if_WLength),
        .oToECCWOpcode(t4nfc_hlper_3_to_ecc_if_WOpcode),
        .oToECCWSourceID(t4nfc_hlper_3_to_ecc_if_WSourceID),
        .oToECCWTargetID(t4nfc_hlper_3_to_ecc_if_WTargetID),
        .oToECCWValid(t4nfc_hlper_3_to_ecc_if_WValid),
        .oWriteData(t4nfc_hlper_3_v2nfc_if_WriteData),
        .oWriteLast(t4nfc_hlper_3_v2nfc_if_WriteLast),
        .oWriteValid(t4nfc_hlper_3_v2nfc_if_WriteValid),
        .ofromECCRCmdReady(bch_sccs_256B_21B_13b_3_from_ecc_if_RCmdReady),
        .ofromECCRData(bch_sccs_256B_21B_13b_3_from_ecc_if_RData),
        .ofromECCRLast(bch_sccs_256B_21B_13b_3_from_ecc_if_RLast),
        .ofromECCRValid(bch_sccs_256B_21B_13b_3_from_ecc_if_RValid),
        .ofromECCWCmdReady(bch_sccs_256B_21B_13b_3_from_ecc_if_WCmdReady),
        .ofromECCWReady(bch_sccs_256B_21B_13b_3_from_ecc_if_WReady));
  sys_top_v2nfc_0_0 v2nfc_0
       (.IO_NAND_DQ(nand_if_0_nand_dq[7:0]),
        .IO_NAND_DQS_N(nand_if_0_nand_dqs_n),
        .IO_NAND_DQS_P(nand_if_0_nand_dqs_p),
        .I_NAND_RB(v2nfc_0_nand_if_NAND_RB),
        .O_NAND_ALE(v2nfc_0_nand_if_NAND_ALE),
        .O_NAND_CE(v2nfc_0_nand_if_NAND_CE),
        .O_NAND_CLE(v2nfc_0_nand_if_NAND_CLE),
        .O_NAND_RE_N(v2nfc_0_nand_if_NAND_RE_N),
        .O_NAND_RE_P(v2nfc_0_nand_if_NAND_RE_P),
        .O_NAND_WE(v2nfc_0_nand_if_NAND_WE),
        .O_NAND_WP(v2nfc_0_nand_if_NAND_WP),
        .iAddress(t4nfc_hlper_0_v2nfc_if_Address),
        .iCMDValid(t4nfc_hlper_0_v2nfc_if_CMDValid),
        .iDQ0IDelayTap(iodelay_if_0_iodly_00__tap),
        .iDQ0IDelayTapLoad(iodelay_if_0_iodly_00__tap_load),
        .iDQ1IDelayTap(iodelay_if_0_iodly_01__tap),
        .iDQ1IDelayTapLoad(iodelay_if_0_iodly_01__tap_load),
        .iDQ2IDelayTap(iodelay_if_0_iodly_02__tap),
        .iDQ2IDelayTapLoad(iodelay_if_0_iodly_02__tap_load),
        .iDQ3IDelayTap(iodelay_if_0_iodly_03__tap),
        .iDQ3IDelayTapLoad(iodelay_if_0_iodly_03__tap_load),
        .iDQ4IDelayTap(iodelay_if_0_iodly_04__tap),
        .iDQ4IDelayTapLoad(iodelay_if_0_iodly_04__tap_load),
        .iDQ5IDelayTap(iodelay_if_0_iodly_05__tap),
        .iDQ5IDelayTapLoad(iodelay_if_0_iodly_05__tap_load),
        .iDQ6IDelayTap(iodelay_if_0_iodly_06__tap),
        .iDQ6IDelayTapLoad(iodelay_if_0_iodly_06__tap_load),
        .iDQ7IDelayTap(iodelay_if_0_iodly_07__tap),
        .iDQ7IDelayTapLoad(iodelay_if_0_iodly_07__tap_load),
        .iDQSIDelayTap(iodelay_if_0_dqs_iodly_00__tap),
        .iDQSIDelayTapLoad(iodelay_if_0_dqs_iodly_00__tap_load),
        .iDelayRefClock(pll_bank10_clk_out3),
        .iLength(t4nfc_hlper_0_v2nfc_if_Length),
        .iOpcode(t4nfc_hlper_0_v2nfc_if_Opcode),
        .iOutputDrivingClock(CH0C133BUF_BUFGCE_O),
        .iOutputStrobeClock(CH0C133BUF_BUFGCE_O),
        .iReadReady(t4nfc_hlper_0_v2nfc_if_ReadReady),
        .iReset(proc_sys_reset_5_peripheral_reset),
        .iSourceID(t4nfc_hlper_0_v2nfc_if_SourceID),
        .iSystemClock(pll_bank10_clk_out2),
        .iTargetID(t4nfc_hlper_0_v2nfc_if_TargetID),
        .iWriteData(t4nfc_hlper_0_v2nfc_if_WriteData),
        .iWriteLast(t4nfc_hlper_0_v2nfc_if_WriteLast),
        .iWriteValid(t4nfc_hlper_0_v2nfc_if_WriteValid),
        .oCMDReady(t4nfc_hlper_0_v2nfc_if_CMDReady),
        .oReadData(t4nfc_hlper_0_v2nfc_if_ReadData),
        .oReadLast(t4nfc_hlper_0_v2nfc_if_ReadLast),
        .oReadValid(t4nfc_hlper_0_v2nfc_if_ReadValid),
        .oReadyBusy(v2nfc_0_oReadyBusy),
        .oWriteReady(t4nfc_hlper_0_v2nfc_if_WriteReady));
  sys_top_v2nfc_0_1 v2nfc_1
       (.IO_NAND_DQ(nand_if_1_nand_dq[7:0]),
        .IO_NAND_DQS_N(nand_if_1_nand_dqs_n),
        .IO_NAND_DQS_P(nand_if_1_nand_dqs_p),
        .I_NAND_RB(v2nfc_1_nand_if_NAND_RB),
        .O_NAND_ALE(v2nfc_1_nand_if_NAND_ALE),
        .O_NAND_CE(v2nfc_1_nand_if_NAND_CE),
        .O_NAND_CLE(v2nfc_1_nand_if_NAND_CLE),
        .O_NAND_RE_N(v2nfc_1_nand_if_NAND_RE_N),
        .O_NAND_RE_P(v2nfc_1_nand_if_NAND_RE_P),
        .O_NAND_WE(v2nfc_1_nand_if_NAND_WE),
        .O_NAND_WP(v2nfc_1_nand_if_NAND_WP),
        .iAddress(t4nfc_hlper_1_v2nfc_if_Address),
        .iCMDValid(t4nfc_hlper_1_v2nfc_if_CMDValid),
        .iDQ0IDelayTap(iodelay_if_0_iodly_08__tap),
        .iDQ0IDelayTapLoad(iodelay_if_0_iodly_08__tap_load),
        .iDQ1IDelayTap(iodelay_if_0_iodly_09__tap),
        .iDQ1IDelayTapLoad(iodelay_if_0_iodly_09__tap_load),
        .iDQ2IDelayTap(iodelay_if_0_iodly_10__tap),
        .iDQ2IDelayTapLoad(iodelay_if_0_iodly_10__tap_load),
        .iDQ3IDelayTap(iodelay_if_0_iodly_11__tap),
        .iDQ3IDelayTapLoad(iodelay_if_0_iodly_11__tap_load),
        .iDQ4IDelayTap(iodelay_if_0_iodly_12__tap),
        .iDQ4IDelayTapLoad(iodelay_if_0_iodly_12__tap_load),
        .iDQ5IDelayTap(iodelay_if_0_iodly_13__tap),
        .iDQ5IDelayTapLoad(iodelay_if_0_iodly_13__tap_load),
        .iDQ6IDelayTap(iodelay_if_0_iodly_14__tap),
        .iDQ6IDelayTapLoad(iodelay_if_0_iodly_14__tap_load),
        .iDQ7IDelayTap(iodelay_if_0_iodly_15__tap),
        .iDQ7IDelayTapLoad(iodelay_if_0_iodly_15__tap_load),
        .iDQSIDelayTap(iodelay_if_0_dqs_iodly_01__tap),
        .iDQSIDelayTapLoad(iodelay_if_0_dqs_iodly_01__tap_load),
        .iDelayRefClock(pll_bank11_clk_out3),
        .iLength(t4nfc_hlper_1_v2nfc_if_Length),
        .iOpcode(t4nfc_hlper_1_v2nfc_if_Opcode),
        .iOutputDrivingClock(CH1C133BUF_BUFGCE_O),
        .iOutputStrobeClock(CH1C133BUF_BUFGCE_O),
        .iReadReady(t4nfc_hlper_1_v2nfc_if_ReadReady),
        .iReset(proc_sys_reset_3_peripheral_reset),
        .iSourceID(t4nfc_hlper_1_v2nfc_if_SourceID),
        .iSystemClock(pll_bank11_clk_out2),
        .iTargetID(t4nfc_hlper_1_v2nfc_if_TargetID),
        .iWriteData(t4nfc_hlper_1_v2nfc_if_WriteData),
        .iWriteLast(t4nfc_hlper_1_v2nfc_if_WriteLast),
        .iWriteValid(t4nfc_hlper_1_v2nfc_if_WriteValid),
        .oCMDReady(t4nfc_hlper_1_v2nfc_if_CMDReady),
        .oReadData(t4nfc_hlper_1_v2nfc_if_ReadData),
        .oReadLast(t4nfc_hlper_1_v2nfc_if_ReadLast),
        .oReadValid(t4nfc_hlper_1_v2nfc_if_ReadValid),
        .oReadyBusy(v2nfc_1_oReadyBusy),
        .oWriteReady(t4nfc_hlper_1_v2nfc_if_WriteReady));
  sys_top_v2nfc_0_2 v2nfc_2
       (.IO_NAND_DQ(nand_if_2_nand_dq[7:0]),
        .IO_NAND_DQS_N(nand_if_2_nand_dqs_n),
        .IO_NAND_DQS_P(nand_if_2_nand_dqs_p),
        .I_NAND_RB(v2nfc_2_nand_if_NAND_RB),
        .O_NAND_ALE(v2nfc_2_nand_if_NAND_ALE),
        .O_NAND_CE(v2nfc_2_nand_if_NAND_CE),
        .O_NAND_CLE(v2nfc_2_nand_if_NAND_CLE),
        .O_NAND_RE_N(v2nfc_2_nand_if_NAND_RE_N),
        .O_NAND_RE_P(v2nfc_2_nand_if_NAND_RE_P),
        .O_NAND_WE(v2nfc_2_nand_if_NAND_WE),
        .O_NAND_WP(v2nfc_2_nand_if_NAND_WP),
        .iAddress(t4nfc_hlper_2_v2nfc_if_Address),
        .iCMDValid(t4nfc_hlper_2_v2nfc_if_CMDValid),
        .iDQ0IDelayTap(iodelay_if_0_iodly_16__tap),
        .iDQ0IDelayTapLoad(iodelay_if_0_iodly_16__tap_load),
        .iDQ1IDelayTap(iodelay_if_0_iodly_17__tap),
        .iDQ1IDelayTapLoad(iodelay_if_0_iodly_17__tap_load),
        .iDQ2IDelayTap(iodelay_if_0_iodly_18__tap),
        .iDQ2IDelayTapLoad(iodelay_if_0_iodly_18__tap_load),
        .iDQ3IDelayTap(iodelay_if_0_iodly_19__tap),
        .iDQ3IDelayTapLoad(iodelay_if_0_iodly_19__tap_load),
        .iDQ4IDelayTap(iodelay_if_0_iodly_20__tap),
        .iDQ4IDelayTapLoad(iodelay_if_0_iodly_20__tap_load),
        .iDQ5IDelayTap(iodelay_if_0_iodly_21__tap),
        .iDQ5IDelayTapLoad(iodelay_if_0_iodly_21__tap_load),
        .iDQ6IDelayTap(iodelay_if_0_iodly_22__tap),
        .iDQ6IDelayTapLoad(iodelay_if_0_iodly_22__tap_load),
        .iDQ7IDelayTap(iodelay_if_0_iodly_23__tap),
        .iDQ7IDelayTapLoad(iodelay_if_0_iodly_23__tap_load),
        .iDQSIDelayTap(iodelay_if_0_dqs_iodly_02__tap),
        .iDQSIDelayTapLoad(iodelay_if_0_dqs_iodly_02__tap_load),
        .iDelayRefClock(pll_bank12_clk_out3),
        .iLength(t4nfc_hlper_2_v2nfc_if_Length),
        .iOpcode(t4nfc_hlper_2_v2nfc_if_Opcode),
        .iOutputDrivingClock(CH2C133BUF_BUFGCE_O),
        .iOutputStrobeClock(CH2C133BUF_BUFGCE_O),
        .iReadReady(t4nfc_hlper_2_v2nfc_if_ReadReady),
        .iReset(proc_sys_reset_4_peripheral_reset),
        .iSourceID(t4nfc_hlper_2_v2nfc_if_SourceID),
        .iSystemClock(pll_bank12_clk_out2),
        .iTargetID(t4nfc_hlper_2_v2nfc_if_TargetID),
        .iWriteData(t4nfc_hlper_2_v2nfc_if_WriteData),
        .iWriteLast(t4nfc_hlper_2_v2nfc_if_WriteLast),
        .iWriteValid(t4nfc_hlper_2_v2nfc_if_WriteValid),
        .oCMDReady(t4nfc_hlper_2_v2nfc_if_CMDReady),
        .oReadData(t4nfc_hlper_2_v2nfc_if_ReadData),
        .oReadLast(t4nfc_hlper_2_v2nfc_if_ReadLast),
        .oReadValid(t4nfc_hlper_2_v2nfc_if_ReadValid),
        .oReadyBusy(v2nfc_2_oReadyBusy),
        .oWriteReady(t4nfc_hlper_2_v2nfc_if_WriteReady));
  sys_top_v2nfc_2_0 v2nfc_3
       (.IO_NAND_DQ(nand_if_3_nand_dq[7:0]),
        .IO_NAND_DQS_N(nand_if_3_nand_dqs_n),
        .IO_NAND_DQS_P(nand_if_3_nand_dqs_p),
        .I_NAND_RB(v2nfc_3_nand_if_NAND_RB),
        .O_NAND_ALE(v2nfc_3_nand_if_NAND_ALE),
        .O_NAND_CE(v2nfc_3_nand_if_NAND_CE),
        .O_NAND_CLE(v2nfc_3_nand_if_NAND_CLE),
        .O_NAND_RE_N(v2nfc_3_nand_if_NAND_RE_N),
        .O_NAND_RE_P(v2nfc_3_nand_if_NAND_RE_P),
        .O_NAND_WE(v2nfc_3_nand_if_NAND_WE),
        .O_NAND_WP(v2nfc_3_nand_if_NAND_WP),
        .iAddress(t4nfc_hlper_3_v2nfc_if_Address),
        .iCMDValid(t4nfc_hlper_3_v2nfc_if_CMDValid),
        .iDQ0IDelayTap(iodelay_if_0_iodly_24__tap),
        .iDQ0IDelayTapLoad(iodelay_if_0_iodly_24__tap_load),
        .iDQ1IDelayTap(iodelay_if_0_iodly_25__tap),
        .iDQ1IDelayTapLoad(iodelay_if_0_iodly_25__tap_load),
        .iDQ2IDelayTap(iodelay_if_0_iodly_26__tap),
        .iDQ2IDelayTapLoad(iodelay_if_0_iodly_26__tap_load),
        .iDQ3IDelayTap(iodelay_if_0_iodly_27__tap),
        .iDQ3IDelayTapLoad(iodelay_if_0_iodly_27__tap_load),
        .iDQ4IDelayTap(iodelay_if_0_iodly_28__tap),
        .iDQ4IDelayTapLoad(iodelay_if_0_iodly_28__tap_load),
        .iDQ5IDelayTap(iodelay_if_0_iodly_29__tap),
        .iDQ5IDelayTapLoad(iodelay_if_0_iodly_29__tap_load),
        .iDQ6IDelayTap(iodelay_if_0_iodly_30__tap),
        .iDQ6IDelayTapLoad(iodelay_if_0_iodly_30__tap_load),
        .iDQ7IDelayTap(iodelay_if_0_iodly_31__tap),
        .iDQ7IDelayTapLoad(iodelay_if_0_iodly_31__tap_load),
        .iDQSIDelayTap(iodelay_if_0_dqs_iodly_03__tap),
        .iDQSIDelayTapLoad(iodelay_if_0_dqs_iodly_03__tap_load),
        .iDelayRefClock(pll_bank13_clk_out3),
        .iLength(t4nfc_hlper_3_v2nfc_if_Length),
        .iOpcode(t4nfc_hlper_3_v2nfc_if_Opcode),
        .iOutputDrivingClock(CH3C133BUF_BUFGCE_O),
        .iOutputStrobeClock(CH3C133BUF_BUFGCE_O),
        .iReadReady(t4nfc_hlper_3_v2nfc_if_ReadReady),
        .iReset(proc_sys_reset_1_peripheral_reset),
        .iSourceID(t4nfc_hlper_3_v2nfc_if_SourceID),
        .iSystemClock(pll_bank13_clk_out2),
        .iTargetID(t4nfc_hlper_3_v2nfc_if_TargetID),
        .iWriteData(t4nfc_hlper_3_v2nfc_if_WriteData),
        .iWriteLast(t4nfc_hlper_3_v2nfc_if_WriteLast),
        .iWriteValid(t4nfc_hlper_3_v2nfc_if_WriteValid),
        .oCMDReady(t4nfc_hlper_3_v2nfc_if_CMDReady),
        .oReadData(t4nfc_hlper_3_v2nfc_if_ReadData),
        .oReadLast(t4nfc_hlper_3_v2nfc_if_ReadLast),
        .oReadValid(t4nfc_hlper_3_v2nfc_if_ReadValid),
        .oReadyBusy(v2nfc_3_oReadyBusy),
        .oWriteReady(t4nfc_hlper_3_v2nfc_if_WriteReady));
  sys_top_xlconcat_0_0 xlconcat_0
       (.In0(nvme_ctrl_0_dev_irq_assert),
        .dout(xlconcat_0_dout));
  sys_top_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.maxigp0_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .maxigp0_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .maxigp0_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .maxigp0_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .maxigp0_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .maxigp0_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .maxigp0_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .maxigp0_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .maxigp0_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .maxigp0_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .maxigp0_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER),
        .maxigp0_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .maxigp0_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .maxigp0_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .maxigp0_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .maxigp0_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .maxigp0_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .maxigp0_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .maxigp0_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .maxigp0_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .maxigp0_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .maxigp0_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .maxigp0_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER),
        .maxigp0_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .maxigp0_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .maxigp0_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .maxigp0_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .maxigp0_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .maxigp0_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .maxigp0_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .maxigp0_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .maxigp0_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .maxigp0_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .maxigp0_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .maxigp0_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .maxigp0_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .maxigp0_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .maxigp0_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .maxigp0_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
        .maxigp1_araddr(S00_AXI_1_ARADDR),
        .maxigp1_arburst(S00_AXI_1_ARBURST),
        .maxigp1_arcache(S00_AXI_1_ARCACHE),
        .maxigp1_arid(S00_AXI_1_ARID),
        .maxigp1_arlen(S00_AXI_1_ARLEN),
        .maxigp1_arlock(S00_AXI_1_ARLOCK),
        .maxigp1_arprot(S00_AXI_1_ARPROT),
        .maxigp1_arqos(S00_AXI_1_ARQOS),
        .maxigp1_arready(S00_AXI_1_ARREADY),
        .maxigp1_arsize(S00_AXI_1_ARSIZE),
        .maxigp1_arvalid(S00_AXI_1_ARVALID),
        .maxigp1_awaddr(S00_AXI_1_AWADDR),
        .maxigp1_awburst(S00_AXI_1_AWBURST),
        .maxigp1_awcache(S00_AXI_1_AWCACHE),
        .maxigp1_awid(S00_AXI_1_AWID),
        .maxigp1_awlen(S00_AXI_1_AWLEN),
        .maxigp1_awlock(S00_AXI_1_AWLOCK),
        .maxigp1_awprot(S00_AXI_1_AWPROT),
        .maxigp1_awqos(S00_AXI_1_AWQOS),
        .maxigp1_awready(S00_AXI_1_AWREADY),
        .maxigp1_awsize(S00_AXI_1_AWSIZE),
        .maxigp1_awvalid(S00_AXI_1_AWVALID),
        .maxigp1_bid(S00_AXI_1_BID),
        .maxigp1_bready(S00_AXI_1_BREADY),
        .maxigp1_bresp(S00_AXI_1_BRESP),
        .maxigp1_bvalid(S00_AXI_1_BVALID),
        .maxigp1_rdata(S00_AXI_1_RDATA),
        .maxigp1_rid(S00_AXI_1_RID),
        .maxigp1_rlast(S00_AXI_1_RLAST),
        .maxigp1_rready(S00_AXI_1_RREADY),
        .maxigp1_rresp(S00_AXI_1_RRESP),
        .maxigp1_rvalid(S00_AXI_1_RVALID),
        .maxigp1_wdata(S00_AXI_1_WDATA),
        .maxigp1_wlast(S00_AXI_1_WLAST),
        .maxigp1_wready(S00_AXI_1_WREADY),
        .maxigp1_wstrb(S00_AXI_1_WSTRB),
        .maxigp1_wvalid(S00_AXI_1_WVALID),
        .maxihpm0_fpd_aclk(processing_system7_0_FCLK_CLK2),
        .maxihpm1_fpd_aclk(processing_system7_0_FCLK_CLK2),
        .pl_clk0(processing_system7_0_FCLK_CLK0),
        .pl_clk1(processing_system7_0_FCLK_CLK2),
        .pl_clk2(zynq_ultra_ps_e_0_pl_clk2),
        .pl_clk3(zynq_ultra_ps_e_0_pl_clk3),
        .pl_ps_irq0(xlconcat_0_dout),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0),
        .pl_resetn1(zynq_ultra_ps_e_0_pl_resetn1),
        .pl_resetn2(zynq_ultra_ps_e_0_pl_resetn2),
        .pl_resetn3(zynq_ultra_ps_e_0_pl_resetn3),
        .saxigp2_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hpic_0_M00_AXI_ARADDR}),
        .saxigp2_arburst(hpic_0_M00_AXI_ARBURST),
        .saxigp2_arcache(hpic_0_M00_AXI_ARCACHE),
        .saxigp2_arid({1'b0,1'b0,1'b0,1'b0,hpic_0_M00_AXI_ARID}),
        .saxigp2_arlen(hpic_0_M00_AXI_ARLEN),
        .saxigp2_arlock(hpic_0_M00_AXI_ARLOCK),
        .saxigp2_arprot(hpic_0_M00_AXI_ARPROT),
        .saxigp2_arqos(hpic_0_M00_AXI_ARQOS),
        .saxigp2_arready(hpic_0_M00_AXI_ARREADY),
        .saxigp2_arsize(hpic_0_M00_AXI_ARSIZE),
        .saxigp2_aruser(1'b0),
        .saxigp2_arvalid(hpic_0_M00_AXI_ARVALID),
        .saxigp2_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,hpic_0_M00_AXI_AWADDR}),
        .saxigp2_awburst(hpic_0_M00_AXI_AWBURST),
        .saxigp2_awcache(hpic_0_M00_AXI_AWCACHE),
        .saxigp2_awid({1'b0,1'b0,1'b0,1'b0,hpic_0_M00_AXI_AWID}),
        .saxigp2_awlen(hpic_0_M00_AXI_AWLEN),
        .saxigp2_awlock(hpic_0_M00_AXI_AWLOCK),
        .saxigp2_awprot(hpic_0_M00_AXI_AWPROT),
        .saxigp2_awqos(hpic_0_M00_AXI_AWQOS),
        .saxigp2_awready(hpic_0_M00_AXI_AWREADY),
        .saxigp2_awsize(hpic_0_M00_AXI_AWSIZE),
        .saxigp2_awuser(1'b0),
        .saxigp2_awvalid(hpic_0_M00_AXI_AWVALID),
        .saxigp2_bid(hpic_0_M00_AXI_BID),
        .saxigp2_bready(hpic_0_M00_AXI_BREADY),
        .saxigp2_bresp(hpic_0_M00_AXI_BRESP),
        .saxigp2_bvalid(hpic_0_M00_AXI_BVALID),
        .saxigp2_rdata(hpic_0_M00_AXI_RDATA),
        .saxigp2_rid(hpic_0_M00_AXI_RID),
        .saxigp2_rlast(hpic_0_M00_AXI_RLAST),
        .saxigp2_rready(hpic_0_M00_AXI_RREADY),
        .saxigp2_rresp(hpic_0_M00_AXI_RRESP),
        .saxigp2_rvalid(hpic_0_M00_AXI_RVALID),
        .saxigp2_wdata(hpic_0_M00_AXI_WDATA),
        .saxigp2_wlast(hpic_0_M00_AXI_WLAST),
        .saxigp2_wready(hpic_0_M00_AXI_WREADY),
        .saxigp2_wstrb(hpic_0_M00_AXI_WSTRB),
        .saxigp2_wvalid(hpic_0_M00_AXI_WVALID),
        .saxigp3_araddr(smartconnect_0_M00_AXI_ARADDR),
        .saxigp3_arburst(smartconnect_0_M00_AXI_ARBURST),
        .saxigp3_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .saxigp3_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp3_arlen(smartconnect_0_M00_AXI_ARLEN),
        .saxigp3_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .saxigp3_arprot(smartconnect_0_M00_AXI_ARPROT),
        .saxigp3_arqos(smartconnect_0_M00_AXI_ARQOS),
        .saxigp3_arready(smartconnect_0_M00_AXI_ARREADY),
        .saxigp3_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .saxigp3_aruser(smartconnect_0_M00_AXI_ARUSER),
        .saxigp3_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .saxigp3_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .saxigp3_awburst(smartconnect_0_M00_AXI_AWBURST),
        .saxigp3_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .saxigp3_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .saxigp3_awlen(smartconnect_0_M00_AXI_AWLEN),
        .saxigp3_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .saxigp3_awprot(smartconnect_0_M00_AXI_AWPROT),
        .saxigp3_awqos(smartconnect_0_M00_AXI_AWQOS),
        .saxigp3_awready(smartconnect_0_M00_AXI_AWREADY),
        .saxigp3_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .saxigp3_awuser(smartconnect_0_M00_AXI_AWUSER),
        .saxigp3_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .saxigp3_bready(smartconnect_0_M00_AXI_BREADY),
        .saxigp3_bresp(smartconnect_0_M00_AXI_BRESP),
        .saxigp3_bvalid(smartconnect_0_M00_AXI_BVALID),
        .saxigp3_rdata(smartconnect_0_M00_AXI_RDATA),
        .saxigp3_rlast(smartconnect_0_M00_AXI_RLAST),
        .saxigp3_rready(smartconnect_0_M00_AXI_RREADY),
        .saxigp3_rresp(smartconnect_0_M00_AXI_RRESP),
        .saxigp3_rvalid(smartconnect_0_M00_AXI_RVALID),
        .saxigp3_wdata(smartconnect_0_M00_AXI_WDATA),
        .saxigp3_wlast(smartconnect_0_M00_AXI_WLAST),
        .saxigp3_wready(smartconnect_0_M00_AXI_WREADY),
        .saxigp3_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .saxigp3_wvalid(smartconnect_0_M00_AXI_WVALID),
        .saxihp0_fpd_aclk(processing_system7_0_FCLK_CLK2),
        .saxihp1_fpd_aclk(zynq_ultra_ps_e_0_pl_clk3));
endmodule

module sys_top_gpic_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arregion,
    M00_AXI_arsize,
    M00_AXI_aruser,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awregion,
    M00_AXI_awsize,
    M00_AXI_awuser,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [39:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [15:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [3:0]M00_AXI_arregion;
  output [2:0]M00_AXI_arsize;
  output [15:0]M00_AXI_aruser;
  output M00_AXI_arvalid;
  output [39:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [15:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [3:0]M00_AXI_awregion;
  output [2:0]M00_AXI_awsize;
  output [15:0]M00_AXI_awuser;
  output M00_AXI_awvalid;
  input [15:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [63:0]M00_AXI_rdata;
  input [15:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [63:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [15:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [15:0]S00_AXI_aruser;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [15:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [15:0]S00_AXI_awuser;
  input S00_AXI_awvalid;
  output [15:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [63:0]S00_AXI_rdata;
  output [15:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [63:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [7:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire gpic_0_ACLK_net;
  wire gpic_0_ARESETN_net;
  wire [39:0]gpic_0_to_s00_couplers_ARADDR;
  wire [1:0]gpic_0_to_s00_couplers_ARBURST;
  wire [3:0]gpic_0_to_s00_couplers_ARCACHE;
  wire [15:0]gpic_0_to_s00_couplers_ARID;
  wire [7:0]gpic_0_to_s00_couplers_ARLEN;
  wire [0:0]gpic_0_to_s00_couplers_ARLOCK;
  wire [2:0]gpic_0_to_s00_couplers_ARPROT;
  wire [3:0]gpic_0_to_s00_couplers_ARQOS;
  wire gpic_0_to_s00_couplers_ARREADY;
  wire [2:0]gpic_0_to_s00_couplers_ARSIZE;
  wire [15:0]gpic_0_to_s00_couplers_ARUSER;
  wire gpic_0_to_s00_couplers_ARVALID;
  wire [39:0]gpic_0_to_s00_couplers_AWADDR;
  wire [1:0]gpic_0_to_s00_couplers_AWBURST;
  wire [3:0]gpic_0_to_s00_couplers_AWCACHE;
  wire [15:0]gpic_0_to_s00_couplers_AWID;
  wire [7:0]gpic_0_to_s00_couplers_AWLEN;
  wire [0:0]gpic_0_to_s00_couplers_AWLOCK;
  wire [2:0]gpic_0_to_s00_couplers_AWPROT;
  wire [3:0]gpic_0_to_s00_couplers_AWQOS;
  wire gpic_0_to_s00_couplers_AWREADY;
  wire [2:0]gpic_0_to_s00_couplers_AWSIZE;
  wire [15:0]gpic_0_to_s00_couplers_AWUSER;
  wire gpic_0_to_s00_couplers_AWVALID;
  wire [15:0]gpic_0_to_s00_couplers_BID;
  wire gpic_0_to_s00_couplers_BREADY;
  wire [1:0]gpic_0_to_s00_couplers_BRESP;
  wire gpic_0_to_s00_couplers_BVALID;
  wire [63:0]gpic_0_to_s00_couplers_RDATA;
  wire [15:0]gpic_0_to_s00_couplers_RID;
  wire gpic_0_to_s00_couplers_RLAST;
  wire gpic_0_to_s00_couplers_RREADY;
  wire [1:0]gpic_0_to_s00_couplers_RRESP;
  wire gpic_0_to_s00_couplers_RVALID;
  wire [63:0]gpic_0_to_s00_couplers_WDATA;
  wire gpic_0_to_s00_couplers_WLAST;
  wire gpic_0_to_s00_couplers_WREADY;
  wire [7:0]gpic_0_to_s00_couplers_WSTRB;
  wire gpic_0_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_gpic_0_ARADDR;
  wire [1:0]s00_couplers_to_gpic_0_ARBURST;
  wire [3:0]s00_couplers_to_gpic_0_ARCACHE;
  wire [15:0]s00_couplers_to_gpic_0_ARID;
  wire [7:0]s00_couplers_to_gpic_0_ARLEN;
  wire [0:0]s00_couplers_to_gpic_0_ARLOCK;
  wire [2:0]s00_couplers_to_gpic_0_ARPROT;
  wire [3:0]s00_couplers_to_gpic_0_ARQOS;
  wire s00_couplers_to_gpic_0_ARREADY;
  wire [3:0]s00_couplers_to_gpic_0_ARREGION;
  wire [2:0]s00_couplers_to_gpic_0_ARSIZE;
  wire [15:0]s00_couplers_to_gpic_0_ARUSER;
  wire s00_couplers_to_gpic_0_ARVALID;
  wire [39:0]s00_couplers_to_gpic_0_AWADDR;
  wire [1:0]s00_couplers_to_gpic_0_AWBURST;
  wire [3:0]s00_couplers_to_gpic_0_AWCACHE;
  wire [15:0]s00_couplers_to_gpic_0_AWID;
  wire [7:0]s00_couplers_to_gpic_0_AWLEN;
  wire [0:0]s00_couplers_to_gpic_0_AWLOCK;
  wire [2:0]s00_couplers_to_gpic_0_AWPROT;
  wire [3:0]s00_couplers_to_gpic_0_AWQOS;
  wire s00_couplers_to_gpic_0_AWREADY;
  wire [3:0]s00_couplers_to_gpic_0_AWREGION;
  wire [2:0]s00_couplers_to_gpic_0_AWSIZE;
  wire [15:0]s00_couplers_to_gpic_0_AWUSER;
  wire s00_couplers_to_gpic_0_AWVALID;
  wire [15:0]s00_couplers_to_gpic_0_BID;
  wire s00_couplers_to_gpic_0_BREADY;
  wire [1:0]s00_couplers_to_gpic_0_BRESP;
  wire s00_couplers_to_gpic_0_BVALID;
  wire [63:0]s00_couplers_to_gpic_0_RDATA;
  wire [15:0]s00_couplers_to_gpic_0_RID;
  wire s00_couplers_to_gpic_0_RLAST;
  wire s00_couplers_to_gpic_0_RREADY;
  wire [1:0]s00_couplers_to_gpic_0_RRESP;
  wire s00_couplers_to_gpic_0_RVALID;
  wire [63:0]s00_couplers_to_gpic_0_WDATA;
  wire s00_couplers_to_gpic_0_WLAST;
  wire s00_couplers_to_gpic_0_WREADY;
  wire [7:0]s00_couplers_to_gpic_0_WSTRB;
  wire s00_couplers_to_gpic_0_WVALID;

  assign M00_AXI_araddr[39:0] = s00_couplers_to_gpic_0_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_gpic_0_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_gpic_0_ARCACHE;
  assign M00_AXI_arid[15:0] = s00_couplers_to_gpic_0_ARID;
  assign M00_AXI_arlen[7:0] = s00_couplers_to_gpic_0_ARLEN;
  assign M00_AXI_arlock[0] = s00_couplers_to_gpic_0_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_gpic_0_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_gpic_0_ARQOS;
  assign M00_AXI_arregion[3:0] = s00_couplers_to_gpic_0_ARREGION;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_gpic_0_ARSIZE;
  assign M00_AXI_aruser[15:0] = s00_couplers_to_gpic_0_ARUSER;
  assign M00_AXI_arvalid = s00_couplers_to_gpic_0_ARVALID;
  assign M00_AXI_awaddr[39:0] = s00_couplers_to_gpic_0_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_gpic_0_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_gpic_0_AWCACHE;
  assign M00_AXI_awid[15:0] = s00_couplers_to_gpic_0_AWID;
  assign M00_AXI_awlen[7:0] = s00_couplers_to_gpic_0_AWLEN;
  assign M00_AXI_awlock[0] = s00_couplers_to_gpic_0_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_gpic_0_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_gpic_0_AWQOS;
  assign M00_AXI_awregion[3:0] = s00_couplers_to_gpic_0_AWREGION;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_gpic_0_AWSIZE;
  assign M00_AXI_awuser[15:0] = s00_couplers_to_gpic_0_AWUSER;
  assign M00_AXI_awvalid = s00_couplers_to_gpic_0_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_gpic_0_BREADY;
  assign M00_AXI_rready = s00_couplers_to_gpic_0_RREADY;
  assign M00_AXI_wdata[63:0] = s00_couplers_to_gpic_0_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_gpic_0_WLAST;
  assign M00_AXI_wstrb[7:0] = s00_couplers_to_gpic_0_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_gpic_0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = gpic_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = gpic_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[15:0] = gpic_0_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = gpic_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = gpic_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[63:0] = gpic_0_to_s00_couplers_RDATA;
  assign S00_AXI_rid[15:0] = gpic_0_to_s00_couplers_RID;
  assign S00_AXI_rlast = gpic_0_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = gpic_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = gpic_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready = gpic_0_to_s00_couplers_WREADY;
  assign gpic_0_ACLK_net = M00_ACLK;
  assign gpic_0_ARESETN_net = M00_ARESETN;
  assign gpic_0_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign gpic_0_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign gpic_0_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign gpic_0_to_s00_couplers_ARID = S00_AXI_arid[15:0];
  assign gpic_0_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign gpic_0_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign gpic_0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign gpic_0_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign gpic_0_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign gpic_0_to_s00_couplers_ARUSER = S00_AXI_aruser[15:0];
  assign gpic_0_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign gpic_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign gpic_0_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign gpic_0_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign gpic_0_to_s00_couplers_AWID = S00_AXI_awid[15:0];
  assign gpic_0_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign gpic_0_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign gpic_0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign gpic_0_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign gpic_0_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign gpic_0_to_s00_couplers_AWUSER = S00_AXI_awuser[15:0];
  assign gpic_0_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign gpic_0_to_s00_couplers_BREADY = S00_AXI_bready;
  assign gpic_0_to_s00_couplers_RREADY = S00_AXI_rready;
  assign gpic_0_to_s00_couplers_WDATA = S00_AXI_wdata[63:0];
  assign gpic_0_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign gpic_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[7:0];
  assign gpic_0_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_gpic_0_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_gpic_0_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_gpic_0_BID = M00_AXI_bid[15:0];
  assign s00_couplers_to_gpic_0_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_gpic_0_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_gpic_0_RDATA = M00_AXI_rdata[63:0];
  assign s00_couplers_to_gpic_0_RID = M00_AXI_rid[15:0];
  assign s00_couplers_to_gpic_0_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_gpic_0_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_gpic_0_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_gpic_0_WREADY = M00_AXI_wready;
  s00_couplers_imp_1WZAMLA s00_couplers
       (.M_ACLK(gpic_0_ACLK_net),
        .M_ARESETN(gpic_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_gpic_0_ARADDR),
        .M_AXI_arburst(s00_couplers_to_gpic_0_ARBURST),
        .M_AXI_arcache(s00_couplers_to_gpic_0_ARCACHE),
        .M_AXI_arid(s00_couplers_to_gpic_0_ARID),
        .M_AXI_arlen(s00_couplers_to_gpic_0_ARLEN),
        .M_AXI_arlock(s00_couplers_to_gpic_0_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_gpic_0_ARPROT),
        .M_AXI_arqos(s00_couplers_to_gpic_0_ARQOS),
        .M_AXI_arready(s00_couplers_to_gpic_0_ARREADY),
        .M_AXI_arregion(s00_couplers_to_gpic_0_ARREGION),
        .M_AXI_arsize(s00_couplers_to_gpic_0_ARSIZE),
        .M_AXI_aruser(s00_couplers_to_gpic_0_ARUSER),
        .M_AXI_arvalid(s00_couplers_to_gpic_0_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_gpic_0_AWADDR),
        .M_AXI_awburst(s00_couplers_to_gpic_0_AWBURST),
        .M_AXI_awcache(s00_couplers_to_gpic_0_AWCACHE),
        .M_AXI_awid(s00_couplers_to_gpic_0_AWID),
        .M_AXI_awlen(s00_couplers_to_gpic_0_AWLEN),
        .M_AXI_awlock(s00_couplers_to_gpic_0_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_gpic_0_AWPROT),
        .M_AXI_awqos(s00_couplers_to_gpic_0_AWQOS),
        .M_AXI_awready(s00_couplers_to_gpic_0_AWREADY),
        .M_AXI_awregion(s00_couplers_to_gpic_0_AWREGION),
        .M_AXI_awsize(s00_couplers_to_gpic_0_AWSIZE),
        .M_AXI_awuser(s00_couplers_to_gpic_0_AWUSER),
        .M_AXI_awvalid(s00_couplers_to_gpic_0_AWVALID),
        .M_AXI_bid(s00_couplers_to_gpic_0_BID),
        .M_AXI_bready(s00_couplers_to_gpic_0_BREADY),
        .M_AXI_bresp(s00_couplers_to_gpic_0_BRESP),
        .M_AXI_bvalid(s00_couplers_to_gpic_0_BVALID),
        .M_AXI_rdata(s00_couplers_to_gpic_0_RDATA),
        .M_AXI_rid(s00_couplers_to_gpic_0_RID),
        .M_AXI_rlast(s00_couplers_to_gpic_0_RLAST),
        .M_AXI_rready(s00_couplers_to_gpic_0_RREADY),
        .M_AXI_rresp(s00_couplers_to_gpic_0_RRESP),
        .M_AXI_rvalid(s00_couplers_to_gpic_0_RVALID),
        .M_AXI_wdata(s00_couplers_to_gpic_0_WDATA),
        .M_AXI_wlast(s00_couplers_to_gpic_0_WLAST),
        .M_AXI_wready(s00_couplers_to_gpic_0_WREADY),
        .M_AXI_wstrb(s00_couplers_to_gpic_0_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_gpic_0_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(gpic_0_to_s00_couplers_ARADDR),
        .S_AXI_arburst(gpic_0_to_s00_couplers_ARBURST),
        .S_AXI_arcache(gpic_0_to_s00_couplers_ARCACHE),
        .S_AXI_arid(gpic_0_to_s00_couplers_ARID),
        .S_AXI_arlen(gpic_0_to_s00_couplers_ARLEN),
        .S_AXI_arlock(gpic_0_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(gpic_0_to_s00_couplers_ARPROT),
        .S_AXI_arqos(gpic_0_to_s00_couplers_ARQOS),
        .S_AXI_arready(gpic_0_to_s00_couplers_ARREADY),
        .S_AXI_arsize(gpic_0_to_s00_couplers_ARSIZE),
        .S_AXI_aruser(gpic_0_to_s00_couplers_ARUSER),
        .S_AXI_arvalid(gpic_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(gpic_0_to_s00_couplers_AWADDR),
        .S_AXI_awburst(gpic_0_to_s00_couplers_AWBURST),
        .S_AXI_awcache(gpic_0_to_s00_couplers_AWCACHE),
        .S_AXI_awid(gpic_0_to_s00_couplers_AWID),
        .S_AXI_awlen(gpic_0_to_s00_couplers_AWLEN),
        .S_AXI_awlock(gpic_0_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(gpic_0_to_s00_couplers_AWPROT),
        .S_AXI_awqos(gpic_0_to_s00_couplers_AWQOS),
        .S_AXI_awready(gpic_0_to_s00_couplers_AWREADY),
        .S_AXI_awsize(gpic_0_to_s00_couplers_AWSIZE),
        .S_AXI_awuser(gpic_0_to_s00_couplers_AWUSER),
        .S_AXI_awvalid(gpic_0_to_s00_couplers_AWVALID),
        .S_AXI_bid(gpic_0_to_s00_couplers_BID),
        .S_AXI_bready(gpic_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(gpic_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(gpic_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(gpic_0_to_s00_couplers_RDATA),
        .S_AXI_rid(gpic_0_to_s00_couplers_RID),
        .S_AXI_rlast(gpic_0_to_s00_couplers_RLAST),
        .S_AXI_rready(gpic_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(gpic_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(gpic_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(gpic_0_to_s00_couplers_WDATA),
        .S_AXI_wlast(gpic_0_to_s00_couplers_WLAST),
        .S_AXI_wready(gpic_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(gpic_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(gpic_0_to_s00_couplers_WVALID));
endmodule

module sys_top_gpic_0_sub_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arburst,
    M01_AXI_arcache,
    M01_AXI_arlen,
    M01_AXI_arlock,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arsize,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awburst,
    M01_AXI_awcache,
    M01_AXI_awlen,
    M01_AXI_awlock,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awsize,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rlast,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wlast,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arprot,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awprot,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arburst,
    M03_AXI_arcache,
    M03_AXI_arlen,
    M03_AXI_arlock,
    M03_AXI_arprot,
    M03_AXI_arready,
    M03_AXI_arsize,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awburst,
    M03_AXI_awcache,
    M03_AXI_awlen,
    M03_AXI_awlock,
    M03_AXI_awprot,
    M03_AXI_awready,
    M03_AXI_awsize,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rlast,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wlast,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arprot,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awprot,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arburst,
    M05_AXI_arcache,
    M05_AXI_arlen,
    M05_AXI_arlock,
    M05_AXI_arprot,
    M05_AXI_arready,
    M05_AXI_arsize,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awburst,
    M05_AXI_awcache,
    M05_AXI_awlen,
    M05_AXI_awlock,
    M05_AXI_awprot,
    M05_AXI_awready,
    M05_AXI_awsize,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rlast,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wlast,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arprot,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awprot,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arburst,
    M07_AXI_arcache,
    M07_AXI_arlen,
    M07_AXI_arlock,
    M07_AXI_arprot,
    M07_AXI_arready,
    M07_AXI_arsize,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awburst,
    M07_AXI_awcache,
    M07_AXI_awlen,
    M07_AXI_awlock,
    M07_AXI_awprot,
    M07_AXI_awready,
    M07_AXI_awsize,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rlast,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wlast,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [11:0]M01_AXI_araddr;
  output [1:0]M01_AXI_arburst;
  output [3:0]M01_AXI_arcache;
  output [7:0]M01_AXI_arlen;
  output [0:0]M01_AXI_arlock;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output [2:0]M01_AXI_arsize;
  output M01_AXI_arvalid;
  output [11:0]M01_AXI_awaddr;
  output [1:0]M01_AXI_awburst;
  output [3:0]M01_AXI_awcache;
  output [7:0]M01_AXI_awlen;
  output [0:0]M01_AXI_awlock;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output [2:0]M01_AXI_awsize;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  input M01_AXI_rlast;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  output M01_AXI_wlast;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  output [2:0]M02_AXI_arprot;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  output [2:0]M02_AXI_awprot;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [11:0]M03_AXI_araddr;
  output [1:0]M03_AXI_arburst;
  output [3:0]M03_AXI_arcache;
  output [7:0]M03_AXI_arlen;
  output [0:0]M03_AXI_arlock;
  output [2:0]M03_AXI_arprot;
  input M03_AXI_arready;
  output [2:0]M03_AXI_arsize;
  output M03_AXI_arvalid;
  output [11:0]M03_AXI_awaddr;
  output [1:0]M03_AXI_awburst;
  output [3:0]M03_AXI_awcache;
  output [7:0]M03_AXI_awlen;
  output [0:0]M03_AXI_awlock;
  output [2:0]M03_AXI_awprot;
  input M03_AXI_awready;
  output [2:0]M03_AXI_awsize;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  input M03_AXI_rlast;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  output M03_AXI_wlast;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  output [2:0]M04_AXI_arprot;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  output [2:0]M04_AXI_awprot;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [11:0]M05_AXI_araddr;
  output [1:0]M05_AXI_arburst;
  output [3:0]M05_AXI_arcache;
  output [7:0]M05_AXI_arlen;
  output [0:0]M05_AXI_arlock;
  output [2:0]M05_AXI_arprot;
  input M05_AXI_arready;
  output [2:0]M05_AXI_arsize;
  output M05_AXI_arvalid;
  output [11:0]M05_AXI_awaddr;
  output [1:0]M05_AXI_awburst;
  output [3:0]M05_AXI_awcache;
  output [7:0]M05_AXI_awlen;
  output [0:0]M05_AXI_awlock;
  output [2:0]M05_AXI_awprot;
  input M05_AXI_awready;
  output [2:0]M05_AXI_awsize;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  input M05_AXI_rlast;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  output M05_AXI_wlast;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [31:0]M06_AXI_araddr;
  output [2:0]M06_AXI_arprot;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [31:0]M06_AXI_awaddr;
  output [2:0]M06_AXI_awprot;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input M07_ACLK;
  input M07_ARESETN;
  output [11:0]M07_AXI_araddr;
  output [1:0]M07_AXI_arburst;
  output [3:0]M07_AXI_arcache;
  output [7:0]M07_AXI_arlen;
  output [0:0]M07_AXI_arlock;
  output [2:0]M07_AXI_arprot;
  input M07_AXI_arready;
  output [2:0]M07_AXI_arsize;
  output M07_AXI_arvalid;
  output [11:0]M07_AXI_awaddr;
  output [1:0]M07_AXI_awburst;
  output [3:0]M07_AXI_awcache;
  output [7:0]M07_AXI_awlen;
  output [0:0]M07_AXI_awlock;
  output [2:0]M07_AXI_awprot;
  input M07_AXI_awready;
  output [2:0]M07_AXI_awsize;
  output M07_AXI_awvalid;
  output M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  input M07_AXI_rlast;
  output M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  output M07_AXI_wlast;
  input M07_AXI_wready;
  output [3:0]M07_AXI_wstrb;
  output M07_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [15:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input [15:0]S00_AXI_aruser;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [15:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input [15:0]S00_AXI_awuser;
  input S00_AXI_awvalid;
  output [15:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [63:0]S00_AXI_rdata;
  output [15:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [63:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [7:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire M04_ACLK_1;
  wire M04_ARESETN_1;
  wire M05_ACLK_1;
  wire M05_ARESETN_1;
  wire M06_ACLK_1;
  wire M06_ARESETN_1;
  wire M07_ACLK_1;
  wire M07_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire gpic_0_sub_0_ACLK_net;
  wire gpic_0_sub_0_ARESETN_net;
  wire [39:0]gpic_0_sub_0_to_s00_couplers_ARADDR;
  wire [1:0]gpic_0_sub_0_to_s00_couplers_ARBURST;
  wire [3:0]gpic_0_sub_0_to_s00_couplers_ARCACHE;
  wire [15:0]gpic_0_sub_0_to_s00_couplers_ARID;
  wire [7:0]gpic_0_sub_0_to_s00_couplers_ARLEN;
  wire [0:0]gpic_0_sub_0_to_s00_couplers_ARLOCK;
  wire [2:0]gpic_0_sub_0_to_s00_couplers_ARPROT;
  wire [3:0]gpic_0_sub_0_to_s00_couplers_ARQOS;
  wire gpic_0_sub_0_to_s00_couplers_ARREADY;
  wire [3:0]gpic_0_sub_0_to_s00_couplers_ARREGION;
  wire [2:0]gpic_0_sub_0_to_s00_couplers_ARSIZE;
  wire [15:0]gpic_0_sub_0_to_s00_couplers_ARUSER;
  wire gpic_0_sub_0_to_s00_couplers_ARVALID;
  wire [39:0]gpic_0_sub_0_to_s00_couplers_AWADDR;
  wire [1:0]gpic_0_sub_0_to_s00_couplers_AWBURST;
  wire [3:0]gpic_0_sub_0_to_s00_couplers_AWCACHE;
  wire [15:0]gpic_0_sub_0_to_s00_couplers_AWID;
  wire [7:0]gpic_0_sub_0_to_s00_couplers_AWLEN;
  wire [0:0]gpic_0_sub_0_to_s00_couplers_AWLOCK;
  wire [2:0]gpic_0_sub_0_to_s00_couplers_AWPROT;
  wire [3:0]gpic_0_sub_0_to_s00_couplers_AWQOS;
  wire gpic_0_sub_0_to_s00_couplers_AWREADY;
  wire [3:0]gpic_0_sub_0_to_s00_couplers_AWREGION;
  wire [2:0]gpic_0_sub_0_to_s00_couplers_AWSIZE;
  wire [15:0]gpic_0_sub_0_to_s00_couplers_AWUSER;
  wire gpic_0_sub_0_to_s00_couplers_AWVALID;
  wire [15:0]gpic_0_sub_0_to_s00_couplers_BID;
  wire gpic_0_sub_0_to_s00_couplers_BREADY;
  wire [1:0]gpic_0_sub_0_to_s00_couplers_BRESP;
  wire gpic_0_sub_0_to_s00_couplers_BVALID;
  wire [63:0]gpic_0_sub_0_to_s00_couplers_RDATA;
  wire [15:0]gpic_0_sub_0_to_s00_couplers_RID;
  wire gpic_0_sub_0_to_s00_couplers_RLAST;
  wire gpic_0_sub_0_to_s00_couplers_RREADY;
  wire [1:0]gpic_0_sub_0_to_s00_couplers_RRESP;
  wire gpic_0_sub_0_to_s00_couplers_RVALID;
  wire [63:0]gpic_0_sub_0_to_s00_couplers_WDATA;
  wire gpic_0_sub_0_to_s00_couplers_WLAST;
  wire gpic_0_sub_0_to_s00_couplers_WREADY;
  wire [7:0]gpic_0_sub_0_to_s00_couplers_WSTRB;
  wire gpic_0_sub_0_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_gpic_0_sub_0_ARADDR;
  wire [2:0]m00_couplers_to_gpic_0_sub_0_ARPROT;
  wire m00_couplers_to_gpic_0_sub_0_ARREADY;
  wire m00_couplers_to_gpic_0_sub_0_ARVALID;
  wire [31:0]m00_couplers_to_gpic_0_sub_0_AWADDR;
  wire [2:0]m00_couplers_to_gpic_0_sub_0_AWPROT;
  wire m00_couplers_to_gpic_0_sub_0_AWREADY;
  wire m00_couplers_to_gpic_0_sub_0_AWVALID;
  wire m00_couplers_to_gpic_0_sub_0_BREADY;
  wire [1:0]m00_couplers_to_gpic_0_sub_0_BRESP;
  wire m00_couplers_to_gpic_0_sub_0_BVALID;
  wire [31:0]m00_couplers_to_gpic_0_sub_0_RDATA;
  wire m00_couplers_to_gpic_0_sub_0_RREADY;
  wire [1:0]m00_couplers_to_gpic_0_sub_0_RRESP;
  wire m00_couplers_to_gpic_0_sub_0_RVALID;
  wire [31:0]m00_couplers_to_gpic_0_sub_0_WDATA;
  wire m00_couplers_to_gpic_0_sub_0_WREADY;
  wire [3:0]m00_couplers_to_gpic_0_sub_0_WSTRB;
  wire m00_couplers_to_gpic_0_sub_0_WVALID;
  wire [11:0]m01_couplers_to_gpic_0_sub_0_ARADDR;
  wire [1:0]m01_couplers_to_gpic_0_sub_0_ARBURST;
  wire [3:0]m01_couplers_to_gpic_0_sub_0_ARCACHE;
  wire [7:0]m01_couplers_to_gpic_0_sub_0_ARLEN;
  wire [0:0]m01_couplers_to_gpic_0_sub_0_ARLOCK;
  wire [2:0]m01_couplers_to_gpic_0_sub_0_ARPROT;
  wire m01_couplers_to_gpic_0_sub_0_ARREADY;
  wire [2:0]m01_couplers_to_gpic_0_sub_0_ARSIZE;
  wire m01_couplers_to_gpic_0_sub_0_ARVALID;
  wire [11:0]m01_couplers_to_gpic_0_sub_0_AWADDR;
  wire [1:0]m01_couplers_to_gpic_0_sub_0_AWBURST;
  wire [3:0]m01_couplers_to_gpic_0_sub_0_AWCACHE;
  wire [7:0]m01_couplers_to_gpic_0_sub_0_AWLEN;
  wire [0:0]m01_couplers_to_gpic_0_sub_0_AWLOCK;
  wire [2:0]m01_couplers_to_gpic_0_sub_0_AWPROT;
  wire m01_couplers_to_gpic_0_sub_0_AWREADY;
  wire [2:0]m01_couplers_to_gpic_0_sub_0_AWSIZE;
  wire m01_couplers_to_gpic_0_sub_0_AWVALID;
  wire m01_couplers_to_gpic_0_sub_0_BREADY;
  wire [1:0]m01_couplers_to_gpic_0_sub_0_BRESP;
  wire m01_couplers_to_gpic_0_sub_0_BVALID;
  wire [31:0]m01_couplers_to_gpic_0_sub_0_RDATA;
  wire m01_couplers_to_gpic_0_sub_0_RLAST;
  wire m01_couplers_to_gpic_0_sub_0_RREADY;
  wire [1:0]m01_couplers_to_gpic_0_sub_0_RRESP;
  wire m01_couplers_to_gpic_0_sub_0_RVALID;
  wire [31:0]m01_couplers_to_gpic_0_sub_0_WDATA;
  wire m01_couplers_to_gpic_0_sub_0_WLAST;
  wire m01_couplers_to_gpic_0_sub_0_WREADY;
  wire [3:0]m01_couplers_to_gpic_0_sub_0_WSTRB;
  wire m01_couplers_to_gpic_0_sub_0_WVALID;
  wire [31:0]m02_couplers_to_gpic_0_sub_0_ARADDR;
  wire [2:0]m02_couplers_to_gpic_0_sub_0_ARPROT;
  wire m02_couplers_to_gpic_0_sub_0_ARREADY;
  wire m02_couplers_to_gpic_0_sub_0_ARVALID;
  wire [31:0]m02_couplers_to_gpic_0_sub_0_AWADDR;
  wire [2:0]m02_couplers_to_gpic_0_sub_0_AWPROT;
  wire m02_couplers_to_gpic_0_sub_0_AWREADY;
  wire m02_couplers_to_gpic_0_sub_0_AWVALID;
  wire m02_couplers_to_gpic_0_sub_0_BREADY;
  wire [1:0]m02_couplers_to_gpic_0_sub_0_BRESP;
  wire m02_couplers_to_gpic_0_sub_0_BVALID;
  wire [31:0]m02_couplers_to_gpic_0_sub_0_RDATA;
  wire m02_couplers_to_gpic_0_sub_0_RREADY;
  wire [1:0]m02_couplers_to_gpic_0_sub_0_RRESP;
  wire m02_couplers_to_gpic_0_sub_0_RVALID;
  wire [31:0]m02_couplers_to_gpic_0_sub_0_WDATA;
  wire m02_couplers_to_gpic_0_sub_0_WREADY;
  wire [3:0]m02_couplers_to_gpic_0_sub_0_WSTRB;
  wire m02_couplers_to_gpic_0_sub_0_WVALID;
  wire [11:0]m03_couplers_to_gpic_0_sub_0_ARADDR;
  wire [1:0]m03_couplers_to_gpic_0_sub_0_ARBURST;
  wire [3:0]m03_couplers_to_gpic_0_sub_0_ARCACHE;
  wire [7:0]m03_couplers_to_gpic_0_sub_0_ARLEN;
  wire [0:0]m03_couplers_to_gpic_0_sub_0_ARLOCK;
  wire [2:0]m03_couplers_to_gpic_0_sub_0_ARPROT;
  wire m03_couplers_to_gpic_0_sub_0_ARREADY;
  wire [2:0]m03_couplers_to_gpic_0_sub_0_ARSIZE;
  wire m03_couplers_to_gpic_0_sub_0_ARVALID;
  wire [11:0]m03_couplers_to_gpic_0_sub_0_AWADDR;
  wire [1:0]m03_couplers_to_gpic_0_sub_0_AWBURST;
  wire [3:0]m03_couplers_to_gpic_0_sub_0_AWCACHE;
  wire [7:0]m03_couplers_to_gpic_0_sub_0_AWLEN;
  wire [0:0]m03_couplers_to_gpic_0_sub_0_AWLOCK;
  wire [2:0]m03_couplers_to_gpic_0_sub_0_AWPROT;
  wire m03_couplers_to_gpic_0_sub_0_AWREADY;
  wire [2:0]m03_couplers_to_gpic_0_sub_0_AWSIZE;
  wire m03_couplers_to_gpic_0_sub_0_AWVALID;
  wire m03_couplers_to_gpic_0_sub_0_BREADY;
  wire [1:0]m03_couplers_to_gpic_0_sub_0_BRESP;
  wire m03_couplers_to_gpic_0_sub_0_BVALID;
  wire [31:0]m03_couplers_to_gpic_0_sub_0_RDATA;
  wire m03_couplers_to_gpic_0_sub_0_RLAST;
  wire m03_couplers_to_gpic_0_sub_0_RREADY;
  wire [1:0]m03_couplers_to_gpic_0_sub_0_RRESP;
  wire m03_couplers_to_gpic_0_sub_0_RVALID;
  wire [31:0]m03_couplers_to_gpic_0_sub_0_WDATA;
  wire m03_couplers_to_gpic_0_sub_0_WLAST;
  wire m03_couplers_to_gpic_0_sub_0_WREADY;
  wire [3:0]m03_couplers_to_gpic_0_sub_0_WSTRB;
  wire m03_couplers_to_gpic_0_sub_0_WVALID;
  wire [31:0]m04_couplers_to_gpic_0_sub_0_ARADDR;
  wire [2:0]m04_couplers_to_gpic_0_sub_0_ARPROT;
  wire m04_couplers_to_gpic_0_sub_0_ARREADY;
  wire m04_couplers_to_gpic_0_sub_0_ARVALID;
  wire [31:0]m04_couplers_to_gpic_0_sub_0_AWADDR;
  wire [2:0]m04_couplers_to_gpic_0_sub_0_AWPROT;
  wire m04_couplers_to_gpic_0_sub_0_AWREADY;
  wire m04_couplers_to_gpic_0_sub_0_AWVALID;
  wire m04_couplers_to_gpic_0_sub_0_BREADY;
  wire [1:0]m04_couplers_to_gpic_0_sub_0_BRESP;
  wire m04_couplers_to_gpic_0_sub_0_BVALID;
  wire [31:0]m04_couplers_to_gpic_0_sub_0_RDATA;
  wire m04_couplers_to_gpic_0_sub_0_RREADY;
  wire [1:0]m04_couplers_to_gpic_0_sub_0_RRESP;
  wire m04_couplers_to_gpic_0_sub_0_RVALID;
  wire [31:0]m04_couplers_to_gpic_0_sub_0_WDATA;
  wire m04_couplers_to_gpic_0_sub_0_WREADY;
  wire [3:0]m04_couplers_to_gpic_0_sub_0_WSTRB;
  wire m04_couplers_to_gpic_0_sub_0_WVALID;
  wire [11:0]m05_couplers_to_gpic_0_sub_0_ARADDR;
  wire [1:0]m05_couplers_to_gpic_0_sub_0_ARBURST;
  wire [3:0]m05_couplers_to_gpic_0_sub_0_ARCACHE;
  wire [7:0]m05_couplers_to_gpic_0_sub_0_ARLEN;
  wire [0:0]m05_couplers_to_gpic_0_sub_0_ARLOCK;
  wire [2:0]m05_couplers_to_gpic_0_sub_0_ARPROT;
  wire m05_couplers_to_gpic_0_sub_0_ARREADY;
  wire [2:0]m05_couplers_to_gpic_0_sub_0_ARSIZE;
  wire m05_couplers_to_gpic_0_sub_0_ARVALID;
  wire [11:0]m05_couplers_to_gpic_0_sub_0_AWADDR;
  wire [1:0]m05_couplers_to_gpic_0_sub_0_AWBURST;
  wire [3:0]m05_couplers_to_gpic_0_sub_0_AWCACHE;
  wire [7:0]m05_couplers_to_gpic_0_sub_0_AWLEN;
  wire [0:0]m05_couplers_to_gpic_0_sub_0_AWLOCK;
  wire [2:0]m05_couplers_to_gpic_0_sub_0_AWPROT;
  wire m05_couplers_to_gpic_0_sub_0_AWREADY;
  wire [2:0]m05_couplers_to_gpic_0_sub_0_AWSIZE;
  wire m05_couplers_to_gpic_0_sub_0_AWVALID;
  wire m05_couplers_to_gpic_0_sub_0_BREADY;
  wire [1:0]m05_couplers_to_gpic_0_sub_0_BRESP;
  wire m05_couplers_to_gpic_0_sub_0_BVALID;
  wire [31:0]m05_couplers_to_gpic_0_sub_0_RDATA;
  wire m05_couplers_to_gpic_0_sub_0_RLAST;
  wire m05_couplers_to_gpic_0_sub_0_RREADY;
  wire [1:0]m05_couplers_to_gpic_0_sub_0_RRESP;
  wire m05_couplers_to_gpic_0_sub_0_RVALID;
  wire [31:0]m05_couplers_to_gpic_0_sub_0_WDATA;
  wire m05_couplers_to_gpic_0_sub_0_WLAST;
  wire m05_couplers_to_gpic_0_sub_0_WREADY;
  wire [3:0]m05_couplers_to_gpic_0_sub_0_WSTRB;
  wire m05_couplers_to_gpic_0_sub_0_WVALID;
  wire [31:0]m06_couplers_to_gpic_0_sub_0_ARADDR;
  wire [2:0]m06_couplers_to_gpic_0_sub_0_ARPROT;
  wire m06_couplers_to_gpic_0_sub_0_ARREADY;
  wire m06_couplers_to_gpic_0_sub_0_ARVALID;
  wire [31:0]m06_couplers_to_gpic_0_sub_0_AWADDR;
  wire [2:0]m06_couplers_to_gpic_0_sub_0_AWPROT;
  wire m06_couplers_to_gpic_0_sub_0_AWREADY;
  wire m06_couplers_to_gpic_0_sub_0_AWVALID;
  wire m06_couplers_to_gpic_0_sub_0_BREADY;
  wire [1:0]m06_couplers_to_gpic_0_sub_0_BRESP;
  wire m06_couplers_to_gpic_0_sub_0_BVALID;
  wire [31:0]m06_couplers_to_gpic_0_sub_0_RDATA;
  wire m06_couplers_to_gpic_0_sub_0_RREADY;
  wire [1:0]m06_couplers_to_gpic_0_sub_0_RRESP;
  wire m06_couplers_to_gpic_0_sub_0_RVALID;
  wire [31:0]m06_couplers_to_gpic_0_sub_0_WDATA;
  wire m06_couplers_to_gpic_0_sub_0_WREADY;
  wire [3:0]m06_couplers_to_gpic_0_sub_0_WSTRB;
  wire m06_couplers_to_gpic_0_sub_0_WVALID;
  wire [11:0]m07_couplers_to_gpic_0_sub_0_ARADDR;
  wire [1:0]m07_couplers_to_gpic_0_sub_0_ARBURST;
  wire [3:0]m07_couplers_to_gpic_0_sub_0_ARCACHE;
  wire [7:0]m07_couplers_to_gpic_0_sub_0_ARLEN;
  wire [0:0]m07_couplers_to_gpic_0_sub_0_ARLOCK;
  wire [2:0]m07_couplers_to_gpic_0_sub_0_ARPROT;
  wire m07_couplers_to_gpic_0_sub_0_ARREADY;
  wire [2:0]m07_couplers_to_gpic_0_sub_0_ARSIZE;
  wire m07_couplers_to_gpic_0_sub_0_ARVALID;
  wire [11:0]m07_couplers_to_gpic_0_sub_0_AWADDR;
  wire [1:0]m07_couplers_to_gpic_0_sub_0_AWBURST;
  wire [3:0]m07_couplers_to_gpic_0_sub_0_AWCACHE;
  wire [7:0]m07_couplers_to_gpic_0_sub_0_AWLEN;
  wire [0:0]m07_couplers_to_gpic_0_sub_0_AWLOCK;
  wire [2:0]m07_couplers_to_gpic_0_sub_0_AWPROT;
  wire m07_couplers_to_gpic_0_sub_0_AWREADY;
  wire [2:0]m07_couplers_to_gpic_0_sub_0_AWSIZE;
  wire m07_couplers_to_gpic_0_sub_0_AWVALID;
  wire m07_couplers_to_gpic_0_sub_0_BREADY;
  wire [1:0]m07_couplers_to_gpic_0_sub_0_BRESP;
  wire m07_couplers_to_gpic_0_sub_0_BVALID;
  wire [31:0]m07_couplers_to_gpic_0_sub_0_RDATA;
  wire m07_couplers_to_gpic_0_sub_0_RLAST;
  wire m07_couplers_to_gpic_0_sub_0_RREADY;
  wire [1:0]m07_couplers_to_gpic_0_sub_0_RRESP;
  wire m07_couplers_to_gpic_0_sub_0_RVALID;
  wire [31:0]m07_couplers_to_gpic_0_sub_0_WDATA;
  wire m07_couplers_to_gpic_0_sub_0_WLAST;
  wire m07_couplers_to_gpic_0_sub_0_WREADY;
  wire [3:0]m07_couplers_to_gpic_0_sub_0_WSTRB;
  wire m07_couplers_to_gpic_0_sub_0_WVALID;
  wire [39:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [15:0]s00_couplers_to_xbar_ARID;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire [15:0]s00_couplers_to_xbar_ARUSER;
  wire s00_couplers_to_xbar_ARVALID;
  wire [39:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [15:0]s00_couplers_to_xbar_AWID;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire [15:0]s00_couplers_to_xbar_AWUSER;
  wire s00_couplers_to_xbar_AWVALID;
  wire [15:0]s00_couplers_to_xbar_BID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [63:0]s00_couplers_to_xbar_RDATA;
  wire [15:0]s00_couplers_to_xbar_RID;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [63:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [7:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [39:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [15:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [15:0]xbar_to_m00_couplers_ARUSER;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [39:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [15:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [15:0]xbar_to_m00_couplers_AWUSER;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [15:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [63:0]xbar_to_m00_couplers_RDATA;
  wire [15:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [63:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [7:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [79:40]xbar_to_m01_couplers_ARADDR;
  wire [3:2]xbar_to_m01_couplers_ARBURST;
  wire [7:4]xbar_to_m01_couplers_ARCACHE;
  wire [31:16]xbar_to_m01_couplers_ARID;
  wire [15:8]xbar_to_m01_couplers_ARLEN;
  wire [1:1]xbar_to_m01_couplers_ARLOCK;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire [7:4]xbar_to_m01_couplers_ARQOS;
  wire xbar_to_m01_couplers_ARREADY;
  wire [7:4]xbar_to_m01_couplers_ARREGION;
  wire [5:3]xbar_to_m01_couplers_ARSIZE;
  wire [31:16]xbar_to_m01_couplers_ARUSER;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [79:40]xbar_to_m01_couplers_AWADDR;
  wire [3:2]xbar_to_m01_couplers_AWBURST;
  wire [7:4]xbar_to_m01_couplers_AWCACHE;
  wire [31:16]xbar_to_m01_couplers_AWID;
  wire [15:8]xbar_to_m01_couplers_AWLEN;
  wire [1:1]xbar_to_m01_couplers_AWLOCK;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire [7:4]xbar_to_m01_couplers_AWQOS;
  wire xbar_to_m01_couplers_AWREADY;
  wire [7:4]xbar_to_m01_couplers_AWREGION;
  wire [5:3]xbar_to_m01_couplers_AWSIZE;
  wire [31:16]xbar_to_m01_couplers_AWUSER;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [15:0]xbar_to_m01_couplers_BID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [63:0]xbar_to_m01_couplers_RDATA;
  wire [15:0]xbar_to_m01_couplers_RID;
  wire xbar_to_m01_couplers_RLAST;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [127:64]xbar_to_m01_couplers_WDATA;
  wire [1:1]xbar_to_m01_couplers_WLAST;
  wire xbar_to_m01_couplers_WREADY;
  wire [15:8]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [119:80]xbar_to_m02_couplers_ARADDR;
  wire [5:4]xbar_to_m02_couplers_ARBURST;
  wire [11:8]xbar_to_m02_couplers_ARCACHE;
  wire [47:32]xbar_to_m02_couplers_ARID;
  wire [23:16]xbar_to_m02_couplers_ARLEN;
  wire [2:2]xbar_to_m02_couplers_ARLOCK;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire [11:8]xbar_to_m02_couplers_ARQOS;
  wire xbar_to_m02_couplers_ARREADY;
  wire [11:8]xbar_to_m02_couplers_ARREGION;
  wire [8:6]xbar_to_m02_couplers_ARSIZE;
  wire [47:32]xbar_to_m02_couplers_ARUSER;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [119:80]xbar_to_m02_couplers_AWADDR;
  wire [5:4]xbar_to_m02_couplers_AWBURST;
  wire [11:8]xbar_to_m02_couplers_AWCACHE;
  wire [47:32]xbar_to_m02_couplers_AWID;
  wire [23:16]xbar_to_m02_couplers_AWLEN;
  wire [2:2]xbar_to_m02_couplers_AWLOCK;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire [11:8]xbar_to_m02_couplers_AWQOS;
  wire xbar_to_m02_couplers_AWREADY;
  wire [11:8]xbar_to_m02_couplers_AWREGION;
  wire [8:6]xbar_to_m02_couplers_AWSIZE;
  wire [47:32]xbar_to_m02_couplers_AWUSER;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [15:0]xbar_to_m02_couplers_BID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [63:0]xbar_to_m02_couplers_RDATA;
  wire [15:0]xbar_to_m02_couplers_RID;
  wire xbar_to_m02_couplers_RLAST;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [191:128]xbar_to_m02_couplers_WDATA;
  wire [2:2]xbar_to_m02_couplers_WLAST;
  wire xbar_to_m02_couplers_WREADY;
  wire [23:16]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [159:120]xbar_to_m03_couplers_ARADDR;
  wire [7:6]xbar_to_m03_couplers_ARBURST;
  wire [15:12]xbar_to_m03_couplers_ARCACHE;
  wire [63:48]xbar_to_m03_couplers_ARID;
  wire [31:24]xbar_to_m03_couplers_ARLEN;
  wire [3:3]xbar_to_m03_couplers_ARLOCK;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire [15:12]xbar_to_m03_couplers_ARQOS;
  wire xbar_to_m03_couplers_ARREADY;
  wire [15:12]xbar_to_m03_couplers_ARREGION;
  wire [11:9]xbar_to_m03_couplers_ARSIZE;
  wire [63:48]xbar_to_m03_couplers_ARUSER;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [159:120]xbar_to_m03_couplers_AWADDR;
  wire [7:6]xbar_to_m03_couplers_AWBURST;
  wire [15:12]xbar_to_m03_couplers_AWCACHE;
  wire [63:48]xbar_to_m03_couplers_AWID;
  wire [31:24]xbar_to_m03_couplers_AWLEN;
  wire [3:3]xbar_to_m03_couplers_AWLOCK;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire [15:12]xbar_to_m03_couplers_AWQOS;
  wire xbar_to_m03_couplers_AWREADY;
  wire [15:12]xbar_to_m03_couplers_AWREGION;
  wire [11:9]xbar_to_m03_couplers_AWSIZE;
  wire [63:48]xbar_to_m03_couplers_AWUSER;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [15:0]xbar_to_m03_couplers_BID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [63:0]xbar_to_m03_couplers_RDATA;
  wire [15:0]xbar_to_m03_couplers_RID;
  wire xbar_to_m03_couplers_RLAST;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [255:192]xbar_to_m03_couplers_WDATA;
  wire [3:3]xbar_to_m03_couplers_WLAST;
  wire xbar_to_m03_couplers_WREADY;
  wire [31:24]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [199:160]xbar_to_m04_couplers_ARADDR;
  wire [9:8]xbar_to_m04_couplers_ARBURST;
  wire [19:16]xbar_to_m04_couplers_ARCACHE;
  wire [79:64]xbar_to_m04_couplers_ARID;
  wire [39:32]xbar_to_m04_couplers_ARLEN;
  wire [4:4]xbar_to_m04_couplers_ARLOCK;
  wire [14:12]xbar_to_m04_couplers_ARPROT;
  wire [19:16]xbar_to_m04_couplers_ARQOS;
  wire xbar_to_m04_couplers_ARREADY;
  wire [19:16]xbar_to_m04_couplers_ARREGION;
  wire [14:12]xbar_to_m04_couplers_ARSIZE;
  wire [79:64]xbar_to_m04_couplers_ARUSER;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [199:160]xbar_to_m04_couplers_AWADDR;
  wire [9:8]xbar_to_m04_couplers_AWBURST;
  wire [19:16]xbar_to_m04_couplers_AWCACHE;
  wire [79:64]xbar_to_m04_couplers_AWID;
  wire [39:32]xbar_to_m04_couplers_AWLEN;
  wire [4:4]xbar_to_m04_couplers_AWLOCK;
  wire [14:12]xbar_to_m04_couplers_AWPROT;
  wire [19:16]xbar_to_m04_couplers_AWQOS;
  wire xbar_to_m04_couplers_AWREADY;
  wire [19:16]xbar_to_m04_couplers_AWREGION;
  wire [14:12]xbar_to_m04_couplers_AWSIZE;
  wire [79:64]xbar_to_m04_couplers_AWUSER;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [15:0]xbar_to_m04_couplers_BID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [63:0]xbar_to_m04_couplers_RDATA;
  wire [15:0]xbar_to_m04_couplers_RID;
  wire xbar_to_m04_couplers_RLAST;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [319:256]xbar_to_m04_couplers_WDATA;
  wire [4:4]xbar_to_m04_couplers_WLAST;
  wire xbar_to_m04_couplers_WREADY;
  wire [39:32]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [239:200]xbar_to_m05_couplers_ARADDR;
  wire [11:10]xbar_to_m05_couplers_ARBURST;
  wire [23:20]xbar_to_m05_couplers_ARCACHE;
  wire [95:80]xbar_to_m05_couplers_ARID;
  wire [47:40]xbar_to_m05_couplers_ARLEN;
  wire [5:5]xbar_to_m05_couplers_ARLOCK;
  wire [17:15]xbar_to_m05_couplers_ARPROT;
  wire [23:20]xbar_to_m05_couplers_ARQOS;
  wire xbar_to_m05_couplers_ARREADY;
  wire [23:20]xbar_to_m05_couplers_ARREGION;
  wire [17:15]xbar_to_m05_couplers_ARSIZE;
  wire [95:80]xbar_to_m05_couplers_ARUSER;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [239:200]xbar_to_m05_couplers_AWADDR;
  wire [11:10]xbar_to_m05_couplers_AWBURST;
  wire [23:20]xbar_to_m05_couplers_AWCACHE;
  wire [95:80]xbar_to_m05_couplers_AWID;
  wire [47:40]xbar_to_m05_couplers_AWLEN;
  wire [5:5]xbar_to_m05_couplers_AWLOCK;
  wire [17:15]xbar_to_m05_couplers_AWPROT;
  wire [23:20]xbar_to_m05_couplers_AWQOS;
  wire xbar_to_m05_couplers_AWREADY;
  wire [23:20]xbar_to_m05_couplers_AWREGION;
  wire [17:15]xbar_to_m05_couplers_AWSIZE;
  wire [95:80]xbar_to_m05_couplers_AWUSER;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [15:0]xbar_to_m05_couplers_BID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [63:0]xbar_to_m05_couplers_RDATA;
  wire [15:0]xbar_to_m05_couplers_RID;
  wire xbar_to_m05_couplers_RLAST;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [383:320]xbar_to_m05_couplers_WDATA;
  wire [5:5]xbar_to_m05_couplers_WLAST;
  wire xbar_to_m05_couplers_WREADY;
  wire [47:40]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [279:240]xbar_to_m06_couplers_ARADDR;
  wire [13:12]xbar_to_m06_couplers_ARBURST;
  wire [27:24]xbar_to_m06_couplers_ARCACHE;
  wire [111:96]xbar_to_m06_couplers_ARID;
  wire [55:48]xbar_to_m06_couplers_ARLEN;
  wire [6:6]xbar_to_m06_couplers_ARLOCK;
  wire [20:18]xbar_to_m06_couplers_ARPROT;
  wire [27:24]xbar_to_m06_couplers_ARQOS;
  wire xbar_to_m06_couplers_ARREADY;
  wire [27:24]xbar_to_m06_couplers_ARREGION;
  wire [20:18]xbar_to_m06_couplers_ARSIZE;
  wire [111:96]xbar_to_m06_couplers_ARUSER;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [279:240]xbar_to_m06_couplers_AWADDR;
  wire [13:12]xbar_to_m06_couplers_AWBURST;
  wire [27:24]xbar_to_m06_couplers_AWCACHE;
  wire [111:96]xbar_to_m06_couplers_AWID;
  wire [55:48]xbar_to_m06_couplers_AWLEN;
  wire [6:6]xbar_to_m06_couplers_AWLOCK;
  wire [20:18]xbar_to_m06_couplers_AWPROT;
  wire [27:24]xbar_to_m06_couplers_AWQOS;
  wire xbar_to_m06_couplers_AWREADY;
  wire [27:24]xbar_to_m06_couplers_AWREGION;
  wire [20:18]xbar_to_m06_couplers_AWSIZE;
  wire [111:96]xbar_to_m06_couplers_AWUSER;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [15:0]xbar_to_m06_couplers_BID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire xbar_to_m06_couplers_BVALID;
  wire [63:0]xbar_to_m06_couplers_RDATA;
  wire [15:0]xbar_to_m06_couplers_RID;
  wire xbar_to_m06_couplers_RLAST;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire xbar_to_m06_couplers_RVALID;
  wire [447:384]xbar_to_m06_couplers_WDATA;
  wire [6:6]xbar_to_m06_couplers_WLAST;
  wire xbar_to_m06_couplers_WREADY;
  wire [55:48]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [319:280]xbar_to_m07_couplers_ARADDR;
  wire [15:14]xbar_to_m07_couplers_ARBURST;
  wire [31:28]xbar_to_m07_couplers_ARCACHE;
  wire [127:112]xbar_to_m07_couplers_ARID;
  wire [63:56]xbar_to_m07_couplers_ARLEN;
  wire [7:7]xbar_to_m07_couplers_ARLOCK;
  wire [23:21]xbar_to_m07_couplers_ARPROT;
  wire [31:28]xbar_to_m07_couplers_ARQOS;
  wire xbar_to_m07_couplers_ARREADY;
  wire [31:28]xbar_to_m07_couplers_ARREGION;
  wire [23:21]xbar_to_m07_couplers_ARSIZE;
  wire [127:112]xbar_to_m07_couplers_ARUSER;
  wire [7:7]xbar_to_m07_couplers_ARVALID;
  wire [319:280]xbar_to_m07_couplers_AWADDR;
  wire [15:14]xbar_to_m07_couplers_AWBURST;
  wire [31:28]xbar_to_m07_couplers_AWCACHE;
  wire [127:112]xbar_to_m07_couplers_AWID;
  wire [63:56]xbar_to_m07_couplers_AWLEN;
  wire [7:7]xbar_to_m07_couplers_AWLOCK;
  wire [23:21]xbar_to_m07_couplers_AWPROT;
  wire [31:28]xbar_to_m07_couplers_AWQOS;
  wire xbar_to_m07_couplers_AWREADY;
  wire [31:28]xbar_to_m07_couplers_AWREGION;
  wire [23:21]xbar_to_m07_couplers_AWSIZE;
  wire [127:112]xbar_to_m07_couplers_AWUSER;
  wire [7:7]xbar_to_m07_couplers_AWVALID;
  wire [15:0]xbar_to_m07_couplers_BID;
  wire [7:7]xbar_to_m07_couplers_BREADY;
  wire [1:0]xbar_to_m07_couplers_BRESP;
  wire xbar_to_m07_couplers_BVALID;
  wire [63:0]xbar_to_m07_couplers_RDATA;
  wire [15:0]xbar_to_m07_couplers_RID;
  wire xbar_to_m07_couplers_RLAST;
  wire [7:7]xbar_to_m07_couplers_RREADY;
  wire [1:0]xbar_to_m07_couplers_RRESP;
  wire xbar_to_m07_couplers_RVALID;
  wire [511:448]xbar_to_m07_couplers_WDATA;
  wire [7:7]xbar_to_m07_couplers_WLAST;
  wire xbar_to_m07_couplers_WREADY;
  wire [63:56]xbar_to_m07_couplers_WSTRB;
  wire [7:7]xbar_to_m07_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_gpic_0_sub_0_ARADDR;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_gpic_0_sub_0_ARPROT;
  assign M00_AXI_arvalid = m00_couplers_to_gpic_0_sub_0_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_gpic_0_sub_0_AWADDR;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_gpic_0_sub_0_AWPROT;
  assign M00_AXI_awvalid = m00_couplers_to_gpic_0_sub_0_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_gpic_0_sub_0_BREADY;
  assign M00_AXI_rready = m00_couplers_to_gpic_0_sub_0_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_gpic_0_sub_0_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_gpic_0_sub_0_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_gpic_0_sub_0_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[11:0] = m01_couplers_to_gpic_0_sub_0_ARADDR;
  assign M01_AXI_arburst[1:0] = m01_couplers_to_gpic_0_sub_0_ARBURST;
  assign M01_AXI_arcache[3:0] = m01_couplers_to_gpic_0_sub_0_ARCACHE;
  assign M01_AXI_arlen[7:0] = m01_couplers_to_gpic_0_sub_0_ARLEN;
  assign M01_AXI_arlock[0] = m01_couplers_to_gpic_0_sub_0_ARLOCK;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_gpic_0_sub_0_ARPROT;
  assign M01_AXI_arsize[2:0] = m01_couplers_to_gpic_0_sub_0_ARSIZE;
  assign M01_AXI_arvalid = m01_couplers_to_gpic_0_sub_0_ARVALID;
  assign M01_AXI_awaddr[11:0] = m01_couplers_to_gpic_0_sub_0_AWADDR;
  assign M01_AXI_awburst[1:0] = m01_couplers_to_gpic_0_sub_0_AWBURST;
  assign M01_AXI_awcache[3:0] = m01_couplers_to_gpic_0_sub_0_AWCACHE;
  assign M01_AXI_awlen[7:0] = m01_couplers_to_gpic_0_sub_0_AWLEN;
  assign M01_AXI_awlock[0] = m01_couplers_to_gpic_0_sub_0_AWLOCK;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_gpic_0_sub_0_AWPROT;
  assign M01_AXI_awsize[2:0] = m01_couplers_to_gpic_0_sub_0_AWSIZE;
  assign M01_AXI_awvalid = m01_couplers_to_gpic_0_sub_0_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_gpic_0_sub_0_BREADY;
  assign M01_AXI_rready = m01_couplers_to_gpic_0_sub_0_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_gpic_0_sub_0_WDATA;
  assign M01_AXI_wlast = m01_couplers_to_gpic_0_sub_0_WLAST;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_gpic_0_sub_0_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_gpic_0_sub_0_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_gpic_0_sub_0_ARADDR;
  assign M02_AXI_arprot[2:0] = m02_couplers_to_gpic_0_sub_0_ARPROT;
  assign M02_AXI_arvalid = m02_couplers_to_gpic_0_sub_0_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_gpic_0_sub_0_AWADDR;
  assign M02_AXI_awprot[2:0] = m02_couplers_to_gpic_0_sub_0_AWPROT;
  assign M02_AXI_awvalid = m02_couplers_to_gpic_0_sub_0_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_gpic_0_sub_0_BREADY;
  assign M02_AXI_rready = m02_couplers_to_gpic_0_sub_0_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_gpic_0_sub_0_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_gpic_0_sub_0_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_gpic_0_sub_0_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[11:0] = m03_couplers_to_gpic_0_sub_0_ARADDR;
  assign M03_AXI_arburst[1:0] = m03_couplers_to_gpic_0_sub_0_ARBURST;
  assign M03_AXI_arcache[3:0] = m03_couplers_to_gpic_0_sub_0_ARCACHE;
  assign M03_AXI_arlen[7:0] = m03_couplers_to_gpic_0_sub_0_ARLEN;
  assign M03_AXI_arlock[0] = m03_couplers_to_gpic_0_sub_0_ARLOCK;
  assign M03_AXI_arprot[2:0] = m03_couplers_to_gpic_0_sub_0_ARPROT;
  assign M03_AXI_arsize[2:0] = m03_couplers_to_gpic_0_sub_0_ARSIZE;
  assign M03_AXI_arvalid = m03_couplers_to_gpic_0_sub_0_ARVALID;
  assign M03_AXI_awaddr[11:0] = m03_couplers_to_gpic_0_sub_0_AWADDR;
  assign M03_AXI_awburst[1:0] = m03_couplers_to_gpic_0_sub_0_AWBURST;
  assign M03_AXI_awcache[3:0] = m03_couplers_to_gpic_0_sub_0_AWCACHE;
  assign M03_AXI_awlen[7:0] = m03_couplers_to_gpic_0_sub_0_AWLEN;
  assign M03_AXI_awlock[0] = m03_couplers_to_gpic_0_sub_0_AWLOCK;
  assign M03_AXI_awprot[2:0] = m03_couplers_to_gpic_0_sub_0_AWPROT;
  assign M03_AXI_awsize[2:0] = m03_couplers_to_gpic_0_sub_0_AWSIZE;
  assign M03_AXI_awvalid = m03_couplers_to_gpic_0_sub_0_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_gpic_0_sub_0_BREADY;
  assign M03_AXI_rready = m03_couplers_to_gpic_0_sub_0_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_gpic_0_sub_0_WDATA;
  assign M03_AXI_wlast = m03_couplers_to_gpic_0_sub_0_WLAST;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_gpic_0_sub_0_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_gpic_0_sub_0_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN;
  assign M04_AXI_araddr[31:0] = m04_couplers_to_gpic_0_sub_0_ARADDR;
  assign M04_AXI_arprot[2:0] = m04_couplers_to_gpic_0_sub_0_ARPROT;
  assign M04_AXI_arvalid = m04_couplers_to_gpic_0_sub_0_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_gpic_0_sub_0_AWADDR;
  assign M04_AXI_awprot[2:0] = m04_couplers_to_gpic_0_sub_0_AWPROT;
  assign M04_AXI_awvalid = m04_couplers_to_gpic_0_sub_0_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_gpic_0_sub_0_BREADY;
  assign M04_AXI_rready = m04_couplers_to_gpic_0_sub_0_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_gpic_0_sub_0_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_gpic_0_sub_0_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_gpic_0_sub_0_WVALID;
  assign M05_ACLK_1 = M05_ACLK;
  assign M05_ARESETN_1 = M05_ARESETN;
  assign M05_AXI_araddr[11:0] = m05_couplers_to_gpic_0_sub_0_ARADDR;
  assign M05_AXI_arburst[1:0] = m05_couplers_to_gpic_0_sub_0_ARBURST;
  assign M05_AXI_arcache[3:0] = m05_couplers_to_gpic_0_sub_0_ARCACHE;
  assign M05_AXI_arlen[7:0] = m05_couplers_to_gpic_0_sub_0_ARLEN;
  assign M05_AXI_arlock[0] = m05_couplers_to_gpic_0_sub_0_ARLOCK;
  assign M05_AXI_arprot[2:0] = m05_couplers_to_gpic_0_sub_0_ARPROT;
  assign M05_AXI_arsize[2:0] = m05_couplers_to_gpic_0_sub_0_ARSIZE;
  assign M05_AXI_arvalid = m05_couplers_to_gpic_0_sub_0_ARVALID;
  assign M05_AXI_awaddr[11:0] = m05_couplers_to_gpic_0_sub_0_AWADDR;
  assign M05_AXI_awburst[1:0] = m05_couplers_to_gpic_0_sub_0_AWBURST;
  assign M05_AXI_awcache[3:0] = m05_couplers_to_gpic_0_sub_0_AWCACHE;
  assign M05_AXI_awlen[7:0] = m05_couplers_to_gpic_0_sub_0_AWLEN;
  assign M05_AXI_awlock[0] = m05_couplers_to_gpic_0_sub_0_AWLOCK;
  assign M05_AXI_awprot[2:0] = m05_couplers_to_gpic_0_sub_0_AWPROT;
  assign M05_AXI_awsize[2:0] = m05_couplers_to_gpic_0_sub_0_AWSIZE;
  assign M05_AXI_awvalid = m05_couplers_to_gpic_0_sub_0_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_gpic_0_sub_0_BREADY;
  assign M05_AXI_rready = m05_couplers_to_gpic_0_sub_0_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_gpic_0_sub_0_WDATA;
  assign M05_AXI_wlast = m05_couplers_to_gpic_0_sub_0_WLAST;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_gpic_0_sub_0_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_gpic_0_sub_0_WVALID;
  assign M06_ACLK_1 = M06_ACLK;
  assign M06_ARESETN_1 = M06_ARESETN;
  assign M06_AXI_araddr[31:0] = m06_couplers_to_gpic_0_sub_0_ARADDR;
  assign M06_AXI_arprot[2:0] = m06_couplers_to_gpic_0_sub_0_ARPROT;
  assign M06_AXI_arvalid = m06_couplers_to_gpic_0_sub_0_ARVALID;
  assign M06_AXI_awaddr[31:0] = m06_couplers_to_gpic_0_sub_0_AWADDR;
  assign M06_AXI_awprot[2:0] = m06_couplers_to_gpic_0_sub_0_AWPROT;
  assign M06_AXI_awvalid = m06_couplers_to_gpic_0_sub_0_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_gpic_0_sub_0_BREADY;
  assign M06_AXI_rready = m06_couplers_to_gpic_0_sub_0_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_gpic_0_sub_0_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_gpic_0_sub_0_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_gpic_0_sub_0_WVALID;
  assign M07_ACLK_1 = M07_ACLK;
  assign M07_ARESETN_1 = M07_ARESETN;
  assign M07_AXI_araddr[11:0] = m07_couplers_to_gpic_0_sub_0_ARADDR;
  assign M07_AXI_arburst[1:0] = m07_couplers_to_gpic_0_sub_0_ARBURST;
  assign M07_AXI_arcache[3:0] = m07_couplers_to_gpic_0_sub_0_ARCACHE;
  assign M07_AXI_arlen[7:0] = m07_couplers_to_gpic_0_sub_0_ARLEN;
  assign M07_AXI_arlock[0] = m07_couplers_to_gpic_0_sub_0_ARLOCK;
  assign M07_AXI_arprot[2:0] = m07_couplers_to_gpic_0_sub_0_ARPROT;
  assign M07_AXI_arsize[2:0] = m07_couplers_to_gpic_0_sub_0_ARSIZE;
  assign M07_AXI_arvalid = m07_couplers_to_gpic_0_sub_0_ARVALID;
  assign M07_AXI_awaddr[11:0] = m07_couplers_to_gpic_0_sub_0_AWADDR;
  assign M07_AXI_awburst[1:0] = m07_couplers_to_gpic_0_sub_0_AWBURST;
  assign M07_AXI_awcache[3:0] = m07_couplers_to_gpic_0_sub_0_AWCACHE;
  assign M07_AXI_awlen[7:0] = m07_couplers_to_gpic_0_sub_0_AWLEN;
  assign M07_AXI_awlock[0] = m07_couplers_to_gpic_0_sub_0_AWLOCK;
  assign M07_AXI_awprot[2:0] = m07_couplers_to_gpic_0_sub_0_AWPROT;
  assign M07_AXI_awsize[2:0] = m07_couplers_to_gpic_0_sub_0_AWSIZE;
  assign M07_AXI_awvalid = m07_couplers_to_gpic_0_sub_0_AWVALID;
  assign M07_AXI_bready = m07_couplers_to_gpic_0_sub_0_BREADY;
  assign M07_AXI_rready = m07_couplers_to_gpic_0_sub_0_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_gpic_0_sub_0_WDATA;
  assign M07_AXI_wlast = m07_couplers_to_gpic_0_sub_0_WLAST;
  assign M07_AXI_wstrb[3:0] = m07_couplers_to_gpic_0_sub_0_WSTRB;
  assign M07_AXI_wvalid = m07_couplers_to_gpic_0_sub_0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = gpic_0_sub_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = gpic_0_sub_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[15:0] = gpic_0_sub_0_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = gpic_0_sub_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = gpic_0_sub_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[63:0] = gpic_0_sub_0_to_s00_couplers_RDATA;
  assign S00_AXI_rid[15:0] = gpic_0_sub_0_to_s00_couplers_RID;
  assign S00_AXI_rlast = gpic_0_sub_0_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = gpic_0_sub_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = gpic_0_sub_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready = gpic_0_sub_0_to_s00_couplers_WREADY;
  assign gpic_0_sub_0_ACLK_net = ACLK;
  assign gpic_0_sub_0_ARESETN_net = ARESETN;
  assign gpic_0_sub_0_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign gpic_0_sub_0_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign gpic_0_sub_0_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign gpic_0_sub_0_to_s00_couplers_ARID = S00_AXI_arid[15:0];
  assign gpic_0_sub_0_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign gpic_0_sub_0_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign gpic_0_sub_0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign gpic_0_sub_0_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign gpic_0_sub_0_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign gpic_0_sub_0_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign gpic_0_sub_0_to_s00_couplers_ARUSER = S00_AXI_aruser[15:0];
  assign gpic_0_sub_0_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign gpic_0_sub_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign gpic_0_sub_0_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign gpic_0_sub_0_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign gpic_0_sub_0_to_s00_couplers_AWID = S00_AXI_awid[15:0];
  assign gpic_0_sub_0_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign gpic_0_sub_0_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign gpic_0_sub_0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign gpic_0_sub_0_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign gpic_0_sub_0_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign gpic_0_sub_0_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign gpic_0_sub_0_to_s00_couplers_AWUSER = S00_AXI_awuser[15:0];
  assign gpic_0_sub_0_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign gpic_0_sub_0_to_s00_couplers_BREADY = S00_AXI_bready;
  assign gpic_0_sub_0_to_s00_couplers_RREADY = S00_AXI_rready;
  assign gpic_0_sub_0_to_s00_couplers_WDATA = S00_AXI_wdata[63:0];
  assign gpic_0_sub_0_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign gpic_0_sub_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[7:0];
  assign gpic_0_sub_0_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_gpic_0_sub_0_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_gpic_0_sub_0_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_gpic_0_sub_0_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_gpic_0_sub_0_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_gpic_0_sub_0_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_gpic_0_sub_0_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_gpic_0_sub_0_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_gpic_0_sub_0_WREADY = M00_AXI_wready;
  assign m01_couplers_to_gpic_0_sub_0_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_gpic_0_sub_0_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_gpic_0_sub_0_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_gpic_0_sub_0_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_gpic_0_sub_0_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_gpic_0_sub_0_RLAST = M01_AXI_rlast;
  assign m01_couplers_to_gpic_0_sub_0_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_gpic_0_sub_0_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_gpic_0_sub_0_WREADY = M01_AXI_wready;
  assign m02_couplers_to_gpic_0_sub_0_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_gpic_0_sub_0_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_gpic_0_sub_0_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_gpic_0_sub_0_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_gpic_0_sub_0_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_gpic_0_sub_0_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_gpic_0_sub_0_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_gpic_0_sub_0_WREADY = M02_AXI_wready;
  assign m03_couplers_to_gpic_0_sub_0_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_gpic_0_sub_0_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_gpic_0_sub_0_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_gpic_0_sub_0_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_gpic_0_sub_0_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_gpic_0_sub_0_RLAST = M03_AXI_rlast;
  assign m03_couplers_to_gpic_0_sub_0_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_gpic_0_sub_0_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_gpic_0_sub_0_WREADY = M03_AXI_wready;
  assign m04_couplers_to_gpic_0_sub_0_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_gpic_0_sub_0_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_gpic_0_sub_0_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_gpic_0_sub_0_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_gpic_0_sub_0_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_gpic_0_sub_0_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_gpic_0_sub_0_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_gpic_0_sub_0_WREADY = M04_AXI_wready;
  assign m05_couplers_to_gpic_0_sub_0_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_gpic_0_sub_0_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_gpic_0_sub_0_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_gpic_0_sub_0_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_gpic_0_sub_0_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_gpic_0_sub_0_RLAST = M05_AXI_rlast;
  assign m05_couplers_to_gpic_0_sub_0_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_gpic_0_sub_0_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_gpic_0_sub_0_WREADY = M05_AXI_wready;
  assign m06_couplers_to_gpic_0_sub_0_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_gpic_0_sub_0_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_gpic_0_sub_0_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_gpic_0_sub_0_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_gpic_0_sub_0_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_gpic_0_sub_0_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_gpic_0_sub_0_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_gpic_0_sub_0_WREADY = M06_AXI_wready;
  assign m07_couplers_to_gpic_0_sub_0_ARREADY = M07_AXI_arready;
  assign m07_couplers_to_gpic_0_sub_0_AWREADY = M07_AXI_awready;
  assign m07_couplers_to_gpic_0_sub_0_BRESP = M07_AXI_bresp[1:0];
  assign m07_couplers_to_gpic_0_sub_0_BVALID = M07_AXI_bvalid;
  assign m07_couplers_to_gpic_0_sub_0_RDATA = M07_AXI_rdata[31:0];
  assign m07_couplers_to_gpic_0_sub_0_RLAST = M07_AXI_rlast;
  assign m07_couplers_to_gpic_0_sub_0_RRESP = M07_AXI_rresp[1:0];
  assign m07_couplers_to_gpic_0_sub_0_RVALID = M07_AXI_rvalid;
  assign m07_couplers_to_gpic_0_sub_0_WREADY = M07_AXI_wready;
  m00_couplers_imp_OTELSX m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_gpic_0_sub_0_ARADDR),
        .M_AXI_arprot(m00_couplers_to_gpic_0_sub_0_ARPROT),
        .M_AXI_arready(m00_couplers_to_gpic_0_sub_0_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_gpic_0_sub_0_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_gpic_0_sub_0_AWADDR),
        .M_AXI_awprot(m00_couplers_to_gpic_0_sub_0_AWPROT),
        .M_AXI_awready(m00_couplers_to_gpic_0_sub_0_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_gpic_0_sub_0_AWVALID),
        .M_AXI_bready(m00_couplers_to_gpic_0_sub_0_BREADY),
        .M_AXI_bresp(m00_couplers_to_gpic_0_sub_0_BRESP),
        .M_AXI_bvalid(m00_couplers_to_gpic_0_sub_0_BVALID),
        .M_AXI_rdata(m00_couplers_to_gpic_0_sub_0_RDATA),
        .M_AXI_rready(m00_couplers_to_gpic_0_sub_0_RREADY),
        .M_AXI_rresp(m00_couplers_to_gpic_0_sub_0_RRESP),
        .M_AXI_rvalid(m00_couplers_to_gpic_0_sub_0_RVALID),
        .M_AXI_wdata(m00_couplers_to_gpic_0_sub_0_WDATA),
        .M_AXI_wready(m00_couplers_to_gpic_0_sub_0_WREADY),
        .M_AXI_wstrb(m00_couplers_to_gpic_0_sub_0_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_gpic_0_sub_0_WVALID),
        .S_ACLK(gpic_0_sub_0_ACLK_net),
        .S_ARESETN(gpic_0_sub_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_aruser(xbar_to_m00_couplers_ARUSER),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awuser(xbar_to_m00_couplers_AWUSER),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1PTWYW2 m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_gpic_0_sub_0_ARADDR),
        .M_AXI_arburst(m01_couplers_to_gpic_0_sub_0_ARBURST),
        .M_AXI_arcache(m01_couplers_to_gpic_0_sub_0_ARCACHE),
        .M_AXI_arlen(m01_couplers_to_gpic_0_sub_0_ARLEN),
        .M_AXI_arlock(m01_couplers_to_gpic_0_sub_0_ARLOCK),
        .M_AXI_arprot(m01_couplers_to_gpic_0_sub_0_ARPROT),
        .M_AXI_arready(m01_couplers_to_gpic_0_sub_0_ARREADY),
        .M_AXI_arsize(m01_couplers_to_gpic_0_sub_0_ARSIZE),
        .M_AXI_arvalid(m01_couplers_to_gpic_0_sub_0_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_gpic_0_sub_0_AWADDR),
        .M_AXI_awburst(m01_couplers_to_gpic_0_sub_0_AWBURST),
        .M_AXI_awcache(m01_couplers_to_gpic_0_sub_0_AWCACHE),
        .M_AXI_awlen(m01_couplers_to_gpic_0_sub_0_AWLEN),
        .M_AXI_awlock(m01_couplers_to_gpic_0_sub_0_AWLOCK),
        .M_AXI_awprot(m01_couplers_to_gpic_0_sub_0_AWPROT),
        .M_AXI_awready(m01_couplers_to_gpic_0_sub_0_AWREADY),
        .M_AXI_awsize(m01_couplers_to_gpic_0_sub_0_AWSIZE),
        .M_AXI_awvalid(m01_couplers_to_gpic_0_sub_0_AWVALID),
        .M_AXI_bready(m01_couplers_to_gpic_0_sub_0_BREADY),
        .M_AXI_bresp(m01_couplers_to_gpic_0_sub_0_BRESP),
        .M_AXI_bvalid(m01_couplers_to_gpic_0_sub_0_BVALID),
        .M_AXI_rdata(m01_couplers_to_gpic_0_sub_0_RDATA),
        .M_AXI_rlast(m01_couplers_to_gpic_0_sub_0_RLAST),
        .M_AXI_rready(m01_couplers_to_gpic_0_sub_0_RREADY),
        .M_AXI_rresp(m01_couplers_to_gpic_0_sub_0_RRESP),
        .M_AXI_rvalid(m01_couplers_to_gpic_0_sub_0_RVALID),
        .M_AXI_wdata(m01_couplers_to_gpic_0_sub_0_WDATA),
        .M_AXI_wlast(m01_couplers_to_gpic_0_sub_0_WLAST),
        .M_AXI_wready(m01_couplers_to_gpic_0_sub_0_WREADY),
        .M_AXI_wstrb(m01_couplers_to_gpic_0_sub_0_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_gpic_0_sub_0_WVALID),
        .S_ACLK(gpic_0_sub_0_ACLK_net),
        .S_ARESETN(gpic_0_sub_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m01_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m01_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m01_couplers_ARID),
        .S_AXI_arlen(xbar_to_m01_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m01_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m01_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m01_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m01_couplers_ARSIZE),
        .S_AXI_aruser(xbar_to_m01_couplers_ARUSER),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m01_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m01_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m01_couplers_AWID),
        .S_AXI_awlen(xbar_to_m01_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m01_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m01_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m01_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m01_couplers_AWSIZE),
        .S_AXI_awuser(xbar_to_m01_couplers_AWUSER),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m01_couplers_BID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rid(xbar_to_m01_couplers_RID),
        .S_AXI_rlast(xbar_to_m01_couplers_RLAST),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m01_couplers_WLAST),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_137FPK6 m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_gpic_0_sub_0_ARADDR),
        .M_AXI_arprot(m02_couplers_to_gpic_0_sub_0_ARPROT),
        .M_AXI_arready(m02_couplers_to_gpic_0_sub_0_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_gpic_0_sub_0_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_gpic_0_sub_0_AWADDR),
        .M_AXI_awprot(m02_couplers_to_gpic_0_sub_0_AWPROT),
        .M_AXI_awready(m02_couplers_to_gpic_0_sub_0_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_gpic_0_sub_0_AWVALID),
        .M_AXI_bready(m02_couplers_to_gpic_0_sub_0_BREADY),
        .M_AXI_bresp(m02_couplers_to_gpic_0_sub_0_BRESP),
        .M_AXI_bvalid(m02_couplers_to_gpic_0_sub_0_BVALID),
        .M_AXI_rdata(m02_couplers_to_gpic_0_sub_0_RDATA),
        .M_AXI_rready(m02_couplers_to_gpic_0_sub_0_RREADY),
        .M_AXI_rresp(m02_couplers_to_gpic_0_sub_0_RRESP),
        .M_AXI_rvalid(m02_couplers_to_gpic_0_sub_0_RVALID),
        .M_AXI_wdata(m02_couplers_to_gpic_0_sub_0_WDATA),
        .M_AXI_wready(m02_couplers_to_gpic_0_sub_0_WREADY),
        .M_AXI_wstrb(m02_couplers_to_gpic_0_sub_0_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_gpic_0_sub_0_WVALID),
        .S_ACLK(gpic_0_sub_0_ACLK_net),
        .S_ARESETN(gpic_0_sub_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m02_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m02_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m02_couplers_ARID),
        .S_AXI_arlen(xbar_to_m02_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m02_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m02_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m02_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m02_couplers_ARSIZE),
        .S_AXI_aruser(xbar_to_m02_couplers_ARUSER),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m02_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m02_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m02_couplers_AWID),
        .S_AXI_awlen(xbar_to_m02_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m02_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m02_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m02_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m02_couplers_AWSIZE),
        .S_AXI_awuser(xbar_to_m02_couplers_AWUSER),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m02_couplers_BID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rid(xbar_to_m02_couplers_RID),
        .S_AXI_rlast(xbar_to_m02_couplers_RLAST),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m02_couplers_WLAST),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_312IXX m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_gpic_0_sub_0_ARADDR),
        .M_AXI_arburst(m03_couplers_to_gpic_0_sub_0_ARBURST),
        .M_AXI_arcache(m03_couplers_to_gpic_0_sub_0_ARCACHE),
        .M_AXI_arlen(m03_couplers_to_gpic_0_sub_0_ARLEN),
        .M_AXI_arlock(m03_couplers_to_gpic_0_sub_0_ARLOCK),
        .M_AXI_arprot(m03_couplers_to_gpic_0_sub_0_ARPROT),
        .M_AXI_arready(m03_couplers_to_gpic_0_sub_0_ARREADY),
        .M_AXI_arsize(m03_couplers_to_gpic_0_sub_0_ARSIZE),
        .M_AXI_arvalid(m03_couplers_to_gpic_0_sub_0_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_gpic_0_sub_0_AWADDR),
        .M_AXI_awburst(m03_couplers_to_gpic_0_sub_0_AWBURST),
        .M_AXI_awcache(m03_couplers_to_gpic_0_sub_0_AWCACHE),
        .M_AXI_awlen(m03_couplers_to_gpic_0_sub_0_AWLEN),
        .M_AXI_awlock(m03_couplers_to_gpic_0_sub_0_AWLOCK),
        .M_AXI_awprot(m03_couplers_to_gpic_0_sub_0_AWPROT),
        .M_AXI_awready(m03_couplers_to_gpic_0_sub_0_AWREADY),
        .M_AXI_awsize(m03_couplers_to_gpic_0_sub_0_AWSIZE),
        .M_AXI_awvalid(m03_couplers_to_gpic_0_sub_0_AWVALID),
        .M_AXI_bready(m03_couplers_to_gpic_0_sub_0_BREADY),
        .M_AXI_bresp(m03_couplers_to_gpic_0_sub_0_BRESP),
        .M_AXI_bvalid(m03_couplers_to_gpic_0_sub_0_BVALID),
        .M_AXI_rdata(m03_couplers_to_gpic_0_sub_0_RDATA),
        .M_AXI_rlast(m03_couplers_to_gpic_0_sub_0_RLAST),
        .M_AXI_rready(m03_couplers_to_gpic_0_sub_0_RREADY),
        .M_AXI_rresp(m03_couplers_to_gpic_0_sub_0_RRESP),
        .M_AXI_rvalid(m03_couplers_to_gpic_0_sub_0_RVALID),
        .M_AXI_wdata(m03_couplers_to_gpic_0_sub_0_WDATA),
        .M_AXI_wlast(m03_couplers_to_gpic_0_sub_0_WLAST),
        .M_AXI_wready(m03_couplers_to_gpic_0_sub_0_WREADY),
        .M_AXI_wstrb(m03_couplers_to_gpic_0_sub_0_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_gpic_0_sub_0_WVALID),
        .S_ACLK(gpic_0_sub_0_ACLK_net),
        .S_ARESETN(gpic_0_sub_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m03_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m03_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m03_couplers_ARID),
        .S_AXI_arlen(xbar_to_m03_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m03_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m03_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m03_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m03_couplers_ARSIZE),
        .S_AXI_aruser(xbar_to_m03_couplers_ARUSER),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m03_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m03_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m03_couplers_AWID),
        .S_AXI_awlen(xbar_to_m03_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m03_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m03_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m03_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m03_couplers_AWSIZE),
        .S_AXI_awuser(xbar_to_m03_couplers_AWUSER),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m03_couplers_BID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rid(xbar_to_m03_couplers_RID),
        .S_AXI_rlast(xbar_to_m03_couplers_RLAST),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m03_couplers_WLAST),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_BS944U m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_gpic_0_sub_0_ARADDR),
        .M_AXI_arprot(m04_couplers_to_gpic_0_sub_0_ARPROT),
        .M_AXI_arready(m04_couplers_to_gpic_0_sub_0_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_gpic_0_sub_0_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_gpic_0_sub_0_AWADDR),
        .M_AXI_awprot(m04_couplers_to_gpic_0_sub_0_AWPROT),
        .M_AXI_awready(m04_couplers_to_gpic_0_sub_0_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_gpic_0_sub_0_AWVALID),
        .M_AXI_bready(m04_couplers_to_gpic_0_sub_0_BREADY),
        .M_AXI_bresp(m04_couplers_to_gpic_0_sub_0_BRESP),
        .M_AXI_bvalid(m04_couplers_to_gpic_0_sub_0_BVALID),
        .M_AXI_rdata(m04_couplers_to_gpic_0_sub_0_RDATA),
        .M_AXI_rready(m04_couplers_to_gpic_0_sub_0_RREADY),
        .M_AXI_rresp(m04_couplers_to_gpic_0_sub_0_RRESP),
        .M_AXI_rvalid(m04_couplers_to_gpic_0_sub_0_RVALID),
        .M_AXI_wdata(m04_couplers_to_gpic_0_sub_0_WDATA),
        .M_AXI_wready(m04_couplers_to_gpic_0_sub_0_WREADY),
        .M_AXI_wstrb(m04_couplers_to_gpic_0_sub_0_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_gpic_0_sub_0_WVALID),
        .S_ACLK(gpic_0_sub_0_ACLK_net),
        .S_ARESETN(gpic_0_sub_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m04_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m04_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m04_couplers_ARID),
        .S_AXI_arlen(xbar_to_m04_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m04_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m04_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m04_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m04_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m04_couplers_ARSIZE),
        .S_AXI_aruser(xbar_to_m04_couplers_ARUSER),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m04_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m04_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m04_couplers_AWID),
        .S_AXI_awlen(xbar_to_m04_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m04_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m04_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m04_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m04_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m04_couplers_AWSIZE),
        .S_AXI_awuser(xbar_to_m04_couplers_AWUSER),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m04_couplers_BID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rid(xbar_to_m04_couplers_RID),
        .S_AXI_rlast(xbar_to_m04_couplers_RLAST),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m04_couplers_WLAST),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_1C8SAY5 m05_couplers
       (.M_ACLK(M05_ACLK_1),
        .M_ARESETN(M05_ARESETN_1),
        .M_AXI_araddr(m05_couplers_to_gpic_0_sub_0_ARADDR),
        .M_AXI_arburst(m05_couplers_to_gpic_0_sub_0_ARBURST),
        .M_AXI_arcache(m05_couplers_to_gpic_0_sub_0_ARCACHE),
        .M_AXI_arlen(m05_couplers_to_gpic_0_sub_0_ARLEN),
        .M_AXI_arlock(m05_couplers_to_gpic_0_sub_0_ARLOCK),
        .M_AXI_arprot(m05_couplers_to_gpic_0_sub_0_ARPROT),
        .M_AXI_arready(m05_couplers_to_gpic_0_sub_0_ARREADY),
        .M_AXI_arsize(m05_couplers_to_gpic_0_sub_0_ARSIZE),
        .M_AXI_arvalid(m05_couplers_to_gpic_0_sub_0_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_gpic_0_sub_0_AWADDR),
        .M_AXI_awburst(m05_couplers_to_gpic_0_sub_0_AWBURST),
        .M_AXI_awcache(m05_couplers_to_gpic_0_sub_0_AWCACHE),
        .M_AXI_awlen(m05_couplers_to_gpic_0_sub_0_AWLEN),
        .M_AXI_awlock(m05_couplers_to_gpic_0_sub_0_AWLOCK),
        .M_AXI_awprot(m05_couplers_to_gpic_0_sub_0_AWPROT),
        .M_AXI_awready(m05_couplers_to_gpic_0_sub_0_AWREADY),
        .M_AXI_awsize(m05_couplers_to_gpic_0_sub_0_AWSIZE),
        .M_AXI_awvalid(m05_couplers_to_gpic_0_sub_0_AWVALID),
        .M_AXI_bready(m05_couplers_to_gpic_0_sub_0_BREADY),
        .M_AXI_bresp(m05_couplers_to_gpic_0_sub_0_BRESP),
        .M_AXI_bvalid(m05_couplers_to_gpic_0_sub_0_BVALID),
        .M_AXI_rdata(m05_couplers_to_gpic_0_sub_0_RDATA),
        .M_AXI_rlast(m05_couplers_to_gpic_0_sub_0_RLAST),
        .M_AXI_rready(m05_couplers_to_gpic_0_sub_0_RREADY),
        .M_AXI_rresp(m05_couplers_to_gpic_0_sub_0_RRESP),
        .M_AXI_rvalid(m05_couplers_to_gpic_0_sub_0_RVALID),
        .M_AXI_wdata(m05_couplers_to_gpic_0_sub_0_WDATA),
        .M_AXI_wlast(m05_couplers_to_gpic_0_sub_0_WLAST),
        .M_AXI_wready(m05_couplers_to_gpic_0_sub_0_WREADY),
        .M_AXI_wstrb(m05_couplers_to_gpic_0_sub_0_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_gpic_0_sub_0_WVALID),
        .S_ACLK(gpic_0_sub_0_ACLK_net),
        .S_ARESETN(gpic_0_sub_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m05_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m05_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m05_couplers_ARID),
        .S_AXI_arlen(xbar_to_m05_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m05_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m05_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m05_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m05_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m05_couplers_ARSIZE),
        .S_AXI_aruser(xbar_to_m05_couplers_ARUSER),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m05_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m05_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m05_couplers_AWID),
        .S_AXI_awlen(xbar_to_m05_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m05_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m05_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m05_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m05_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m05_couplers_AWSIZE),
        .S_AXI_awuser(xbar_to_m05_couplers_AWUSER),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m05_couplers_BID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rid(xbar_to_m05_couplers_RID),
        .S_AXI_rlast(xbar_to_m05_couplers_RLAST),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m05_couplers_WLAST),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_1YJUSBT m06_couplers
       (.M_ACLK(M06_ACLK_1),
        .M_ARESETN(M06_ARESETN_1),
        .M_AXI_araddr(m06_couplers_to_gpic_0_sub_0_ARADDR),
        .M_AXI_arprot(m06_couplers_to_gpic_0_sub_0_ARPROT),
        .M_AXI_arready(m06_couplers_to_gpic_0_sub_0_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_gpic_0_sub_0_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_gpic_0_sub_0_AWADDR),
        .M_AXI_awprot(m06_couplers_to_gpic_0_sub_0_AWPROT),
        .M_AXI_awready(m06_couplers_to_gpic_0_sub_0_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_gpic_0_sub_0_AWVALID),
        .M_AXI_bready(m06_couplers_to_gpic_0_sub_0_BREADY),
        .M_AXI_bresp(m06_couplers_to_gpic_0_sub_0_BRESP),
        .M_AXI_bvalid(m06_couplers_to_gpic_0_sub_0_BVALID),
        .M_AXI_rdata(m06_couplers_to_gpic_0_sub_0_RDATA),
        .M_AXI_rready(m06_couplers_to_gpic_0_sub_0_RREADY),
        .M_AXI_rresp(m06_couplers_to_gpic_0_sub_0_RRESP),
        .M_AXI_rvalid(m06_couplers_to_gpic_0_sub_0_RVALID),
        .M_AXI_wdata(m06_couplers_to_gpic_0_sub_0_WDATA),
        .M_AXI_wready(m06_couplers_to_gpic_0_sub_0_WREADY),
        .M_AXI_wstrb(m06_couplers_to_gpic_0_sub_0_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_gpic_0_sub_0_WVALID),
        .S_ACLK(gpic_0_sub_0_ACLK_net),
        .S_ARESETN(gpic_0_sub_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m06_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m06_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m06_couplers_ARID),
        .S_AXI_arlen(xbar_to_m06_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m06_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m06_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m06_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m06_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m06_couplers_ARSIZE),
        .S_AXI_aruser(xbar_to_m06_couplers_ARUSER),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m06_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m06_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m06_couplers_AWID),
        .S_AXI_awlen(xbar_to_m06_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m06_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m06_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m06_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m06_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m06_couplers_AWSIZE),
        .S_AXI_awuser(xbar_to_m06_couplers_AWUSER),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m06_couplers_BID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rid(xbar_to_m06_couplers_RID),
        .S_AXI_rlast(xbar_to_m06_couplers_RLAST),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m06_couplers_WLAST),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  m07_couplers_imp_XTIF8Q m07_couplers
       (.M_ACLK(M07_ACLK_1),
        .M_ARESETN(M07_ARESETN_1),
        .M_AXI_araddr(m07_couplers_to_gpic_0_sub_0_ARADDR),
        .M_AXI_arburst(m07_couplers_to_gpic_0_sub_0_ARBURST),
        .M_AXI_arcache(m07_couplers_to_gpic_0_sub_0_ARCACHE),
        .M_AXI_arlen(m07_couplers_to_gpic_0_sub_0_ARLEN),
        .M_AXI_arlock(m07_couplers_to_gpic_0_sub_0_ARLOCK),
        .M_AXI_arprot(m07_couplers_to_gpic_0_sub_0_ARPROT),
        .M_AXI_arready(m07_couplers_to_gpic_0_sub_0_ARREADY),
        .M_AXI_arsize(m07_couplers_to_gpic_0_sub_0_ARSIZE),
        .M_AXI_arvalid(m07_couplers_to_gpic_0_sub_0_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_gpic_0_sub_0_AWADDR),
        .M_AXI_awburst(m07_couplers_to_gpic_0_sub_0_AWBURST),
        .M_AXI_awcache(m07_couplers_to_gpic_0_sub_0_AWCACHE),
        .M_AXI_awlen(m07_couplers_to_gpic_0_sub_0_AWLEN),
        .M_AXI_awlock(m07_couplers_to_gpic_0_sub_0_AWLOCK),
        .M_AXI_awprot(m07_couplers_to_gpic_0_sub_0_AWPROT),
        .M_AXI_awready(m07_couplers_to_gpic_0_sub_0_AWREADY),
        .M_AXI_awsize(m07_couplers_to_gpic_0_sub_0_AWSIZE),
        .M_AXI_awvalid(m07_couplers_to_gpic_0_sub_0_AWVALID),
        .M_AXI_bready(m07_couplers_to_gpic_0_sub_0_BREADY),
        .M_AXI_bresp(m07_couplers_to_gpic_0_sub_0_BRESP),
        .M_AXI_bvalid(m07_couplers_to_gpic_0_sub_0_BVALID),
        .M_AXI_rdata(m07_couplers_to_gpic_0_sub_0_RDATA),
        .M_AXI_rlast(m07_couplers_to_gpic_0_sub_0_RLAST),
        .M_AXI_rready(m07_couplers_to_gpic_0_sub_0_RREADY),
        .M_AXI_rresp(m07_couplers_to_gpic_0_sub_0_RRESP),
        .M_AXI_rvalid(m07_couplers_to_gpic_0_sub_0_RVALID),
        .M_AXI_wdata(m07_couplers_to_gpic_0_sub_0_WDATA),
        .M_AXI_wlast(m07_couplers_to_gpic_0_sub_0_WLAST),
        .M_AXI_wready(m07_couplers_to_gpic_0_sub_0_WREADY),
        .M_AXI_wstrb(m07_couplers_to_gpic_0_sub_0_WSTRB),
        .M_AXI_wvalid(m07_couplers_to_gpic_0_sub_0_WVALID),
        .S_ACLK(gpic_0_sub_0_ACLK_net),
        .S_ARESETN(gpic_0_sub_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m07_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m07_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m07_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m07_couplers_ARID),
        .S_AXI_arlen(xbar_to_m07_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m07_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m07_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m07_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m07_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m07_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m07_couplers_ARSIZE),
        .S_AXI_aruser(xbar_to_m07_couplers_ARUSER),
        .S_AXI_arvalid(xbar_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m07_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m07_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m07_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m07_couplers_AWID),
        .S_AXI_awlen(xbar_to_m07_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m07_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m07_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m07_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m07_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m07_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m07_couplers_AWSIZE),
        .S_AXI_awuser(xbar_to_m07_couplers_AWUSER),
        .S_AXI_awvalid(xbar_to_m07_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m07_couplers_BID),
        .S_AXI_bready(xbar_to_m07_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m07_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m07_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m07_couplers_RDATA),
        .S_AXI_rid(xbar_to_m07_couplers_RID),
        .S_AXI_rlast(xbar_to_m07_couplers_RLAST),
        .S_AXI_rready(xbar_to_m07_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m07_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m07_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m07_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m07_couplers_WLAST),
        .S_AXI_wready(xbar_to_m07_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m07_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m07_couplers_WVALID));
  s00_couplers_imp_1POJON1 s00_couplers
       (.M_ACLK(gpic_0_sub_0_ACLK_net),
        .M_ARESETN(gpic_0_sub_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s00_couplers_to_xbar_ARID),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_aruser(s00_couplers_to_xbar_ARUSER),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s00_couplers_to_xbar_AWID),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awuser(s00_couplers_to_xbar_AWUSER),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s00_couplers_to_xbar_BID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rid(s00_couplers_to_xbar_RID),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(gpic_0_sub_0_to_s00_couplers_ARADDR),
        .S_AXI_arburst(gpic_0_sub_0_to_s00_couplers_ARBURST),
        .S_AXI_arcache(gpic_0_sub_0_to_s00_couplers_ARCACHE),
        .S_AXI_arid(gpic_0_sub_0_to_s00_couplers_ARID),
        .S_AXI_arlen(gpic_0_sub_0_to_s00_couplers_ARLEN),
        .S_AXI_arlock(gpic_0_sub_0_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(gpic_0_sub_0_to_s00_couplers_ARPROT),
        .S_AXI_arqos(gpic_0_sub_0_to_s00_couplers_ARQOS),
        .S_AXI_arready(gpic_0_sub_0_to_s00_couplers_ARREADY),
        .S_AXI_arregion(gpic_0_sub_0_to_s00_couplers_ARREGION),
        .S_AXI_arsize(gpic_0_sub_0_to_s00_couplers_ARSIZE),
        .S_AXI_aruser(gpic_0_sub_0_to_s00_couplers_ARUSER),
        .S_AXI_arvalid(gpic_0_sub_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(gpic_0_sub_0_to_s00_couplers_AWADDR),
        .S_AXI_awburst(gpic_0_sub_0_to_s00_couplers_AWBURST),
        .S_AXI_awcache(gpic_0_sub_0_to_s00_couplers_AWCACHE),
        .S_AXI_awid(gpic_0_sub_0_to_s00_couplers_AWID),
        .S_AXI_awlen(gpic_0_sub_0_to_s00_couplers_AWLEN),
        .S_AXI_awlock(gpic_0_sub_0_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(gpic_0_sub_0_to_s00_couplers_AWPROT),
        .S_AXI_awqos(gpic_0_sub_0_to_s00_couplers_AWQOS),
        .S_AXI_awready(gpic_0_sub_0_to_s00_couplers_AWREADY),
        .S_AXI_awregion(gpic_0_sub_0_to_s00_couplers_AWREGION),
        .S_AXI_awsize(gpic_0_sub_0_to_s00_couplers_AWSIZE),
        .S_AXI_awuser(gpic_0_sub_0_to_s00_couplers_AWUSER),
        .S_AXI_awvalid(gpic_0_sub_0_to_s00_couplers_AWVALID),
        .S_AXI_bid(gpic_0_sub_0_to_s00_couplers_BID),
        .S_AXI_bready(gpic_0_sub_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(gpic_0_sub_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(gpic_0_sub_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(gpic_0_sub_0_to_s00_couplers_RDATA),
        .S_AXI_rid(gpic_0_sub_0_to_s00_couplers_RID),
        .S_AXI_rlast(gpic_0_sub_0_to_s00_couplers_RLAST),
        .S_AXI_rready(gpic_0_sub_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(gpic_0_sub_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(gpic_0_sub_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(gpic_0_sub_0_to_s00_couplers_WDATA),
        .S_AXI_wlast(gpic_0_sub_0_to_s00_couplers_WLAST),
        .S_AXI_wready(gpic_0_sub_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(gpic_0_sub_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(gpic_0_sub_0_to_s00_couplers_WVALID));
  sys_top_xbar_8 xbar
       (.aclk(gpic_0_sub_0_ACLK_net),
        .aresetn(gpic_0_sub_0_ARESETN_net),
        .m_axi_araddr({xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arburst({xbar_to_m07_couplers_ARBURST,xbar_to_m06_couplers_ARBURST,xbar_to_m05_couplers_ARBURST,xbar_to_m04_couplers_ARBURST,xbar_to_m03_couplers_ARBURST,xbar_to_m02_couplers_ARBURST,xbar_to_m01_couplers_ARBURST,xbar_to_m00_couplers_ARBURST}),
        .m_axi_arcache({xbar_to_m07_couplers_ARCACHE,xbar_to_m06_couplers_ARCACHE,xbar_to_m05_couplers_ARCACHE,xbar_to_m04_couplers_ARCACHE,xbar_to_m03_couplers_ARCACHE,xbar_to_m02_couplers_ARCACHE,xbar_to_m01_couplers_ARCACHE,xbar_to_m00_couplers_ARCACHE}),
        .m_axi_arid({xbar_to_m07_couplers_ARID,xbar_to_m06_couplers_ARID,xbar_to_m05_couplers_ARID,xbar_to_m04_couplers_ARID,xbar_to_m03_couplers_ARID,xbar_to_m02_couplers_ARID,xbar_to_m01_couplers_ARID,xbar_to_m00_couplers_ARID}),
        .m_axi_arlen({xbar_to_m07_couplers_ARLEN,xbar_to_m06_couplers_ARLEN,xbar_to_m05_couplers_ARLEN,xbar_to_m04_couplers_ARLEN,xbar_to_m03_couplers_ARLEN,xbar_to_m02_couplers_ARLEN,xbar_to_m01_couplers_ARLEN,xbar_to_m00_couplers_ARLEN}),
        .m_axi_arlock({xbar_to_m07_couplers_ARLOCK,xbar_to_m06_couplers_ARLOCK,xbar_to_m05_couplers_ARLOCK,xbar_to_m04_couplers_ARLOCK,xbar_to_m03_couplers_ARLOCK,xbar_to_m02_couplers_ARLOCK,xbar_to_m01_couplers_ARLOCK,xbar_to_m00_couplers_ARLOCK}),
        .m_axi_arprot({xbar_to_m07_couplers_ARPROT,xbar_to_m06_couplers_ARPROT,xbar_to_m05_couplers_ARPROT,xbar_to_m04_couplers_ARPROT,xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arqos({xbar_to_m07_couplers_ARQOS,xbar_to_m06_couplers_ARQOS,xbar_to_m05_couplers_ARQOS,xbar_to_m04_couplers_ARQOS,xbar_to_m03_couplers_ARQOS,xbar_to_m02_couplers_ARQOS,xbar_to_m01_couplers_ARQOS,xbar_to_m00_couplers_ARQOS}),
        .m_axi_arready({xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arregion({xbar_to_m07_couplers_ARREGION,xbar_to_m06_couplers_ARREGION,xbar_to_m05_couplers_ARREGION,xbar_to_m04_couplers_ARREGION,xbar_to_m03_couplers_ARREGION,xbar_to_m02_couplers_ARREGION,xbar_to_m01_couplers_ARREGION,xbar_to_m00_couplers_ARREGION}),
        .m_axi_arsize({xbar_to_m07_couplers_ARSIZE,xbar_to_m06_couplers_ARSIZE,xbar_to_m05_couplers_ARSIZE,xbar_to_m04_couplers_ARSIZE,xbar_to_m03_couplers_ARSIZE,xbar_to_m02_couplers_ARSIZE,xbar_to_m01_couplers_ARSIZE,xbar_to_m00_couplers_ARSIZE}),
        .m_axi_aruser({xbar_to_m07_couplers_ARUSER,xbar_to_m06_couplers_ARUSER,xbar_to_m05_couplers_ARUSER,xbar_to_m04_couplers_ARUSER,xbar_to_m03_couplers_ARUSER,xbar_to_m02_couplers_ARUSER,xbar_to_m01_couplers_ARUSER,xbar_to_m00_couplers_ARUSER}),
        .m_axi_arvalid({xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awburst({xbar_to_m07_couplers_AWBURST,xbar_to_m06_couplers_AWBURST,xbar_to_m05_couplers_AWBURST,xbar_to_m04_couplers_AWBURST,xbar_to_m03_couplers_AWBURST,xbar_to_m02_couplers_AWBURST,xbar_to_m01_couplers_AWBURST,xbar_to_m00_couplers_AWBURST}),
        .m_axi_awcache({xbar_to_m07_couplers_AWCACHE,xbar_to_m06_couplers_AWCACHE,xbar_to_m05_couplers_AWCACHE,xbar_to_m04_couplers_AWCACHE,xbar_to_m03_couplers_AWCACHE,xbar_to_m02_couplers_AWCACHE,xbar_to_m01_couplers_AWCACHE,xbar_to_m00_couplers_AWCACHE}),
        .m_axi_awid({xbar_to_m07_couplers_AWID,xbar_to_m06_couplers_AWID,xbar_to_m05_couplers_AWID,xbar_to_m04_couplers_AWID,xbar_to_m03_couplers_AWID,xbar_to_m02_couplers_AWID,xbar_to_m01_couplers_AWID,xbar_to_m00_couplers_AWID}),
        .m_axi_awlen({xbar_to_m07_couplers_AWLEN,xbar_to_m06_couplers_AWLEN,xbar_to_m05_couplers_AWLEN,xbar_to_m04_couplers_AWLEN,xbar_to_m03_couplers_AWLEN,xbar_to_m02_couplers_AWLEN,xbar_to_m01_couplers_AWLEN,xbar_to_m00_couplers_AWLEN}),
        .m_axi_awlock({xbar_to_m07_couplers_AWLOCK,xbar_to_m06_couplers_AWLOCK,xbar_to_m05_couplers_AWLOCK,xbar_to_m04_couplers_AWLOCK,xbar_to_m03_couplers_AWLOCK,xbar_to_m02_couplers_AWLOCK,xbar_to_m01_couplers_AWLOCK,xbar_to_m00_couplers_AWLOCK}),
        .m_axi_awprot({xbar_to_m07_couplers_AWPROT,xbar_to_m06_couplers_AWPROT,xbar_to_m05_couplers_AWPROT,xbar_to_m04_couplers_AWPROT,xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awqos({xbar_to_m07_couplers_AWQOS,xbar_to_m06_couplers_AWQOS,xbar_to_m05_couplers_AWQOS,xbar_to_m04_couplers_AWQOS,xbar_to_m03_couplers_AWQOS,xbar_to_m02_couplers_AWQOS,xbar_to_m01_couplers_AWQOS,xbar_to_m00_couplers_AWQOS}),
        .m_axi_awready({xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awregion({xbar_to_m07_couplers_AWREGION,xbar_to_m06_couplers_AWREGION,xbar_to_m05_couplers_AWREGION,xbar_to_m04_couplers_AWREGION,xbar_to_m03_couplers_AWREGION,xbar_to_m02_couplers_AWREGION,xbar_to_m01_couplers_AWREGION,xbar_to_m00_couplers_AWREGION}),
        .m_axi_awsize({xbar_to_m07_couplers_AWSIZE,xbar_to_m06_couplers_AWSIZE,xbar_to_m05_couplers_AWSIZE,xbar_to_m04_couplers_AWSIZE,xbar_to_m03_couplers_AWSIZE,xbar_to_m02_couplers_AWSIZE,xbar_to_m01_couplers_AWSIZE,xbar_to_m00_couplers_AWSIZE}),
        .m_axi_awuser({xbar_to_m07_couplers_AWUSER,xbar_to_m06_couplers_AWUSER,xbar_to_m05_couplers_AWUSER,xbar_to_m04_couplers_AWUSER,xbar_to_m03_couplers_AWUSER,xbar_to_m02_couplers_AWUSER,xbar_to_m01_couplers_AWUSER,xbar_to_m00_couplers_AWUSER}),
        .m_axi_awvalid({xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bid({xbar_to_m07_couplers_BID,xbar_to_m06_couplers_BID,xbar_to_m05_couplers_BID,xbar_to_m04_couplers_BID,xbar_to_m03_couplers_BID,xbar_to_m02_couplers_BID,xbar_to_m01_couplers_BID,xbar_to_m00_couplers_BID}),
        .m_axi_bready({xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rid({xbar_to_m07_couplers_RID,xbar_to_m06_couplers_RID,xbar_to_m05_couplers_RID,xbar_to_m04_couplers_RID,xbar_to_m03_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m01_couplers_RID,xbar_to_m00_couplers_RID}),
        .m_axi_rlast({xbar_to_m07_couplers_RLAST,xbar_to_m06_couplers_RLAST,xbar_to_m05_couplers_RLAST,xbar_to_m04_couplers_RLAST,xbar_to_m03_couplers_RLAST,xbar_to_m02_couplers_RLAST,xbar_to_m01_couplers_RLAST,xbar_to_m00_couplers_RLAST}),
        .m_axi_rready({xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wlast({xbar_to_m07_couplers_WLAST,xbar_to_m06_couplers_WLAST,xbar_to_m05_couplers_WLAST,xbar_to_m04_couplers_WLAST,xbar_to_m03_couplers_WLAST,xbar_to_m02_couplers_WLAST,xbar_to_m01_couplers_WLAST,xbar_to_m00_couplers_WLAST}),
        .m_axi_wready({xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m07_couplers_WSTRB,xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arburst(s00_couplers_to_xbar_ARBURST),
        .s_axi_arcache(s00_couplers_to_xbar_ARCACHE),
        .s_axi_arid(s00_couplers_to_xbar_ARID),
        .s_axi_arlen(s00_couplers_to_xbar_ARLEN),
        .s_axi_arlock(s00_couplers_to_xbar_ARLOCK),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arqos(s00_couplers_to_xbar_ARQOS),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arsize(s00_couplers_to_xbar_ARSIZE),
        .s_axi_aruser(s00_couplers_to_xbar_ARUSER),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awburst(s00_couplers_to_xbar_AWBURST),
        .s_axi_awcache(s00_couplers_to_xbar_AWCACHE),
        .s_axi_awid(s00_couplers_to_xbar_AWID),
        .s_axi_awlen(s00_couplers_to_xbar_AWLEN),
        .s_axi_awlock(s00_couplers_to_xbar_AWLOCK),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awqos(s00_couplers_to_xbar_AWQOS),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awsize(s00_couplers_to_xbar_AWSIZE),
        .s_axi_awuser(s00_couplers_to_xbar_AWUSER),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bid(s00_couplers_to_xbar_BID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rid(s00_couplers_to_xbar_RID),
        .s_axi_rlast(s00_couplers_to_xbar_RLAST),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wlast(s00_couplers_to_xbar_WLAST),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module sys_top_gpic_1_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [39:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [39:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [15:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [15:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [15:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [63:0]S00_AXI_rdata;
  output [15:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [63:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [7:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire gpic_1_ACLK_net;
  wire gpic_1_ARESETN_net;
  wire [39:0]gpic_1_to_s00_couplers_ARADDR;
  wire [1:0]gpic_1_to_s00_couplers_ARBURST;
  wire [3:0]gpic_1_to_s00_couplers_ARCACHE;
  wire [15:0]gpic_1_to_s00_couplers_ARID;
  wire [7:0]gpic_1_to_s00_couplers_ARLEN;
  wire [0:0]gpic_1_to_s00_couplers_ARLOCK;
  wire [2:0]gpic_1_to_s00_couplers_ARPROT;
  wire [3:0]gpic_1_to_s00_couplers_ARQOS;
  wire gpic_1_to_s00_couplers_ARREADY;
  wire [2:0]gpic_1_to_s00_couplers_ARSIZE;
  wire gpic_1_to_s00_couplers_ARVALID;
  wire [39:0]gpic_1_to_s00_couplers_AWADDR;
  wire [1:0]gpic_1_to_s00_couplers_AWBURST;
  wire [3:0]gpic_1_to_s00_couplers_AWCACHE;
  wire [15:0]gpic_1_to_s00_couplers_AWID;
  wire [7:0]gpic_1_to_s00_couplers_AWLEN;
  wire [0:0]gpic_1_to_s00_couplers_AWLOCK;
  wire [2:0]gpic_1_to_s00_couplers_AWPROT;
  wire [3:0]gpic_1_to_s00_couplers_AWQOS;
  wire gpic_1_to_s00_couplers_AWREADY;
  wire [2:0]gpic_1_to_s00_couplers_AWSIZE;
  wire gpic_1_to_s00_couplers_AWVALID;
  wire [15:0]gpic_1_to_s00_couplers_BID;
  wire gpic_1_to_s00_couplers_BREADY;
  wire [1:0]gpic_1_to_s00_couplers_BRESP;
  wire gpic_1_to_s00_couplers_BVALID;
  wire [63:0]gpic_1_to_s00_couplers_RDATA;
  wire [15:0]gpic_1_to_s00_couplers_RID;
  wire gpic_1_to_s00_couplers_RLAST;
  wire gpic_1_to_s00_couplers_RREADY;
  wire [1:0]gpic_1_to_s00_couplers_RRESP;
  wire gpic_1_to_s00_couplers_RVALID;
  wire [63:0]gpic_1_to_s00_couplers_WDATA;
  wire gpic_1_to_s00_couplers_WLAST;
  wire gpic_1_to_s00_couplers_WREADY;
  wire [7:0]gpic_1_to_s00_couplers_WSTRB;
  wire gpic_1_to_s00_couplers_WVALID;
  wire [39:0]m00_couplers_to_gpic_1_ARADDR;
  wire [2:0]m00_couplers_to_gpic_1_ARPROT;
  wire m00_couplers_to_gpic_1_ARREADY;
  wire m00_couplers_to_gpic_1_ARVALID;
  wire [39:0]m00_couplers_to_gpic_1_AWADDR;
  wire [2:0]m00_couplers_to_gpic_1_AWPROT;
  wire m00_couplers_to_gpic_1_AWREADY;
  wire m00_couplers_to_gpic_1_AWVALID;
  wire m00_couplers_to_gpic_1_BREADY;
  wire [1:0]m00_couplers_to_gpic_1_BRESP;
  wire m00_couplers_to_gpic_1_BVALID;
  wire [31:0]m00_couplers_to_gpic_1_RDATA;
  wire m00_couplers_to_gpic_1_RREADY;
  wire [1:0]m00_couplers_to_gpic_1_RRESP;
  wire m00_couplers_to_gpic_1_RVALID;
  wire [31:0]m00_couplers_to_gpic_1_WDATA;
  wire m00_couplers_to_gpic_1_WREADY;
  wire [3:0]m00_couplers_to_gpic_1_WSTRB;
  wire m00_couplers_to_gpic_1_WVALID;
  wire [31:0]m01_couplers_to_gpic_1_ARADDR;
  wire [2:0]m01_couplers_to_gpic_1_ARPROT;
  wire m01_couplers_to_gpic_1_ARREADY;
  wire m01_couplers_to_gpic_1_ARVALID;
  wire [31:0]m01_couplers_to_gpic_1_AWADDR;
  wire [2:0]m01_couplers_to_gpic_1_AWPROT;
  wire m01_couplers_to_gpic_1_AWREADY;
  wire m01_couplers_to_gpic_1_AWVALID;
  wire m01_couplers_to_gpic_1_BREADY;
  wire [1:0]m01_couplers_to_gpic_1_BRESP;
  wire m01_couplers_to_gpic_1_BVALID;
  wire [31:0]m01_couplers_to_gpic_1_RDATA;
  wire m01_couplers_to_gpic_1_RREADY;
  wire [1:0]m01_couplers_to_gpic_1_RRESP;
  wire m01_couplers_to_gpic_1_RVALID;
  wire [31:0]m01_couplers_to_gpic_1_WDATA;
  wire m01_couplers_to_gpic_1_WREADY;
  wire [3:0]m01_couplers_to_gpic_1_WSTRB;
  wire m01_couplers_to_gpic_1_WVALID;
  wire [39:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [39:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [63:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [63:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [7:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [39:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [39:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [63:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [63:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [7:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [79:40]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [79:40]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [63:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [127:64]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [15:8]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[39:0] = m00_couplers_to_gpic_1_ARADDR;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_gpic_1_ARPROT;
  assign M00_AXI_arvalid = m00_couplers_to_gpic_1_ARVALID;
  assign M00_AXI_awaddr[39:0] = m00_couplers_to_gpic_1_AWADDR;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_gpic_1_AWPROT;
  assign M00_AXI_awvalid = m00_couplers_to_gpic_1_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_gpic_1_BREADY;
  assign M00_AXI_rready = m00_couplers_to_gpic_1_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_gpic_1_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_gpic_1_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_gpic_1_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_gpic_1_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_gpic_1_ARPROT;
  assign M01_AXI_arvalid = m01_couplers_to_gpic_1_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_gpic_1_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_gpic_1_AWPROT;
  assign M01_AXI_awvalid = m01_couplers_to_gpic_1_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_gpic_1_BREADY;
  assign M01_AXI_rready = m01_couplers_to_gpic_1_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_gpic_1_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_gpic_1_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_gpic_1_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = gpic_1_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = gpic_1_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[15:0] = gpic_1_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = gpic_1_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = gpic_1_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[63:0] = gpic_1_to_s00_couplers_RDATA;
  assign S00_AXI_rid[15:0] = gpic_1_to_s00_couplers_RID;
  assign S00_AXI_rlast = gpic_1_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = gpic_1_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = gpic_1_to_s00_couplers_RVALID;
  assign S00_AXI_wready = gpic_1_to_s00_couplers_WREADY;
  assign gpic_1_ACLK_net = ACLK;
  assign gpic_1_ARESETN_net = ARESETN;
  assign gpic_1_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign gpic_1_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign gpic_1_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign gpic_1_to_s00_couplers_ARID = S00_AXI_arid[15:0];
  assign gpic_1_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign gpic_1_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign gpic_1_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign gpic_1_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign gpic_1_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign gpic_1_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign gpic_1_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign gpic_1_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign gpic_1_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign gpic_1_to_s00_couplers_AWID = S00_AXI_awid[15:0];
  assign gpic_1_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign gpic_1_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign gpic_1_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign gpic_1_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign gpic_1_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign gpic_1_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign gpic_1_to_s00_couplers_BREADY = S00_AXI_bready;
  assign gpic_1_to_s00_couplers_RREADY = S00_AXI_rready;
  assign gpic_1_to_s00_couplers_WDATA = S00_AXI_wdata[63:0];
  assign gpic_1_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign gpic_1_to_s00_couplers_WSTRB = S00_AXI_wstrb[7:0];
  assign gpic_1_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_gpic_1_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_gpic_1_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_gpic_1_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_gpic_1_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_gpic_1_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_gpic_1_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_gpic_1_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_gpic_1_WREADY = M00_AXI_wready;
  assign m01_couplers_to_gpic_1_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_gpic_1_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_gpic_1_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_gpic_1_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_gpic_1_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_gpic_1_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_gpic_1_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_gpic_1_WREADY = M01_AXI_wready;
  m00_couplers_imp_1QA7SGS m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_gpic_1_ARADDR),
        .M_AXI_arprot(m00_couplers_to_gpic_1_ARPROT),
        .M_AXI_arready(m00_couplers_to_gpic_1_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_gpic_1_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_gpic_1_AWADDR),
        .M_AXI_awprot(m00_couplers_to_gpic_1_AWPROT),
        .M_AXI_awready(m00_couplers_to_gpic_1_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_gpic_1_AWVALID),
        .M_AXI_bready(m00_couplers_to_gpic_1_BREADY),
        .M_AXI_bresp(m00_couplers_to_gpic_1_BRESP),
        .M_AXI_bvalid(m00_couplers_to_gpic_1_BVALID),
        .M_AXI_rdata(m00_couplers_to_gpic_1_RDATA),
        .M_AXI_rready(m00_couplers_to_gpic_1_RREADY),
        .M_AXI_rresp(m00_couplers_to_gpic_1_RRESP),
        .M_AXI_rvalid(m00_couplers_to_gpic_1_RVALID),
        .M_AXI_wdata(m00_couplers_to_gpic_1_WDATA),
        .M_AXI_wready(m00_couplers_to_gpic_1_WREADY),
        .M_AXI_wstrb(m00_couplers_to_gpic_1_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_gpic_1_WVALID),
        .S_ACLK(gpic_1_ACLK_net),
        .S_ARESETN(gpic_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_STJT0F m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_gpic_1_ARADDR),
        .M_AXI_arprot(m01_couplers_to_gpic_1_ARPROT),
        .M_AXI_arready(m01_couplers_to_gpic_1_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_gpic_1_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_gpic_1_AWADDR),
        .M_AXI_awprot(m01_couplers_to_gpic_1_AWPROT),
        .M_AXI_awready(m01_couplers_to_gpic_1_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_gpic_1_AWVALID),
        .M_AXI_bready(m01_couplers_to_gpic_1_BREADY),
        .M_AXI_bresp(m01_couplers_to_gpic_1_BRESP),
        .M_AXI_bvalid(m01_couplers_to_gpic_1_BVALID),
        .M_AXI_rdata(m01_couplers_to_gpic_1_RDATA),
        .M_AXI_rready(m01_couplers_to_gpic_1_RREADY),
        .M_AXI_rresp(m01_couplers_to_gpic_1_RRESP),
        .M_AXI_rvalid(m01_couplers_to_gpic_1_RVALID),
        .M_AXI_wdata(m01_couplers_to_gpic_1_WDATA),
        .M_AXI_wready(m01_couplers_to_gpic_1_WREADY),
        .M_AXI_wstrb(m01_couplers_to_gpic_1_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_gpic_1_WVALID),
        .S_ACLK(gpic_1_ACLK_net),
        .S_ARESETN(gpic_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  s00_couplers_imp_SNLDTS s00_couplers
       (.M_ACLK(gpic_1_ACLK_net),
        .M_ARESETN(gpic_1_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(gpic_1_to_s00_couplers_ARADDR),
        .S_AXI_arburst(gpic_1_to_s00_couplers_ARBURST),
        .S_AXI_arcache(gpic_1_to_s00_couplers_ARCACHE),
        .S_AXI_arid(gpic_1_to_s00_couplers_ARID),
        .S_AXI_arlen(gpic_1_to_s00_couplers_ARLEN),
        .S_AXI_arlock(gpic_1_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(gpic_1_to_s00_couplers_ARPROT),
        .S_AXI_arqos(gpic_1_to_s00_couplers_ARQOS),
        .S_AXI_arready(gpic_1_to_s00_couplers_ARREADY),
        .S_AXI_arsize(gpic_1_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(gpic_1_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(gpic_1_to_s00_couplers_AWADDR),
        .S_AXI_awburst(gpic_1_to_s00_couplers_AWBURST),
        .S_AXI_awcache(gpic_1_to_s00_couplers_AWCACHE),
        .S_AXI_awid(gpic_1_to_s00_couplers_AWID),
        .S_AXI_awlen(gpic_1_to_s00_couplers_AWLEN),
        .S_AXI_awlock(gpic_1_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(gpic_1_to_s00_couplers_AWPROT),
        .S_AXI_awqos(gpic_1_to_s00_couplers_AWQOS),
        .S_AXI_awready(gpic_1_to_s00_couplers_AWREADY),
        .S_AXI_awsize(gpic_1_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(gpic_1_to_s00_couplers_AWVALID),
        .S_AXI_bid(gpic_1_to_s00_couplers_BID),
        .S_AXI_bready(gpic_1_to_s00_couplers_BREADY),
        .S_AXI_bresp(gpic_1_to_s00_couplers_BRESP),
        .S_AXI_bvalid(gpic_1_to_s00_couplers_BVALID),
        .S_AXI_rdata(gpic_1_to_s00_couplers_RDATA),
        .S_AXI_rid(gpic_1_to_s00_couplers_RID),
        .S_AXI_rlast(gpic_1_to_s00_couplers_RLAST),
        .S_AXI_rready(gpic_1_to_s00_couplers_RREADY),
        .S_AXI_rresp(gpic_1_to_s00_couplers_RRESP),
        .S_AXI_rvalid(gpic_1_to_s00_couplers_RVALID),
        .S_AXI_wdata(gpic_1_to_s00_couplers_WDATA),
        .S_AXI_wlast(gpic_1_to_s00_couplers_WLAST),
        .S_AXI_wready(gpic_1_to_s00_couplers_WREADY),
        .S_AXI_wstrb(gpic_1_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(gpic_1_to_s00_couplers_WVALID));
  sys_top_xbar_12 xbar
       (.aclk(gpic_1_ACLK_net),
        .aresetn(gpic_1_ARESETN_net),
        .m_axi_araddr({xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module sys_top_gpic_1_1
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire gpic_0_sub_ACLK_net;
  wire gpic_0_sub_ARESETN_net;
  wire [39:0]gpic_0_sub_to_s00_couplers_ARADDR;
  wire [2:0]gpic_0_sub_to_s00_couplers_ARPROT;
  wire gpic_0_sub_to_s00_couplers_ARREADY;
  wire gpic_0_sub_to_s00_couplers_ARVALID;
  wire [39:0]gpic_0_sub_to_s00_couplers_AWADDR;
  wire [2:0]gpic_0_sub_to_s00_couplers_AWPROT;
  wire gpic_0_sub_to_s00_couplers_AWREADY;
  wire gpic_0_sub_to_s00_couplers_AWVALID;
  wire gpic_0_sub_to_s00_couplers_BREADY;
  wire [1:0]gpic_0_sub_to_s00_couplers_BRESP;
  wire gpic_0_sub_to_s00_couplers_BVALID;
  wire [31:0]gpic_0_sub_to_s00_couplers_RDATA;
  wire gpic_0_sub_to_s00_couplers_RREADY;
  wire [1:0]gpic_0_sub_to_s00_couplers_RRESP;
  wire gpic_0_sub_to_s00_couplers_RVALID;
  wire [31:0]gpic_0_sub_to_s00_couplers_WDATA;
  wire gpic_0_sub_to_s00_couplers_WREADY;
  wire [3:0]gpic_0_sub_to_s00_couplers_WSTRB;
  wire gpic_0_sub_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_gpic_0_sub_ARADDR;
  wire [2:0]m00_couplers_to_gpic_0_sub_ARPROT;
  wire m00_couplers_to_gpic_0_sub_ARREADY;
  wire m00_couplers_to_gpic_0_sub_ARVALID;
  wire [31:0]m00_couplers_to_gpic_0_sub_AWADDR;
  wire [2:0]m00_couplers_to_gpic_0_sub_AWPROT;
  wire m00_couplers_to_gpic_0_sub_AWREADY;
  wire m00_couplers_to_gpic_0_sub_AWVALID;
  wire m00_couplers_to_gpic_0_sub_BREADY;
  wire [1:0]m00_couplers_to_gpic_0_sub_BRESP;
  wire m00_couplers_to_gpic_0_sub_BVALID;
  wire [31:0]m00_couplers_to_gpic_0_sub_RDATA;
  wire m00_couplers_to_gpic_0_sub_RREADY;
  wire [1:0]m00_couplers_to_gpic_0_sub_RRESP;
  wire m00_couplers_to_gpic_0_sub_RVALID;
  wire [31:0]m00_couplers_to_gpic_0_sub_WDATA;
  wire m00_couplers_to_gpic_0_sub_WREADY;
  wire [3:0]m00_couplers_to_gpic_0_sub_WSTRB;
  wire m00_couplers_to_gpic_0_sub_WVALID;
  wire [31:0]m01_couplers_to_gpic_0_sub_ARADDR;
  wire [2:0]m01_couplers_to_gpic_0_sub_ARPROT;
  wire m01_couplers_to_gpic_0_sub_ARREADY;
  wire m01_couplers_to_gpic_0_sub_ARVALID;
  wire [31:0]m01_couplers_to_gpic_0_sub_AWADDR;
  wire [2:0]m01_couplers_to_gpic_0_sub_AWPROT;
  wire m01_couplers_to_gpic_0_sub_AWREADY;
  wire m01_couplers_to_gpic_0_sub_AWVALID;
  wire m01_couplers_to_gpic_0_sub_BREADY;
  wire [1:0]m01_couplers_to_gpic_0_sub_BRESP;
  wire m01_couplers_to_gpic_0_sub_BVALID;
  wire [31:0]m01_couplers_to_gpic_0_sub_RDATA;
  wire m01_couplers_to_gpic_0_sub_RREADY;
  wire [1:0]m01_couplers_to_gpic_0_sub_RRESP;
  wire m01_couplers_to_gpic_0_sub_RVALID;
  wire [31:0]m01_couplers_to_gpic_0_sub_WDATA;
  wire m01_couplers_to_gpic_0_sub_WREADY;
  wire [3:0]m01_couplers_to_gpic_0_sub_WSTRB;
  wire m01_couplers_to_gpic_0_sub_WVALID;
  wire [39:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [39:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [39:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [39:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [79:40]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [79:40]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_gpic_0_sub_ARADDR;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_gpic_0_sub_ARPROT;
  assign M00_AXI_arvalid = m00_couplers_to_gpic_0_sub_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_gpic_0_sub_AWADDR;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_gpic_0_sub_AWPROT;
  assign M00_AXI_awvalid = m00_couplers_to_gpic_0_sub_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_gpic_0_sub_BREADY;
  assign M00_AXI_rready = m00_couplers_to_gpic_0_sub_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_gpic_0_sub_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_gpic_0_sub_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_gpic_0_sub_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_gpic_0_sub_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_gpic_0_sub_ARPROT;
  assign M01_AXI_arvalid = m01_couplers_to_gpic_0_sub_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_gpic_0_sub_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_gpic_0_sub_AWPROT;
  assign M01_AXI_awvalid = m01_couplers_to_gpic_0_sub_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_gpic_0_sub_BREADY;
  assign M01_AXI_rready = m01_couplers_to_gpic_0_sub_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_gpic_0_sub_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_gpic_0_sub_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_gpic_0_sub_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = gpic_0_sub_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = gpic_0_sub_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = gpic_0_sub_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = gpic_0_sub_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = gpic_0_sub_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = gpic_0_sub_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = gpic_0_sub_to_s00_couplers_RVALID;
  assign S00_AXI_wready = gpic_0_sub_to_s00_couplers_WREADY;
  assign gpic_0_sub_ACLK_net = ACLK;
  assign gpic_0_sub_ARESETN_net = ARESETN;
  assign gpic_0_sub_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign gpic_0_sub_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign gpic_0_sub_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign gpic_0_sub_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign gpic_0_sub_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign gpic_0_sub_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign gpic_0_sub_to_s00_couplers_BREADY = S00_AXI_bready;
  assign gpic_0_sub_to_s00_couplers_RREADY = S00_AXI_rready;
  assign gpic_0_sub_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign gpic_0_sub_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign gpic_0_sub_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_gpic_0_sub_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_gpic_0_sub_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_gpic_0_sub_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_gpic_0_sub_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_gpic_0_sub_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_gpic_0_sub_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_gpic_0_sub_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_gpic_0_sub_WREADY = M00_AXI_wready;
  assign m01_couplers_to_gpic_0_sub_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_gpic_0_sub_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_gpic_0_sub_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_gpic_0_sub_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_gpic_0_sub_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_gpic_0_sub_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_gpic_0_sub_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_gpic_0_sub_WREADY = M01_AXI_wready;
  m00_couplers_imp_1NWYGJS m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_gpic_0_sub_ARADDR),
        .M_AXI_arprot(m00_couplers_to_gpic_0_sub_ARPROT),
        .M_AXI_arready(m00_couplers_to_gpic_0_sub_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_gpic_0_sub_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_gpic_0_sub_AWADDR),
        .M_AXI_awprot(m00_couplers_to_gpic_0_sub_AWPROT),
        .M_AXI_awready(m00_couplers_to_gpic_0_sub_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_gpic_0_sub_AWVALID),
        .M_AXI_bready(m00_couplers_to_gpic_0_sub_BREADY),
        .M_AXI_bresp(m00_couplers_to_gpic_0_sub_BRESP),
        .M_AXI_bvalid(m00_couplers_to_gpic_0_sub_BVALID),
        .M_AXI_rdata(m00_couplers_to_gpic_0_sub_RDATA),
        .M_AXI_rready(m00_couplers_to_gpic_0_sub_RREADY),
        .M_AXI_rresp(m00_couplers_to_gpic_0_sub_RRESP),
        .M_AXI_rvalid(m00_couplers_to_gpic_0_sub_RVALID),
        .M_AXI_wdata(m00_couplers_to_gpic_0_sub_WDATA),
        .M_AXI_wready(m00_couplers_to_gpic_0_sub_WREADY),
        .M_AXI_wstrb(m00_couplers_to_gpic_0_sub_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_gpic_0_sub_WVALID),
        .S_ACLK(gpic_0_sub_ACLK_net),
        .S_ARESETN(gpic_0_sub_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_MAHD6Z m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_gpic_0_sub_ARADDR),
        .M_AXI_arprot(m01_couplers_to_gpic_0_sub_ARPROT),
        .M_AXI_arready(m01_couplers_to_gpic_0_sub_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_gpic_0_sub_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_gpic_0_sub_AWADDR),
        .M_AXI_awprot(m01_couplers_to_gpic_0_sub_AWPROT),
        .M_AXI_awready(m01_couplers_to_gpic_0_sub_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_gpic_0_sub_AWVALID),
        .M_AXI_bready(m01_couplers_to_gpic_0_sub_BREADY),
        .M_AXI_bresp(m01_couplers_to_gpic_0_sub_BRESP),
        .M_AXI_bvalid(m01_couplers_to_gpic_0_sub_BVALID),
        .M_AXI_rdata(m01_couplers_to_gpic_0_sub_RDATA),
        .M_AXI_rready(m01_couplers_to_gpic_0_sub_RREADY),
        .M_AXI_rresp(m01_couplers_to_gpic_0_sub_RRESP),
        .M_AXI_rvalid(m01_couplers_to_gpic_0_sub_RVALID),
        .M_AXI_wdata(m01_couplers_to_gpic_0_sub_WDATA),
        .M_AXI_wready(m01_couplers_to_gpic_0_sub_WREADY),
        .M_AXI_wstrb(m01_couplers_to_gpic_0_sub_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_gpic_0_sub_WVALID),
        .S_ACLK(gpic_0_sub_ACLK_net),
        .S_ARESETN(gpic_0_sub_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  s00_couplers_imp_MF6RX0 s00_couplers
       (.M_ACLK(gpic_0_sub_ACLK_net),
        .M_ARESETN(gpic_0_sub_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(gpic_0_sub_to_s00_couplers_ARADDR),
        .S_AXI_arprot(gpic_0_sub_to_s00_couplers_ARPROT),
        .S_AXI_arready(gpic_0_sub_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(gpic_0_sub_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(gpic_0_sub_to_s00_couplers_AWADDR),
        .S_AXI_awprot(gpic_0_sub_to_s00_couplers_AWPROT),
        .S_AXI_awready(gpic_0_sub_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(gpic_0_sub_to_s00_couplers_AWVALID),
        .S_AXI_bready(gpic_0_sub_to_s00_couplers_BREADY),
        .S_AXI_bresp(gpic_0_sub_to_s00_couplers_BRESP),
        .S_AXI_bvalid(gpic_0_sub_to_s00_couplers_BVALID),
        .S_AXI_rdata(gpic_0_sub_to_s00_couplers_RDATA),
        .S_AXI_rready(gpic_0_sub_to_s00_couplers_RREADY),
        .S_AXI_rresp(gpic_0_sub_to_s00_couplers_RRESP),
        .S_AXI_rvalid(gpic_0_sub_to_s00_couplers_RVALID),
        .S_AXI_wdata(gpic_0_sub_to_s00_couplers_WDATA),
        .S_AXI_wready(gpic_0_sub_to_s00_couplers_WREADY),
        .S_AXI_wstrb(gpic_0_sub_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(gpic_0_sub_to_s00_couplers_WVALID));
  sys_top_xbar_10 xbar
       (.aclk(gpic_0_sub_ACLK_net),
        .aresetn(gpic_0_sub_ARESETN_net),
        .m_axi_araddr({xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module sys_top_hpic_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arlen,
    S01_AXI_arprot,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awlen,
    S01_AXI_awprot,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid,
    S02_ACLK,
    S02_ARESETN,
    S02_AXI_araddr,
    S02_AXI_arburst,
    S02_AXI_arcache,
    S02_AXI_arlen,
    S02_AXI_arprot,
    S02_AXI_arready,
    S02_AXI_arsize,
    S02_AXI_arvalid,
    S02_AXI_awaddr,
    S02_AXI_awburst,
    S02_AXI_awcache,
    S02_AXI_awlen,
    S02_AXI_awprot,
    S02_AXI_awready,
    S02_AXI_awsize,
    S02_AXI_awvalid,
    S02_AXI_bready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_rdata,
    S02_AXI_rlast,
    S02_AXI_rready,
    S02_AXI_rresp,
    S02_AXI_rvalid,
    S02_AXI_wdata,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wvalid,
    S03_ACLK,
    S03_ARESETN,
    S03_AXI_araddr,
    S03_AXI_arburst,
    S03_AXI_arcache,
    S03_AXI_arlen,
    S03_AXI_arprot,
    S03_AXI_arready,
    S03_AXI_arsize,
    S03_AXI_arvalid,
    S03_AXI_awaddr,
    S03_AXI_awburst,
    S03_AXI_awcache,
    S03_AXI_awlen,
    S03_AXI_awprot,
    S03_AXI_awready,
    S03_AXI_awsize,
    S03_AXI_awvalid,
    S03_AXI_bready,
    S03_AXI_bresp,
    S03_AXI_bvalid,
    S03_AXI_rdata,
    S03_AXI_rlast,
    S03_AXI_rready,
    S03_AXI_rresp,
    S03_AXI_rvalid,
    S03_AXI_wdata,
    S03_AXI_wlast,
    S03_AXI_wready,
    S03_AXI_wstrb,
    S03_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [1:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input [0:0]M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output [0:0]M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [1:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input [0:0]M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output [0:0]M00_AXI_awvalid;
  input [5:0]M00_AXI_bid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [63:0]M00_AXI_rdata;
  input [5:0]M00_AXI_rid;
  input [0:0]M00_AXI_rlast;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [63:0]M00_AXI_wdata;
  output [0:0]M00_AXI_wlast;
  input [0:0]M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [31:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [7:0]S01_AXI_arlen;
  input [2:0]S01_AXI_arprot;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  input [31:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [7:0]S01_AXI_awlen;
  input [2:0]S01_AXI_awprot;
  output S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output [31:0]S01_AXI_rdata;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input [31:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [3:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;
  input S02_ACLK;
  input S02_ARESETN;
  input [31:0]S02_AXI_araddr;
  input [1:0]S02_AXI_arburst;
  input [3:0]S02_AXI_arcache;
  input [7:0]S02_AXI_arlen;
  input [2:0]S02_AXI_arprot;
  output S02_AXI_arready;
  input [2:0]S02_AXI_arsize;
  input S02_AXI_arvalid;
  input [31:0]S02_AXI_awaddr;
  input [1:0]S02_AXI_awburst;
  input [3:0]S02_AXI_awcache;
  input [7:0]S02_AXI_awlen;
  input [2:0]S02_AXI_awprot;
  output S02_AXI_awready;
  input [2:0]S02_AXI_awsize;
  input S02_AXI_awvalid;
  input S02_AXI_bready;
  output [1:0]S02_AXI_bresp;
  output S02_AXI_bvalid;
  output [31:0]S02_AXI_rdata;
  output S02_AXI_rlast;
  input S02_AXI_rready;
  output [1:0]S02_AXI_rresp;
  output S02_AXI_rvalid;
  input [31:0]S02_AXI_wdata;
  input S02_AXI_wlast;
  output S02_AXI_wready;
  input [3:0]S02_AXI_wstrb;
  input S02_AXI_wvalid;
  input S03_ACLK;
  input S03_ARESETN;
  input [31:0]S03_AXI_araddr;
  input [1:0]S03_AXI_arburst;
  input [3:0]S03_AXI_arcache;
  input [7:0]S03_AXI_arlen;
  input [2:0]S03_AXI_arprot;
  output S03_AXI_arready;
  input [2:0]S03_AXI_arsize;
  input S03_AXI_arvalid;
  input [31:0]S03_AXI_awaddr;
  input [1:0]S03_AXI_awburst;
  input [3:0]S03_AXI_awcache;
  input [7:0]S03_AXI_awlen;
  input [2:0]S03_AXI_awprot;
  output S03_AXI_awready;
  input [2:0]S03_AXI_awsize;
  input S03_AXI_awvalid;
  input S03_AXI_bready;
  output [1:0]S03_AXI_bresp;
  output S03_AXI_bvalid;
  output [31:0]S03_AXI_rdata;
  output S03_AXI_rlast;
  input S03_AXI_rready;
  output [1:0]S03_AXI_rresp;
  output S03_AXI_rvalid;
  input [31:0]S03_AXI_wdata;
  input S03_AXI_wlast;
  output S03_AXI_wready;
  input [3:0]S03_AXI_wstrb;
  input S03_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire S01_ACLK_1;
  wire S01_ARESETN_1;
  wire S02_ACLK_1;
  wire S02_ARESETN_1;
  wire S03_ACLK_1;
  wire S03_ARESETN_1;
  wire hpic_0_ACLK_net;
  wire hpic_0_ARESETN_net;
  wire [31:0]hpic_0_to_s00_couplers_ARADDR;
  wire [1:0]hpic_0_to_s00_couplers_ARBURST;
  wire [3:0]hpic_0_to_s00_couplers_ARCACHE;
  wire [7:0]hpic_0_to_s00_couplers_ARLEN;
  wire [2:0]hpic_0_to_s00_couplers_ARPROT;
  wire hpic_0_to_s00_couplers_ARREADY;
  wire [2:0]hpic_0_to_s00_couplers_ARSIZE;
  wire hpic_0_to_s00_couplers_ARVALID;
  wire [31:0]hpic_0_to_s00_couplers_AWADDR;
  wire [1:0]hpic_0_to_s00_couplers_AWBURST;
  wire [3:0]hpic_0_to_s00_couplers_AWCACHE;
  wire [7:0]hpic_0_to_s00_couplers_AWLEN;
  wire [2:0]hpic_0_to_s00_couplers_AWPROT;
  wire hpic_0_to_s00_couplers_AWREADY;
  wire [2:0]hpic_0_to_s00_couplers_AWSIZE;
  wire hpic_0_to_s00_couplers_AWVALID;
  wire hpic_0_to_s00_couplers_BREADY;
  wire [1:0]hpic_0_to_s00_couplers_BRESP;
  wire hpic_0_to_s00_couplers_BVALID;
  wire [31:0]hpic_0_to_s00_couplers_RDATA;
  wire hpic_0_to_s00_couplers_RLAST;
  wire hpic_0_to_s00_couplers_RREADY;
  wire [1:0]hpic_0_to_s00_couplers_RRESP;
  wire hpic_0_to_s00_couplers_RVALID;
  wire [31:0]hpic_0_to_s00_couplers_WDATA;
  wire hpic_0_to_s00_couplers_WLAST;
  wire hpic_0_to_s00_couplers_WREADY;
  wire [3:0]hpic_0_to_s00_couplers_WSTRB;
  wire hpic_0_to_s00_couplers_WVALID;
  wire [31:0]hpic_0_to_s01_couplers_ARADDR;
  wire [1:0]hpic_0_to_s01_couplers_ARBURST;
  wire [3:0]hpic_0_to_s01_couplers_ARCACHE;
  wire [7:0]hpic_0_to_s01_couplers_ARLEN;
  wire [2:0]hpic_0_to_s01_couplers_ARPROT;
  wire hpic_0_to_s01_couplers_ARREADY;
  wire [2:0]hpic_0_to_s01_couplers_ARSIZE;
  wire hpic_0_to_s01_couplers_ARVALID;
  wire [31:0]hpic_0_to_s01_couplers_AWADDR;
  wire [1:0]hpic_0_to_s01_couplers_AWBURST;
  wire [3:0]hpic_0_to_s01_couplers_AWCACHE;
  wire [7:0]hpic_0_to_s01_couplers_AWLEN;
  wire [2:0]hpic_0_to_s01_couplers_AWPROT;
  wire hpic_0_to_s01_couplers_AWREADY;
  wire [2:0]hpic_0_to_s01_couplers_AWSIZE;
  wire hpic_0_to_s01_couplers_AWVALID;
  wire hpic_0_to_s01_couplers_BREADY;
  wire [1:0]hpic_0_to_s01_couplers_BRESP;
  wire hpic_0_to_s01_couplers_BVALID;
  wire [31:0]hpic_0_to_s01_couplers_RDATA;
  wire hpic_0_to_s01_couplers_RLAST;
  wire hpic_0_to_s01_couplers_RREADY;
  wire [1:0]hpic_0_to_s01_couplers_RRESP;
  wire hpic_0_to_s01_couplers_RVALID;
  wire [31:0]hpic_0_to_s01_couplers_WDATA;
  wire hpic_0_to_s01_couplers_WLAST;
  wire hpic_0_to_s01_couplers_WREADY;
  wire [3:0]hpic_0_to_s01_couplers_WSTRB;
  wire hpic_0_to_s01_couplers_WVALID;
  wire [31:0]hpic_0_to_s02_couplers_ARADDR;
  wire [1:0]hpic_0_to_s02_couplers_ARBURST;
  wire [3:0]hpic_0_to_s02_couplers_ARCACHE;
  wire [7:0]hpic_0_to_s02_couplers_ARLEN;
  wire [2:0]hpic_0_to_s02_couplers_ARPROT;
  wire hpic_0_to_s02_couplers_ARREADY;
  wire [2:0]hpic_0_to_s02_couplers_ARSIZE;
  wire hpic_0_to_s02_couplers_ARVALID;
  wire [31:0]hpic_0_to_s02_couplers_AWADDR;
  wire [1:0]hpic_0_to_s02_couplers_AWBURST;
  wire [3:0]hpic_0_to_s02_couplers_AWCACHE;
  wire [7:0]hpic_0_to_s02_couplers_AWLEN;
  wire [2:0]hpic_0_to_s02_couplers_AWPROT;
  wire hpic_0_to_s02_couplers_AWREADY;
  wire [2:0]hpic_0_to_s02_couplers_AWSIZE;
  wire hpic_0_to_s02_couplers_AWVALID;
  wire hpic_0_to_s02_couplers_BREADY;
  wire [1:0]hpic_0_to_s02_couplers_BRESP;
  wire hpic_0_to_s02_couplers_BVALID;
  wire [31:0]hpic_0_to_s02_couplers_RDATA;
  wire hpic_0_to_s02_couplers_RLAST;
  wire hpic_0_to_s02_couplers_RREADY;
  wire [1:0]hpic_0_to_s02_couplers_RRESP;
  wire hpic_0_to_s02_couplers_RVALID;
  wire [31:0]hpic_0_to_s02_couplers_WDATA;
  wire hpic_0_to_s02_couplers_WLAST;
  wire hpic_0_to_s02_couplers_WREADY;
  wire [3:0]hpic_0_to_s02_couplers_WSTRB;
  wire hpic_0_to_s02_couplers_WVALID;
  wire [31:0]hpic_0_to_s03_couplers_ARADDR;
  wire [1:0]hpic_0_to_s03_couplers_ARBURST;
  wire [3:0]hpic_0_to_s03_couplers_ARCACHE;
  wire [7:0]hpic_0_to_s03_couplers_ARLEN;
  wire [2:0]hpic_0_to_s03_couplers_ARPROT;
  wire hpic_0_to_s03_couplers_ARREADY;
  wire [2:0]hpic_0_to_s03_couplers_ARSIZE;
  wire hpic_0_to_s03_couplers_ARVALID;
  wire [31:0]hpic_0_to_s03_couplers_AWADDR;
  wire [1:0]hpic_0_to_s03_couplers_AWBURST;
  wire [3:0]hpic_0_to_s03_couplers_AWCACHE;
  wire [7:0]hpic_0_to_s03_couplers_AWLEN;
  wire [2:0]hpic_0_to_s03_couplers_AWPROT;
  wire hpic_0_to_s03_couplers_AWREADY;
  wire [2:0]hpic_0_to_s03_couplers_AWSIZE;
  wire hpic_0_to_s03_couplers_AWVALID;
  wire hpic_0_to_s03_couplers_BREADY;
  wire [1:0]hpic_0_to_s03_couplers_BRESP;
  wire hpic_0_to_s03_couplers_BVALID;
  wire [31:0]hpic_0_to_s03_couplers_RDATA;
  wire hpic_0_to_s03_couplers_RLAST;
  wire hpic_0_to_s03_couplers_RREADY;
  wire [1:0]hpic_0_to_s03_couplers_RRESP;
  wire hpic_0_to_s03_couplers_RVALID;
  wire [31:0]hpic_0_to_s03_couplers_WDATA;
  wire hpic_0_to_s03_couplers_WLAST;
  wire hpic_0_to_s03_couplers_WREADY;
  wire [3:0]hpic_0_to_s03_couplers_WSTRB;
  wire hpic_0_to_s03_couplers_WVALID;
  wire [31:0]m00_couplers_to_hpic_0_ARADDR;
  wire [1:0]m00_couplers_to_hpic_0_ARBURST;
  wire [3:0]m00_couplers_to_hpic_0_ARCACHE;
  wire [1:0]m00_couplers_to_hpic_0_ARID;
  wire [7:0]m00_couplers_to_hpic_0_ARLEN;
  wire [0:0]m00_couplers_to_hpic_0_ARLOCK;
  wire [2:0]m00_couplers_to_hpic_0_ARPROT;
  wire [3:0]m00_couplers_to_hpic_0_ARQOS;
  wire [0:0]m00_couplers_to_hpic_0_ARREADY;
  wire [2:0]m00_couplers_to_hpic_0_ARSIZE;
  wire [0:0]m00_couplers_to_hpic_0_ARVALID;
  wire [31:0]m00_couplers_to_hpic_0_AWADDR;
  wire [1:0]m00_couplers_to_hpic_0_AWBURST;
  wire [3:0]m00_couplers_to_hpic_0_AWCACHE;
  wire [1:0]m00_couplers_to_hpic_0_AWID;
  wire [7:0]m00_couplers_to_hpic_0_AWLEN;
  wire [0:0]m00_couplers_to_hpic_0_AWLOCK;
  wire [2:0]m00_couplers_to_hpic_0_AWPROT;
  wire [3:0]m00_couplers_to_hpic_0_AWQOS;
  wire [0:0]m00_couplers_to_hpic_0_AWREADY;
  wire [2:0]m00_couplers_to_hpic_0_AWSIZE;
  wire [0:0]m00_couplers_to_hpic_0_AWVALID;
  wire [5:0]m00_couplers_to_hpic_0_BID;
  wire [0:0]m00_couplers_to_hpic_0_BREADY;
  wire [1:0]m00_couplers_to_hpic_0_BRESP;
  wire [0:0]m00_couplers_to_hpic_0_BVALID;
  wire [63:0]m00_couplers_to_hpic_0_RDATA;
  wire [5:0]m00_couplers_to_hpic_0_RID;
  wire [0:0]m00_couplers_to_hpic_0_RLAST;
  wire [0:0]m00_couplers_to_hpic_0_RREADY;
  wire [1:0]m00_couplers_to_hpic_0_RRESP;
  wire [0:0]m00_couplers_to_hpic_0_RVALID;
  wire [63:0]m00_couplers_to_hpic_0_WDATA;
  wire [0:0]m00_couplers_to_hpic_0_WLAST;
  wire [0:0]m00_couplers_to_hpic_0_WREADY;
  wire [7:0]m00_couplers_to_hpic_0_WSTRB;
  wire [0:0]m00_couplers_to_hpic_0_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [63:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [63:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [7:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire s01_couplers_to_xbar_ARVALID;
  wire [31:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [0:0]s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire s01_couplers_to_xbar_AWVALID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [127:64]s01_couplers_to_xbar_RDATA;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [63:0]s01_couplers_to_xbar_WDATA;
  wire s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [7:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [31:0]s02_couplers_to_xbar_ARADDR;
  wire [1:0]s02_couplers_to_xbar_ARBURST;
  wire [3:0]s02_couplers_to_xbar_ARCACHE;
  wire [7:0]s02_couplers_to_xbar_ARLEN;
  wire [0:0]s02_couplers_to_xbar_ARLOCK;
  wire [2:0]s02_couplers_to_xbar_ARPROT;
  wire [3:0]s02_couplers_to_xbar_ARQOS;
  wire [2:2]s02_couplers_to_xbar_ARREADY;
  wire [2:0]s02_couplers_to_xbar_ARSIZE;
  wire s02_couplers_to_xbar_ARVALID;
  wire [31:0]s02_couplers_to_xbar_AWADDR;
  wire [1:0]s02_couplers_to_xbar_AWBURST;
  wire [3:0]s02_couplers_to_xbar_AWCACHE;
  wire [7:0]s02_couplers_to_xbar_AWLEN;
  wire [0:0]s02_couplers_to_xbar_AWLOCK;
  wire [2:0]s02_couplers_to_xbar_AWPROT;
  wire [3:0]s02_couplers_to_xbar_AWQOS;
  wire [2:2]s02_couplers_to_xbar_AWREADY;
  wire [2:0]s02_couplers_to_xbar_AWSIZE;
  wire s02_couplers_to_xbar_AWVALID;
  wire s02_couplers_to_xbar_BREADY;
  wire [5:4]s02_couplers_to_xbar_BRESP;
  wire [2:2]s02_couplers_to_xbar_BVALID;
  wire [191:128]s02_couplers_to_xbar_RDATA;
  wire [2:2]s02_couplers_to_xbar_RLAST;
  wire s02_couplers_to_xbar_RREADY;
  wire [5:4]s02_couplers_to_xbar_RRESP;
  wire [2:2]s02_couplers_to_xbar_RVALID;
  wire [63:0]s02_couplers_to_xbar_WDATA;
  wire s02_couplers_to_xbar_WLAST;
  wire [2:2]s02_couplers_to_xbar_WREADY;
  wire [7:0]s02_couplers_to_xbar_WSTRB;
  wire s02_couplers_to_xbar_WVALID;
  wire [31:0]s03_couplers_to_xbar_ARADDR;
  wire [1:0]s03_couplers_to_xbar_ARBURST;
  wire [3:0]s03_couplers_to_xbar_ARCACHE;
  wire [7:0]s03_couplers_to_xbar_ARLEN;
  wire [0:0]s03_couplers_to_xbar_ARLOCK;
  wire [2:0]s03_couplers_to_xbar_ARPROT;
  wire [3:0]s03_couplers_to_xbar_ARQOS;
  wire [3:3]s03_couplers_to_xbar_ARREADY;
  wire [2:0]s03_couplers_to_xbar_ARSIZE;
  wire s03_couplers_to_xbar_ARVALID;
  wire [31:0]s03_couplers_to_xbar_AWADDR;
  wire [1:0]s03_couplers_to_xbar_AWBURST;
  wire [3:0]s03_couplers_to_xbar_AWCACHE;
  wire [7:0]s03_couplers_to_xbar_AWLEN;
  wire [0:0]s03_couplers_to_xbar_AWLOCK;
  wire [2:0]s03_couplers_to_xbar_AWPROT;
  wire [3:0]s03_couplers_to_xbar_AWQOS;
  wire [3:3]s03_couplers_to_xbar_AWREADY;
  wire [2:0]s03_couplers_to_xbar_AWSIZE;
  wire s03_couplers_to_xbar_AWVALID;
  wire s03_couplers_to_xbar_BREADY;
  wire [7:6]s03_couplers_to_xbar_BRESP;
  wire [3:3]s03_couplers_to_xbar_BVALID;
  wire [255:192]s03_couplers_to_xbar_RDATA;
  wire [3:3]s03_couplers_to_xbar_RLAST;
  wire s03_couplers_to_xbar_RREADY;
  wire [7:6]s03_couplers_to_xbar_RRESP;
  wire [3:3]s03_couplers_to_xbar_RVALID;
  wire [63:0]s03_couplers_to_xbar_WDATA;
  wire s03_couplers_to_xbar_WLAST;
  wire [3:3]s03_couplers_to_xbar_WREADY;
  wire [7:0]s03_couplers_to_xbar_WSTRB;
  wire s03_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [1:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [1:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [5:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [63:0]xbar_to_m00_couplers_RDATA;
  wire [5:0]xbar_to_m00_couplers_RID;
  wire [0:0]xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [63:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [7:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_hpic_0_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_hpic_0_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_hpic_0_ARCACHE;
  assign M00_AXI_arid[1:0] = m00_couplers_to_hpic_0_ARID;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_hpic_0_ARLEN;
  assign M00_AXI_arlock[0] = m00_couplers_to_hpic_0_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_hpic_0_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_hpic_0_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_hpic_0_ARSIZE;
  assign M00_AXI_arvalid[0] = m00_couplers_to_hpic_0_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_hpic_0_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_hpic_0_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_hpic_0_AWCACHE;
  assign M00_AXI_awid[1:0] = m00_couplers_to_hpic_0_AWID;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_hpic_0_AWLEN;
  assign M00_AXI_awlock[0] = m00_couplers_to_hpic_0_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_hpic_0_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_hpic_0_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_hpic_0_AWSIZE;
  assign M00_AXI_awvalid[0] = m00_couplers_to_hpic_0_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_hpic_0_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_hpic_0_RREADY;
  assign M00_AXI_wdata[63:0] = m00_couplers_to_hpic_0_WDATA;
  assign M00_AXI_wlast[0] = m00_couplers_to_hpic_0_WLAST;
  assign M00_AXI_wstrb[7:0] = m00_couplers_to_hpic_0_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_hpic_0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = hpic_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = hpic_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = hpic_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = hpic_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = hpic_0_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = hpic_0_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = hpic_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = hpic_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready = hpic_0_to_s00_couplers_WREADY;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN;
  assign S01_AXI_arready = hpic_0_to_s01_couplers_ARREADY;
  assign S01_AXI_awready = hpic_0_to_s01_couplers_AWREADY;
  assign S01_AXI_bresp[1:0] = hpic_0_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid = hpic_0_to_s01_couplers_BVALID;
  assign S01_AXI_rdata[31:0] = hpic_0_to_s01_couplers_RDATA;
  assign S01_AXI_rlast = hpic_0_to_s01_couplers_RLAST;
  assign S01_AXI_rresp[1:0] = hpic_0_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid = hpic_0_to_s01_couplers_RVALID;
  assign S01_AXI_wready = hpic_0_to_s01_couplers_WREADY;
  assign S02_ACLK_1 = S02_ACLK;
  assign S02_ARESETN_1 = S02_ARESETN;
  assign S02_AXI_arready = hpic_0_to_s02_couplers_ARREADY;
  assign S02_AXI_awready = hpic_0_to_s02_couplers_AWREADY;
  assign S02_AXI_bresp[1:0] = hpic_0_to_s02_couplers_BRESP;
  assign S02_AXI_bvalid = hpic_0_to_s02_couplers_BVALID;
  assign S02_AXI_rdata[31:0] = hpic_0_to_s02_couplers_RDATA;
  assign S02_AXI_rlast = hpic_0_to_s02_couplers_RLAST;
  assign S02_AXI_rresp[1:0] = hpic_0_to_s02_couplers_RRESP;
  assign S02_AXI_rvalid = hpic_0_to_s02_couplers_RVALID;
  assign S02_AXI_wready = hpic_0_to_s02_couplers_WREADY;
  assign S03_ACLK_1 = S03_ACLK;
  assign S03_ARESETN_1 = S03_ARESETN;
  assign S03_AXI_arready = hpic_0_to_s03_couplers_ARREADY;
  assign S03_AXI_awready = hpic_0_to_s03_couplers_AWREADY;
  assign S03_AXI_bresp[1:0] = hpic_0_to_s03_couplers_BRESP;
  assign S03_AXI_bvalid = hpic_0_to_s03_couplers_BVALID;
  assign S03_AXI_rdata[31:0] = hpic_0_to_s03_couplers_RDATA;
  assign S03_AXI_rlast = hpic_0_to_s03_couplers_RLAST;
  assign S03_AXI_rresp[1:0] = hpic_0_to_s03_couplers_RRESP;
  assign S03_AXI_rvalid = hpic_0_to_s03_couplers_RVALID;
  assign S03_AXI_wready = hpic_0_to_s03_couplers_WREADY;
  assign hpic_0_ACLK_net = ACLK;
  assign hpic_0_ARESETN_net = ARESETN;
  assign hpic_0_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign hpic_0_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign hpic_0_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign hpic_0_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign hpic_0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign hpic_0_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign hpic_0_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign hpic_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign hpic_0_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign hpic_0_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign hpic_0_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign hpic_0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign hpic_0_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign hpic_0_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign hpic_0_to_s00_couplers_BREADY = S00_AXI_bready;
  assign hpic_0_to_s00_couplers_RREADY = S00_AXI_rready;
  assign hpic_0_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign hpic_0_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign hpic_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign hpic_0_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign hpic_0_to_s01_couplers_ARADDR = S01_AXI_araddr[31:0];
  assign hpic_0_to_s01_couplers_ARBURST = S01_AXI_arburst[1:0];
  assign hpic_0_to_s01_couplers_ARCACHE = S01_AXI_arcache[3:0];
  assign hpic_0_to_s01_couplers_ARLEN = S01_AXI_arlen[7:0];
  assign hpic_0_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign hpic_0_to_s01_couplers_ARSIZE = S01_AXI_arsize[2:0];
  assign hpic_0_to_s01_couplers_ARVALID = S01_AXI_arvalid;
  assign hpic_0_to_s01_couplers_AWADDR = S01_AXI_awaddr[31:0];
  assign hpic_0_to_s01_couplers_AWBURST = S01_AXI_awburst[1:0];
  assign hpic_0_to_s01_couplers_AWCACHE = S01_AXI_awcache[3:0];
  assign hpic_0_to_s01_couplers_AWLEN = S01_AXI_awlen[7:0];
  assign hpic_0_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign hpic_0_to_s01_couplers_AWSIZE = S01_AXI_awsize[2:0];
  assign hpic_0_to_s01_couplers_AWVALID = S01_AXI_awvalid;
  assign hpic_0_to_s01_couplers_BREADY = S01_AXI_bready;
  assign hpic_0_to_s01_couplers_RREADY = S01_AXI_rready;
  assign hpic_0_to_s01_couplers_WDATA = S01_AXI_wdata[31:0];
  assign hpic_0_to_s01_couplers_WLAST = S01_AXI_wlast;
  assign hpic_0_to_s01_couplers_WSTRB = S01_AXI_wstrb[3:0];
  assign hpic_0_to_s01_couplers_WVALID = S01_AXI_wvalid;
  assign hpic_0_to_s02_couplers_ARADDR = S02_AXI_araddr[31:0];
  assign hpic_0_to_s02_couplers_ARBURST = S02_AXI_arburst[1:0];
  assign hpic_0_to_s02_couplers_ARCACHE = S02_AXI_arcache[3:0];
  assign hpic_0_to_s02_couplers_ARLEN = S02_AXI_arlen[7:0];
  assign hpic_0_to_s02_couplers_ARPROT = S02_AXI_arprot[2:0];
  assign hpic_0_to_s02_couplers_ARSIZE = S02_AXI_arsize[2:0];
  assign hpic_0_to_s02_couplers_ARVALID = S02_AXI_arvalid;
  assign hpic_0_to_s02_couplers_AWADDR = S02_AXI_awaddr[31:0];
  assign hpic_0_to_s02_couplers_AWBURST = S02_AXI_awburst[1:0];
  assign hpic_0_to_s02_couplers_AWCACHE = S02_AXI_awcache[3:0];
  assign hpic_0_to_s02_couplers_AWLEN = S02_AXI_awlen[7:0];
  assign hpic_0_to_s02_couplers_AWPROT = S02_AXI_awprot[2:0];
  assign hpic_0_to_s02_couplers_AWSIZE = S02_AXI_awsize[2:0];
  assign hpic_0_to_s02_couplers_AWVALID = S02_AXI_awvalid;
  assign hpic_0_to_s02_couplers_BREADY = S02_AXI_bready;
  assign hpic_0_to_s02_couplers_RREADY = S02_AXI_rready;
  assign hpic_0_to_s02_couplers_WDATA = S02_AXI_wdata[31:0];
  assign hpic_0_to_s02_couplers_WLAST = S02_AXI_wlast;
  assign hpic_0_to_s02_couplers_WSTRB = S02_AXI_wstrb[3:0];
  assign hpic_0_to_s02_couplers_WVALID = S02_AXI_wvalid;
  assign hpic_0_to_s03_couplers_ARADDR = S03_AXI_araddr[31:0];
  assign hpic_0_to_s03_couplers_ARBURST = S03_AXI_arburst[1:0];
  assign hpic_0_to_s03_couplers_ARCACHE = S03_AXI_arcache[3:0];
  assign hpic_0_to_s03_couplers_ARLEN = S03_AXI_arlen[7:0];
  assign hpic_0_to_s03_couplers_ARPROT = S03_AXI_arprot[2:0];
  assign hpic_0_to_s03_couplers_ARSIZE = S03_AXI_arsize[2:0];
  assign hpic_0_to_s03_couplers_ARVALID = S03_AXI_arvalid;
  assign hpic_0_to_s03_couplers_AWADDR = S03_AXI_awaddr[31:0];
  assign hpic_0_to_s03_couplers_AWBURST = S03_AXI_awburst[1:0];
  assign hpic_0_to_s03_couplers_AWCACHE = S03_AXI_awcache[3:0];
  assign hpic_0_to_s03_couplers_AWLEN = S03_AXI_awlen[7:0];
  assign hpic_0_to_s03_couplers_AWPROT = S03_AXI_awprot[2:0];
  assign hpic_0_to_s03_couplers_AWSIZE = S03_AXI_awsize[2:0];
  assign hpic_0_to_s03_couplers_AWVALID = S03_AXI_awvalid;
  assign hpic_0_to_s03_couplers_BREADY = S03_AXI_bready;
  assign hpic_0_to_s03_couplers_RREADY = S03_AXI_rready;
  assign hpic_0_to_s03_couplers_WDATA = S03_AXI_wdata[31:0];
  assign hpic_0_to_s03_couplers_WLAST = S03_AXI_wlast;
  assign hpic_0_to_s03_couplers_WSTRB = S03_AXI_wstrb[3:0];
  assign hpic_0_to_s03_couplers_WVALID = S03_AXI_wvalid;
  assign m00_couplers_to_hpic_0_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_hpic_0_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_hpic_0_BID = M00_AXI_bid[5:0];
  assign m00_couplers_to_hpic_0_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_hpic_0_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_hpic_0_RDATA = M00_AXI_rdata[63:0];
  assign m00_couplers_to_hpic_0_RID = M00_AXI_rid[5:0];
  assign m00_couplers_to_hpic_0_RLAST = M00_AXI_rlast[0];
  assign m00_couplers_to_hpic_0_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_hpic_0_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_hpic_0_WREADY = M00_AXI_wready[0];
  m00_couplers_imp_1V84RMG m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_hpic_0_ARADDR),
        .M_AXI_arburst(m00_couplers_to_hpic_0_ARBURST),
        .M_AXI_arcache(m00_couplers_to_hpic_0_ARCACHE),
        .M_AXI_arid(m00_couplers_to_hpic_0_ARID),
        .M_AXI_arlen(m00_couplers_to_hpic_0_ARLEN),
        .M_AXI_arlock(m00_couplers_to_hpic_0_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_hpic_0_ARPROT),
        .M_AXI_arqos(m00_couplers_to_hpic_0_ARQOS),
        .M_AXI_arready(m00_couplers_to_hpic_0_ARREADY),
        .M_AXI_arsize(m00_couplers_to_hpic_0_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_hpic_0_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_hpic_0_AWADDR),
        .M_AXI_awburst(m00_couplers_to_hpic_0_AWBURST),
        .M_AXI_awcache(m00_couplers_to_hpic_0_AWCACHE),
        .M_AXI_awid(m00_couplers_to_hpic_0_AWID),
        .M_AXI_awlen(m00_couplers_to_hpic_0_AWLEN),
        .M_AXI_awlock(m00_couplers_to_hpic_0_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_hpic_0_AWPROT),
        .M_AXI_awqos(m00_couplers_to_hpic_0_AWQOS),
        .M_AXI_awready(m00_couplers_to_hpic_0_AWREADY),
        .M_AXI_awsize(m00_couplers_to_hpic_0_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_hpic_0_AWVALID),
        .M_AXI_bid(m00_couplers_to_hpic_0_BID),
        .M_AXI_bready(m00_couplers_to_hpic_0_BREADY),
        .M_AXI_bresp(m00_couplers_to_hpic_0_BRESP),
        .M_AXI_bvalid(m00_couplers_to_hpic_0_BVALID),
        .M_AXI_rdata(m00_couplers_to_hpic_0_RDATA),
        .M_AXI_rid(m00_couplers_to_hpic_0_RID),
        .M_AXI_rlast(m00_couplers_to_hpic_0_RLAST),
        .M_AXI_rready(m00_couplers_to_hpic_0_RREADY),
        .M_AXI_rresp(m00_couplers_to_hpic_0_RRESP),
        .M_AXI_rvalid(m00_couplers_to_hpic_0_RVALID),
        .M_AXI_wdata(m00_couplers_to_hpic_0_WDATA),
        .M_AXI_wlast(m00_couplers_to_hpic_0_WLAST),
        .M_AXI_wready(m00_couplers_to_hpic_0_WREADY),
        .M_AXI_wstrb(m00_couplers_to_hpic_0_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_hpic_0_WVALID),
        .S_ACLK(hpic_0_ACLK_net),
        .S_ARESETN(hpic_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_WLAVYC s00_couplers
       (.M_ACLK(hpic_0_ACLK_net),
        .M_ARESETN(hpic_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(hpic_0_to_s00_couplers_ARADDR),
        .S_AXI_arburst(hpic_0_to_s00_couplers_ARBURST),
        .S_AXI_arcache(hpic_0_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(hpic_0_to_s00_couplers_ARLEN),
        .S_AXI_arprot(hpic_0_to_s00_couplers_ARPROT),
        .S_AXI_arready(hpic_0_to_s00_couplers_ARREADY),
        .S_AXI_arsize(hpic_0_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(hpic_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(hpic_0_to_s00_couplers_AWADDR),
        .S_AXI_awburst(hpic_0_to_s00_couplers_AWBURST),
        .S_AXI_awcache(hpic_0_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(hpic_0_to_s00_couplers_AWLEN),
        .S_AXI_awprot(hpic_0_to_s00_couplers_AWPROT),
        .S_AXI_awready(hpic_0_to_s00_couplers_AWREADY),
        .S_AXI_awsize(hpic_0_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(hpic_0_to_s00_couplers_AWVALID),
        .S_AXI_bready(hpic_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(hpic_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(hpic_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(hpic_0_to_s00_couplers_RDATA),
        .S_AXI_rlast(hpic_0_to_s00_couplers_RLAST),
        .S_AXI_rready(hpic_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(hpic_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(hpic_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(hpic_0_to_s00_couplers_WDATA),
        .S_AXI_wlast(hpic_0_to_s00_couplers_WLAST),
        .S_AXI_wready(hpic_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(hpic_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(hpic_0_to_s00_couplers_WVALID));
  s01_couplers_imp_1VDEY9Z s01_couplers
       (.M_ACLK(hpic_0_ACLK_net),
        .M_ARESETN(hpic_0_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s01_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s01_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_araddr(hpic_0_to_s01_couplers_ARADDR),
        .S_AXI_arburst(hpic_0_to_s01_couplers_ARBURST),
        .S_AXI_arcache(hpic_0_to_s01_couplers_ARCACHE),
        .S_AXI_arlen(hpic_0_to_s01_couplers_ARLEN),
        .S_AXI_arprot(hpic_0_to_s01_couplers_ARPROT),
        .S_AXI_arready(hpic_0_to_s01_couplers_ARREADY),
        .S_AXI_arsize(hpic_0_to_s01_couplers_ARSIZE),
        .S_AXI_arvalid(hpic_0_to_s01_couplers_ARVALID),
        .S_AXI_awaddr(hpic_0_to_s01_couplers_AWADDR),
        .S_AXI_awburst(hpic_0_to_s01_couplers_AWBURST),
        .S_AXI_awcache(hpic_0_to_s01_couplers_AWCACHE),
        .S_AXI_awlen(hpic_0_to_s01_couplers_AWLEN),
        .S_AXI_awprot(hpic_0_to_s01_couplers_AWPROT),
        .S_AXI_awready(hpic_0_to_s01_couplers_AWREADY),
        .S_AXI_awsize(hpic_0_to_s01_couplers_AWSIZE),
        .S_AXI_awvalid(hpic_0_to_s01_couplers_AWVALID),
        .S_AXI_bready(hpic_0_to_s01_couplers_BREADY),
        .S_AXI_bresp(hpic_0_to_s01_couplers_BRESP),
        .S_AXI_bvalid(hpic_0_to_s01_couplers_BVALID),
        .S_AXI_rdata(hpic_0_to_s01_couplers_RDATA),
        .S_AXI_rlast(hpic_0_to_s01_couplers_RLAST),
        .S_AXI_rready(hpic_0_to_s01_couplers_RREADY),
        .S_AXI_rresp(hpic_0_to_s01_couplers_RRESP),
        .S_AXI_rvalid(hpic_0_to_s01_couplers_RVALID),
        .S_AXI_wdata(hpic_0_to_s01_couplers_WDATA),
        .S_AXI_wlast(hpic_0_to_s01_couplers_WLAST),
        .S_AXI_wready(hpic_0_to_s01_couplers_WREADY),
        .S_AXI_wstrb(hpic_0_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(hpic_0_to_s01_couplers_WVALID));
  s02_couplers_imp_18R3TZ7 s02_couplers
       (.M_ACLK(hpic_0_ACLK_net),
        .M_ARESETN(hpic_0_ARESETN_net),
        .M_AXI_araddr(s02_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s02_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s02_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s02_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s02_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s02_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s02_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s02_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s02_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s02_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s02_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s02_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s02_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s02_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s02_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s02_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s02_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s02_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s02_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s02_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s02_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s02_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s02_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s02_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s02_couplers_to_xbar_RLAST),
        .M_AXI_rready(s02_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s02_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s02_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s02_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s02_couplers_to_xbar_WLAST),
        .M_AXI_wready(s02_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s02_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s02_couplers_to_xbar_WVALID),
        .S_ACLK(S02_ACLK_1),
        .S_ARESETN(S02_ARESETN_1),
        .S_AXI_araddr(hpic_0_to_s02_couplers_ARADDR),
        .S_AXI_arburst(hpic_0_to_s02_couplers_ARBURST),
        .S_AXI_arcache(hpic_0_to_s02_couplers_ARCACHE),
        .S_AXI_arlen(hpic_0_to_s02_couplers_ARLEN),
        .S_AXI_arprot(hpic_0_to_s02_couplers_ARPROT),
        .S_AXI_arready(hpic_0_to_s02_couplers_ARREADY),
        .S_AXI_arsize(hpic_0_to_s02_couplers_ARSIZE),
        .S_AXI_arvalid(hpic_0_to_s02_couplers_ARVALID),
        .S_AXI_awaddr(hpic_0_to_s02_couplers_AWADDR),
        .S_AXI_awburst(hpic_0_to_s02_couplers_AWBURST),
        .S_AXI_awcache(hpic_0_to_s02_couplers_AWCACHE),
        .S_AXI_awlen(hpic_0_to_s02_couplers_AWLEN),
        .S_AXI_awprot(hpic_0_to_s02_couplers_AWPROT),
        .S_AXI_awready(hpic_0_to_s02_couplers_AWREADY),
        .S_AXI_awsize(hpic_0_to_s02_couplers_AWSIZE),
        .S_AXI_awvalid(hpic_0_to_s02_couplers_AWVALID),
        .S_AXI_bready(hpic_0_to_s02_couplers_BREADY),
        .S_AXI_bresp(hpic_0_to_s02_couplers_BRESP),
        .S_AXI_bvalid(hpic_0_to_s02_couplers_BVALID),
        .S_AXI_rdata(hpic_0_to_s02_couplers_RDATA),
        .S_AXI_rlast(hpic_0_to_s02_couplers_RLAST),
        .S_AXI_rready(hpic_0_to_s02_couplers_RREADY),
        .S_AXI_rresp(hpic_0_to_s02_couplers_RRESP),
        .S_AXI_rvalid(hpic_0_to_s02_couplers_RVALID),
        .S_AXI_wdata(hpic_0_to_s02_couplers_WDATA),
        .S_AXI_wlast(hpic_0_to_s02_couplers_WLAST),
        .S_AXI_wready(hpic_0_to_s02_couplers_WREADY),
        .S_AXI_wstrb(hpic_0_to_s02_couplers_WSTRB),
        .S_AXI_wvalid(hpic_0_to_s02_couplers_WVALID));
  s03_couplers_imp_ASSBSW s03_couplers
       (.M_ACLK(hpic_0_ACLK_net),
        .M_ARESETN(hpic_0_ARESETN_net),
        .M_AXI_araddr(s03_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s03_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s03_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s03_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s03_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s03_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s03_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s03_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s03_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s03_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s03_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s03_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s03_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s03_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s03_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s03_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s03_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s03_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s03_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s03_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s03_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s03_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s03_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s03_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s03_couplers_to_xbar_RLAST),
        .M_AXI_rready(s03_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s03_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s03_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s03_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s03_couplers_to_xbar_WLAST),
        .M_AXI_wready(s03_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s03_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s03_couplers_to_xbar_WVALID),
        .S_ACLK(S03_ACLK_1),
        .S_ARESETN(S03_ARESETN_1),
        .S_AXI_araddr(hpic_0_to_s03_couplers_ARADDR),
        .S_AXI_arburst(hpic_0_to_s03_couplers_ARBURST),
        .S_AXI_arcache(hpic_0_to_s03_couplers_ARCACHE),
        .S_AXI_arlen(hpic_0_to_s03_couplers_ARLEN),
        .S_AXI_arprot(hpic_0_to_s03_couplers_ARPROT),
        .S_AXI_arready(hpic_0_to_s03_couplers_ARREADY),
        .S_AXI_arsize(hpic_0_to_s03_couplers_ARSIZE),
        .S_AXI_arvalid(hpic_0_to_s03_couplers_ARVALID),
        .S_AXI_awaddr(hpic_0_to_s03_couplers_AWADDR),
        .S_AXI_awburst(hpic_0_to_s03_couplers_AWBURST),
        .S_AXI_awcache(hpic_0_to_s03_couplers_AWCACHE),
        .S_AXI_awlen(hpic_0_to_s03_couplers_AWLEN),
        .S_AXI_awprot(hpic_0_to_s03_couplers_AWPROT),
        .S_AXI_awready(hpic_0_to_s03_couplers_AWREADY),
        .S_AXI_awsize(hpic_0_to_s03_couplers_AWSIZE),
        .S_AXI_awvalid(hpic_0_to_s03_couplers_AWVALID),
        .S_AXI_bready(hpic_0_to_s03_couplers_BREADY),
        .S_AXI_bresp(hpic_0_to_s03_couplers_BRESP),
        .S_AXI_bvalid(hpic_0_to_s03_couplers_BVALID),
        .S_AXI_rdata(hpic_0_to_s03_couplers_RDATA),
        .S_AXI_rlast(hpic_0_to_s03_couplers_RLAST),
        .S_AXI_rready(hpic_0_to_s03_couplers_RREADY),
        .S_AXI_rresp(hpic_0_to_s03_couplers_RRESP),
        .S_AXI_rvalid(hpic_0_to_s03_couplers_RVALID),
        .S_AXI_wdata(hpic_0_to_s03_couplers_WDATA),
        .S_AXI_wlast(hpic_0_to_s03_couplers_WLAST),
        .S_AXI_wready(hpic_0_to_s03_couplers_WREADY),
        .S_AXI_wstrb(hpic_0_to_s03_couplers_WSTRB),
        .S_AXI_wvalid(hpic_0_to_s03_couplers_WVALID));
  sys_top_xbar_11 xbar
       (.aclk(hpic_0_ACLK_net),
        .aresetn(hpic_0_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID[1:0]),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID[1:0]),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({s03_couplers_to_xbar_ARADDR,s02_couplers_to_xbar_ARADDR,s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({s03_couplers_to_xbar_ARBURST,s02_couplers_to_xbar_ARBURST,s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({s03_couplers_to_xbar_ARCACHE,s02_couplers_to_xbar_ARCACHE,s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({s03_couplers_to_xbar_ARLEN,s02_couplers_to_xbar_ARLEN,s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({s03_couplers_to_xbar_ARLOCK,s02_couplers_to_xbar_ARLOCK,s01_couplers_to_xbar_ARLOCK,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({s03_couplers_to_xbar_ARPROT,s02_couplers_to_xbar_ARPROT,s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({s03_couplers_to_xbar_ARQOS,s02_couplers_to_xbar_ARQOS,s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s03_couplers_to_xbar_ARREADY,s02_couplers_to_xbar_ARREADY,s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({s03_couplers_to_xbar_ARSIZE,s02_couplers_to_xbar_ARSIZE,s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({s03_couplers_to_xbar_ARVALID,s02_couplers_to_xbar_ARVALID,s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s03_couplers_to_xbar_AWADDR,s02_couplers_to_xbar_AWADDR,s01_couplers_to_xbar_AWADDR,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({s03_couplers_to_xbar_AWBURST,s02_couplers_to_xbar_AWBURST,s01_couplers_to_xbar_AWBURST,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({s03_couplers_to_xbar_AWCACHE,s02_couplers_to_xbar_AWCACHE,s01_couplers_to_xbar_AWCACHE,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({s03_couplers_to_xbar_AWLEN,s02_couplers_to_xbar_AWLEN,s01_couplers_to_xbar_AWLEN,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({s03_couplers_to_xbar_AWLOCK,s02_couplers_to_xbar_AWLOCK,s01_couplers_to_xbar_AWLOCK,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({s03_couplers_to_xbar_AWPROT,s02_couplers_to_xbar_AWPROT,s01_couplers_to_xbar_AWPROT,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({s03_couplers_to_xbar_AWQOS,s02_couplers_to_xbar_AWQOS,s01_couplers_to_xbar_AWQOS,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s03_couplers_to_xbar_AWREADY,s02_couplers_to_xbar_AWREADY,s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s03_couplers_to_xbar_AWSIZE,s02_couplers_to_xbar_AWSIZE,s01_couplers_to_xbar_AWSIZE,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awvalid({s03_couplers_to_xbar_AWVALID,s02_couplers_to_xbar_AWVALID,s01_couplers_to_xbar_AWVALID,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bready({s03_couplers_to_xbar_BREADY,s02_couplers_to_xbar_BREADY,s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s03_couplers_to_xbar_BRESP,s02_couplers_to_xbar_BRESP,s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s03_couplers_to_xbar_BVALID,s02_couplers_to_xbar_BVALID,s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s03_couplers_to_xbar_RDATA,s02_couplers_to_xbar_RDATA,s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rlast({s03_couplers_to_xbar_RLAST,s02_couplers_to_xbar_RLAST,s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({s03_couplers_to_xbar_RREADY,s02_couplers_to_xbar_RREADY,s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s03_couplers_to_xbar_RRESP,s02_couplers_to_xbar_RRESP,s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s03_couplers_to_xbar_RVALID,s02_couplers_to_xbar_RVALID,s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s03_couplers_to_xbar_WDATA,s02_couplers_to_xbar_WDATA,s01_couplers_to_xbar_WDATA,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({s03_couplers_to_xbar_WLAST,s02_couplers_to_xbar_WLAST,s01_couplers_to_xbar_WLAST,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s03_couplers_to_xbar_WREADY,s02_couplers_to_xbar_WREADY,s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s03_couplers_to_xbar_WSTRB,s02_couplers_to_xbar_WSTRB,s01_couplers_to_xbar_WSTRB,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s03_couplers_to_xbar_WVALID,s02_couplers_to_xbar_WVALID,s01_couplers_to_xbar_WVALID,s00_couplers_to_xbar_WVALID}));
endmodule
