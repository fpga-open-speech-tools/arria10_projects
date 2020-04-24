set_global_assignment -entity "pll" -library "lib_pll" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "pll" -library "lib_pll" -name IP_TOOL_VERSION "19.1"
set_global_assignment -entity "pll" -library "lib_pll" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_pll" -name SPD_FILE [file join $::quartus(sip_path) "pll.spd"]
set_global_assignment -library "lib_pll" -name MISC_FILE [file join $::quartus(sip_path) "../pll.qsys"]

set_global_assignment -library "lib_pll" -name MISC_FILE [file join $::quartus(sip_path) "sim/pll.vhd"]
set_global_assignment -library "lib_pll" -name MISC_FILE [file join $::quartus(sip_path) "altera_iopll_191/sim/pll_altera_iopll_191_zrphyuq.vo"]
