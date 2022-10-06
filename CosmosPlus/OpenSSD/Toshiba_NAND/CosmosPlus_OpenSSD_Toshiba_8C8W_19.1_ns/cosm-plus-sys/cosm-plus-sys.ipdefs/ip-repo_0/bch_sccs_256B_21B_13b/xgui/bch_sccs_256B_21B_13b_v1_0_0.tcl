# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"

}

proc update_PARAM_VALUE.BCHDecMulti { PARAM_VALUE.BCHDecMulti } {
	# Procedure called to update BCHDecMulti when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BCHDecMulti { PARAM_VALUE.BCHDecMulti } {
	# Procedure called to validate BCHDecMulti
	return true
}

proc update_PARAM_VALUE.ELPCoefficients { PARAM_VALUE.ELPCoefficients } {
	# Procedure called to update ELPCoefficients when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ELPCoefficients { PARAM_VALUE.ELPCoefficients } {
	# Procedure called to validate ELPCoefficients
	return true
}

proc update_PARAM_VALUE.GaloisFieldDegree { PARAM_VALUE.GaloisFieldDegree } {
	# Procedure called to update GaloisFieldDegree when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GaloisFieldDegree { PARAM_VALUE.GaloisFieldDegree } {
	# Procedure called to validate GaloisFieldDegree
	return true
}

proc update_PARAM_VALUE.MaxErrorCountBits { PARAM_VALUE.MaxErrorCountBits } {
	# Procedure called to update MaxErrorCountBits when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MaxErrorCountBits { PARAM_VALUE.MaxErrorCountBits } {
	# Procedure called to validate MaxErrorCountBits
	return true
}

proc update_PARAM_VALUE.Syndromes { PARAM_VALUE.Syndromes } {
	# Procedure called to update Syndromes when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Syndromes { PARAM_VALUE.Syndromes } {
	# Procedure called to validate Syndromes
	return true
}


proc update_MODELPARAM_VALUE.BCHDecMulti { MODELPARAM_VALUE.BCHDecMulti PARAM_VALUE.BCHDecMulti } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BCHDecMulti}] ${MODELPARAM_VALUE.BCHDecMulti}
}

proc update_MODELPARAM_VALUE.GaloisFieldDegree { MODELPARAM_VALUE.GaloisFieldDegree PARAM_VALUE.GaloisFieldDegree } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GaloisFieldDegree}] ${MODELPARAM_VALUE.GaloisFieldDegree}
}

proc update_MODELPARAM_VALUE.MaxErrorCountBits { MODELPARAM_VALUE.MaxErrorCountBits PARAM_VALUE.MaxErrorCountBits } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MaxErrorCountBits}] ${MODELPARAM_VALUE.MaxErrorCountBits}
}

proc update_MODELPARAM_VALUE.Syndromes { MODELPARAM_VALUE.Syndromes PARAM_VALUE.Syndromes } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Syndromes}] ${MODELPARAM_VALUE.Syndromes}
}

proc update_MODELPARAM_VALUE.ELPCoefficients { MODELPARAM_VALUE.ELPCoefficients PARAM_VALUE.ELPCoefficients } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ELPCoefficients}] ${MODELPARAM_VALUE.ELPCoefficients}
}

