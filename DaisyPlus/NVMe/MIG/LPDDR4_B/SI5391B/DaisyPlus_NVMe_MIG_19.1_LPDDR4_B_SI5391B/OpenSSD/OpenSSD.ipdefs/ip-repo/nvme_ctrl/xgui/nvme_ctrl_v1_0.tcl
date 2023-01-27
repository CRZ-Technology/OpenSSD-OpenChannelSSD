# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_M0_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M0_AXI_ARUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M0_AXI_AWUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M0_AXI_BUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M0_AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M0_AXI_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M0_AXI_RUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_M0_AXI_WUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_PCIE_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S0_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S0_AXI_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S0_AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S0_AXI_HIGHADDR" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_M0_AXI_ADDR_WIDTH { PARAM_VALUE.C_M0_AXI_ADDR_WIDTH } {
	# Procedure called to update C_M0_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M0_AXI_ADDR_WIDTH { PARAM_VALUE.C_M0_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_M0_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M0_AXI_ARUSER_WIDTH { PARAM_VALUE.C_M0_AXI_ARUSER_WIDTH } {
	# Procedure called to update C_M0_AXI_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M0_AXI_ARUSER_WIDTH { PARAM_VALUE.C_M0_AXI_ARUSER_WIDTH } {
	# Procedure called to validate C_M0_AXI_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M0_AXI_AWUSER_WIDTH { PARAM_VALUE.C_M0_AXI_AWUSER_WIDTH } {
	# Procedure called to update C_M0_AXI_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M0_AXI_AWUSER_WIDTH { PARAM_VALUE.C_M0_AXI_AWUSER_WIDTH } {
	# Procedure called to validate C_M0_AXI_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M0_AXI_BUSER_WIDTH { PARAM_VALUE.C_M0_AXI_BUSER_WIDTH } {
	# Procedure called to update C_M0_AXI_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M0_AXI_BUSER_WIDTH { PARAM_VALUE.C_M0_AXI_BUSER_WIDTH } {
	# Procedure called to validate C_M0_AXI_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M0_AXI_DATA_WIDTH { PARAM_VALUE.C_M0_AXI_DATA_WIDTH } {
	# Procedure called to update C_M0_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M0_AXI_DATA_WIDTH { PARAM_VALUE.C_M0_AXI_DATA_WIDTH } {
	# Procedure called to validate C_M0_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M0_AXI_ID_WIDTH { PARAM_VALUE.C_M0_AXI_ID_WIDTH } {
	# Procedure called to update C_M0_AXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M0_AXI_ID_WIDTH { PARAM_VALUE.C_M0_AXI_ID_WIDTH } {
	# Procedure called to validate C_M0_AXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M0_AXI_RUSER_WIDTH { PARAM_VALUE.C_M0_AXI_RUSER_WIDTH } {
	# Procedure called to update C_M0_AXI_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M0_AXI_RUSER_WIDTH { PARAM_VALUE.C_M0_AXI_RUSER_WIDTH } {
	# Procedure called to validate C_M0_AXI_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M0_AXI_WUSER_WIDTH { PARAM_VALUE.C_M0_AXI_WUSER_WIDTH } {
	# Procedure called to update C_M0_AXI_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M0_AXI_WUSER_WIDTH { PARAM_VALUE.C_M0_AXI_WUSER_WIDTH } {
	# Procedure called to validate C_M0_AXI_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_PCIE_DATA_WIDTH { PARAM_VALUE.C_PCIE_DATA_WIDTH } {
	# Procedure called to update C_PCIE_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_PCIE_DATA_WIDTH { PARAM_VALUE.C_PCIE_DATA_WIDTH } {
	# Procedure called to validate C_PCIE_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S0_AXI_ADDR_WIDTH { PARAM_VALUE.C_S0_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S0_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S0_AXI_ADDR_WIDTH { PARAM_VALUE.C_S0_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S0_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S0_AXI_BASEADDR { PARAM_VALUE.C_S0_AXI_BASEADDR } {
	# Procedure called to update C_S0_AXI_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S0_AXI_BASEADDR { PARAM_VALUE.C_S0_AXI_BASEADDR } {
	# Procedure called to validate C_S0_AXI_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_S0_AXI_DATA_WIDTH { PARAM_VALUE.C_S0_AXI_DATA_WIDTH } {
	# Procedure called to update C_S0_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S0_AXI_DATA_WIDTH { PARAM_VALUE.C_S0_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S0_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S0_AXI_HIGHADDR { PARAM_VALUE.C_S0_AXI_HIGHADDR } {
	# Procedure called to update C_S0_AXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S0_AXI_HIGHADDR { PARAM_VALUE.C_S0_AXI_HIGHADDR } {
	# Procedure called to validate C_S0_AXI_HIGHADDR
	return true
}

proc update_PARAM_VALUE.P_SLOT_TAG_WIDTH { PARAM_VALUE.P_SLOT_TAG_WIDTH } {
	# Procedure called to update P_SLOT_TAG_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.P_SLOT_TAG_WIDTH { PARAM_VALUE.P_SLOT_TAG_WIDTH } {
	# Procedure called to validate P_SLOT_TAG_WIDTH
	return true
}

proc update_PARAM_VALUE.P_SLOT_WIDTH { PARAM_VALUE.P_SLOT_WIDTH } {
	# Procedure called to update P_SLOT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.P_SLOT_WIDTH { PARAM_VALUE.P_SLOT_WIDTH } {
	# Procedure called to validate P_SLOT_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_S0_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S0_AXI_ADDR_WIDTH PARAM_VALUE.C_S0_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S0_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S0_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S0_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S0_AXI_DATA_WIDTH PARAM_VALUE.C_S0_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S0_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S0_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S0_AXI_BASEADDR { MODELPARAM_VALUE.C_S0_AXI_BASEADDR PARAM_VALUE.C_S0_AXI_BASEADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S0_AXI_BASEADDR}] ${MODELPARAM_VALUE.C_S0_AXI_BASEADDR}
}

proc update_MODELPARAM_VALUE.C_S0_AXI_HIGHADDR { MODELPARAM_VALUE.C_S0_AXI_HIGHADDR PARAM_VALUE.C_S0_AXI_HIGHADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S0_AXI_HIGHADDR}] ${MODELPARAM_VALUE.C_S0_AXI_HIGHADDR}
}

proc update_MODELPARAM_VALUE.C_M0_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_M0_AXI_ADDR_WIDTH PARAM_VALUE.C_M0_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M0_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M0_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M0_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_M0_AXI_DATA_WIDTH PARAM_VALUE.C_M0_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M0_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M0_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M0_AXI_ID_WIDTH { MODELPARAM_VALUE.C_M0_AXI_ID_WIDTH PARAM_VALUE.C_M0_AXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M0_AXI_ID_WIDTH}] ${MODELPARAM_VALUE.C_M0_AXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M0_AXI_AWUSER_WIDTH { MODELPARAM_VALUE.C_M0_AXI_AWUSER_WIDTH PARAM_VALUE.C_M0_AXI_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M0_AXI_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_M0_AXI_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M0_AXI_WUSER_WIDTH { MODELPARAM_VALUE.C_M0_AXI_WUSER_WIDTH PARAM_VALUE.C_M0_AXI_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M0_AXI_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_M0_AXI_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M0_AXI_BUSER_WIDTH { MODELPARAM_VALUE.C_M0_AXI_BUSER_WIDTH PARAM_VALUE.C_M0_AXI_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M0_AXI_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_M0_AXI_BUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M0_AXI_ARUSER_WIDTH { MODELPARAM_VALUE.C_M0_AXI_ARUSER_WIDTH PARAM_VALUE.C_M0_AXI_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M0_AXI_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M0_AXI_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M0_AXI_RUSER_WIDTH { MODELPARAM_VALUE.C_M0_AXI_RUSER_WIDTH PARAM_VALUE.C_M0_AXI_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M0_AXI_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M0_AXI_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_PCIE_DATA_WIDTH { MODELPARAM_VALUE.C_PCIE_DATA_WIDTH PARAM_VALUE.C_PCIE_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_PCIE_DATA_WIDTH}] ${MODELPARAM_VALUE.C_PCIE_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.PL_LINK_CAP_MAX_LINK_WIDTH { MODELPARAM_VALUE.PL_LINK_CAP_MAX_LINK_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "PL_LINK_CAP_MAX_LINK_WIDTH". Setting updated value from the model parameter.
set_property value 16 ${MODELPARAM_VALUE.PL_LINK_CAP_MAX_LINK_WIDTH}
}

proc update_MODELPARAM_VALUE.AXISTEN_IF_MC_RX_STRADDLE { MODELPARAM_VALUE.AXISTEN_IF_MC_RX_STRADDLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "AXISTEN_IF_MC_RX_STRADDLE". Setting updated value from the model parameter.
set_property value 0 ${MODELPARAM_VALUE.AXISTEN_IF_MC_RX_STRADDLE}
}

proc update_MODELPARAM_VALUE.PL_LINK_CAP_MAX_LINK_SPEED { MODELPARAM_VALUE.PL_LINK_CAP_MAX_LINK_SPEED } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "PL_LINK_CAP_MAX_LINK_SPEED". Setting updated value from the model parameter.
set_property value 4 ${MODELPARAM_VALUE.PL_LINK_CAP_MAX_LINK_SPEED}
}

proc update_MODELPARAM_VALUE.KEEP_WIDTH { MODELPARAM_VALUE.KEEP_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "KEEP_WIDTH". Setting updated value from the model parameter.
set_property value 16 ${MODELPARAM_VALUE.KEEP_WIDTH}
}

proc update_MODELPARAM_VALUE.EXT_PIPE_SIM { MODELPARAM_VALUE.EXT_PIPE_SIM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "EXT_PIPE_SIM". Setting updated value from the model parameter.
set_property value FALSE ${MODELPARAM_VALUE.EXT_PIPE_SIM}
}

proc update_MODELPARAM_VALUE.AXISTEN_IF_CC_ALIGNMENT_MODE { MODELPARAM_VALUE.AXISTEN_IF_CC_ALIGNMENT_MODE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "AXISTEN_IF_CC_ALIGNMENT_MODE". Setting updated value from the model parameter.
set_property value FALSE ${MODELPARAM_VALUE.AXISTEN_IF_CC_ALIGNMENT_MODE}
}

proc update_MODELPARAM_VALUE.AXISTEN_IF_CQ_ALIGNMENT_MODE { MODELPARAM_VALUE.AXISTEN_IF_CQ_ALIGNMENT_MODE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "AXISTEN_IF_CQ_ALIGNMENT_MODE". Setting updated value from the model parameter.
set_property value FALSE ${MODELPARAM_VALUE.AXISTEN_IF_CQ_ALIGNMENT_MODE}
}

proc update_MODELPARAM_VALUE.AXISTEN_IF_RQ_ALIGNMENT_MODE { MODELPARAM_VALUE.AXISTEN_IF_RQ_ALIGNMENT_MODE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "AXISTEN_IF_RQ_ALIGNMENT_MODE". Setting updated value from the model parameter.
set_property value FALSE ${MODELPARAM_VALUE.AXISTEN_IF_RQ_ALIGNMENT_MODE}
}

proc update_MODELPARAM_VALUE.AXISTEN_IF_RC_ALIGNMENT_MODE { MODELPARAM_VALUE.AXISTEN_IF_RC_ALIGNMENT_MODE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "AXISTEN_IF_RC_ALIGNMENT_MODE". Setting updated value from the model parameter.
set_property value FALSE ${MODELPARAM_VALUE.AXISTEN_IF_RC_ALIGNMENT_MODE}
}

proc update_MODELPARAM_VALUE.AXI4_CQ_TUSER_WIDTH { MODELPARAM_VALUE.AXI4_CQ_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "AXI4_CQ_TUSER_WIDTH". Setting updated value from the model parameter.
set_property value 183 ${MODELPARAM_VALUE.AXI4_CQ_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI4_CC_TUSER_WIDTH { MODELPARAM_VALUE.AXI4_CC_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "AXI4_CC_TUSER_WIDTH". Setting updated value from the model parameter.
set_property value 81 ${MODELPARAM_VALUE.AXI4_CC_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI4_RQ_TUSER_WIDTH { MODELPARAM_VALUE.AXI4_RQ_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "AXI4_RQ_TUSER_WIDTH". Setting updated value from the model parameter.
set_property value 137 ${MODELPARAM_VALUE.AXI4_RQ_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI4_RC_TUSER_WIDTH { MODELPARAM_VALUE.AXI4_RC_TUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "AXI4_RC_TUSER_WIDTH". Setting updated value from the model parameter.
set_property value 161 ${MODELPARAM_VALUE.AXI4_RC_TUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.AXISTEN_IF_ENABLE_CLIENT_TAG { MODELPARAM_VALUE.AXISTEN_IF_ENABLE_CLIENT_TAG } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "AXISTEN_IF_ENABLE_CLIENT_TAG". Setting updated value from the model parameter.
set_property value 1 ${MODELPARAM_VALUE.AXISTEN_IF_ENABLE_CLIENT_TAG}
}

proc update_MODELPARAM_VALUE.RQ_AVAIL_TAG_IDX { MODELPARAM_VALUE.RQ_AVAIL_TAG_IDX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "RQ_AVAIL_TAG_IDX". Setting updated value from the model parameter.
set_property value 8 ${MODELPARAM_VALUE.RQ_AVAIL_TAG_IDX}
}

proc update_MODELPARAM_VALUE.RQ_AVAIL_TAG { MODELPARAM_VALUE.RQ_AVAIL_TAG } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "RQ_AVAIL_TAG". Setting updated value from the model parameter.
set_property value 256 ${MODELPARAM_VALUE.RQ_AVAIL_TAG}
}

proc update_MODELPARAM_VALUE.AXISTEN_IF_RQ_PARITY_CHECK { MODELPARAM_VALUE.AXISTEN_IF_RQ_PARITY_CHECK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "AXISTEN_IF_RQ_PARITY_CHECK". Setting updated value from the model parameter.
set_property value 0 ${MODELPARAM_VALUE.AXISTEN_IF_RQ_PARITY_CHECK}
}

proc update_MODELPARAM_VALUE.AXISTEN_IF_CC_PARITY_CHECK { MODELPARAM_VALUE.AXISTEN_IF_CC_PARITY_CHECK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "AXISTEN_IF_CC_PARITY_CHECK". Setting updated value from the model parameter.
set_property value 0 ${MODELPARAM_VALUE.AXISTEN_IF_CC_PARITY_CHECK}
}

proc update_MODELPARAM_VALUE.AXISTEN_IF_RC_PARITY_CHECK { MODELPARAM_VALUE.AXISTEN_IF_RC_PARITY_CHECK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "AXISTEN_IF_RC_PARITY_CHECK". Setting updated value from the model parameter.
set_property value 0 ${MODELPARAM_VALUE.AXISTEN_IF_RC_PARITY_CHECK}
}

proc update_MODELPARAM_VALUE.AXISTEN_IF_CQ_PARITY_CHECK { MODELPARAM_VALUE.AXISTEN_IF_CQ_PARITY_CHECK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "AXISTEN_IF_CQ_PARITY_CHECK". Setting updated value from the model parameter.
set_property value 0 ${MODELPARAM_VALUE.AXISTEN_IF_CQ_PARITY_CHECK}
}

proc update_MODELPARAM_VALUE.AXISTEN_IF_ENABLE_RX_MSG_INTFC { MODELPARAM_VALUE.AXISTEN_IF_ENABLE_RX_MSG_INTFC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "AXISTEN_IF_ENABLE_RX_MSG_INTFC". Setting updated value from the model parameter.
set_property value FALSE ${MODELPARAM_VALUE.AXISTEN_IF_ENABLE_RX_MSG_INTFC}
}

proc update_MODELPARAM_VALUE.AXISTEN_IF_ENABLE_MSG_ROUTE { MODELPARAM_VALUE.AXISTEN_IF_ENABLE_MSG_ROUTE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "AXISTEN_IF_ENABLE_MSG_ROUTE". Setting updated value from the model parameter.
set_property value "101111111111111111" ${MODELPARAM_VALUE.AXISTEN_IF_ENABLE_MSG_ROUTE}
}

proc update_MODELPARAM_VALUE.P_SLOT_TAG_WIDTH { MODELPARAM_VALUE.P_SLOT_TAG_WIDTH PARAM_VALUE.P_SLOT_TAG_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.P_SLOT_TAG_WIDTH}] ${MODELPARAM_VALUE.P_SLOT_TAG_WIDTH}
}

proc update_MODELPARAM_VALUE.P_SLOT_WIDTH { MODELPARAM_VALUE.P_SLOT_WIDTH PARAM_VALUE.P_SLOT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.P_SLOT_WIDTH}] ${MODELPARAM_VALUE.P_SLOT_WIDTH}
}

