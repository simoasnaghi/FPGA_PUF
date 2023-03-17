# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CHALLENGE_BITS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ITERATION" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RESPONSE_BITS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ROW_NUMBER" -parent ${Page_0}


}

proc update_PARAM_VALUE.CHALLENGE_BITS { PARAM_VALUE.CHALLENGE_BITS } {
	# Procedure called to update CHALLENGE_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CHALLENGE_BITS { PARAM_VALUE.CHALLENGE_BITS } {
	# Procedure called to validate CHALLENGE_BITS
	return true
}

proc update_PARAM_VALUE.ITERATION { PARAM_VALUE.ITERATION } {
	# Procedure called to update ITERATION when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ITERATION { PARAM_VALUE.ITERATION } {
	# Procedure called to validate ITERATION
	return true
}

proc update_PARAM_VALUE.RESPONSE_BITS { PARAM_VALUE.RESPONSE_BITS } {
	# Procedure called to update RESPONSE_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RESPONSE_BITS { PARAM_VALUE.RESPONSE_BITS } {
	# Procedure called to validate RESPONSE_BITS
	return true
}

proc update_PARAM_VALUE.ROW_NUMBER { PARAM_VALUE.ROW_NUMBER } {
	# Procedure called to update ROW_NUMBER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ROW_NUMBER { PARAM_VALUE.ROW_NUMBER } {
	# Procedure called to validate ROW_NUMBER
	return true
}


proc update_MODELPARAM_VALUE.CHALLENGE_BITS { MODELPARAM_VALUE.CHALLENGE_BITS PARAM_VALUE.CHALLENGE_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CHALLENGE_BITS}] ${MODELPARAM_VALUE.CHALLENGE_BITS}
}

proc update_MODELPARAM_VALUE.RESPONSE_BITS { MODELPARAM_VALUE.RESPONSE_BITS PARAM_VALUE.RESPONSE_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RESPONSE_BITS}] ${MODELPARAM_VALUE.RESPONSE_BITS}
}

proc update_MODELPARAM_VALUE.ROW_NUMBER { MODELPARAM_VALUE.ROW_NUMBER PARAM_VALUE.ROW_NUMBER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ROW_NUMBER}] ${MODELPARAM_VALUE.ROW_NUMBER}
}

proc update_MODELPARAM_VALUE.ITERATION { MODELPARAM_VALUE.ITERATION PARAM_VALUE.ITERATION } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ITERATION}] ${MODELPARAM_VALUE.ITERATION}
}

