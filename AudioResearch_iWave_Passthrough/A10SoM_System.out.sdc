## Generated SDC file "A10SoM_System.out.sdc"

## Copyright (C) 2018  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel FPGA IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Intel and sold by Intel or its authorized distributors.  Please
## refer to the applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Standard Edition"

## DATE    "Wed Sep 16 10:55:02 2020"

##
## DEVICE  "10AS066H2F34I1HG"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {altera_reserved_tck} -period 41.660 -waveform { 0.000 20.830 } [get_ports {altera_reserved_tck}]
create_clock -name {~ALTERA_CLKUSR~} -period 8.000 -waveform { 0.000 4.000 } [get_pins -compatibility_mode {~ALTERA_CLKUSR~~ibuf|o}]
create_clock -name {pio_system|emif_a10_hps_0_ref_clock} -period 3.333 -waveform { 0.000 1.666 } [get_ports {ddr_ref_clk_i}]
create_clock -name {pio_system|emif_0_ref_clock} -period 3.333 -waveform { 0.000 1.666 } [get_ports {clk_200}]
create_clock -name {fpga_clk_i} -period 20.000 -waveform { 0.000 10.000 } [get_ports {fpga_clk_i}]
create_clock -name {FPGA_memory_mem1_dqs[0]_IN} -period 0.832 -waveform { 0.000 0.417 } [get_ports {FPGA_memory_mem1_dqs[0]}]
create_clock -name {FPGA_memory_mem1_dqs[1]_IN} -period 0.832 -waveform { 0.000 0.417 } [get_ports {FPGA_memory_mem1_dqs[1]}]
create_clock -name {FPGA_memory_mem1_dqs[2]_IN} -period 0.832 -waveform { 0.000 0.417 } [get_ports {FPGA_memory_mem1_dqs[2]}]
create_clock -name {FPGA_memory_mem1_dqs[3]_IN} -period 0.832 -waveform { 0.000 0.417 } [get_ports {FPGA_memory_mem1_dqs[3]}]
create_clock -name {hps_memory_mem_dqs[0]_IN} -period 0.832 -waveform { 0.000 0.417 } [get_ports {hps_memory_mem_dqs[0]}]
create_clock -name {hps_memory_mem_dqs[1]_IN} -period 0.832 -waveform { 0.000 0.417 } [get_ports {hps_memory_mem_dqs[1]}]
create_clock -name {hps_memory_mem_dqs[2]_IN} -period 0.832 -waveform { 0.000 0.417 } [get_ports {hps_memory_mem_dqs[2]}]
create_clock -name {hps_memory_mem_dqs[3]_IN} -period 0.832 -waveform { 0.000 0.417 } [get_ports {hps_memory_mem_dqs[3]}]
create_clock -name {hps_memory_mem_dqs[4]_IN} -period 0.832 -waveform { 0.000 0.417 } [get_ports {hps_memory_mem_dqs[4]}]
create_clock -name {AD1939_MCLK} -period 81.380 -waveform { 0.000 40.690 } [get_ports {AD1939_MCLK}]
create_clock -name {FPGA_memory_mem1_dqs[4]_IN} -period 0.832 -waveform { 0.000 0.417 } [get_ports {FPGA_memory_mem1_dqs[4]}]
create_clock -name {FPGA_memory_mem1_dqs[5]_IN} -period 0.832 -waveform { 0.000 0.417 } [get_ports {FPGA_memory_mem1_dqs[5]}]
create_clock -name {FPGA_memory_mem1_dqs[6]_IN} -period 0.832 -waveform { 0.000 0.417 } [get_ports {FPGA_memory_mem1_dqs[6]}]
create_clock -name {FPGA_memory_mem1_dqs[7]_IN} -period 0.832 -waveform { 0.000 0.417 } [get_ports {FPGA_memory_mem1_dqs[7]}]
create_clock -name {hps_spim0_sclk_out} -period 10.000 -waveform { 0.000 5.000 } [get_nodes {*spim_0_clk}]
create_clock -name {hps_i2c_internal} -period 2500.000 -waveform { 0.000 1250.000 } [get_registers {*~l4_sp_clk.reg}]


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {i0|emif_0_vco_clk} -source [get_ports {clk_200}] -multiply_by 4 -master_clock {pio_system|emif_0_ref_clock} [get_nets {i0|emif_0|arch|arch_inst|pll_inst|pll_vcoph[0]}] 
create_generated_clock -name {i0|emif_0_vco_clk_1} -source [get_ports {clk_200}] -multiply_by 4 -master_clock {pio_system|emif_0_ref_clock} [get_nets {i0|emif_0|arch|arch_inst|pll_inst|pll_inst~_Duplicate_1VCOPH0}] 
create_generated_clock -name {i0|emif_0_vco_clk_2} -source [get_ports {clk_200}] -multiply_by 4 -master_clock {pio_system|emif_0_ref_clock} [get_nets {i0|emif_0|arch|arch_inst|pll_inst|pll_inst~_DuplicateVCOPH0}] 
create_generated_clock -name {i0|emif_0_core_usr_clk} -source [get_nets {i0|emif_0|arch|arch_inst|pll_inst|pll_vcoph[0]}] -divide_by 4 -phase 11.250 -master_clock {i0|emif_0_vco_clk} [get_pins {i0|emif_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[1].tile_ctrl_inst|pa_core_clk_out[0]}] 
create_generated_clock -name {i0|emif_0_core_cal_slave_clk} -source [get_nets {i0|emif_0|arch|arch_inst|pll_inst|pll_vcoph[0]}] -divide_by 8 -master_clock {i0|emif_0_vco_clk} [get_pins {i0|emif_0|arch|arch_inst|pll_inst|pll_inst|outclk[3]}] 
create_generated_clock -name {i0|emif_0_core_extra_clk_0} -source [get_nets {i0|emif_0|arch|arch_inst|pll_inst|pll_vcoph[0]}] -divide_by 12 -master_clock {i0|emif_0_vco_clk} [get_pins {i0|emif_0|arch|arch_inst|pll_inst|pll_inst|outclk[5]}] 
create_generated_clock -name {i0|emif_0_phy_clk_0} -source [get_nets {i0|emif_0|arch|arch_inst|pll_inst|pll_vcoph[0]}] -divide_by 2 -phase 22.500 -master_clock {i0|emif_0_vco_clk} [get_nets {i0|emif_0|arch|arch_inst|pll_inst|pll_loaden[0]}] 
create_generated_clock -name {i0|emif_0_phy_clk_1} -source [get_nets {i0|emif_0|arch|arch_inst|pll_inst|pll_inst~_Duplicate_1VCOPH0}] -divide_by 2 -phase 22.500 -master_clock {i0|emif_0_vco_clk_1} [get_nets {i0|emif_0|arch|arch_inst|pll_inst|pll_inst~_Duplicate_1LOADEN0}] 
create_generated_clock -name {i0|emif_0_phy_clk_2} -source [get_nets {i0|emif_0|arch|arch_inst|pll_inst|pll_inst~_DuplicateVCOPH0}] -divide_by 2 -phase 22.500 -master_clock {i0|emif_0_vco_clk_2} [get_nets {i0|emif_0|arch|arch_inst|pll_inst|pll_inst~_DuplicateLOADEN0}] 
create_generated_clock -name {i0|emif_0_phy_clk_l_0} -source [get_nets {i0|emif_0|arch|arch_inst|pll_inst|pll_vcoph[0]}] -divide_by 4 -phase 11.250 -master_clock {i0|emif_0_vco_clk} [get_nets {i0|emif_0|arch|arch_inst|pll_inst|pll_lvds_clk[0]}] 
create_generated_clock -name {i0|emif_0_phy_clk_l_1} -source [get_nets {i0|emif_0|arch|arch_inst|pll_inst|pll_inst~_Duplicate_1VCOPH0}] -divide_by 4 -phase 11.250 -master_clock {i0|emif_0_vco_clk_1} [get_nets {i0|emif_0|arch|arch_inst|pll_inst|pll_inst~_Duplicate_1LVDS_CLK0}] 
create_generated_clock -name {i0|emif_0_phy_clk_l_2} -source [get_nets {i0|emif_0|arch|arch_inst|pll_inst|pll_inst~_DuplicateVCOPH0}] -divide_by 4 -phase 11.250 -master_clock {i0|emif_0_vco_clk_2} [get_nets {i0|emif_0|arch|arch_inst|pll_inst|pll_inst~_DuplicateLVDS_CLK0}] 
create_generated_clock -name {i0|emif_0_wf_clk_0} -source [get_pins {i0|emif_0|arch|arch_inst|pll_inst|pll_inst|vcoph[0]}] -master_clock {i0|emif_0_vco_clk} [get_registers {som_system:i0|som_system_altera_emif_180_brz44ly:emif_0|som_system_altera_emif_arch_nf_180_3nk2okq:arch|som_system_altera_emif_arch_nf_180_3nk2okq_top:arch_inst|altera_emif_arch_nf_io_tiles_wrap:io_tiles_wrap_inst|altera_emif_arch_nf_io_tiles:io_tiles_inst|tile_gen[1].lane_gen[0].lane_inst~out_phy_reg}] 
create_generated_clock -name {i0|emif_0_wf_clk_1} -source [get_pins {i0|emif_0|arch|arch_inst|pll_inst|pll_inst|vcoph[0]}] -master_clock {i0|emif_0_vco_clk} [get_registers {som_system:i0|som_system_altera_emif_180_brz44ly:emif_0|som_system_altera_emif_arch_nf_180_3nk2okq:arch|som_system_altera_emif_arch_nf_180_3nk2okq_top:arch_inst|altera_emif_arch_nf_io_tiles_wrap:io_tiles_wrap_inst|altera_emif_arch_nf_io_tiles:io_tiles_inst|tile_gen[1].lane_gen[2].lane_inst~out_phy_reg}] 
create_generated_clock -name {i0|emif_0_wf_clk_2} -source [get_pins {i0|emif_0|arch|arch_inst|pll_inst|pll_inst|vcoph[0]}] -master_clock {i0|emif_0_vco_clk} [get_registers {som_system:i0|som_system_altera_emif_180_brz44ly:emif_0|som_system_altera_emif_arch_nf_180_3nk2okq:arch|som_system_altera_emif_arch_nf_180_3nk2okq_top:arch_inst|altera_emif_arch_nf_io_tiles_wrap:io_tiles_wrap_inst|altera_emif_arch_nf_io_tiles:io_tiles_inst|tile_gen[1].lane_gen[1].lane_inst~out_phy_reg}] 
create_generated_clock -name {i0|emif_0_wf_clk_3} -source [get_pins {i0|emif_0|arch|arch_inst|pll_inst|pll_inst~_Duplicate_1|vcoph[0]}] -master_clock {i0|emif_0_vco_clk_1} [get_registers {som_system:i0|som_system_altera_emif_180_brz44ly:emif_0|som_system_altera_emif_arch_nf_180_3nk2okq:arch|som_system_altera_emif_arch_nf_180_3nk2okq_top:arch_inst|altera_emif_arch_nf_io_tiles_wrap:io_tiles_wrap_inst|altera_emif_arch_nf_io_tiles:io_tiles_inst|tile_gen[1].lane_gen[3].lane_inst~out_phy_reg}] 
create_generated_clock -name {i0|emif_0_wf_clk_4} -source [get_pins {i0|emif_0|arch|arch_inst|pll_inst|pll_inst~_Duplicate|vcoph[0]}] -master_clock {i0|emif_0_vco_clk_2} [get_registers {som_system:i0|som_system_altera_emif_180_brz44ly:emif_0|som_system_altera_emif_arch_nf_180_3nk2okq:arch|som_system_altera_emif_arch_nf_180_3nk2okq_top:arch_inst|altera_emif_arch_nf_io_tiles_wrap:io_tiles_wrap_inst|altera_emif_arch_nf_io_tiles:io_tiles_inst|tile_gen[0].lane_gen[3].lane_inst~out_phy_reg}] 
create_generated_clock -name {i0|emif_0_wf_clk_5} -source [get_pins {i0|emif_0|arch|arch_inst|pll_inst|pll_inst~_Duplicate_1|vcoph[0]}] -master_clock {i0|emif_0_vco_clk_1} [get_registers {som_system:i0|som_system_altera_emif_180_brz44ly:emif_0|som_system_altera_emif_arch_nf_180_3nk2okq:arch|som_system_altera_emif_arch_nf_180_3nk2okq_top:arch_inst|altera_emif_arch_nf_io_tiles_wrap:io_tiles_wrap_inst|altera_emif_arch_nf_io_tiles:io_tiles_inst|tile_gen[2].lane_gen[0].lane_inst~out_phy_reg}] 
create_generated_clock -name {i0|emif_0_wf_clk_6} -source [get_pins {i0|emif_0|arch|arch_inst|pll_inst|pll_inst~_Duplicate|vcoph[0]}] -master_clock {i0|emif_0_vco_clk_2} [get_registers {som_system:i0|som_system_altera_emif_180_brz44ly:emif_0|som_system_altera_emif_arch_nf_180_3nk2okq:arch|som_system_altera_emif_arch_nf_180_3nk2okq_top:arch_inst|altera_emif_arch_nf_io_tiles_wrap:io_tiles_wrap_inst|altera_emif_arch_nf_io_tiles:io_tiles_inst|tile_gen[0].lane_gen[0].lane_inst~out_phy_reg}] 
create_generated_clock -name {i0|emif_0_wf_clk_7} -source [get_pins {i0|emif_0|arch|arch_inst|pll_inst|pll_inst~_Duplicate|vcoph[0]}] -master_clock {i0|emif_0_vco_clk_2} [get_registers {som_system:i0|som_system_altera_emif_180_brz44ly:emif_0|som_system_altera_emif_arch_nf_180_3nk2okq:arch|som_system_altera_emif_arch_nf_180_3nk2okq_top:arch_inst|altera_emif_arch_nf_io_tiles_wrap:io_tiles_wrap_inst|altera_emif_arch_nf_io_tiles:io_tiles_inst|tile_gen[0].lane_gen[1].lane_inst~out_phy_reg}] 
create_generated_clock -name {i0|emif_0_wf_clk_8} -source [get_pins {i0|emif_0|arch|arch_inst|pll_inst|pll_inst~_Duplicate|vcoph[0]}] -master_clock {i0|emif_0_vco_clk_2} [get_registers {som_system:i0|som_system_altera_emif_180_brz44ly:emif_0|som_system_altera_emif_arch_nf_180_3nk2okq:arch|som_system_altera_emif_arch_nf_180_3nk2okq_top:arch_inst|altera_emif_arch_nf_io_tiles_wrap:io_tiles_wrap_inst|altera_emif_arch_nf_io_tiles:io_tiles_inst|tile_gen[0].lane_gen[2].lane_inst~out_phy_reg}] 
create_generated_clock -name {i0|emif_0_wf_clk_9} -source [get_pins {i0|emif_0|arch|arch_inst|pll_inst|pll_inst~_Duplicate_1|vcoph[0]}] -master_clock {i0|emif_0_vco_clk_1} [get_registers {som_system:i0|som_system_altera_emif_180_brz44ly:emif_0|som_system_altera_emif_arch_nf_180_3nk2okq:arch|som_system_altera_emif_arch_nf_180_3nk2okq_top:arch_inst|altera_emif_arch_nf_io_tiles_wrap:io_tiles_wrap_inst|altera_emif_arch_nf_io_tiles:io_tiles_inst|tile_gen[2].lane_gen[1].lane_inst~out_phy_reg}] 
create_generated_clock -name {i0|emif_0_wf_clk_10} -source [get_pins {i0|emif_0|arch|arch_inst|pll_inst|pll_inst~_Duplicate_1|vcoph[0]}] -master_clock {i0|emif_0_vco_clk_1} [get_registers {som_system:i0|som_system_altera_emif_180_brz44ly:emif_0|som_system_altera_emif_arch_nf_180_3nk2okq:arch|som_system_altera_emif_arch_nf_180_3nk2okq_top:arch_inst|altera_emif_arch_nf_io_tiles_wrap:io_tiles_wrap_inst|altera_emif_arch_nf_io_tiles:io_tiles_inst|tile_gen[2].lane_gen[2].lane_inst~out_phy_reg}] 
create_generated_clock -name {i0|emif_a10_hps_0_vco_clk_0} -source [get_ports {ddr_ref_clk_i}] -multiply_by 4 -master_clock {pio_system|emif_a10_hps_0_ref_clock} [get_nets {i0|emif_a10_hps_0|arch|arch_inst|pll_inst|pll_vcoph[0]}] 
create_generated_clock -name {i0|emif_a10_hps_0_vco_clk_1} -source [get_ports {ddr_ref_clk_i}] -multiply_by 4 -master_clock {pio_system|emif_a10_hps_0_ref_clock} [get_nets {i0|emif_a10_hps_0|arch|arch_inst|pll_inst|pll_inst~_DuplicateVCOPH0}] 
create_generated_clock -name {i0|emif_a10_hps_0_phy_clk_0} -source [get_nets {i0|emif_a10_hps_0|arch|arch_inst|pll_inst|pll_vcoph[0]}] -divide_by 2 -phase 22.500 -master_clock {i0|emif_a10_hps_0_vco_clk_0} [get_nets {i0|emif_a10_hps_0|arch|arch_inst|pll_inst|pll_loaden[0]}] 
create_generated_clock -name {i0|emif_a10_hps_0_phy_clk_1} -source [get_nets {i0|emif_a10_hps_0|arch|arch_inst|pll_inst|pll_inst~_DuplicateVCOPH0}] -divide_by 2 -phase 22.500 -master_clock {i0|emif_a10_hps_0_vco_clk_1} [get_nets {i0|emif_a10_hps_0|arch|arch_inst|pll_inst|pll_inst~_DuplicateLOADEN0}] 
create_generated_clock -name {i0|emif_a10_hps_0_phy_clk_l_0} -source [get_nets {i0|emif_a10_hps_0|arch|arch_inst|pll_inst|pll_vcoph[0]}] -divide_by 2 -phase 22.500 -master_clock {i0|emif_a10_hps_0_vco_clk_0} [get_nets {i0|emif_a10_hps_0|arch|arch_inst|pll_inst|pll_lvds_clk[0]}] 
create_generated_clock -name {i0|emif_a10_hps_0_phy_clk_l_1} -source [get_nets {i0|emif_a10_hps_0|arch|arch_inst|pll_inst|pll_inst~_DuplicateVCOPH0}] -divide_by 2 -phase 22.500 -master_clock {i0|emif_a10_hps_0_vco_clk_1} [get_nets {i0|emif_a10_hps_0|arch|arch_inst|pll_inst|pll_inst~_DuplicateLVDS_CLK0}] 
create_generated_clock -name {i0|emif_a10_hps_0_wf_clk_0} -source [get_pins {i0|emif_a10_hps_0|arch|arch_inst|pll_inst|pll_inst|vcoph[0]}] -master_clock {i0|emif_a10_hps_0_vco_clk_0} [get_registers {som_system:i0|som_system_altera_emif_a10_hps_180_uhly6ia:emif_a10_hps_0|som_system_altera_emif_arch_nf_180_qjbdqci:arch|som_system_altera_emif_arch_nf_180_qjbdqci_top:arch_inst|altera_emif_arch_nf_io_tiles_wrap:io_tiles_wrap_inst|altera_emif_arch_nf_io_tiles:io_tiles_inst|tile_gen[0].lane_gen[0].lane_inst~out_phy_reg}] 
create_generated_clock -name {i0|emif_a10_hps_0_wf_clk_1} -source [get_pins {i0|emif_a10_hps_0|arch|arch_inst|pll_inst|pll_inst|vcoph[0]}] -master_clock {i0|emif_a10_hps_0_vco_clk_0} [get_registers {som_system:i0|som_system_altera_emif_a10_hps_180_uhly6ia:emif_a10_hps_0|som_system_altera_emif_arch_nf_180_qjbdqci:arch|som_system_altera_emif_arch_nf_180_qjbdqci_top:arch_inst|altera_emif_arch_nf_io_tiles_wrap:io_tiles_wrap_inst|altera_emif_arch_nf_io_tiles:io_tiles_inst|tile_gen[0].lane_gen[2].lane_inst~out_phy_reg}] 
create_generated_clock -name {i0|emif_a10_hps_0_wf_clk_2} -source [get_pins {i0|emif_a10_hps_0|arch|arch_inst|pll_inst|pll_inst|vcoph[0]}] -master_clock {i0|emif_a10_hps_0_vco_clk_0} [get_registers {som_system:i0|som_system_altera_emif_a10_hps_180_uhly6ia:emif_a10_hps_0|som_system_altera_emif_arch_nf_180_qjbdqci:arch|som_system_altera_emif_arch_nf_180_qjbdqci_top:arch_inst|altera_emif_arch_nf_io_tiles_wrap:io_tiles_wrap_inst|altera_emif_arch_nf_io_tiles:io_tiles_inst|tile_gen[0].lane_gen[1].lane_inst~out_phy_reg}] 
create_generated_clock -name {i0|emif_a10_hps_0_wf_clk_3} -source [get_pins {i0|emif_a10_hps_0|arch|arch_inst|pll_inst|pll_inst~_Duplicate|vcoph[0]}] -master_clock {i0|emif_a10_hps_0_vco_clk_1} [get_registers {som_system:i0|som_system_altera_emif_a10_hps_180_uhly6ia:emif_a10_hps_0|som_system_altera_emif_arch_nf_180_qjbdqci:arch|som_system_altera_emif_arch_nf_180_qjbdqci_top:arch_inst|altera_emif_arch_nf_io_tiles_wrap:io_tiles_wrap_inst|altera_emif_arch_nf_io_tiles:io_tiles_inst|tile_gen[0].lane_gen[3].lane_inst~out_phy_reg}] 
create_generated_clock -name {i0|emif_a10_hps_0_wf_clk_4} -source [get_pins {i0|emif_a10_hps_0|arch|arch_inst|pll_inst|pll_inst~_Duplicate|vcoph[0]}] -master_clock {i0|emif_a10_hps_0_vco_clk_1} [get_registers {som_system:i0|som_system_altera_emif_a10_hps_180_uhly6ia:emif_a10_hps_0|som_system_altera_emif_arch_nf_180_qjbdqci:arch|som_system_altera_emif_arch_nf_180_qjbdqci_top:arch_inst|altera_emif_arch_nf_io_tiles_wrap:io_tiles_wrap_inst|altera_emif_arch_nf_io_tiles:io_tiles_inst|tile_gen[1].lane_gen[0].lane_inst~out_phy_reg}] 
create_generated_clock -name {i0|emif_a10_hps_0_wf_clk_5} -source [get_pins {i0|emif_a10_hps_0|arch|arch_inst|pll_inst|pll_inst~_Duplicate|vcoph[0]}] -master_clock {i0|emif_a10_hps_0_vco_clk_1} [get_registers {som_system:i0|som_system_altera_emif_a10_hps_180_uhly6ia:emif_a10_hps_0|som_system_altera_emif_arch_nf_180_qjbdqci:arch|som_system_altera_emif_arch_nf_180_qjbdqci_top:arch_inst|altera_emif_arch_nf_io_tiles_wrap:io_tiles_wrap_inst|altera_emif_arch_nf_io_tiles:io_tiles_inst|tile_gen[1].lane_gen[1].lane_inst~out_phy_reg}] 
create_generated_clock -name {i0|emif_a10_hps_0_wf_clk_6} -source [get_pins {i0|emif_a10_hps_0|arch|arch_inst|pll_inst|pll_inst~_Duplicate|vcoph[0]}] -master_clock {i0|emif_a10_hps_0_vco_clk_1} [get_registers {som_system:i0|som_system_altera_emif_a10_hps_180_uhly6ia:emif_a10_hps_0|som_system_altera_emif_arch_nf_180_qjbdqci:arch|som_system_altera_emif_arch_nf_180_qjbdqci_top:arch_inst|altera_emif_arch_nf_io_tiles_wrap:io_tiles_wrap_inst|altera_emif_arch_nf_io_tiles:io_tiles_inst|tile_gen[1].lane_gen[2].lane_inst~out_phy_reg}] 
create_generated_clock -name {i0|emif_a10_hps_0_wf_clk_7} -source [get_pins {i0|emif_a10_hps_0|arch|arch_inst|pll_inst|pll_inst|vcoph[0]}] -master_clock {i0|emif_a10_hps_0_vco_clk_0} [get_registers {som_system:i0|som_system_altera_emif_a10_hps_180_uhly6ia:emif_a10_hps_0|som_system_altera_emif_arch_nf_180_qjbdqci:arch|som_system_altera_emif_arch_nf_180_qjbdqci_top:arch_inst|altera_emif_arch_nf_io_tiles_wrap:io_tiles_wrap_inst|altera_emif_arch_nf_io_tiles:io_tiles_inst|tile_gen[1].lane_gen[3].lane_inst~out_phy_reg}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_l_2}] -rise_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -setup 0.217  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_l_2}] -rise_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -hold 0.237  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_l_2}] -fall_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -setup 0.217  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_l_2}] -fall_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -hold 0.237  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_l_2}] -rise_to [get_clocks {i0|emif_0_core_usr_clk}] -setup 0.217  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_l_2}] -rise_to [get_clocks {i0|emif_0_core_usr_clk}] -hold 0.237  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_l_2}] -fall_to [get_clocks {i0|emif_0_core_usr_clk}] -setup 0.217  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_l_2}] -fall_to [get_clocks {i0|emif_0_core_usr_clk}] -hold 0.237  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_l_2}] -rise_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -setup 0.217  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_l_2}] -rise_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -hold 0.237  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_l_2}] -fall_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -setup 0.217  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_l_2}] -fall_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -hold 0.237  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_l_2}] -rise_to [get_clocks {i0|emif_0_core_usr_clk}] -setup 0.217  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_l_2}] -rise_to [get_clocks {i0|emif_0_core_usr_clk}] -hold 0.237  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_l_2}] -fall_to [get_clocks {i0|emif_0_core_usr_clk}] -setup 0.217  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_l_2}] -fall_to [get_clocks {i0|emif_0_core_usr_clk}] -hold 0.237  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_l_1}] -rise_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -setup 0.217  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_l_1}] -rise_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -hold 0.237  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_l_1}] -fall_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -setup 0.217  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_l_1}] -fall_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -hold 0.237  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_l_1}] -rise_to [get_clocks {i0|emif_0_core_usr_clk}] -setup 0.217  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_l_1}] -rise_to [get_clocks {i0|emif_0_core_usr_clk}] -hold 0.237  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_l_1}] -fall_to [get_clocks {i0|emif_0_core_usr_clk}] -setup 0.217  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_l_1}] -fall_to [get_clocks {i0|emif_0_core_usr_clk}] -hold 0.237  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_l_1}] -rise_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -setup 0.217  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_l_1}] -rise_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -hold 0.237  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_l_1}] -fall_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -setup 0.217  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_l_1}] -fall_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -hold 0.237  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_l_1}] -rise_to [get_clocks {i0|emif_0_core_usr_clk}] -setup 0.217  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_l_1}] -rise_to [get_clocks {i0|emif_0_core_usr_clk}] -hold 0.237  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_l_1}] -fall_to [get_clocks {i0|emif_0_core_usr_clk}] -setup 0.217  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_l_1}] -fall_to [get_clocks {i0|emif_0_core_usr_clk}] -hold 0.237  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_l_0}] -rise_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -setup 0.080 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_l_0}] -rise_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -hold 0.100 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_l_0}] -fall_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -setup 0.080 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_l_0}] -fall_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -hold 0.100 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_l_0}] -rise_to [get_clocks {i0|emif_0_core_usr_clk}] -setup 0.080 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_l_0}] -rise_to [get_clocks {i0|emif_0_core_usr_clk}] -hold 0.100 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_l_0}] -fall_to [get_clocks {i0|emif_0_core_usr_clk}] -setup 0.080 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_l_0}] -fall_to [get_clocks {i0|emif_0_core_usr_clk}] -hold 0.100 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_l_0}] -rise_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -setup 0.080 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_l_0}] -rise_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -hold 0.100 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_l_0}] -fall_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -setup 0.080 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_l_0}] -fall_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -hold 0.100 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_l_0}] -rise_to [get_clocks {i0|emif_0_core_usr_clk}] -setup 0.080 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_l_0}] -rise_to [get_clocks {i0|emif_0_core_usr_clk}] -hold 0.100 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_l_0}] -fall_to [get_clocks {i0|emif_0_core_usr_clk}] -setup 0.080 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_l_0}] -fall_to [get_clocks {i0|emif_0_core_usr_clk}] -hold 0.100 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_2}] -rise_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -setup 0.217  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_2}] -rise_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -hold 0.237  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_2}] -fall_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -setup 0.217  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_2}] -fall_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -hold 0.237  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_2}] -rise_to [get_clocks {i0|emif_0_core_usr_clk}] -setup 0.217  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_2}] -rise_to [get_clocks {i0|emif_0_core_usr_clk}] -hold 0.237  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_2}] -fall_to [get_clocks {i0|emif_0_core_usr_clk}] -setup 0.217  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_2}] -fall_to [get_clocks {i0|emif_0_core_usr_clk}] -hold 0.237  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_2}] -rise_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -setup 0.217  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_2}] -rise_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -hold 0.237  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_2}] -fall_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -setup 0.217  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_2}] -fall_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -hold 0.237  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_2}] -rise_to [get_clocks {i0|emif_0_core_usr_clk}] -setup 0.217  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_2}] -rise_to [get_clocks {i0|emif_0_core_usr_clk}] -hold 0.237  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_2}] -fall_to [get_clocks {i0|emif_0_core_usr_clk}] -setup 0.217  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_2}] -fall_to [get_clocks {i0|emif_0_core_usr_clk}] -hold 0.237  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_1}] -rise_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -setup 0.217  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_1}] -rise_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -hold 0.237  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_1}] -fall_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -setup 0.217  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_1}] -fall_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -hold 0.237  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_1}] -rise_to [get_clocks {i0|emif_0_core_usr_clk}] -setup 0.217  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_1}] -rise_to [get_clocks {i0|emif_0_core_usr_clk}] -hold 0.237  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_1}] -fall_to [get_clocks {i0|emif_0_core_usr_clk}] -setup 0.217  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_1}] -fall_to [get_clocks {i0|emif_0_core_usr_clk}] -hold 0.237  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_1}] -rise_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -setup 0.217  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_1}] -rise_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -hold 0.237  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_1}] -fall_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -setup 0.217  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_1}] -fall_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -hold 0.237  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_1}] -rise_to [get_clocks {i0|emif_0_core_usr_clk}] -setup 0.217  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_1}] -rise_to [get_clocks {i0|emif_0_core_usr_clk}] -hold 0.237  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_1}] -fall_to [get_clocks {i0|emif_0_core_usr_clk}] -setup 0.217  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_1}] -fall_to [get_clocks {i0|emif_0_core_usr_clk}] -hold 0.237  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_0}] -rise_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -setup 0.080 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_0}] -rise_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -hold 0.100 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_0}] -fall_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -setup 0.080 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_0}] -fall_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -hold 0.100 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_0}] -rise_to [get_clocks {i0|emif_0_core_usr_clk}] -setup 0.080 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_0}] -rise_to [get_clocks {i0|emif_0_core_usr_clk}] -hold 0.100 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_0}] -fall_to [get_clocks {i0|emif_0_core_usr_clk}] -setup 0.080 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_phy_clk_0}] -fall_to [get_clocks {i0|emif_0_core_usr_clk}] -hold 0.100 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_0}] -rise_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -setup 0.080 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_0}] -rise_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -hold 0.100 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_0}] -fall_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -setup 0.080 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_0}] -fall_to [get_clocks {i0|emif_0_core_cal_slave_clk}] -hold 0.100 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_0}] -rise_to [get_clocks {i0|emif_0_core_usr_clk}] -setup 0.080 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_0}] -rise_to [get_clocks {i0|emif_0_core_usr_clk}] -hold 0.100 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_0}] -fall_to [get_clocks {i0|emif_0_core_usr_clk}] -setup 0.080 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_phy_clk_0}] -fall_to [get_clocks {i0|emif_0_core_usr_clk}] -hold 0.100 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_l_2}] -setup 0.247  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_l_2}] -hold 0.273  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_l_2}] -setup 0.247  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_l_2}] -hold 0.273  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_l_1}] -setup 0.247  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_l_1}] -hold 0.273  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_l_1}] -setup 0.247  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_l_1}] -hold 0.273  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_l_0}] -setup 0.110 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_l_0}] -hold 0.136 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_l_0}] -setup 0.110 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_l_0}] -hold 0.136 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_2}] -setup 0.247  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_2}] -hold 0.273  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_2}] -setup 0.247  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_2}] -hold 0.273  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_1}] -setup 0.247  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_1}] -hold 0.273  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_1}] -setup 0.247  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_1}] -hold 0.273  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_0}] -setup 0.110 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_0}] -hold 0.136 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_0}] -setup 0.110 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_0}] -hold 0.136 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {i0|emif_0_core_cal_slave_clk}]  0.000 -add -enable_same_physical_edge
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {i0|emif_0_core_cal_slave_clk}]  0.000 -add -enable_same_physical_edge
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {i0|emif_0_core_usr_clk}]  0.000 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {i0|emif_0_core_usr_clk}]  0.000 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_l_2}] -setup 0.247  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_l_2}] -hold 0.273  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_l_2}] -setup 0.247  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_l_2}] -hold 0.273  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_l_1}] -setup 0.247  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_l_1}] -hold 0.273  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_l_1}] -setup 0.247  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_l_1}] -hold 0.273  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_l_0}] -setup 0.110 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_l_0}] -hold 0.136 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_l_0}] -setup 0.110 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_l_0}] -hold 0.136 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_2}] -setup 0.247  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_2}] -hold 0.273  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_2}] -setup 0.247  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_2}] -hold 0.273  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_1}] -setup 0.247  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_1}] -hold 0.273  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_1}] -setup 0.247  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_1}] -hold 0.273  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_0}] -setup 0.110 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_0}] -hold 0.136 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_0}] -setup 0.110 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_0}] -hold 0.136 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {i0|emif_0_core_cal_slave_clk}]  0.000 -add -enable_same_physical_edge
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {i0|emif_0_core_cal_slave_clk}]  0.000 -add -enable_same_physical_edge
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {i0|emif_0_core_usr_clk}]  0.000 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {i0|emif_0_core_usr_clk}]  0.000 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_usr_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_l_2}] -setup 0.247  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_usr_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_l_2}] -hold 0.273  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_usr_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_l_2}] -setup 0.247  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_usr_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_l_2}] -hold 0.273  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_usr_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_l_1}] -setup 0.247  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_usr_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_l_1}] -hold 0.273  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_usr_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_l_1}] -setup 0.247  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_usr_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_l_1}] -hold 0.273  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_usr_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_l_0}] -setup 0.110 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_usr_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_l_0}] -hold 0.136 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_usr_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_l_0}] -setup 0.110 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_usr_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_l_0}] -hold 0.136 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_usr_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_2}] -setup 0.247  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_usr_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_2}] -hold 0.273  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_usr_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_2}] -setup 0.247  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_usr_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_2}] -hold 0.273  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_usr_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_1}] -setup 0.247  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_usr_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_1}] -hold 0.273  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_usr_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_1}] -setup 0.247  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_usr_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_1}] -hold 0.273  
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_usr_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_0}] -setup 0.110 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_usr_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_0}] -hold 0.136 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_usr_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_0}] -setup 0.110 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_usr_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_0}] -hold 0.136 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_usr_clk}] -rise_to [get_clocks {i0|emif_0_core_cal_slave_clk}]  0.000 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_usr_clk}] -fall_to [get_clocks {i0|emif_0_core_cal_slave_clk}]  0.000 -add 
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_usr_clk}] -rise_to [get_clocks {i0|emif_0_core_usr_clk}]  0.000 -add -enable_same_physical_edge
set_clock_uncertainty -rise_from [get_clocks {i0|emif_0_core_usr_clk}] -fall_to [get_clocks {i0|emif_0_core_usr_clk}]  0.000 -add -enable_same_physical_edge
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_usr_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_l_2}] -setup 0.247  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_usr_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_l_2}] -hold 0.273  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_usr_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_l_2}] -setup 0.247  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_usr_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_l_2}] -hold 0.273  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_usr_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_l_1}] -setup 0.247  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_usr_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_l_1}] -hold 0.273  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_usr_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_l_1}] -setup 0.247  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_usr_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_l_1}] -hold 0.273  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_usr_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_l_0}] -setup 0.110 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_usr_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_l_0}] -hold 0.136 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_usr_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_l_0}] -setup 0.110 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_usr_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_l_0}] -hold 0.136 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_usr_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_2}] -setup 0.247  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_usr_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_2}] -hold 0.273  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_usr_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_2}] -setup 0.247  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_usr_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_2}] -hold 0.273  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_usr_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_1}] -setup 0.247  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_usr_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_1}] -hold 0.273  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_usr_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_1}] -setup 0.247  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_usr_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_1}] -hold 0.273  
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_usr_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_0}] -setup 0.110 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_usr_clk}] -rise_to [get_clocks {i0|emif_0_phy_clk_0}] -hold 0.136 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_usr_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_0}] -setup 0.110 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_usr_clk}] -fall_to [get_clocks {i0|emif_0_phy_clk_0}] -hold 0.136 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_usr_clk}] -rise_to [get_clocks {i0|emif_0_core_cal_slave_clk}]  0.000 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_usr_clk}] -fall_to [get_clocks {i0|emif_0_core_cal_slave_clk}]  0.000 -add 
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_usr_clk}] -rise_to [get_clocks {i0|emif_0_core_usr_clk}]  0.000 -add -enable_same_physical_edge
set_clock_uncertainty -fall_from [get_clocks {i0|emif_0_core_usr_clk}] -fall_to [get_clocks {i0|emif_0_core_usr_clk}]  0.000 -add -enable_same_physical_edge
derive_clock_uncertainty


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_alert_n}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dbi_n[0]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dbi_n[1]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dbi_n[2]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dbi_n[3]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dbi_n[4]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dbi_n[5]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dbi_n[6]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dbi_n[7]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[0]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[1]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[2]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[3]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[4]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[5]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[6]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[7]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[8]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[9]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[10]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[11]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[12]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[13]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[14]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[15]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[16]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[17]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[18]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[19]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[20]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[21]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[22]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[23]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[24]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[25]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[26]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[27]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[28]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[29]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[30]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[31]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[32]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[33]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[34]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[35]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[36]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[37]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[38]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[39]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[40]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[41]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[42]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[43]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[44]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[45]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[46]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[47]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[48]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[49]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[50]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[51]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[52]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[53]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[54]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[55]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[56]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[57]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[58]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[59]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[60]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[61]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[62]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[63]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_alert_n}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dbi_n[0]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dbi_n[1]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dbi_n[2]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dbi_n[3]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dbi_n[4]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[0]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[1]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[2]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[3]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[4]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[5]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[6]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[7]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[8]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[9]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[10]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[11]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[12]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[13]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[14]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[15]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[16]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[17]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[18]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[19]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[20]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[21]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[22]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[23]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[24]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[25]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[26]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[27]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[28]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[29]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[30]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[31]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[32]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[33]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[34]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[35]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[36]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[37]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[38]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[39]}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_a[0]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_a[1]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_a[2]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_a[3]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_a[4]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_a[5]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_a[6]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_a[7]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_a[8]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_a[9]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_a[10]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_a[11]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_a[12]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_a[13]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_a[14]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_a[15]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_a[16]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_act_n}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_ba[0]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_ba[1]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_bg}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_ck}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_ck_n}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_cke}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_cs_n}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dbi_n[0]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dbi_n[1]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dbi_n[2]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dbi_n[3]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dbi_n[4]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dbi_n[5]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dbi_n[6]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dbi_n[7]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[0]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[1]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[2]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[3]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[4]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[5]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[6]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[7]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[8]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[9]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[10]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[11]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[12]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[13]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[14]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[15]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[16]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[17]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[18]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[19]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[20]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[21]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[22]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[23]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[24]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[25]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[26]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[27]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[28]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[29]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[30]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[31]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[32]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[33]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[34]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[35]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[36]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[37]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[38]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[39]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[40]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[41]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[42]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[43]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[44]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[45]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[46]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[47]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[48]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[49]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[50]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[51]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[52]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[53]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[54]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[55]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[56]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[57]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[58]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[59]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[60]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[61]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[62]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dq[63]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dqs[0]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dqs[1]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dqs[2]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dqs[3]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dqs[4]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dqs[5]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dqs[6]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dqs[7]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dqs_n[0]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dqs_n[1]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dqs_n[2]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dqs_n[3]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dqs_n[4]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dqs_n[5]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dqs_n[6]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dqs_n[7]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_odt}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_par}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_reset_n}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_a[0]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_a[1]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_a[2]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_a[3]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_a[4]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_a[5]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_a[6]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_a[7]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_a[8]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_a[9]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_a[10]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_a[11]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_a[12]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_a[13]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_a[14]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_a[15]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_a[16]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_act_n}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_ba[0]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_ba[1]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_bg}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_ck}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_ck_n}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_cke}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_cs_n}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dbi_n[0]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dbi_n[1]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dbi_n[2]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dbi_n[3]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dbi_n[4]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[0]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[1]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[2]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[3]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[4]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[5]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[6]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[7]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[8]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[9]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[10]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[11]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[12]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[13]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[14]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[15]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[16]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[17]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[18]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[19]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[20]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[21]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[22]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[23]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[24]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[25]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[26]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[27]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[28]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[29]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[30]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[31]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[32]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[33]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[34]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[35]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[36]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[37]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[38]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dq[39]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dqs[0]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dqs[1]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dqs[2]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dqs[3]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dqs[4]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dqs_n[0]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dqs_n[1]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dqs_n[2]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dqs_n[3]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_dqs_n[4]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_odt}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_par}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.000 [get_ports {hps_memory_mem_reset_n}]


#**************************************************************
# Set Clock Groups
#**************************************************************

set_clock_groups -asynchronous -group [get_clocks {altera_reserved_tck}] 
set_clock_groups -asynchronous -group [get_clocks { AD1939_MCLK  AD1939_ADC_ABCLK  AD1939_ADC_ALRCLK  }] 


#**************************************************************
# Set False Path
#**************************************************************

set_false_path -to [get_pins -nocase -compatibility_mode {*|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain*|clrn}]
set_false_path -to [get_keepers {{FPGA_memory_mem1_a[0]} {FPGA_memory_mem1_a[1]} {FPGA_memory_mem1_a[2]} {FPGA_memory_mem1_a[3]} {FPGA_memory_mem1_a[4]} {FPGA_memory_mem1_a[5]} {FPGA_memory_mem1_a[6]} {FPGA_memory_mem1_a[7]} {FPGA_memory_mem1_a[8]} {FPGA_memory_mem1_a[9]} {FPGA_memory_mem1_a[10]} {FPGA_memory_mem1_a[11]} {FPGA_memory_mem1_a[12]} {FPGA_memory_mem1_a[13]} {FPGA_memory_mem1_a[14]} {FPGA_memory_mem1_a[15]} {FPGA_memory_mem1_a[16]} FPGA_memory_mem1_act_n {FPGA_memory_mem1_ba[0]} {FPGA_memory_mem1_ba[1]} FPGA_memory_mem1_bg FPGA_memory_mem1_cke FPGA_memory_mem1_cs_n FPGA_memory_mem1_odt FPGA_memory_mem1_par}]
set_false_path -through [get_pins {i0|emif_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].lane_gen[*].lane_inst|core_dll[2]}]  -to [get_keepers {i0|emif_0*|tile_gen[*].lane_gen[*].lane_inst~lane_reg}]
set_false_path -to [get_keepers {{FPGA_memory_mem1_dq[0]} {FPGA_memory_mem1_dq[1]} {FPGA_memory_mem1_dq[2]} {FPGA_memory_mem1_dq[3]} {FPGA_memory_mem1_dq[4]} {FPGA_memory_mem1_dq[5]} {FPGA_memory_mem1_dq[6]} {FPGA_memory_mem1_dq[7]} {FPGA_memory_mem1_dq[8]} {FPGA_memory_mem1_dq[9]} {FPGA_memory_mem1_dq[10]} {FPGA_memory_mem1_dq[11]} {FPGA_memory_mem1_dq[12]} {FPGA_memory_mem1_dq[13]} {FPGA_memory_mem1_dq[14]} {FPGA_memory_mem1_dq[15]} {FPGA_memory_mem1_dq[16]} {FPGA_memory_mem1_dq[17]} {FPGA_memory_mem1_dq[18]} {FPGA_memory_mem1_dq[19]} {FPGA_memory_mem1_dq[20]} {FPGA_memory_mem1_dq[21]} {FPGA_memory_mem1_dq[22]} {FPGA_memory_mem1_dq[23]} {FPGA_memory_mem1_dq[24]} {FPGA_memory_mem1_dq[25]} {FPGA_memory_mem1_dq[26]} {FPGA_memory_mem1_dq[27]} {FPGA_memory_mem1_dq[28]} {FPGA_memory_mem1_dq[29]} {FPGA_memory_mem1_dq[30]} {FPGA_memory_mem1_dq[31]} {FPGA_memory_mem1_dq[32]} {FPGA_memory_mem1_dq[33]} {FPGA_memory_mem1_dq[34]} {FPGA_memory_mem1_dq[35]} {FPGA_memory_mem1_dq[36]} {FPGA_memory_mem1_dq[37]} {FPGA_memory_mem1_dq[38]} {FPGA_memory_mem1_dq[39]} {FPGA_memory_mem1_dq[40]} {FPGA_memory_mem1_dq[41]} {FPGA_memory_mem1_dq[42]} {FPGA_memory_mem1_dq[43]} {FPGA_memory_mem1_dq[44]} {FPGA_memory_mem1_dq[45]} {FPGA_memory_mem1_dq[46]} {FPGA_memory_mem1_dq[47]} {FPGA_memory_mem1_dq[48]} {FPGA_memory_mem1_dq[49]} {FPGA_memory_mem1_dq[50]} {FPGA_memory_mem1_dq[51]} {FPGA_memory_mem1_dq[52]} {FPGA_memory_mem1_dq[53]} {FPGA_memory_mem1_dq[54]} {FPGA_memory_mem1_dq[55]} {FPGA_memory_mem1_dq[56]} {FPGA_memory_mem1_dq[57]} {FPGA_memory_mem1_dq[58]} {FPGA_memory_mem1_dq[59]} {FPGA_memory_mem1_dq[60]} {FPGA_memory_mem1_dq[61]} {FPGA_memory_mem1_dq[62]} {FPGA_memory_mem1_dq[63]}}]
set_false_path -from [get_keepers {{FPGA_memory_mem1_dq[0]} {FPGA_memory_mem1_dq[1]} {FPGA_memory_mem1_dq[2]} {FPGA_memory_mem1_dq[3]} {FPGA_memory_mem1_dq[4]} {FPGA_memory_mem1_dq[5]} {FPGA_memory_mem1_dq[6]} {FPGA_memory_mem1_dq[7]} {FPGA_memory_mem1_dq[8]} {FPGA_memory_mem1_dq[9]} {FPGA_memory_mem1_dq[10]} {FPGA_memory_mem1_dq[11]} {FPGA_memory_mem1_dq[12]} {FPGA_memory_mem1_dq[13]} {FPGA_memory_mem1_dq[14]} {FPGA_memory_mem1_dq[15]} {FPGA_memory_mem1_dq[16]} {FPGA_memory_mem1_dq[17]} {FPGA_memory_mem1_dq[18]} {FPGA_memory_mem1_dq[19]} {FPGA_memory_mem1_dq[20]} {FPGA_memory_mem1_dq[21]} {FPGA_memory_mem1_dq[22]} {FPGA_memory_mem1_dq[23]} {FPGA_memory_mem1_dq[24]} {FPGA_memory_mem1_dq[25]} {FPGA_memory_mem1_dq[26]} {FPGA_memory_mem1_dq[27]} {FPGA_memory_mem1_dq[28]} {FPGA_memory_mem1_dq[29]} {FPGA_memory_mem1_dq[30]} {FPGA_memory_mem1_dq[31]} {FPGA_memory_mem1_dq[32]} {FPGA_memory_mem1_dq[33]} {FPGA_memory_mem1_dq[34]} {FPGA_memory_mem1_dq[35]} {FPGA_memory_mem1_dq[36]} {FPGA_memory_mem1_dq[37]} {FPGA_memory_mem1_dq[38]} {FPGA_memory_mem1_dq[39]} {FPGA_memory_mem1_dq[40]} {FPGA_memory_mem1_dq[41]} {FPGA_memory_mem1_dq[42]} {FPGA_memory_mem1_dq[43]} {FPGA_memory_mem1_dq[44]} {FPGA_memory_mem1_dq[45]} {FPGA_memory_mem1_dq[46]} {FPGA_memory_mem1_dq[47]} {FPGA_memory_mem1_dq[48]} {FPGA_memory_mem1_dq[49]} {FPGA_memory_mem1_dq[50]} {FPGA_memory_mem1_dq[51]} {FPGA_memory_mem1_dq[52]} {FPGA_memory_mem1_dq[53]} {FPGA_memory_mem1_dq[54]} {FPGA_memory_mem1_dq[55]} {FPGA_memory_mem1_dq[56]} {FPGA_memory_mem1_dq[57]} {FPGA_memory_mem1_dq[58]} {FPGA_memory_mem1_dq[59]} {FPGA_memory_mem1_dq[60]} {FPGA_memory_mem1_dq[61]} {FPGA_memory_mem1_dq[62]} {FPGA_memory_mem1_dq[63]}}] 
set_false_path -to [get_keepers {{FPGA_memory_mem1_dbi_n[0]} {FPGA_memory_mem1_dbi_n[1]} {FPGA_memory_mem1_dbi_n[2]} {FPGA_memory_mem1_dbi_n[3]} {FPGA_memory_mem1_dbi_n[4]} {FPGA_memory_mem1_dbi_n[5]} {FPGA_memory_mem1_dbi_n[6]} {FPGA_memory_mem1_dbi_n[7]}}]
set_false_path -from [get_keepers {{FPGA_memory_mem1_dbi_n[0]} {FPGA_memory_mem1_dbi_n[1]} {FPGA_memory_mem1_dbi_n[2]} {FPGA_memory_mem1_dbi_n[3]} {FPGA_memory_mem1_dbi_n[4]} {FPGA_memory_mem1_dbi_n[5]} {FPGA_memory_mem1_dbi_n[6]} {FPGA_memory_mem1_dbi_n[7]}}] 
set_false_path -to [get_keepers {{FPGA_memory_mem1_dqs[0]} {FPGA_memory_mem1_dqs[1]} {FPGA_memory_mem1_dqs[2]} {FPGA_memory_mem1_dqs[3]} {FPGA_memory_mem1_dqs[4]} {FPGA_memory_mem1_dqs[5]} {FPGA_memory_mem1_dqs[6]} {FPGA_memory_mem1_dqs[7]}}]
set_false_path -to [get_keepers {{FPGA_memory_mem1_dqs_n[0]} {FPGA_memory_mem1_dqs_n[1]} {FPGA_memory_mem1_dqs_n[2]} {FPGA_memory_mem1_dqs_n[3]} {FPGA_memory_mem1_dqs_n[4]} {FPGA_memory_mem1_dqs_n[5]} {FPGA_memory_mem1_dqs_n[6]} {FPGA_memory_mem1_dqs_n[7]}}]
set_false_path -from [get_keepers {{FPGA_memory_mem1_dqs[0]} {FPGA_memory_mem1_dqs[1]} {FPGA_memory_mem1_dqs[2]} {FPGA_memory_mem1_dqs[3]} {FPGA_memory_mem1_dqs[4]} {FPGA_memory_mem1_dqs[5]} {FPGA_memory_mem1_dqs[6]} {FPGA_memory_mem1_dqs[7]}}] 
set_false_path -from [get_keepers {{FPGA_memory_mem1_dqs_n[0]} {FPGA_memory_mem1_dqs_n[1]} {FPGA_memory_mem1_dqs_n[2]} {FPGA_memory_mem1_dqs_n[3]} {FPGA_memory_mem1_dqs_n[4]} {FPGA_memory_mem1_dqs_n[5]} {FPGA_memory_mem1_dqs_n[6]} {FPGA_memory_mem1_dqs_n[7]}}] 
set_false_path -to [get_keepers {FPGA_memory_mem1_ck}]
set_false_path -to [get_keepers {FPGA_memory_mem1_ck_n}]
set_false_path -to [get_keepers {FPGA_memory_mem1_reset_n FPGA_memory_mem1_alert_n}]
set_false_path -from [get_keepers {FPGA_memory_mem1_reset_n FPGA_memory_mem1_alert_n}] 
set_false_path -to [get_keepers {{hps_memory_mem_a[0]} {hps_memory_mem_a[1]} {hps_memory_mem_a[2]} {hps_memory_mem_a[3]} {hps_memory_mem_a[4]} {hps_memory_mem_a[5]} {hps_memory_mem_a[6]} {hps_memory_mem_a[7]} {hps_memory_mem_a[8]} {hps_memory_mem_a[9]} {hps_memory_mem_a[10]} {hps_memory_mem_a[11]} {hps_memory_mem_a[12]} {hps_memory_mem_a[13]} {hps_memory_mem_a[14]} {hps_memory_mem_a[15]} {hps_memory_mem_a[16]} hps_memory_mem_act_n {hps_memory_mem_ba[0]} {hps_memory_mem_ba[1]} hps_memory_mem_bg hps_memory_mem_cke hps_memory_mem_cs_n hps_memory_mem_odt hps_memory_mem_par}]
set_false_path -to [get_keepers {{hps_memory_mem_dq[0]} {hps_memory_mem_dq[1]} {hps_memory_mem_dq[2]} {hps_memory_mem_dq[3]} {hps_memory_mem_dq[4]} {hps_memory_mem_dq[5]} {hps_memory_mem_dq[6]} {hps_memory_mem_dq[7]} {hps_memory_mem_dq[8]} {hps_memory_mem_dq[9]} {hps_memory_mem_dq[10]} {hps_memory_mem_dq[11]} {hps_memory_mem_dq[12]} {hps_memory_mem_dq[13]} {hps_memory_mem_dq[14]} {hps_memory_mem_dq[15]} {hps_memory_mem_dq[16]} {hps_memory_mem_dq[17]} {hps_memory_mem_dq[18]} {hps_memory_mem_dq[19]} {hps_memory_mem_dq[20]} {hps_memory_mem_dq[21]} {hps_memory_mem_dq[22]} {hps_memory_mem_dq[23]} {hps_memory_mem_dq[24]} {hps_memory_mem_dq[25]} {hps_memory_mem_dq[26]} {hps_memory_mem_dq[27]} {hps_memory_mem_dq[28]} {hps_memory_mem_dq[29]} {hps_memory_mem_dq[30]} {hps_memory_mem_dq[31]} {hps_memory_mem_dq[32]} {hps_memory_mem_dq[33]} {hps_memory_mem_dq[34]} {hps_memory_mem_dq[35]} {hps_memory_mem_dq[36]} {hps_memory_mem_dq[37]} {hps_memory_mem_dq[38]} {hps_memory_mem_dq[39]}}]
set_false_path -from [get_keepers {{hps_memory_mem_dq[0]} {hps_memory_mem_dq[1]} {hps_memory_mem_dq[2]} {hps_memory_mem_dq[3]} {hps_memory_mem_dq[4]} {hps_memory_mem_dq[5]} {hps_memory_mem_dq[6]} {hps_memory_mem_dq[7]} {hps_memory_mem_dq[8]} {hps_memory_mem_dq[9]} {hps_memory_mem_dq[10]} {hps_memory_mem_dq[11]} {hps_memory_mem_dq[12]} {hps_memory_mem_dq[13]} {hps_memory_mem_dq[14]} {hps_memory_mem_dq[15]} {hps_memory_mem_dq[16]} {hps_memory_mem_dq[17]} {hps_memory_mem_dq[18]} {hps_memory_mem_dq[19]} {hps_memory_mem_dq[20]} {hps_memory_mem_dq[21]} {hps_memory_mem_dq[22]} {hps_memory_mem_dq[23]} {hps_memory_mem_dq[24]} {hps_memory_mem_dq[25]} {hps_memory_mem_dq[26]} {hps_memory_mem_dq[27]} {hps_memory_mem_dq[28]} {hps_memory_mem_dq[29]} {hps_memory_mem_dq[30]} {hps_memory_mem_dq[31]} {hps_memory_mem_dq[32]} {hps_memory_mem_dq[33]} {hps_memory_mem_dq[34]} {hps_memory_mem_dq[35]} {hps_memory_mem_dq[36]} {hps_memory_mem_dq[37]} {hps_memory_mem_dq[38]} {hps_memory_mem_dq[39]}}] 
set_false_path -to [get_keepers {{hps_memory_mem_dbi_n[0]} {hps_memory_mem_dbi_n[1]} {hps_memory_mem_dbi_n[2]} {hps_memory_mem_dbi_n[3]} {hps_memory_mem_dbi_n[4]}}]
set_false_path -from [get_keepers {{hps_memory_mem_dbi_n[0]} {hps_memory_mem_dbi_n[1]} {hps_memory_mem_dbi_n[2]} {hps_memory_mem_dbi_n[3]} {hps_memory_mem_dbi_n[4]}}] 
set_false_path -to [get_keepers {{hps_memory_mem_dqs[0]} {hps_memory_mem_dqs[1]} {hps_memory_mem_dqs[2]} {hps_memory_mem_dqs[3]} {hps_memory_mem_dqs[4]}}]
set_false_path -to [get_keepers {{hps_memory_mem_dqs_n[0]} {hps_memory_mem_dqs_n[1]} {hps_memory_mem_dqs_n[2]} {hps_memory_mem_dqs_n[3]} {hps_memory_mem_dqs_n[4]}}]
set_false_path -from [get_keepers {{hps_memory_mem_dqs[0]} {hps_memory_mem_dqs[1]} {hps_memory_mem_dqs[2]} {hps_memory_mem_dqs[3]} {hps_memory_mem_dqs[4]}}] 
set_false_path -from [get_keepers {{hps_memory_mem_dqs_n[0]} {hps_memory_mem_dqs_n[1]} {hps_memory_mem_dqs_n[2]} {hps_memory_mem_dqs_n[3]} {hps_memory_mem_dqs_n[4]}}] 
set_false_path -to [get_keepers {hps_memory_mem_ck}]
set_false_path -to [get_keepers {hps_memory_mem_ck_n}]
set_false_path -to [get_keepers {hps_memory_mem_reset_n hps_memory_mem_alert_n}]
set_false_path -from [get_keepers {hps_memory_mem_reset_n hps_memory_mem_alert_n}] 


#**************************************************************
# Set Multicycle Path
#**************************************************************

set_multicycle_path -setup -start -from [get_keepers {i0|emif_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].tile_ctrl_inst~hmc_reg0}] -through [get_pins {i0|emif_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].tile_ctrl_inst|ctl2core_avl_cmd_ready}]  2
set_multicycle_path -hold -start -from [get_keepers {i0|emif_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].tile_ctrl_inst~hmc_reg0}] -through [get_pins {i0|emif_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].tile_ctrl_inst|ctl2core_avl_cmd_ready}]  1
set_multicycle_path -setup -end -from [get_clocks *] -through [get_pins {i0|emif_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].lane_gen[*].lane_inst|reset_n}]  -to [get_keepers {i0|emif_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].lane_gen[*].lane_inst*}] 7
set_multicycle_path -hold -end -from [get_clocks *] -through [get_pins {i0|emif_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].lane_gen[*].lane_inst|reset_n}]  -to [get_keepers {i0|emif_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].lane_gen[*].lane_inst*}] 6
set_multicycle_path -setup -end -from [get_clocks *] -through [get_pins {i0|emif_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].tile_ctrl_inst*|global_reset_n}]  -to [get_keepers {i0|emif_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].tile_ctrl_inst*}] 7
set_multicycle_path -hold -end -from [get_clocks *] -through [get_pins {i0|emif_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].tile_ctrl_inst*|global_reset_n}]  -to [get_keepers {i0|emif_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].tile_ctrl_inst*}] 6
set_multicycle_path -setup -end -from [get_clocks *] -through [get_pins {i0|emif_0|arch|arch_inst|io_aux_inst|io_aux|core_usr_reset_n}]  -to [get_keepers {i0|emif_0|arch|arch_inst|io_aux_inst|io_aux*}] 7
set_multicycle_path -hold -end -from [get_clocks *] -through [get_pins {i0|emif_0|arch|arch_inst|io_aux_inst|io_aux|core_usr_reset_n}]  -to [get_keepers {i0|emif_0|arch|arch_inst|io_aux_inst|io_aux*}] 6
set_multicycle_path -setup -end -through [get_pins {i0|emif_0|arch|arch_inst|non_hps.core_clks_rsts_inst|*reset_sync*|clrn}]  -to [get_keepers {i0|emif_0|arch|arch_inst|non_hps.core_clks_rsts_inst|*reset_sync*}] 7
set_multicycle_path -hold -end -through [get_pins {i0|emif_0|arch|arch_inst|non_hps.core_clks_rsts_inst|*reset_sync*|clrn}]  -to [get_keepers {i0|emif_0|arch|arch_inst|non_hps.core_clks_rsts_inst|*reset_sync*}] 6
set_multicycle_path -setup -end -from [get_clocks *] -through [get_pins {i0|emif_a10_hps_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].lane_gen[*].lane_inst|reset_n}]  -to [get_keepers {i0|emif_a10_hps_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].lane_gen[*].lane_inst*}] 7
set_multicycle_path -hold -end -from [get_clocks *] -through [get_pins {i0|emif_a10_hps_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].lane_gen[*].lane_inst|reset_n}]  -to [get_keepers {i0|emif_a10_hps_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].lane_gen[*].lane_inst*}] 6
set_multicycle_path -setup -end -from [get_clocks *] -through [get_pins {i0|emif_a10_hps_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].tile_ctrl_inst*|global_reset_n}]  -to [get_keepers {i0|emif_a10_hps_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].tile_ctrl_inst*}] 7
set_multicycle_path -hold -end -from [get_clocks *] -through [get_pins {i0|emif_a10_hps_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].tile_ctrl_inst*|global_reset_n}]  -to [get_keepers {i0|emif_a10_hps_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].tile_ctrl_inst*}] 6
set_multicycle_path -setup -end -from [get_clocks *] -through [get_pins {i0|emif_a10_hps_0|arch|arch_inst|io_aux_inst|io_aux|core_usr_reset_n}]  -to [get_keepers {i0|emif_a10_hps_0|arch|arch_inst|io_aux_inst|io_aux*}] 7
set_multicycle_path -hold -end -from [get_clocks *] -through [get_pins {i0|emif_a10_hps_0|arch|arch_inst|io_aux_inst|io_aux|core_usr_reset_n}]  -to [get_keepers {i0|emif_a10_hps_0|arch|arch_inst|io_aux_inst|io_aux*}] 6


#**************************************************************
# Set Maximum Delay
#**************************************************************

set_max_delay -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {*altera_avalon_st_clock_crosser:*|out_data_buffer*}] 100.000
set_max_delay -from [get_registers *] -to [get_registers {*altera_avalon_st_clock_crosser:*|altera_std_synchronizer_nocut:*|din_s1}] 100.000
set_max_delay -from [get_registers {*|in_wr_ptr_gray[*]}] -to [get_registers {*|altera_dcfifo_synchronizer_bundle:write_crosser|altera_std_synchronizer_nocut:sync[*].u|din_s1}] 100.000
set_max_delay -from [get_registers {*|out_rd_ptr_gray[*]}] -to [get_registers {*|altera_dcfifo_synchronizer_bundle:read_crosser|altera_std_synchronizer_nocut:sync[*].u|din_s1}] 100.000


#**************************************************************
# Set Minimum Delay
#**************************************************************

set_min_delay -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {*altera_avalon_st_clock_crosser:*|out_data_buffer*}] -100.000
set_min_delay -from [get_registers *] -to [get_registers {*altera_avalon_st_clock_crosser:*|altera_std_synchronizer_nocut:*|din_s1}] -100.000
set_min_delay -from [get_registers {*|in_wr_ptr_gray[*]}] -to [get_registers {*|altera_dcfifo_synchronizer_bundle:write_crosser|altera_std_synchronizer_nocut:sync[*].u|din_s1}] -100.000
set_min_delay -from [get_registers {*|out_rd_ptr_gray[*]}] -to [get_registers {*|altera_dcfifo_synchronizer_bundle:read_crosser|altera_std_synchronizer_nocut:sync[*].u|din_s1}] -100.000


#**************************************************************
# Set Input Transition
#**************************************************************



#**************************************************************
# Set Net Delay
#**************************************************************

set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {*altera_avalon_st_clock_crosser:*|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers *] -to [get_registers {*altera_avalon_st_clock_crosser:*|altera_std_synchronizer_nocut:*|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_pins -compatibility_mode {*|in_wr_ptr_gray[*]*}] -to [get_registers {*|altera_dcfifo_synchronizer_bundle:write_crosser|altera_std_synchronizer_nocut:sync[*].u|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_pins -compatibility_mode {*|out_rd_ptr_gray[*]*}] -to [get_registers {*|altera_dcfifo_synchronizer_bundle:read_crosser|altera_std_synchronizer_nocut:sync[*].u|din_s1}]
