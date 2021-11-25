set_property IDELAY_VALUE 12 [get_cells V2NFC100DDR_4/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/Inst_DQSIDELAY]
set_property IDELAY_VALUE 12 [get_cells V2NFC100DDR_6/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/Inst_DQSIDELAY]


#create_debug_core u_ila_1 ila
#set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_1]
#set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_1]
#set_property C_ADV_TRIGGER false [get_debug_cores u_ila_1]
#set_property C_DATA_DEPTH 8192 [get_debug_cores u_ila_1]
#set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_1]
#set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_1]
#set_property C_TRIGIN_EN false [get_debug_cores u_ila_1]
#set_property C_TRIGOUT_EN false [get_debug_cores u_ila_1]
#set_property port_width 1 [get_debug_ports u_ila_1/clk]
#connect_debug_port u_ila_1/clk [get_nets [list s00_couplers/auto_us_cc_df/m_axi_aclk]]
#set_property port_width 28 [get_debug_ports u_ila_1/probe0]
#connect_debug_port u_ila_1/probe0 [get_nets [list s00_couplers/auto_us_cc_df/m_axi_arready s00_couplers/auto_us_cc_df/m_axi_arvalid s00_couplers/auto_us_cc_df/m_axi_awready s00_couplers/auto_us_cc_df/m_axi_awvalid s00_couplers/auto_us_cc_df/m_axi_rlast s00_couplers/auto_us_cc_df/m_axi_rready s00_couplers/auto_us_cc_df/m_axi_rvalid s00_couplers/auto_us_cc_df/m_axi_wlast s00_couplers/auto_us_cc_df/m_axi_wready s00_couplers/auto_us_cc_df/m_axi_wvalid {s00_couplers/auto_us_cc_df/m_axi_awlen[0]} {s00_couplers/auto_us_cc_df/m_axi_awlen[1]} {s00_couplers/auto_us_cc_df/m_axi_awlen[2]} {s00_couplers/auto_us_cc_df/m_axi_awlen[3]} {s00_couplers/auto_us_cc_df/m_axi_awlen[4]} {s00_couplers/auto_us_cc_df/m_axi_awlen[5]} {s00_couplers/auto_us_cc_df/m_axi_awlen[6]} {s00_couplers/auto_us_cc_df/m_axi_awlen[7]} {s00_couplers/auto_us_cc_df/m_axi_arlen[0]} {s00_couplers/auto_us_cc_df/m_axi_arlen[1]} {s00_couplers/auto_us_cc_df/m_axi_arlen[2]} {s00_couplers/auto_us_cc_df/m_axi_arlen[3]} {s00_couplers/auto_us_cc_df/m_axi_arlen[4]} {s00_couplers/auto_us_cc_df/m_axi_arlen[5]} {s00_couplers/auto_us_cc_df/m_axi_arlen[6]} {s00_couplers/auto_us_cc_df/m_axi_arlen[7]} s00_couplers/auto_us_cc_df/m_axi_bvalid s00_couplers/auto_us_cc_df/m_axi_bready]]
#create_debug_core u_ila_2 ila
#set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_2]
#set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_2]
#set_property C_ADV_TRIGGER false [get_debug_cores u_ila_2]
#set_property C_DATA_DEPTH 8192 [get_debug_cores u_ila_2]
#set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_2]
#set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_2]
#set_property C_TRIGIN_EN false [get_debug_cores u_ila_2]
#set_property C_TRIGOUT_EN false [get_debug_cores u_ila_2]
#set_property port_width 1 [get_debug_ports u_ila_2/clk]
#connect_debug_port u_ila_2/clk [get_nets [list m00_couplers/m00_data_fifo/aclk]]
#set_property port_width 56 [get_debug_ports u_ila_2/probe0]
#connect_debug_port u_ila_2/probe0 [get_nets [list {m00_couplers/m00_data_fifo/m_axi_awlen[0]} {m00_couplers/m00_data_fifo/m_axi_awlen[1]} {m00_couplers/m00_data_fifo/m_axi_awlen[2]} {m00_couplers/m00_data_fifo/m_axi_awlen[3]} {m00_couplers/m00_data_fifo/m_axi_awlen[4]} {m00_couplers/m00_data_fifo/m_axi_awlen[5]} {m00_couplers/m00_data_fifo/m_axi_awlen[6]} {m00_couplers/m00_data_fifo/m_axi_awlen[7]} {m00_couplers/m00_data_fifo/m_axi_arlen[0]} {m00_couplers/m00_data_fifo/m_axi_arlen[1]} {m00_couplers/m00_data_fifo/m_axi_arlen[2]} {m00_couplers/m00_data_fifo/m_axi_arlen[3]} {m00_couplers/m00_data_fifo/m_axi_arlen[4]} {m00_couplers/m00_data_fifo/m_axi_arlen[5]} {m00_couplers/m00_data_fifo/m_axi_arlen[6]} {m00_couplers/m00_data_fifo/m_axi_arlen[7]} m00_couplers/m00_data_fifo/m_axi_arready m00_couplers/m00_data_fifo/m_axi_arvalid m00_couplers/m00_data_fifo/m_axi_awready m00_couplers/m00_data_fifo/m_axi_awvalid m00_couplers/m00_data_fifo/m_axi_rlast m00_couplers/m00_data_fifo/m_axi_rready m00_couplers/m00_data_fifo/m_axi_rvalid m00_couplers/m00_data_fifo/m_axi_wlast m00_couplers/m00_data_fifo/m_axi_wready m00_couplers/m00_data_fifo/m_axi_wvalid {m00_couplers/m00_data_fifo/s_axi_awlen[0]} {m00_couplers/m00_data_fifo/s_axi_awlen[1]} {m00_couplers/m00_data_fifo/s_axi_awlen[2]} {m00_couplers/m00_data_fifo/s_axi_awlen[3]} {m00_couplers/m00_data_fifo/s_axi_awlen[4]} {m00_couplers/m00_data_fifo/s_axi_awlen[5]} {m00_couplers/m00_data_fifo/s_axi_awlen[6]} {m00_couplers/m00_data_fifo/s_axi_awlen[7]} {m00_couplers/m00_data_fifo/s_axi_arlen[0]} {m00_couplers/m00_data_fifo/s_axi_arlen[1]} {m00_couplers/m00_data_fifo/s_axi_arlen[2]} {m00_couplers/m00_data_fifo/s_axi_arlen[3]} {m00_couplers/m00_data_fifo/s_axi_arlen[4]} {m00_couplers/m00_data_fifo/s_axi_arlen[5]} {m00_couplers/m00_data_fifo/s_axi_arlen[6]} {m00_couplers/m00_data_fifo/s_axi_arlen[7]} m00_couplers/m00_data_fifo/s_axi_arready m00_couplers/m00_data_fifo/s_axi_arvalid m00_couplers/m00_data_fifo/s_axi_awready m00_couplers/m00_data_fifo/s_axi_awvalid m00_couplers/m00_data_fifo/s_axi_bready m00_couplers/m00_data_fifo/s_axi_bvalid m00_couplers/m00_data_fifo/s_axi_rlast m00_couplers/m00_data_fifo/s_axi_rready m00_couplers/m00_data_fifo/s_axi_rvalid m00_couplers/m00_data_fifo/s_axi_wlast m00_couplers/m00_data_fifo/s_axi_wready m00_couplers/m00_data_fifo/s_axi_wvalid m00_couplers/m00_data_fifo/m_axi_bready m00_couplers/m00_data_fifo/m_axi_bvalid]]










