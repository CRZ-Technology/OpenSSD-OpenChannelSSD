# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "addr_width" -parent ${Page_0}


}

proc update_PARAM_VALUE.addr_width { PARAM_VALUE.addr_width } {
	# Procedure called to update addr_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.addr_width { PARAM_VALUE.addr_width } {
	# Procedure called to validate addr_width
	return true
}


proc update_MODELPARAM_VALUE.addr_width { MODELPARAM_VALUE.addr_width PARAM_VALUE.addr_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.addr_width}] ${MODELPARAM_VALUE.addr_width}
}

