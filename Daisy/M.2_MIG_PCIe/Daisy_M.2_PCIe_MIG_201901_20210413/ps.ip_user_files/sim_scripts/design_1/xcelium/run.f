-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_5 -sv \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/zynq_ultra_ps_e_vip_v1_0_5 -sv \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/cac7/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim/design_1_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_rst_ps8_0_99M_0/sim/design_1_rst_ps8_0_99M_0.vhd" \
-endlib
-makelib xcelium_lib/gtwizard_ultrascale_v1_7_6 \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/5767/hdl/gtwizard_ultrascale_v1_7_bit_sync.v" \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/5767/hdl/gtwizard_ultrascale_v1_7_gte4_drp_arb.v" \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/5767/hdl/gtwizard_ultrascale_v1_7_gthe4_delay_powergood.v" \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/5767/hdl/gtwizard_ultrascale_v1_7_gtye4_delay_powergood.v" \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/5767/hdl/gtwizard_ultrascale_v1_7_gthe3_cpll_cal.v" \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/5767/hdl/gtwizard_ultrascale_v1_7_gthe3_cal_freqcnt.v" \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/5767/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal.v" \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/5767/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal_rx.v" \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/5767/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal_tx.v" \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/5767/hdl/gtwizard_ultrascale_v1_7_gthe4_cal_freqcnt.v" \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/5767/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal.v" \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/5767/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal_rx.v" \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/5767/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal_tx.v" \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/5767/hdl/gtwizard_ultrascale_v1_7_gtye4_cal_freqcnt.v" \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/5767/hdl/gtwizard_ultrascale_v1_7_gtwiz_buffbypass_rx.v" \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/5767/hdl/gtwizard_ultrascale_v1_7_gtwiz_buffbypass_tx.v" \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/5767/hdl/gtwizard_ultrascale_v1_7_gtwiz_reset.v" \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/5767/hdl/gtwizard_ultrascale_v1_7_gtwiz_userclk_rx.v" \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/5767/hdl/gtwizard_ultrascale_v1_7_gtwiz_userclk_tx.v" \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/5767/hdl/gtwizard_ultrascale_v1_7_gtwiz_userdata_rx.v" \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/5767/hdl/gtwizard_ultrascale_v1_7_gtwiz_userdata_tx.v" \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/5767/hdl/gtwizard_ultrascale_v1_7_reset_sync.v" \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/5767/hdl/gtwizard_ultrascale_v1_7_reset_inv_sync.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/ip_0/sim/gtwizard_ultrascale_v1_7_gthe4_channel.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/ip_0/sim/design_1_xdma_0_0_pcie4_ip_gt_gthe4_channel_wrapper.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/ip_0/sim/gtwizard_ultrascale_v1_7_gthe4_common.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/ip_0/sim/design_1_xdma_0_0_pcie4_ip_gt_gthe4_common_wrapper.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/ip_0/sim/design_1_xdma_0_0_pcie4_ip_gt_gtwizard_gthe4.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/ip_0/sim/design_1_xdma_0_0_pcie4_ip_gt_gtwizard_top.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/ip_0/sim/design_1_xdma_0_0_pcie4_ip_gt.v" \
-endlib
-makelib xcelium_lib/in_system_ibert_v1_0_9 \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/fae5/hdl/in_system_ibert_v1_0_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/ip_1/sim/design_1_xdma_0_0_pcie4_ip_ibert.v" \
-endlib
-makelib xcelium_lib/jtag_axi \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/5e2c/hdl/jtag_axi_v1_2_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/ip_2/sim/design_1_xdma_0_0_pcie4_ip_jtag.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_gtwizard_top.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_phy_ff_chain.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_phy_pipeline.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_bram_16k_int.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_bram_16k.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_bram_32k.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_bram_4k_int.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_bram_msix.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_bram_rep_int.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_bram_rep.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_bram_tph.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_bram.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_gt_gt_channel.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_gt_gt_common.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_gt_phy_clk.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_gt_phy_rst.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_gt_phy_rxeq.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_gt_phy_txeq.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_sync_cell.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_sync.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_gt_cdr_ctrl_on_eidle.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_gt_receiver_detect_rxterm.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_gt_eyescanreset_drp.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_gt_drp_arbiter.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_gt_phy_wrapper.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_init_ctrl.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_pl_eq.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_vf_decode.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_pipe.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_phy_top.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_seqnum_fifo.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_sys_clk_gen_ps.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_descramble_rx.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_descramble_tx.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_descramble.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_debug_probes.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_debug_axi4l_s.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_debug_wrapper.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/source/design_1_xdma_0_0_pcie4_ip_pcie4_uscale_core_top.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_0/sim/design_1_xdma_0_0_pcie4_ip.v" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_3 \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_1/sim/xdma_v4_1_3_blk_mem_64_reg_be.v" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/ip_2/sim/xdma_v4_1_3_blk_mem_64_noreg_be.v" \
-endlib
-makelib xcelium_lib/xdma_v4_1_3 -sv \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/90ef/hdl/xdma_v4_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_xdma_0_0/xdma_v4_1/hdl/verilog/design_1_xdma_0_0_dma_bram_wrap.sv" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/xdma_v4_1/hdl/verilog/design_1_xdma_0_0_dma_bram_wrap_1024.sv" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/xdma_v4_1/hdl/verilog/design_1_xdma_0_0_core_top.sv" \
  "../../../bd/design_1/ip/design_1_xdma_0_0/sim/design_1_xdma_0_0.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_util_ds_buf_0/util_ds_buf.vhd" \
  "../../../bd/design_1/ip/design_1_util_ds_buf_0/sim/design_1_util_ds_buf_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/ip_0/sim/design_1_xdma_1_0_pcie4_ip_gt_gthe4_channel_wrapper.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/ip_0/sim/design_1_xdma_1_0_pcie4_ip_gt_gthe4_common_wrapper.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/ip_0/sim/design_1_xdma_1_0_pcie4_ip_gt_gtwizard_gthe4.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/ip_0/sim/design_1_xdma_1_0_pcie4_ip_gt_gtwizard_top.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/ip_0/sim/design_1_xdma_1_0_pcie4_ip_gt.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/ip_1/sim/design_1_xdma_1_0_pcie4_ip_ibert.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/ip_2/sim/design_1_xdma_1_0_pcie4_ip_jtag.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_gtwizard_top.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_phy_ff_chain.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_phy_pipeline.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_bram_16k_int.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_bram_16k.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_bram_32k.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_bram_4k_int.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_bram_msix.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_bram_rep_int.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_bram_rep.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_bram_tph.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_bram.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_gt_gt_channel.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_gt_gt_common.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_gt_phy_clk.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_gt_phy_rst.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_gt_phy_rxeq.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_gt_phy_txeq.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_sync_cell.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_sync.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_gt_cdr_ctrl_on_eidle.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_gt_receiver_detect_rxterm.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_gt_eyescanreset_drp.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_gt_drp_arbiter.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_gt_phy_wrapper.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_init_ctrl.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_pl_eq.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_vf_decode.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_pipe.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_phy_top.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_seqnum_fifo.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_sys_clk_gen_ps.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_descramble_rx.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_descramble_tx.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_descramble.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_debug_probes.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_debug_axi4l_s.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_debug_wrapper.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/source/design_1_xdma_1_0_pcie4_ip_pcie4_uscale_core_top.v" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/ip_0/sim/design_1_xdma_1_0_pcie4_ip.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_xdma_1_0/xdma_v4_1/hdl/verilog/design_1_xdma_1_0_dma_bram_wrap.sv" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/xdma_v4_1/hdl/verilog/design_1_xdma_1_0_dma_bram_wrap_1024.sv" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/xdma_v4_1/hdl/verilog/design_1_xdma_1_0_core_top.sv" \
  "../../../bd/design_1/ip/design_1_xdma_1_0/sim/design_1_xdma_1_0.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_util_ds_buf_1_0/sim/design_1_util_ds_buf_1_0.vhd" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_6 \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr0_0.vhd" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_psr_aclk_0.vhd" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_psr_aclk1_0.vhd" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_psr_aclk2_0.vhd" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/sc_util_v1_0_vl_rfs.sv" \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_arsw_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_rsw_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_awsw_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_wsw_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_bsw_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/sim/bd_afc3_s00mmu_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/sim/bd_afc3_s00tr_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/7de4/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_s00sic_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_13/sim/bd_afc3_s00a2s_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_14/sim/bd_afc3_sarn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_15/sim/bd_afc3_srn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_16/sim/bd_afc3_sawn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_17/sim/bd_afc3_swn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_18/sim/bd_afc3_sbn_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_19/sim/bd_afc3_m00s2a_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_20/sim/bd_afc3_m00arn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_21/sim/bd_afc3_m00rn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_22/sim/bd_afc3_m00awn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_23/sim/bd_afc3_m00wn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_24/sim/bd_afc3_m00bn_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../ps.srcs/sources_1/bd/design_1/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_25/sim/bd_afc3_m00e_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_26/sim/bd_afc3_m01s2a_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_27/sim/bd_afc3_m01arn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_28/sim/bd_afc3_m01rn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_29/sim/bd_afc3_m01awn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_30/sim/bd_afc3_m01wn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_31/sim/bd_afc3_m01bn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_32/sim/bd_afc3_m01e_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_33/sim/bd_afc3_m02s2a_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_34/sim/bd_afc3_m02arn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_35/sim/bd_afc3_m02rn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_36/sim/bd_afc3_m02awn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_37/sim/bd_afc3_m02wn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_38/sim/bd_afc3_m02bn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_39/sim/bd_afc3_m02e_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_40/sim/bd_afc3_m03s2a_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_41/sim/bd_afc3_m03arn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_42/sim/bd_afc3_m03rn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_43/sim/bd_afc3_m03awn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_44/sim/bd_afc3_m03wn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_45/sim/bd_afc3_m03bn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_46/sim/bd_afc3_m03e_0.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.v" \
  "../../../bd/design_1/ip/design_1_vio_0_0/sim/design_1_vio_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_util_ds_buf_0_0/sim/design_1_util_ds_buf_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/sim/design_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

