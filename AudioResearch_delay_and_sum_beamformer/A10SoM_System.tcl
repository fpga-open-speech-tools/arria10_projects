# Copyright (C) 2018  Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License 
# Subscription Agreement, the Intel Quartus Prime License Agreement,
# the Intel FPGA IP License Agreement, or other applicable license
# agreement, including, without limitation, that your use is for
# the sole purpose of programming logic devices manufactured by
# Intel and sold by Intel or its authorized distributors.  Please
# refer to the applicable agreement for further details.

# Quartus Prime: Generate Tcl File for Project
# File: A10SoM_System.tcl
# Generated on: Thu Apr 18 13:21:50 2019

# Load Quartus Prime Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "A10SoM_System"]} {
		puts "Project A10SoM_System is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists A10SoM_System]} {
		project_open -revision A10SoM_System A10SoM_System
	} else {
		project_new -revision A10SoM_System A10SoM_System
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}
