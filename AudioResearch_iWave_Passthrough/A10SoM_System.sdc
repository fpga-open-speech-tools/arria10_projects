## Generated SDC file "hps_sys_sdc.sdc"

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


## VENDOR  "Intel Corporation"
## PROGRAM "Quartus Prime"
## VERSION "Version 18.1.0 Build 222 09/21/2018 SJ Pro Edition"

## DATE    "Tue Sep 10 11:38:14 2019"

##
## DEVICE  "10AS048H3F34E2SG"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {~ALTERA_CLKUSR~} -period 8.000 -waveform { 0.000 4.000 } [get_pins -compatibility_mode {~ALTERA_CLKUSR~~ibuf|o}]
create_clock -name {pio_system|emif_a10_hps_0_ref_clock} -period 3.333 -waveform { 0.000 1.666 } [get_ports {ddr_ref_clk_i}]
create_clock -name {pio_system|emif_0_ref_clock} -period 3.333 -waveform { 0.000 1.666 } [get_ports {clk_200}]
create_clock -name {altera_ts_clk} -period 1000.000 -waveform { 0.000 500.000 } [get_nodes {*|sd1~sn_adc_ts_clk.reg}]
create_clock -name {refclk_1C_p} -period 8.000 -waveform { 0.000 4.000 } [get_ports {refclk_1C_p}]
create_clock -name {refclk_1D_p} -period 8.000 -waveform { 0.000 4.000 } [get_ports {refclk_1D_p}]
create_clock -name {refclk_1E_p} -period 8.000 -waveform { 0.000 4.000 } [get_ports {refclk_1E_p}]
create_clock -name {refclk_1F_p} -period 8.000 -waveform { 0.000 4.000 } [get_ports {refclk_1F_p}]
create_clock -name {fpga_clk_i} -period 20.000 -waveform { 0.000 10.000 } [get_ports {fpga_clk_i}]
create_clock -name {pcie_refclk_clk} -period 8.000 -waveform { 0.000 4.000 } [get_ports {pcie_refclk_clk}]
create_clock -name {altera_reserved_tck} -period 41.660 -waveform { 0.000 20.830 } [get_ports {altera_reserved_tck}]
create_clock -name {FPGA_memory_mem1_dqs[0]_IN} -period 0.937 -waveform { 0.000 0.469 } [get_ports {FPGA_memory_mem1_dqs[0]}]
create_clock -name {FPGA_memory_mem1_dqs[1]_IN} -period 0.937 -waveform { 0.000 0.469 } [get_ports {FPGA_memory_mem1_dqs[1]}]
create_clock -name {FPGA_memory_mem1_dqs[2]_IN} -period 0.937 -waveform { 0.000 0.469 } [get_ports {FPGA_memory_mem1_dqs[2]}]
create_clock -name {FPGA_memory_mem1_dqs[3]_IN} -period 0.937 -waveform { 0.000 0.469 } [get_ports {FPGA_memory_mem1_dqs[3]}]
create_clock -name {hps_memory_mem_dqs[0]_IN} -period 0.937 -waveform { 0.000 0.469 } [get_ports {hps_memory_mem_dqs[0]}]
create_clock -name {hps_memory_mem_dqs[1]_IN} -period 0.937 -waveform { 0.000 0.469 } [get_ports {hps_memory_mem_dqs[1]}]
create_clock -name {hps_memory_mem_dqs[2]_IN} -period 0.937 -waveform { 0.000 0.469 } [get_ports {hps_memory_mem_dqs[2]}]
create_clock -name {hps_memory_mem_dqs[3]_IN} -period 0.937 -waveform { 0.000 0.469 } [get_ports {hps_memory_mem_dqs[3]}]
create_clock -name {hps_memory_mem_dqs[4]_IN} -period 0.937 -waveform { 0.000 0.469 } [get_ports {hps_memory_mem_dqs[4]}]
create_clock -name {sfp_refclk_1F_p} -period 8.000 -waveform { 0.000 4.000 } [get_ports {sfp_refclk_1F_p}]

# AD1939 Clocks
# Note the period of a 12.288 MHz clock is 81.380208333333329
create_clock -period "12.288 MHz" [get_ports AD1939_MCLK]
create_clock -period "12.288 MHz" [get_ports AD1939_ADC_ABCLK] 
create_clock -period  "0.192 MHz" [get_ports AD1939_ADC_ALRCLK]

#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {u0|emif_0|emif_0_vco_clk} -source [get_ports {clk_200}] -multiply_by 4 -master_clock {pio_system|emif_0_ref_clock} [get_nets {u0|emif_0|emif_0|arch|arch_inst|pll_inst|phy_clk_phs[0]}] 
create_generated_clock -name {u0|emif_0|emif_0_core_cal_master_clk} -source [get_nets {u0|emif_0|emif_0|arch|arch_inst|pll_inst|phy_clk_phs[0]}] -divide_by 7 -master_clock {u0|emif_0|emif_0_vco_clk} [get_pins {u0|emif_0|emif_0|arch|arch_inst|pll_inst|pll_inst|outclk[4]}] 
create_generated_clock -name {u0|emif_0|emif_0_core_cal_slave_clk} -source [get_nets {u0|emif_0|emif_0|arch|arch_inst|pll_inst|phy_clk_phs[0]}] -divide_by 7 -master_clock {u0|emif_0|emif_0_vco_clk} [get_pins {u0|emif_0|emif_0|arch|arch_inst|pll_inst|pll_inst|outclk[3]}] 
create_generated_clock -name {u0|emif_0|emif_0_phy_clk_0} -source [get_nets {u0|emif_0|emif_0|arch|arch_inst|pll_inst|phy_clk_phs[0]}] -divide_by 2 -phase 45/2 -master_clock {u0|emif_0|emif_0_vco_clk} [get_nets {u0|emif_0|emif_0|arch|arch_inst|pll_inst|phy_clk[0]}] 
create_generated_clock -name {u0|emif_0|emif_0_phy_clk_l_0} -source [get_nets {u0|emif_0|emif_0|arch|arch_inst|pll_inst|phy_clk_phs[0]}] -divide_by 4 -phase 45/4 -master_clock {u0|emif_0|emif_0_vco_clk} [get_nets {u0|emif_0|emif_0|arch|arch_inst|pll_inst|phy_clk[1]}] 
create_generated_clock -name {u0|emif_0|emif_0_wf_clk_0} -source [get_pins {u0|emif_0|emif_0|arch|arch_inst|pll_inst|pll_inst|vcoph[0]}] -master_clock {u0|emif_0|emif_0_vco_clk} [get_registers {u0|emif_0|emif_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[1].lane_gen[1].lane_inst~out_phy_reg}] 
create_generated_clock -name {u0|emif_0|emif_0_wf_clk_1} -source [get_pins {u0|emif_0|emif_0|arch|arch_inst|pll_inst|pll_inst|vcoph[0]}] -master_clock {u0|emif_0|emif_0_vco_clk} [get_registers {u0|emif_0|emif_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[1].lane_gen[2].lane_inst~out_phy_reg}] 
create_generated_clock -name {u0|emif_0|emif_0_wf_clk_2} -source [get_pins {u0|emif_0|emif_0|arch|arch_inst|pll_inst|pll_inst|vcoph[0]}] -master_clock {u0|emif_0|emif_0_vco_clk} [get_registers {u0|emif_0|emif_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[1].lane_gen[0].lane_inst~out_phy_reg}] 
create_generated_clock -name {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_0} -source [get_ports {ddr_ref_clk_i}] -multiply_by 4 -master_clock {pio_system|emif_a10_hps_0_ref_clock} [get_nets {u0|emif_a10_hps_0|emif_a10_hps_0|arch|arch_inst|pll_inst|phy_clk_phs[0]}] 
create_generated_clock -name {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_1} -source [get_ports {ddr_ref_clk_i}] -multiply_by 4 -master_clock {pio_system|emif_a10_hps_0_ref_clock} [get_nets {u0|emif_a10_hps_0|emif_a10_hps_0|arch|arch_inst|pll_inst|pll_inst~_DuplicateVCOPH0}] 
create_generated_clock -name {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_0} -source [get_nets {u0|emif_a10_hps_0|emif_a10_hps_0|arch|arch_inst|pll_inst|phy_clk_phs[0]}] -divide_by 2 -phase 45/2 -master_clock {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_0} [get_nets {u0|emif_a10_hps_0|emif_a10_hps_0|arch|arch_inst|pll_inst|phy_clk[0]}] 
create_generated_clock -name {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_1} -source [get_nets {u0|emif_a10_hps_0|emif_a10_hps_0|arch|arch_inst|pll_inst|pll_inst~_DuplicateVCOPH0}] -divide_by 2 -phase 45/2 -master_clock {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_1} [get_nets {u0|emif_a10_hps_0|emif_a10_hps_0|arch|arch_inst|pll_inst|pll_inst~_DuplicateLOADEN0}] 
create_generated_clock -name {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_l_0} -source [get_nets {u0|emif_a10_hps_0|emif_a10_hps_0|arch|arch_inst|pll_inst|phy_clk_phs[0]}] -divide_by 2 -phase 45/2 -master_clock {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_0} [get_nets {u0|emif_a10_hps_0|emif_a10_hps_0|arch|arch_inst|pll_inst|phy_clk[1]}] 
create_generated_clock -name {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_l_1} -source [get_nets {u0|emif_a10_hps_0|emif_a10_hps_0|arch|arch_inst|pll_inst|pll_inst~_DuplicateVCOPH0}] -divide_by 2 -phase 45/2 -master_clock {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_1} [get_nets {u0|emif_a10_hps_0|emif_a10_hps_0|arch|arch_inst|pll_inst|pll_inst~_DuplicateLVDS_CLK0}] 
create_generated_clock -name {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_0} -source [get_pins {u0|emif_a10_hps_0|emif_a10_hps_0|arch|arch_inst|pll_inst|pll_inst|vcoph[0]}] -master_clock {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_0} [get_registers {u0|emif_a10_hps_0|emif_a10_hps_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[0].lane_gen[1].lane_inst~out_phy_reg}] 
create_generated_clock -name {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_1} -source [get_pins {u0|emif_a10_hps_0|emif_a10_hps_0|arch|arch_inst|pll_inst|pll_inst|vcoph[0]}] -master_clock {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_0} [get_registers {u0|emif_a10_hps_0|emif_a10_hps_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[0].lane_gen[2].lane_inst~out_phy_reg}] 
create_generated_clock -name {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_2} -source [get_pins {u0|emif_a10_hps_0|emif_a10_hps_0|arch|arch_inst|pll_inst|pll_inst|vcoph[0]}] -master_clock {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_0} [get_registers {u0|emif_a10_hps_0|emif_a10_hps_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[0].lane_gen[0].lane_inst~out_phy_reg}] 
create_generated_clock -name {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_3} -source [get_pins {u0|emif_a10_hps_0|emif_a10_hps_0|arch|arch_inst|pll_inst|pll_inst~_Duplicate|vcoph[0]}] -master_clock {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_1} [get_registers {u0|emif_a10_hps_0|emif_a10_hps_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[0].lane_gen[3].lane_inst~out_phy_reg}] 
create_generated_clock -name {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_4} -source [get_pins {u0|emif_a10_hps_0|emif_a10_hps_0|arch|arch_inst|pll_inst|pll_inst~_Duplicate|vcoph[0]}] -master_clock {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_1} [get_registers {u0|emif_a10_hps_0|emif_a10_hps_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[1].lane_gen[0].lane_inst~out_phy_reg}] 
create_generated_clock -name {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_5} -source [get_pins {u0|emif_a10_hps_0|emif_a10_hps_0|arch|arch_inst|pll_inst|pll_inst~_Duplicate|vcoph[0]}] -master_clock {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_1} [get_registers {u0|emif_a10_hps_0|emif_a10_hps_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[1].lane_gen[1].lane_inst~out_phy_reg}] 
create_generated_clock -name {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_6} -source [get_pins {u0|emif_a10_hps_0|emif_a10_hps_0|arch|arch_inst|pll_inst|pll_inst|vcoph[0]}] -master_clock {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_0} [get_registers {u0|emif_a10_hps_0|emif_a10_hps_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[1].lane_gen[2].lane_inst~out_phy_reg}] 
create_generated_clock -name {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_7} -source [get_pins {u0|emif_a10_hps_0|emif_a10_hps_0|arch|arch_inst|pll_inst|pll_inst~_Duplicate|vcoph[0]}] -master_clock {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_1} [get_registers {u0|emif_a10_hps_0|emif_a10_hps_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[1].lane_gen[3].lane_inst~out_phy_reg}] 
create_generated_clock -name {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_coreclkin} -source [get_pins {u0|xcvr_2|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|out_pld_pcs_rx_clk_out~CLKENA0|outclk}] -duty_cycle 50/1 -multiply_by 1 -master_clock {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_pma_clk} [get_pins {u0|xcvr_2|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|gen_twentynm_hssi_rx_pld_pcs_interface.inst_twentynm_hssi_rx_pld_pcs_interface|pld_rx_clk}] 
create_generated_clock -name {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin} -source [get_pins {u0|xcvr_2|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|out_pld_pcs_rx_clk_out~CLKENA0|outclk}] -duty_cycle 50/1 -multiply_by 1 -master_clock {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk} [get_pins {u0|xcvr_2|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|gen_twentynm_hssi_rx_pld_pcs_interface.inst_twentynm_hssi_rx_pld_pcs_interface|pld_rx_clk}] 
create_generated_clock -name {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin} -source [get_pins {u0|xcvr_2|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|out_pld_pcs_rx_clk_out~CLKENA0|outclk}] -duty_cycle 50/1 -multiply_by 1 -master_clock {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk} [get_pins {u0|xcvr_2|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|gen_twentynm_hssi_rx_pld_pcs_interface.inst_twentynm_hssi_rx_pld_pcs_interface|pld_rx_clk}] 
create_generated_clock -name {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_coreclkin} -source [get_pins {u0|xcvr_2|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|out_pld_pcs_rx_clk_out~CLKENA0|outclk}] -duty_cycle 50/1 -multiply_by 1 -master_clock {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_pma_clk} [get_pins {u0|xcvr_2|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|gen_twentynm_hssi_rx_pld_pcs_interface.inst_twentynm_hssi_rx_pld_pcs_interface|pld_rx_clk}] 
create_generated_clock -name {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin} -source [get_pins {u0|xcvr_3|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|out_pld_pcs_rx_clk_out~CLKENA0|outclk}] -duty_cycle 50/1 -multiply_by 1 -master_clock {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk} [get_pins {u0|xcvr_3|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|gen_twentynm_hssi_rx_pld_pcs_interface.inst_twentynm_hssi_rx_pld_pcs_interface|pld_rx_clk}] 
create_generated_clock -name {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin} -source [get_pins {u0|xcvr_3|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|out_pld_pcs_rx_clk_out~CLKENA0|outclk}] -duty_cycle 50/1 -multiply_by 1 -master_clock {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk} [get_pins {u0|xcvr_3|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|gen_twentynm_hssi_rx_pld_pcs_interface.inst_twentynm_hssi_rx_pld_pcs_interface|pld_rx_clk}] 
create_generated_clock -name {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk} -source [get_pins {pll|iopll_0|altera_iopll_i|twentynm_pll|outclk[0]~CLKENA0|outclk}] -duty_cycle 50/1 -multiply_by 1 -master_clock {pll|iopll_0|outclk0} [get_pins {u0|xcvr_2|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_xcvr_avmm|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst|avmmclk}] 
create_generated_clock -name {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk} -source [get_pins {pll|iopll_0|altera_iopll_i|twentynm_pll|outclk[0]~CLKENA0|outclk}] -duty_cycle 50/1 -multiply_by 1 -master_clock {pll|iopll_0|outclk0} [get_pins {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_xcvr_avmm|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst|avmmclk}] 
create_generated_clock -name {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk} -source [get_pins {pll|iopll_0|altera_iopll_i|twentynm_pll|outclk[0]~CLKENA0|outclk}] -duty_cycle 50/1 -multiply_by 1 -master_clock {pll|iopll_0|outclk0} [get_pins {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_xcvr_avmm|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst|avmmclk}] 
create_generated_clock -name {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk} -source [get_pins {pll|iopll_0|altera_iopll_i|twentynm_pll|outclk[0]~CLKENA0|outclk}] -duty_cycle 50/1 -multiply_by 1 -master_clock {pll|iopll_0|outclk0} [get_pins {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_xcvr_avmm|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst|avmmclk}] 
create_generated_clock -name {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk} -source [get_pins {pll|iopll_0|altera_iopll_i|twentynm_pll|outclk[0]~CLKENA0|outclk}] -duty_cycle 50/1 -multiply_by 1 -master_clock {pll|iopll_0|outclk0} [get_pins {u0|xcvr_2|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_xcvr_avmm|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst|avmmclk}] 
create_generated_clock -name {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk} -source [get_pins {pll|iopll_0|altera_iopll_i|twentynm_pll|outclk[0]~CLKENA0|outclk}] -duty_cycle 50/1 -multiply_by 1 -master_clock {pll|iopll_0|outclk0} [get_pins {u0|xcvr_2|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_xcvr_avmm|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst|avmmclk}] 
create_generated_clock -name {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk} -source [get_pins {pll|iopll_0|altera_iopll_i|twentynm_pll|outclk[0]~CLKENA0|outclk}] -duty_cycle 50/1 -multiply_by 1 -master_clock {pll|iopll_0|outclk0} [get_pins {u0|xcvr_2|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_xcvr_avmm|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst|avmmclk}] 
create_generated_clock -name {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk} -source [get_pins {pll|iopll_0|altera_iopll_i|twentynm_pll|outclk[0]~CLKENA0|outclk}] -duty_cycle 50/1 -multiply_by 1 -master_clock {pll|iopll_0|outclk0} [get_pins {u0|xcvr_3|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_xcvr_avmm|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst|avmmclk}] 
create_generated_clock -name {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk} -source [get_pins {pll|iopll_0|altera_iopll_i|twentynm_pll|outclk[0]~CLKENA0|outclk}] -duty_cycle 50/1 -multiply_by 1 -master_clock {pll|iopll_0|outclk0} [get_pins {u0|xcvr_3|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_xcvr_avmm|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst|avmmclk}] 
create_generated_clock -name {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk} -source [get_pins {pll|iopll_0|altera_iopll_i|twentynm_pll|outclk[0]~CLKENA0|outclk}] -duty_cycle 50/1 -multiply_by 1 -master_clock {pll|iopll_0|outclk0} [get_pins {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_xcvr_avmm|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst|avmmclk}] 
create_generated_clock -name {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk} -source [get_pins {pll|iopll_0|altera_iopll_i|twentynm_pll|outclk[0]~CLKENA0|outclk}] -duty_cycle 50/1 -multiply_by 1 -master_clock {pll|iopll_0|outclk0} [get_pins {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_xcvr_avmm|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst|avmmclk}] 
create_generated_clock -name {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk} -source [get_pins {pll|iopll_0|altera_iopll_i|twentynm_pll|outclk[0]~CLKENA0|outclk}] -duty_cycle 50/1 -multiply_by 1 -master_clock {pll|iopll_0|outclk0} [get_pins {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_xcvr_avmm|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst|avmmclk}] 
create_generated_clock -name {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_coreclkin} -source [get_pins {u0|xcvr_2|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|out_pld_pcs_tx_clk_out~CLKENA0|outclk}] -duty_cycle 50/1 -multiply_by 1 -master_clock {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk} [get_pins {u0|xcvr_2|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|gen_twentynm_hssi_tx_pld_pcs_interface.inst_twentynm_hssi_tx_pld_pcs_interface|pld_tx_clk}] 
create_generated_clock -name {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin} -source [get_pins {u0|xcvr_2|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|out_pld_pcs_tx_clk_out~CLKENA0|outclk}] -duty_cycle 50/1 -multiply_by 1 -master_clock {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk} [get_pins {u0|xcvr_2|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|gen_twentynm_hssi_tx_pld_pcs_interface.inst_twentynm_hssi_tx_pld_pcs_interface|pld_tx_clk}] 
create_generated_clock -name {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin} -source [get_pins {u0|xcvr_2|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|out_pld_pcs_tx_clk_out~CLKENA0|outclk}] -duty_cycle 50/1 -multiply_by 1 -master_clock {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk} [get_pins {u0|xcvr_2|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|gen_twentynm_hssi_tx_pld_pcs_interface.inst_twentynm_hssi_tx_pld_pcs_interface|pld_tx_clk}] 
create_generated_clock -name {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_coreclkin} -source [get_pins {u0|xcvr_2|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|out_pld_pcs_tx_clk_out~CLKENA0|outclk}] -duty_cycle 50/1 -multiply_by 1 -master_clock {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk} [get_pins {u0|xcvr_2|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|gen_twentynm_hssi_tx_pld_pcs_interface.inst_twentynm_hssi_tx_pld_pcs_interface|pld_tx_clk}] 
create_generated_clock -name {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin} -source [get_pins {u0|xcvr_3|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|out_pld_pcs_tx_clk_out~CLKENA0|outclk}] -duty_cycle 50/1 -multiply_by 1 -master_clock {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk} [get_pins {u0|xcvr_3|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|gen_twentynm_hssi_tx_pld_pcs_interface.inst_twentynm_hssi_tx_pld_pcs_interface|pld_tx_clk}] 
create_generated_clock -name {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin} -source [get_pins {u0|xcvr_3|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|out_pld_pcs_tx_clk_out~CLKENA0|outclk}] -duty_cycle 50/1 -multiply_by 1 -master_clock {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk} [get_pins {u0|xcvr_3|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|gen_twentynm_hssi_tx_pld_pcs_interface.inst_twentynm_hssi_tx_pld_pcs_interface|pld_tx_clk}] 
create_generated_clock -name {pll|iopll_0|outclk0} -source [get_pins {pll|iopll_0|altera_iopll_i|twentynm_pll|iopll_inst|refclk[0]}] -duty_cycle 50/1 -multiply_by 16 -divide_by 8 -master_clock {fpga_clk_i} [get_pins {pll|iopll_0|altera_iopll_i|twentynm_pll|iopll_inst|outclk[0]}] 
create_generated_clock -name {pll|iopll_0|outclk1} -source [get_pins {pll|iopll_0|altera_iopll_i|twentynm_pll|iopll_inst|refclk[0]}] -duty_cycle 50/1 -multiply_by 16 -divide_by 3 -master_clock {fpga_clk_i} [get_pins {pll|iopll_0|altera_iopll_i|twentynm_pll|iopll_inst|outclk[1]}] 
create_generated_clock -name {pll|iopll_0|outclk2} -source [get_pins {pll|iopll_0|altera_iopll_i|twentynm_pll|iopll_inst|refclk[0]}] -duty_cycle 50/1 -multiply_by 16 -divide_by 40 -master_clock {fpga_clk_i} [get_pins {pll|iopll_0|altera_iopll_i|twentynm_pll|iopll_inst|outclk[2]}] 
create_generated_clock -name {u0|xcvr_4|xcvr_native_a10_0|rx_coreclkin} -source [get_pins {u0|xcvr_4|xcvr_native_a10_0|sfp_1f_xcvr_xcvr_native_a10_0|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|out_pld_pcs_rx_clk_out~CLKENA0|outclk}] -duty_cycle 50/1 -multiply_by 1 -master_clock {u0|xcvr_4|xcvr_native_a10_0|rx_pma_clk} [get_pins {u0|xcvr_4|xcvr_native_a10_0|sfp_1f_xcvr_xcvr_native_a10_0|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|gen_twentynm_hssi_rx_pld_pcs_interface.inst_twentynm_hssi_rx_pld_pcs_interface|pld_rx_clk}] 
create_generated_clock -name {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk} -source [get_pins {pll|iopll_0|altera_iopll_i|twentynm_pll|outclk[0]~CLKENA0|outclk}] -duty_cycle 50/1 -multiply_by 1 -master_clock {pll|iopll_0|outclk0} [get_pins {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_xcvr_avmm|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst|avmmclk}] 
create_generated_clock -name {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk} -source [get_pins {pll|iopll_0|altera_iopll_i|twentynm_pll|outclk[0]~CLKENA0|outclk}] -duty_cycle 50/1 -multiply_by 1 -master_clock {pll|iopll_0|outclk0} [get_pins {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_xcvr_avmm|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst|avmmclk}] 
create_generated_clock -name {u0|xcvr_4|xcvr_native_a10_0|avmmclk} -source [get_pins {pll|iopll_0|altera_iopll_i|twentynm_pll|outclk[0]~CLKENA0|outclk}] -duty_cycle 50/1 -multiply_by 1 -master_clock {pll|iopll_0|outclk0} [get_pins {u0|xcvr_4|xcvr_native_a10_0|sfp_1f_xcvr_xcvr_native_a10_0|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_xcvr_avmm|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst|avmmclk}] 
create_generated_clock -name {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_pma_clk} -source [get_pins {u0|xcvr_2|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pma|gen_twentynm_hssi_pma_cdr_refclk_select_mux.inst_twentynm_hssi_pma_cdr_refclk_select_mux|ref_iqclk[1]}] -duty_cycle 50/1 -multiply_by 5 -divide_by 8 -master_clock {refclk_1E_p} [get_pins {u0|xcvr_2|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pma|gen_twentynm_hssi_pma_rx_deser.inst_twentynm_hssi_pma_rx_deser|clkdiv}] 
create_generated_clock -name {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_pma_clk} -source [get_pins {u0|xcvr_2|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pma|gen_twentynm_hssi_pma_cdr_refclk_select_mux.inst_twentynm_hssi_pma_cdr_refclk_select_mux|ref_iqclk[0]}] -duty_cycle 50/1 -multiply_by 5 -divide_by 8 -master_clock {refclk_1E_p} [get_pins {u0|xcvr_2|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pma|gen_twentynm_hssi_pma_rx_deser.inst_twentynm_hssi_pma_rx_deser|clkdiv}] 
create_generated_clock -name {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk} -source [get_pins {u0|xcvr_3|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pma|gen_twentynm_hssi_pma_cdr_refclk_select_mux.inst_twentynm_hssi_pma_cdr_refclk_select_mux|ref_iqclk[1]}] -duty_cycle 50/1 -multiply_by 5 -divide_by 8 -master_clock {refclk_1F_p} [get_pins {u0|xcvr_3|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pma|gen_twentynm_hssi_pma_rx_deser.inst_twentynm_hssi_pma_rx_deser|clkdiv}] 
create_generated_clock -name {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk} -source [get_pins {u0|xcvr_3|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pma|gen_twentynm_hssi_pma_cdr_refclk_select_mux.inst_twentynm_hssi_pma_cdr_refclk_select_mux|ref_iqclk[1]}] -duty_cycle 50/1 -multiply_by 5 -divide_by 8 -master_clock {refclk_1F_p} [get_pins {u0|xcvr_3|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pma|gen_twentynm_hssi_pma_rx_deser.inst_twentynm_hssi_pma_rx_deser|clkdiv}] 
create_generated_clock -name {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk} -source [get_pins {u0|xcvr_2|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pma|gen_twentynm_hssi_pma_cdr_refclk_select_mux.inst_twentynm_hssi_pma_cdr_refclk_select_mux|ref_iqclk[1]}] -duty_cycle 50/1 -multiply_by 5 -divide_by 8 -master_clock {refclk_1E_p} [get_pins {u0|xcvr_2|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pma|gen_twentynm_hssi_pma_rx_deser.inst_twentynm_hssi_pma_rx_deser|clkdiv}] 
create_generated_clock -name {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk} -source [get_pins {u0|xcvr_2|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pma|gen_twentynm_hssi_pma_cdr_refclk_select_mux.inst_twentynm_hssi_pma_cdr_refclk_select_mux|ref_iqclk[1]}] -duty_cycle 50/1 -multiply_by 5 -divide_by 8 -master_clock {refclk_1E_p} [get_pins {u0|xcvr_2|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pma|gen_twentynm_hssi_pma_rx_deser.inst_twentynm_hssi_pma_rx_deser|clkdiv}] 
create_generated_clock -name {u0|xcvr_4|xcvr_native_a10_0|tx_coreclkin} -source [get_pins {u0|xcvr_4|xcvr_native_a10_0|sfp_1f_xcvr_xcvr_native_a10_0|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|out_pld_pcs_tx_clk_out~CLKENA0|outclk}] -duty_cycle 50/1 -multiply_by 1 -master_clock {u0|xcvr_4|xcvr_native_a10_0|tx_pma_clk} [get_pins {u0|xcvr_4|xcvr_native_a10_0|sfp_1f_xcvr_xcvr_native_a10_0|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|gen_twentynm_hssi_tx_pld_pcs_interface.inst_twentynm_hssi_tx_pld_pcs_interface|pld_tx_clk}] 
create_generated_clock -name {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|avmmclk} -source [get_pins {pcie_refclk_clk~inputFITTER_INSERTEDCLKENA0|outclk}] -duty_cycle 50/1 -multiply_by 1 -master_clock {pcie_refclk_clk} [get_pins {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|altpcie_a10_hip_pipen1b|g_xcvr.altpcie_a10_hip_pllnphy|g_xcvr.g_phy_g2x1.phy_g2x1|phy_g2x1|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_xcvr_avmm|avmm_atom_insts[0].twentynm_hssi_avmm_if_inst|avmmclk}] 
create_generated_clock -name {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_clkout} -source [get_pins {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|altpcie_a10_hip_pipen1b|g_xcvr.altpcie_a10_hip_pllnphy|g_xcvr.g_phy_g2x1.phy_g2x1|phy_g2x1|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|gen_twentynm_hssi_8g_rx_pcs.inst_twentynm_hssi_8g_rx_pcs|byte_deserializer_pld_clk_div_by_4_txclk_reg}] -duty_cycle 50/1 -multiply_by 1 -divide_by 4 -master_clock {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_pma_clk} [get_pins {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|altpcie_a10_hip_pipen1b|g_xcvr.altpcie_a10_hip_pllnphy|g_xcvr.g_phy_g2x1.phy_g2x1|phy_g2x1|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|gen_twentynm_hssi_8g_rx_pcs.inst_twentynm_hssi_8g_rx_pcs|sta_rx_clk2_by4_1_out}] 
create_generated_clock -name {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_clk} -source [get_pins {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|altpcie_a10_hip_pipen1b|g_xcvr.altpcie_a10_hip_pllnphy|g_xcvr.g_phy_g2x1.phy_g2x1|phy_g2x1|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|gen_twentynm_hssi_8g_rx_pcs.inst_twentynm_hssi_8g_rx_pcs|byte_deserializer_pcs_clk_div_by_4_txclk_reg}] -duty_cycle 50/1 -multiply_by 1 -divide_by 4 -master_clock {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_pma_clk} [get_pins {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|altpcie_a10_hip_pipen1b|g_xcvr.altpcie_a10_hip_pllnphy|g_xcvr.g_phy_g2x1.phy_g2x1|phy_g2x1|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|gen_twentynm_hssi_8g_rx_pcs.inst_twentynm_hssi_8g_rx_pcs|sta_rx_clk2_by4_1}] 
create_generated_clock -name {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|hip_cmn_clk[0]} -source [get_pins {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|altpcie_a10_hip_pipen1b|g_xcvr.altpcie_a10_hip_pllnphy|g_xcvr.g_phy_g2x1.phy_g2x1|phy_g2x1|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|gen_twentynm_hssi_common_pcs_pma_interface.inst_twentynm_hssi_common_pcs_pma_interface|pma_hclk}] -duty_cycle 50/1 -multiply_by 1 -master_clock {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pll_pcie_clk} [get_pins {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|altpcie_a10_hip_pipen1b|g_xcvr.altpcie_a10_hip_pllnphy|g_xcvr.g_phy_g2x1.phy_g2x1|phy_g2x1|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|gen_twentynm_hssi_common_pld_pcs_interface.inst_twentynm_hssi_common_pld_pcs_interface|hip_cmn_clk[0]}] 
create_generated_clock -name {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT} -source [get_pins {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|altpcie_a10_hip_pipen1b|wys|pll_fixed_clk_ch0}] -duty_cycle 50/1 -multiply_by 1 -divide_by 4 -master_clock {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|hip_cmn_clk[0]} [get_pins {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|altpcie_a10_hip_pipen1b|wys|core_clk_out}] 
create_generated_clock -name {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pld_clk} -source [get_pins {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|altpcie_a10_hip_pipen1b|wys~CORE_CLK_OUTCLKENA0|outclk}] -duty_cycle 50/1 -multiply_by 1 -master_clock {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT} [get_pins {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|altpcie_a10_hip_pipen1b|wys|pld_clk}] 
create_generated_clock -name {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|gen_twentynm_hssi_pma_tx_cgb.inst_twentynm_hssi_pma_tx_cgb~O_HIFREQCLKN} -source [get_pins {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|altpcie_a10_hip_pipen1b|g_xcvr.altpcie_a10_hip_pllnphy|g_pll.g_pll_g1g2x1.fpll_g1g2x1|fpll_g1g2x1|fpll_refclk_select_inst|ref_iqclk[11]}] -duty_cycle 50/1 -multiply_by 25 -master_clock {pcie_refclk_clk} -invert [get_pins {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|altpcie_a10_hip_pipen1b|g_xcvr.altpcie_a10_hip_pllnphy|g_xcvr.g_phy_g2x1.phy_g2x1|phy_g2x1|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pma|gen_twentynm_hssi_pma_tx_cgb.inst_twentynm_hssi_pma_tx_cgb|hifreqclkn}] 
create_generated_clock -name {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_pma_clk} -source [get_pins {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|altpcie_a10_hip_pipen1b|g_xcvr.altpcie_a10_hip_pllnphy|g_pll.g_pll_g1g2x1.fpll_g1g2x1|fpll_g1g2x1|fpll_refclk_select_inst|ref_iqclk[11]}] -duty_cycle 50/1 -multiply_by 5 -master_clock {pcie_refclk_clk} [get_pins {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|altpcie_a10_hip_pipen1b|g_xcvr.altpcie_a10_hip_pllnphy|g_xcvr.g_phy_g2x1.phy_g2x1|phy_g2x1|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pma|gen_twentynm_hssi_pma_tx_cgb.inst_twentynm_hssi_pma_tx_cgb|cpulse_out_bus[0]}] 
create_generated_clock -name {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pma_hclk_by2} -source [get_pins {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|altpcie_a10_hip_pipen1b|g_xcvr.altpcie_a10_hip_pllnphy|g_xcvr.g_phy_g2x1.phy_g2x1|phy_g2x1|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|gen_twentynm_hssi_common_pcs_pma_interface.inst_twentynm_hssi_common_pcs_pma_interface|pma_hclk}] -duty_cycle 50/1 -multiply_by 1 -divide_by 2 -master_clock {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pll_pcie_clk} [get_pins {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|altpcie_a10_hip_pipen1b|g_xcvr.altpcie_a10_hip_pllnphy|g_xcvr.g_phy_g2x1.phy_g2x1|phy_g2x1|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|gen_twentynm_hssi_common_pcs_pma_interface.inst_twentynm_hssi_common_pcs_pma_interface|sta_pma_hclk_by2}] 
create_generated_clock -name {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_fref} -source [get_pins {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|altpcie_a10_hip_pipen1b|g_xcvr.altpcie_a10_hip_pllnphy|g_xcvr.g_phy_g2x1.phy_g2x1|phy_g2x1|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pma|gen_twentynm_hssi_pma_cdr_refclk_select_mux.inst_twentynm_hssi_pma_cdr_refclk_select_mux|ref_iqclk[11]}] -duty_cycle 50/1 -multiply_by 1 -master_clock {pcie_refclk_clk} [get_pins {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|altpcie_a10_hip_pipen1b|g_xcvr.altpcie_a10_hip_pllnphy|g_xcvr.g_phy_g2x1.phy_g2x1|phy_g2x1|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pma|gen_twentynm_hssi_pma_channel_pll.inst_twentynm_hssi_pma_channel_pll|fref}] 
create_generated_clock -name {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_pma_clk} -source [get_pins {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|altpcie_a10_hip_pipen1b|g_xcvr.altpcie_a10_hip_pllnphy|g_xcvr.g_phy_g2x1.phy_g2x1|phy_g2x1|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pma|gen_twentynm_hssi_pma_cdr_refclk_select_mux.inst_twentynm_hssi_pma_cdr_refclk_select_mux|ref_iqclk[11]}] -duty_cycle 50/1 -multiply_by 5 -master_clock {pcie_refclk_clk} [get_pins {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|altpcie_a10_hip_pipen1b|g_xcvr.altpcie_a10_hip_pllnphy|g_xcvr.g_phy_g2x1.phy_g2x1|phy_g2x1|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pma|gen_twentynm_hssi_pma_rx_deser.inst_twentynm_hssi_pma_rx_deser|clkdiv}] 
create_generated_clock -name {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_clkout} -source [get_pins {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|altpcie_a10_hip_pipen1b|g_xcvr.altpcie_a10_hip_pllnphy|g_xcvr.g_phy_g2x1.phy_g2x1|phy_g2x1|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|gen_twentynm_hssi_8g_tx_pcs.inst_twentynm_hssi_8g_tx_pcs|byte_serializer_pld_clk_div_by_4_reg}] -duty_cycle 50/1 -multiply_by 1 -divide_by 4 -master_clock {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_pma_clk} [get_pins {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|altpcie_a10_hip_pipen1b|g_xcvr.altpcie_a10_hip_pllnphy|g_xcvr.g_phy_g2x1.phy_g2x1|phy_g2x1|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|gen_twentynm_hssi_8g_tx_pcs.inst_twentynm_hssi_8g_tx_pcs|sta_tx_clk2_by4_1_out}] 
create_generated_clock -name {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_clk} -source [get_pins {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|altpcie_a10_hip_pipen1b|g_xcvr.altpcie_a10_hip_pllnphy|g_xcvr.g_phy_g2x1.phy_g2x1|phy_g2x1|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|gen_twentynm_hssi_8g_tx_pcs.inst_twentynm_hssi_8g_tx_pcs|byte_serializer_pcs_clk_div_by_4_reg}] -duty_cycle 50/1 -multiply_by 1 -divide_by 4 -master_clock {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_pma_clk} [get_pins {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|altpcie_a10_hip_pipen1b|g_xcvr.altpcie_a10_hip_pllnphy|g_xcvr.g_phy_g2x1.phy_g2x1|phy_g2x1|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|gen_twentynm_hssi_8g_tx_pcs.inst_twentynm_hssi_8g_tx_pcs|sta_tx_clk2_by4_1}] 
create_generated_clock -name {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pll_pcie_clk} -source [get_pins {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|altpcie_a10_hip_pipen1b|g_xcvr.altpcie_a10_hip_pllnphy|g_pll.g_pll_g1g2x1.fpll_g1g2x1|fpll_g1g2x1|fpll_refclk_select_inst|ref_iqclk[11]}] -duty_cycle 50/1 -multiply_by 5 -master_clock {pcie_refclk_clk} [get_pins {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|altpcie_a10_hip_pipen1b|g_xcvr.altpcie_a10_hip_pllnphy|g_pll.g_pll_g1g2x1.fpll_g1g2x1|fpll_g1g2x1|fpll_inst|hclk_out}] 
create_generated_clock -name {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk} -source [get_pins {u0|xcvr_1|xcvr_fpll_a10_0|xcvr_fpll_a10_0|fpll_refclk_select_inst|ref_iqclk[1]}] -duty_cycle 50/1 -multiply_by 25 -divide_by 8 -master_clock {refclk_1D_p} [get_pins {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pma|gen_twentynm_hssi_pma_tx_cgb.inst_twentynm_hssi_pma_tx_cgb|cpulse_out_bus[0]}] 
create_generated_clock -name {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk} -source [get_pins {u0|xcvr_1|xcvr_fpll_a10_0|xcvr_fpll_a10_0|fpll_refclk_select_inst|ref_iqclk[1]}] -duty_cycle 50/1 -multiply_by 25 -divide_by 8 -master_clock {refclk_1D_p} [get_pins {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pma|gen_twentynm_hssi_pma_tx_cgb.inst_twentynm_hssi_pma_tx_cgb|cpulse_out_bus[0]}] 
create_generated_clock -name {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk} -source [get_pins {u0|xcvr_1|xcvr_fpll_a10_0|xcvr_fpll_a10_0|fpll_refclk_select_inst|ref_iqclk[1]}] -duty_cycle 50/1 -multiply_by 25 -divide_by 8 -master_clock {refclk_1D_p} [get_pins {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pma|gen_twentynm_hssi_pma_tx_cgb.inst_twentynm_hssi_pma_tx_cgb|cpulse_out_bus[0]}] 
create_generated_clock -name {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk} -source [get_pins {u0|xcvr_1|xcvr_fpll_a10_0|xcvr_fpll_a10_0|fpll_refclk_select_inst|ref_iqclk[1]}] -duty_cycle 50/1 -multiply_by 25 -divide_by 8 -master_clock {refclk_1D_p} [get_pins {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pma|gen_twentynm_hssi_pma_tx_cgb.inst_twentynm_hssi_pma_tx_cgb|cpulse_out_bus[0]}] 
create_generated_clock -name {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk} -source [get_pins {u0|xcvr_2|fmc_1e_xcvr_xcvr_fpll_a10_0|fmc_1e_xcvr_xcvr_fpll_a10_0|fpll_refclk_select_inst|ref_iqclk[1]}] -duty_cycle 50/1 -multiply_by 25 -divide_by 8 -master_clock {refclk_1E_p} [get_pins {u0|xcvr_2|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pma|gen_twentynm_hssi_pma_tx_cgb.inst_twentynm_hssi_pma_tx_cgb|cpulse_out_bus[0]}] 
create_generated_clock -name {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk} -source [get_pins {u0|xcvr_2|fmc_1e_xcvr_xcvr_fpll_a10_0|fmc_1e_xcvr_xcvr_fpll_a10_0|fpll_refclk_select_inst|ref_iqclk[1]}] -duty_cycle 50/1 -multiply_by 25 -divide_by 8 -master_clock {refclk_1E_p} [get_pins {u0|xcvr_2|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pma|gen_twentynm_hssi_pma_tx_cgb.inst_twentynm_hssi_pma_tx_cgb|cpulse_out_bus[0]}] 
create_generated_clock -name {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk} -source [get_pins {u0|xcvr_2|fmc_1e_xcvr_xcvr_fpll_a10_0|fmc_1e_xcvr_xcvr_fpll_a10_0|fpll_refclk_select_inst|ref_iqclk[1]}] -duty_cycle 50/1 -multiply_by 25 -divide_by 8 -master_clock {refclk_1E_p} [get_pins {u0|xcvr_2|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pma|gen_twentynm_hssi_pma_tx_cgb.inst_twentynm_hssi_pma_tx_cgb|cpulse_out_bus[0]}] 
create_generated_clock -name {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk} -source [get_pins {u0|xcvr_2|fmc_1e_xcvr_xcvr_fpll_a10_0|fmc_1e_xcvr_xcvr_fpll_a10_0|fpll_refclk_select_inst|ref_iqclk[1]}] -duty_cycle 50/1 -multiply_by 25 -divide_by 8 -master_clock {refclk_1E_p} [get_pins {u0|xcvr_2|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pma|gen_twentynm_hssi_pma_tx_cgb.inst_twentynm_hssi_pma_tx_cgb|cpulse_out_bus[0]}] 
create_generated_clock -name {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk} -source [get_pins {u0|xcvr_3|xcvr_fpll_a10_0|xcvr_fpll_a10_0|fpll_refclk_select_inst|ref_iqclk[1]}] -duty_cycle 50/1 -multiply_by 25 -divide_by 8 -master_clock {refclk_1F_p} [get_pins {u0|xcvr_3|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pma|gen_twentynm_hssi_pma_tx_cgb.inst_twentynm_hssi_pma_tx_cgb|cpulse_out_bus[0]}] 
create_generated_clock -name {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk} -source [get_pins {u0|xcvr_3|xcvr_fpll_a10_0|xcvr_fpll_a10_0|fpll_refclk_select_inst|ref_iqclk[1]}] -duty_cycle 50/1 -multiply_by 25 -divide_by 8 -master_clock {refclk_1F_p} [get_pins {u0|xcvr_3|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pma|gen_twentynm_hssi_pma_tx_cgb.inst_twentynm_hssi_pma_tx_cgb|cpulse_out_bus[0]}] 
create_generated_clock -name {u0|xcvr_4|xcvr_native_a10_0|tx_pma_clk} -source [get_pins {u0|xcvr_4|sfp_1f_xcvr_xcvr_fpll_a10_0|sfp_1f_xcvr_xcvr_fpll_a10_0|fpll_refclk_select_inst|ref_iqclk[9]}] -duty_cycle 50/1 -multiply_by 5 -divide_by 2 -master_clock {sfp_refclk_1F_p} [get_pins {u0|xcvr_4|xcvr_native_a10_0|sfp_1f_xcvr_xcvr_native_a10_0|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pma|gen_twentynm_hssi_pma_tx_cgb.inst_twentynm_hssi_pma_tx_cgb|cpulse_out_bus[0]}] 
create_generated_clock -name {u0|xcvr_4|xcvr_native_a10_0|rx_pma_clk} -source [get_pins {u0|xcvr_4|xcvr_native_a10_0|sfp_1f_xcvr_xcvr_native_a10_0|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pma|gen_twentynm_hssi_pma_cdr_refclk_select_mux.inst_twentynm_hssi_pma_cdr_refclk_select_mux|ref_iqclk[10]}] -duty_cycle 50/1 -multiply_by 5 -divide_by 2 -master_clock {sfp_refclk_1F_p} [get_pins {u0|xcvr_4|xcvr_native_a10_0|sfp_1f_xcvr_xcvr_native_a10_0|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pma|gen_twentynm_hssi_pma_rx_deser.inst_twentynm_hssi_pma_rx_deser|clkdiv}] 
create_generated_clock -name {u0|iopll_0|pio_iopll_0|outclk0} -source [get_pins {u0|iopll_0|pio_iopll_0|altera_iopll_i|twentynm_pll|iopll_inst|refclk[0]}] -duty_cycle 50/1 -multiply_by 46 -divide_by 25 -master_clock {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT} [get_pins {u0|iopll_0|pio_iopll_0|altera_iopll_i|twentynm_pll|iopll_inst|outclk[0]}] 
create_generated_clock -name {u0|iopll_0|pio_iopll_0|outclk1} -source [get_pins {u0|iopll_0|pio_iopll_0|altera_iopll_i|twentynm_pll|iopll_inst|refclk[0]}] -duty_cycle 50/1 -multiply_by 46 -divide_by 45 -master_clock {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT} [get_pins {u0|iopll_0|pio_iopll_0|altera_iopll_i|twentynm_pll|iopll_inst|outclk[1]}] 
create_generated_clock -name {u0|emif_0|emif_0_vco_clk_1} -source [get_ports {clk_200}] -multiply_by 4 -master_clock {pio_system|emif_0_ref_clock} [get_nets {u0|emif_0|emif_0|arch|arch_inst|pll_inst|pll_inst~_DuplicateVCOPH0}] 
create_generated_clock -name {u0|emif_0|emif_0_core_usr_clk} -source [get_nets {u0|emif_0|emif_0|arch|arch_inst|pll_inst|phy_clk_phs[0]}] -divide_by 4 -phase 45/4 -master_clock {u0|emif_0|emif_0_vco_clk} [get_pins {u0|emif_0|emif_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[0].tile_ctrl_inst|pa_core_clk_out[0]}] 
create_generated_clock -name {u0|emif_0|emif_0_core_extra_clk_0} -source [get_nets {u0|emif_0|emif_0|arch|arch_inst|pll_inst|phy_clk_phs[0]}] -divide_by 10 -master_clock {u0|emif_0|emif_0_vco_clk} [get_pins {u0|emif_0|emif_0|arch|arch_inst|pll_inst|pll_inst|outclk[5]}] 
create_generated_clock -name {u0|emif_0|emif_0_phy_clk_1} -source [get_nets {u0|emif_0|emif_0|arch|arch_inst|pll_inst|pll_inst~_DuplicateVCOPH0}] -divide_by 2 -phase 45/2 -master_clock {u0|emif_0|emif_0_vco_clk_1} [get_nets {u0|emif_0|emif_0|arch|arch_inst|pll_inst|pll_inst~_DuplicateLOADEN0}] 
create_generated_clock -name {u0|emif_0|emif_0_phy_clk_l_1} -source [get_nets {u0|emif_0|emif_0|arch|arch_inst|pll_inst|pll_inst~_DuplicateVCOPH0}] -divide_by 4 -phase 45/4 -master_clock {u0|emif_0|emif_0_vco_clk_1} [get_nets {u0|emif_0|emif_0|arch|arch_inst|pll_inst|pll_inst~_DuplicateLVDS_CLK0}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -setup 0.101  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -hold 0.105  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -setup 0.101  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -hold 0.105  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -setup 0.101  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -hold 0.105  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -setup 0.101  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -hold 0.105  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -rise_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -setup 0.141  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -rise_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -hold 0.145  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -fall_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -setup 0.141  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -fall_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -hold 0.145  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -setup 0.101  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -hold 0.105  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -setup 0.101  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -hold 0.105  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -setup 0.101  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -hold 0.105  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -setup 0.101  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -hold 0.105  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -rise_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -setup 0.141  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -rise_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -hold 0.145  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -fall_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -setup 0.141  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -fall_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -hold 0.145  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -setup 0.122  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -hold 0.153  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -setup 0.122  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -hold 0.153  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}]  0.050  -enable_same_physical_edge
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}]  0.050  -enable_same_physical_edge
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -setup 0.122  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -hold 0.153  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -setup 0.122  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -hold 0.153  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -setup 0.259  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -hold 0.290  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -setup 0.259  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -hold 0.290  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -setup 0.259  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -hold 0.290  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -setup 0.259  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -hold 0.290  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -setup 0.122  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -hold 0.153  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -setup 0.122  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -hold 0.153  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}]  0.050  -enable_same_physical_edge
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}]  0.050  -enable_same_physical_edge
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -setup 0.122  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -hold 0.153  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -setup 0.122  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -hold 0.153  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -setup 0.259  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -hold 0.290  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -setup 0.259  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -hold 0.290  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -setup 0.259  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -hold 0.290  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -setup 0.259  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -hold 0.290  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -setup 0.122  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -hold 0.153  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -setup 0.122  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -hold 0.153  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}]  0.050  -enable_same_physical_edge
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}]  0.050  -enable_same_physical_edge
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -setup 0.122  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -hold 0.153  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -setup 0.122  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -hold 0.153  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -setup 0.259  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -hold 0.290  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -setup 0.259  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -hold 0.290  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -setup 0.259  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -hold 0.290  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -setup 0.259  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -hold 0.290  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -setup 0.122  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -hold 0.153  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -setup 0.122  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -hold 0.153  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}]  0.050  -enable_same_physical_edge
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}]  0.050  -enable_same_physical_edge
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -setup 0.122  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -hold 0.153  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -setup 0.122  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -hold 0.153  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -setup 0.259  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -hold 0.290  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -setup 0.259  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -hold 0.290  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -setup 0.259  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -hold 0.290  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -setup 0.259  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -hold 0.290  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -setup 0.101  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -hold 0.105  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -setup 0.101  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -hold 0.105  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -setup 0.101  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -hold 0.105  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -setup 0.101  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -hold 0.105  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -rise_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -setup 0.141  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -rise_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -hold 0.145  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -fall_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -setup 0.141  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -fall_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -hold 0.145  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -setup 0.101  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -hold 0.105  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -setup 0.101  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -hold 0.105  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -setup 0.101  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -hold 0.105  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -setup 0.101  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -hold 0.105  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -rise_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -setup 0.141  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -rise_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -hold 0.145  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -fall_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -setup 0.141  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -fall_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -hold 0.145  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -setup 0.122  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -hold 0.153  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -setup 0.122  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -hold 0.153  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -setup 0.162  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -hold 0.193  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -setup 0.162  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -hold 0.193  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}]  0.030  -enable_same_physical_edge
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}]  0.030  -enable_same_physical_edge
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -setup 0.259  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -hold 0.290  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -setup 0.259  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -hold 0.290  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -setup 0.259  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -hold 0.290  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -setup 0.259  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -hold 0.290  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -setup 0.122  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -hold 0.153  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -setup 0.122  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -hold 0.153  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -setup 0.162  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -hold 0.193  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -setup 0.162  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -hold 0.193  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}]  0.030  -enable_same_physical_edge
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}]  0.030  -enable_same_physical_edge
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -setup 0.259  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -hold 0.290  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -setup 0.259  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -hold 0.290  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -setup 0.259  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -hold 0.290  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -setup 0.259  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -hold 0.290  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -setup 0.238  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -hold 0.242  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -setup 0.238  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -hold 0.242  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -setup 0.238  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -hold 0.242  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -setup 0.238  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -hold 0.242  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -rise_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -setup 0.238  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -rise_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -hold 0.242  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -fall_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -setup 0.238  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -fall_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -hold 0.242  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -setup 0.238  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -hold 0.242  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -setup 0.238  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -hold 0.242  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -setup 0.238  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -hold 0.242  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -setup 0.238  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -hold 0.242  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -rise_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -setup 0.238  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -rise_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -hold 0.242  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -fall_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -setup 0.238  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -fall_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -hold 0.242  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -setup 0.238  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -hold 0.242  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -setup 0.238  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -hold 0.242  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -setup 0.238  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -hold 0.242  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -setup 0.238  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -hold 0.242  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -rise_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -setup 0.238  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -rise_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -hold 0.242  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -fall_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -setup 0.238  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -fall_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -hold 0.242  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -setup 0.238  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -hold 0.242  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -setup 0.238  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] -hold 0.242  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -setup 0.238  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -rise_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -hold 0.242  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -setup 0.238  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -fall_to [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] -hold 0.242  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -rise_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -setup 0.238  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -rise_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -hold 0.242  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -fall_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -setup 0.238  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -fall_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -hold 0.242  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_0}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_0}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_0}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_0}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_vco_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_vco_clk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_vco_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_vco_clk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_vco_clk}] -rise_to [get_clocks {pio_system|emif_0_ref_clock}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_vco_clk}] -fall_to [get_clocks {pio_system|emif_0_ref_clock}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_vco_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_vco_clk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_vco_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_vco_clk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_vco_clk}] -rise_to [get_clocks {pio_system|emif_0_ref_clock}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_vco_clk}] -fall_to [get_clocks {pio_system|emif_0_ref_clock}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_IN}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_IN}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_IN}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_IN}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_IN}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_IN}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_IN}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_IN}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_IN}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_IN}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_IN}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_IN}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {FPGA_memory_mem1_dqs[3]_IN}] -rise_to [get_clocks {FPGA_memory_mem1_dqs[3]_IN}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {FPGA_memory_mem1_dqs[3]_IN}] -fall_to [get_clocks {FPGA_memory_mem1_dqs[3]_IN}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {FPGA_memory_mem1_dqs[3]_IN}] -rise_to [get_clocks {FPGA_memory_mem1_dqs[3]_IN}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {FPGA_memory_mem1_dqs[3]_IN}] -fall_to [get_clocks {FPGA_memory_mem1_dqs[3]_IN}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {FPGA_memory_mem1_dqs[2]_IN}] -rise_to [get_clocks {FPGA_memory_mem1_dqs[2]_IN}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {FPGA_memory_mem1_dqs[2]_IN}] -fall_to [get_clocks {FPGA_memory_mem1_dqs[2]_IN}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {FPGA_memory_mem1_dqs[2]_IN}] -rise_to [get_clocks {FPGA_memory_mem1_dqs[2]_IN}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {FPGA_memory_mem1_dqs[2]_IN}] -fall_to [get_clocks {FPGA_memory_mem1_dqs[2]_IN}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {FPGA_memory_mem1_dqs[1]_IN}] -rise_to [get_clocks {FPGA_memory_mem1_dqs[1]_IN}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {FPGA_memory_mem1_dqs[1]_IN}] -fall_to [get_clocks {FPGA_memory_mem1_dqs[1]_IN}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {FPGA_memory_mem1_dqs[1]_IN}] -rise_to [get_clocks {FPGA_memory_mem1_dqs[1]_IN}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {FPGA_memory_mem1_dqs[1]_IN}] -fall_to [get_clocks {FPGA_memory_mem1_dqs[1]_IN}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {FPGA_memory_mem1_dqs[0]_IN}] -rise_to [get_clocks {FPGA_memory_mem1_dqs[0]_IN}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {FPGA_memory_mem1_dqs[0]_IN}] -fall_to [get_clocks {FPGA_memory_mem1_dqs[0]_IN}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {FPGA_memory_mem1_dqs[0]_IN}] -rise_to [get_clocks {FPGA_memory_mem1_dqs[0]_IN}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {FPGA_memory_mem1_dqs[0]_IN}] -fall_to [get_clocks {FPGA_memory_mem1_dqs[0]_IN}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {pcie_refclk_clk}] -rise_to [get_clocks {pcie_refclk_clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {pcie_refclk_clk}] -fall_to [get_clocks {pcie_refclk_clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {pcie_refclk_clk}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|avmmclk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {pcie_refclk_clk}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|avmmclk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {pcie_refclk_clk}] -rise_to [get_clocks {pcie_refclk_clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {pcie_refclk_clk}] -fall_to [get_clocks {pcie_refclk_clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {pcie_refclk_clk}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|avmmclk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {pcie_refclk_clk}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|avmmclk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {refclk_1D_p}] -rise_to [get_clocks {refclk_1D_p}]  0.120  
set_clock_uncertainty -rise_from [get_clocks {refclk_1D_p}] -fall_to [get_clocks {refclk_1D_p}]  0.120  
set_clock_uncertainty -fall_from [get_clocks {refclk_1D_p}] -rise_to [get_clocks {refclk_1D_p}]  0.120  
set_clock_uncertainty -fall_from [get_clocks {refclk_1D_p}] -fall_to [get_clocks {refclk_1D_p}]  0.120  
set_clock_uncertainty -rise_from [get_clocks {refclk_1C_p}] -rise_to [get_clocks {refclk_1C_p}]  0.120  
set_clock_uncertainty -rise_from [get_clocks {refclk_1C_p}] -fall_to [get_clocks {refclk_1C_p}]  0.120  
set_clock_uncertainty -fall_from [get_clocks {refclk_1C_p}] -rise_to [get_clocks {refclk_1C_p}]  0.120  
set_clock_uncertainty -fall_from [get_clocks {refclk_1C_p}] -fall_to [get_clocks {refclk_1C_p}]  0.120  
set_clock_uncertainty -rise_from [get_clocks {altera_ts_clk}] -rise_to [get_clocks {pll|iopll_0|outclk2}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {altera_ts_clk}] -fall_to [get_clocks {pll|iopll_0|outclk2}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {altera_ts_clk}] -rise_to [get_clocks {pll|iopll_0|outclk2}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {altera_ts_clk}] -fall_to [get_clocks {pll|iopll_0|outclk2}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {pio_system|emif_0_ref_clock}] -rise_to [get_clocks {FPGA_memory_mem1_dqs[3]_IN}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {pio_system|emif_0_ref_clock}] -fall_to [get_clocks {FPGA_memory_mem1_dqs[3]_IN}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {pio_system|emif_0_ref_clock}] -rise_to [get_clocks {FPGA_memory_mem1_dqs[2]_IN}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {pio_system|emif_0_ref_clock}] -fall_to [get_clocks {FPGA_memory_mem1_dqs[2]_IN}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {pio_system|emif_0_ref_clock}] -rise_to [get_clocks {FPGA_memory_mem1_dqs[1]_IN}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {pio_system|emif_0_ref_clock}] -fall_to [get_clocks {FPGA_memory_mem1_dqs[1]_IN}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {pio_system|emif_0_ref_clock}] -rise_to [get_clocks {FPGA_memory_mem1_dqs[0]_IN}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {pio_system|emif_0_ref_clock}] -fall_to [get_clocks {FPGA_memory_mem1_dqs[0]_IN}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {pio_system|emif_0_ref_clock}] -rise_to [get_clocks {pio_system|emif_0_ref_clock}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {pio_system|emif_0_ref_clock}] -fall_to [get_clocks {pio_system|emif_0_ref_clock}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {pio_system|emif_0_ref_clock}] -rise_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {pio_system|emif_0_ref_clock}] -fall_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {pio_system|emif_0_ref_clock}] -rise_to [get_clocks {FPGA_memory_mem1_dqs[3]_IN}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {pio_system|emif_0_ref_clock}] -fall_to [get_clocks {FPGA_memory_mem1_dqs[3]_IN}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {pio_system|emif_0_ref_clock}] -rise_to [get_clocks {FPGA_memory_mem1_dqs[2]_IN}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {pio_system|emif_0_ref_clock}] -fall_to [get_clocks {FPGA_memory_mem1_dqs[2]_IN}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {pio_system|emif_0_ref_clock}] -rise_to [get_clocks {FPGA_memory_mem1_dqs[1]_IN}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {pio_system|emif_0_ref_clock}] -fall_to [get_clocks {FPGA_memory_mem1_dqs[1]_IN}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {pio_system|emif_0_ref_clock}] -rise_to [get_clocks {FPGA_memory_mem1_dqs[0]_IN}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {pio_system|emif_0_ref_clock}] -fall_to [get_clocks {FPGA_memory_mem1_dqs[0]_IN}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {pio_system|emif_0_ref_clock}] -rise_to [get_clocks {pio_system|emif_0_ref_clock}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {pio_system|emif_0_ref_clock}] -fall_to [get_clocks {pio_system|emif_0_ref_clock}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {pio_system|emif_0_ref_clock}] -rise_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {pio_system|emif_0_ref_clock}] -fall_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {refclk_1D_p}]  0.120  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {refclk_1D_p}]  0.120  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {refclk_1C_p}]  0.120  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {refclk_1C_p}]  0.120  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {~ALTERA_CLKUSR~}]  0.120  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {~ALTERA_CLKUSR~}]  0.120  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_pma_clk}]  0.120  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_pma_clk}]  0.120  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_pma_clk}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_pma_clk}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}]  0.120  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}]  0.120  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}]  0.120  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}]  0.120  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}]  0.120  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}]  0.120  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}]  0.120  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}]  0.120  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_pma_clk}]  0.120  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_pma_clk}]  0.120  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_pma_clk}]  0.120  
set_clock_uncertainty -rise_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_pma_clk}]  0.120  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {refclk_1D_p}]  0.120  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {refclk_1D_p}]  0.120  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {refclk_1C_p}]  0.120  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {refclk_1C_p}]  0.120  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {~ALTERA_CLKUSR~}]  0.120  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {~ALTERA_CLKUSR~}]  0.120  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_pma_clk}]  0.120  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_pma_clk}]  0.120  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_pma_clk}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_pma_clk}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}]  0.120  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}]  0.120  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}]  0.120  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}]  0.120  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}]  0.120  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}]  0.120  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}]  0.120  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}]  0.120  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_pma_clk}]  0.120  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_pma_clk}]  0.120  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_pma_clk}]  0.120  
set_clock_uncertainty -fall_from [get_clocks {~ALTERA_CLKUSR~}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_pma_clk}]  0.120  
set_clock_uncertainty -rise_from [get_clocks {pio_system|emif_a10_hps_0_ref_clock}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_IN}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {pio_system|emif_a10_hps_0_ref_clock}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_IN}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {pio_system|emif_a10_hps_0_ref_clock}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_IN}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {pio_system|emif_a10_hps_0_ref_clock}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_IN}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {pio_system|emif_a10_hps_0_ref_clock}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_IN}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {pio_system|emif_a10_hps_0_ref_clock}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_IN}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {pio_system|emif_a10_hps_0_ref_clock}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {pio_system|emif_a10_hps_0_ref_clock}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {pio_system|emif_a10_hps_0_ref_clock}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {pio_system|emif_a10_hps_0_ref_clock}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {pio_system|emif_a10_hps_0_ref_clock}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_IN}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {pio_system|emif_a10_hps_0_ref_clock}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_IN}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {pio_system|emif_a10_hps_0_ref_clock}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_IN}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {pio_system|emif_a10_hps_0_ref_clock}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_IN}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {pio_system|emif_a10_hps_0_ref_clock}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_IN}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {pio_system|emif_a10_hps_0_ref_clock}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_IN}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {pio_system|emif_a10_hps_0_ref_clock}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {pio_system|emif_a10_hps_0_ref_clock}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {pio_system|emif_a10_hps_0_ref_clock}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {pio_system|emif_a10_hps_0_ref_clock}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_0}] -rise_to [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.180  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_0}] -fall_to [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.180  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_0}] -rise_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_0}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_0}] -fall_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_0}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_0}] -rise_to [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.180  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_0}] -fall_to [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.180  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_0}] -rise_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_0}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_0}] -fall_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_0}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_l_1}] -rise_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_l_1}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_l_1}] -fall_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_l_1}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_l_1}] -rise_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_l_1}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_l_1}] -fall_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_l_1}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_l_0}] -rise_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_l_0}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_l_0}] -fall_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_l_0}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_l_0}] -rise_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_l_0}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_l_0}] -fall_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_l_0}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_1}] -rise_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_1}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_1}] -fall_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_1}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_1}] -rise_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_1}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_1}] -fall_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_1}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_0}] -rise_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_0}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_0}] -fall_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_0}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_0}] -rise_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_0}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_0}] -fall_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_phy_clk_0}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_1}] -rise_to [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.180  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_1}] -fall_to [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.180  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_1}] -rise_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_1}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_1}] -fall_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_1}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_1}] -rise_to [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.180  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_1}] -fall_to [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.180  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_1}] -rise_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_1}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_1}] -fall_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_1}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_0}] -rise_to [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.180  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_0}] -fall_to [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.180  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_0}] -rise_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_0}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_0}] -fall_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_0}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_0}] -rise_to [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.180  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_0}] -fall_to [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.180  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_0}] -rise_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_0}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_0}] -fall_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_vco_clk_0}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_wf_clk_2}] -rise_to [get_clocks {pio_system|emif_0_ref_clock}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_wf_clk_2}] -fall_to [get_clocks {pio_system|emif_0_ref_clock}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_wf_clk_2}] -rise_to [get_clocks {pio_system|emif_0_ref_clock}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_wf_clk_2}] -fall_to [get_clocks {pio_system|emif_0_ref_clock}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_wf_clk_1}] -rise_to [get_clocks {pio_system|emif_0_ref_clock}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_wf_clk_1}] -fall_to [get_clocks {pio_system|emif_0_ref_clock}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_wf_clk_1}] -rise_to [get_clocks {pio_system|emif_0_ref_clock}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_wf_clk_1}] -fall_to [get_clocks {pio_system|emif_0_ref_clock}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_wf_clk_0}] -rise_to [get_clocks {pio_system|emif_0_ref_clock}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_wf_clk_0}] -fall_to [get_clocks {pio_system|emif_0_ref_clock}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_wf_clk_0}] -rise_to [get_clocks {pio_system|emif_0_ref_clock}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_wf_clk_0}] -fall_to [get_clocks {pio_system|emif_0_ref_clock}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}]  0.050  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}]  0.050  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}]  0.050  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}]  0.050  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_core_extra_clk_0}]  0.050  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_core_extra_clk_0}]  0.050  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -rise_to [get_clocks {u0|emif_0|emif_0_core_extra_clk_0}]  0.050  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -fall_to [get_clocks {u0|emif_0|emif_0_core_extra_clk_0}]  0.050  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_vco_clk_1}] -rise_to [get_clocks {pio_system|emif_0_ref_clock}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_vco_clk_1}] -fall_to [get_clocks {pio_system|emif_0_ref_clock}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_vco_clk_1}] -rise_to [get_clocks {u0|emif_0|emif_0_vco_clk_1}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_vco_clk_1}] -fall_to [get_clocks {u0|emif_0|emif_0_vco_clk_1}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_vco_clk_1}] -rise_to [get_clocks {pio_system|emif_0_ref_clock}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_vco_clk_1}] -fall_to [get_clocks {pio_system|emif_0_ref_clock}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_vco_clk_1}] -rise_to [get_clocks {u0|emif_0|emif_0_vco_clk_1}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_vco_clk_1}] -fall_to [get_clocks {u0|emif_0|emif_0_vco_clk_1}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|iopll_0|pio_iopll_0|outclk1}] -rise_to [get_clocks {u0|iopll_0|pio_iopll_0|outclk1}]  0.170  
set_clock_uncertainty -rise_from [get_clocks {u0|iopll_0|pio_iopll_0|outclk1}] -fall_to [get_clocks {u0|iopll_0|pio_iopll_0|outclk1}]  0.170  
set_clock_uncertainty -rise_from [get_clocks {u0|iopll_0|pio_iopll_0|outclk1}] -rise_to [get_clocks {u0|emif_0|emif_0_core_extra_clk_0}]  0.520  
set_clock_uncertainty -rise_from [get_clocks {u0|iopll_0|pio_iopll_0|outclk1}] -fall_to [get_clocks {u0|emif_0|emif_0_core_extra_clk_0}]  0.520  
set_clock_uncertainty -rise_from [get_clocks {u0|iopll_0|pio_iopll_0|outclk1}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.530  
set_clock_uncertainty -rise_from [get_clocks {u0|iopll_0|pio_iopll_0|outclk1}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.530  
set_clock_uncertainty -fall_from [get_clocks {u0|iopll_0|pio_iopll_0|outclk1}] -rise_to [get_clocks {u0|iopll_0|pio_iopll_0|outclk1}]  0.170  
set_clock_uncertainty -fall_from [get_clocks {u0|iopll_0|pio_iopll_0|outclk1}] -fall_to [get_clocks {u0|iopll_0|pio_iopll_0|outclk1}]  0.170  
set_clock_uncertainty -fall_from [get_clocks {u0|iopll_0|pio_iopll_0|outclk1}] -rise_to [get_clocks {u0|emif_0|emif_0_core_extra_clk_0}]  0.520  
set_clock_uncertainty -fall_from [get_clocks {u0|iopll_0|pio_iopll_0|outclk1}] -fall_to [get_clocks {u0|emif_0|emif_0_core_extra_clk_0}]  0.520  
set_clock_uncertainty -fall_from [get_clocks {u0|iopll_0|pio_iopll_0|outclk1}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.530  
set_clock_uncertainty -fall_from [get_clocks {u0|iopll_0|pio_iopll_0|outclk1}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.530  
set_clock_uncertainty -rise_from [get_clocks {u0|iopll_0|pio_iopll_0|outclk0}] -rise_to [get_clocks {u0|iopll_0|pio_iopll_0|outclk0}]  0.150  
set_clock_uncertainty -rise_from [get_clocks {u0|iopll_0|pio_iopll_0|outclk0}] -fall_to [get_clocks {u0|iopll_0|pio_iopll_0|outclk0}]  0.150  
set_clock_uncertainty -rise_from [get_clocks {u0|iopll_0|pio_iopll_0|outclk0}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}]  0.320  
set_clock_uncertainty -rise_from [get_clocks {u0|iopll_0|pio_iopll_0|outclk0}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}]  0.320  
set_clock_uncertainty -fall_from [get_clocks {u0|iopll_0|pio_iopll_0|outclk0}] -rise_to [get_clocks {u0|iopll_0|pio_iopll_0|outclk0}]  0.150  
set_clock_uncertainty -fall_from [get_clocks {u0|iopll_0|pio_iopll_0|outclk0}] -fall_to [get_clocks {u0|iopll_0|pio_iopll_0|outclk0}]  0.150  
set_clock_uncertainty -fall_from [get_clocks {u0|iopll_0|pio_iopll_0|outclk0}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}]  0.320  
set_clock_uncertainty -fall_from [get_clocks {u0|iopll_0|pio_iopll_0|outclk0}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}]  0.320  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_pma_clk}] -rise_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_pma_clk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_pma_clk}] -fall_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_pma_clk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_pma_clk}] -rise_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_pma_clk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_pma_clk}] -fall_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_pma_clk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_pma_clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_pma_clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_pma_clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_pma_clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}]  0.050  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}]  0.050  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}]  0.050  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}]  0.050  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_extra_clk_0}] -rise_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}]  0.050  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_extra_clk_0}] -fall_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}]  0.050  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_extra_clk_0}] -rise_to [get_clocks {u0|iopll_0|pio_iopll_0|outclk1}]  0.520  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_extra_clk_0}] -fall_to [get_clocks {u0|iopll_0|pio_iopll_0|outclk1}]  0.520  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_extra_clk_0}] -rise_to [get_clocks {u0|emif_0|emif_0_core_extra_clk_0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_extra_clk_0}] -fall_to [get_clocks {u0|emif_0|emif_0_core_extra_clk_0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_extra_clk_0}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_core_extra_clk_0}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_extra_clk_0}] -rise_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}]  0.050  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_extra_clk_0}] -fall_to [get_clocks {u0|emif_0|emif_0_core_usr_clk}]  0.050  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_extra_clk_0}] -rise_to [get_clocks {u0|iopll_0|pio_iopll_0|outclk1}]  0.520  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_extra_clk_0}] -fall_to [get_clocks {u0|iopll_0|pio_iopll_0|outclk1}]  0.520  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_extra_clk_0}] -rise_to [get_clocks {u0|emif_0|emif_0_core_extra_clk_0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_extra_clk_0}] -fall_to [get_clocks {u0|emif_0|emif_0_core_extra_clk_0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_extra_clk_0}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_core_extra_clk_0}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_1}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_1}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_1}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_0|emif_0_phy_clk_1}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_1}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] -rise_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] -fall_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pll_pcie_clk}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pll_pcie_clk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pll_pcie_clk}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pll_pcie_clk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pll_pcie_clk}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pll_pcie_clk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pll_pcie_clk}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pll_pcie_clk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_clk}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_clk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_clk}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_clk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_clk}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_clk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_clk}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_clk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_clkout}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_clkout}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_clkout}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_clkout}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_clkout}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_clkout}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_clkout}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_clkout}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_pma_clk}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_pma_clk}]  0.010  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_pma_clk}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_pma_clk}]  0.010  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_pma_clk}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_pma_clk}]  0.010  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_pma_clk}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_pma_clk}]  0.010  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_fref}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_clk}]  0.190  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_fref}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_clk}]  0.190  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_fref}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_pma_clk}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_fref}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_pma_clk}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_fref}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_fref}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_fref}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_fref}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_fref}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_pma_clk}]  0.190  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_fref}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_pma_clk}]  0.190  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_fref}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_clk}]  0.190  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_fref}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_clk}]  0.190  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_fref}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_pma_clk}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_fref}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_pma_clk}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_fref}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_fref}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_fref}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_fref}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_fref}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_pma_clk}]  0.190  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_fref}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_pma_clk}]  0.190  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pma_hclk_by2}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pma_hclk_by2}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pma_hclk_by2}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pma_hclk_by2}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pma_hclk_by2}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pma_hclk_by2}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pma_hclk_by2}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pma_hclk_by2}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_pma_clk}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_pma_clk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_pma_clk}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_pma_clk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_pma_clk}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_pma_clk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_pma_clk}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|tx_pma_clk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|gen_twentynm_hssi_pma_tx_cgb.inst_twentynm_hssi_pma_tx_cgb~O_HIFREQCLKN}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|gen_twentynm_hssi_pma_tx_cgb.inst_twentynm_hssi_pma_tx_cgb~O_HIFREQCLKN}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|gen_twentynm_hssi_pma_tx_cgb.inst_twentynm_hssi_pma_tx_cgb~O_HIFREQCLKN}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|gen_twentynm_hssi_pma_tx_cgb.inst_twentynm_hssi_pma_tx_cgb~O_HIFREQCLKN}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|gen_twentynm_hssi_pma_tx_cgb.inst_twentynm_hssi_pma_tx_cgb~O_HIFREQCLKN}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|gen_twentynm_hssi_pma_tx_cgb.inst_twentynm_hssi_pma_tx_cgb~O_HIFREQCLKN}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|gen_twentynm_hssi_pma_tx_cgb.inst_twentynm_hssi_pma_tx_cgb~O_HIFREQCLKN}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|gen_twentynm_hssi_pma_tx_cgb.inst_twentynm_hssi_pma_tx_cgb~O_HIFREQCLKN}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pld_clk}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pld_clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pld_clk}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pld_clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pld_clk}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}] -setup 0.022  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pld_clk}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}] -hold 0.088  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pld_clk}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}] -setup 0.022  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pld_clk}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}] -hold 0.088  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pld_clk}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pld_clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pld_clk}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pld_clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pld_clk}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}] -setup 0.022  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pld_clk}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}] -hold 0.088  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pld_clk}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}] -setup 0.022  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pld_clk}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}] -hold 0.088  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}] -rise_to [get_clocks {u0|iopll_0|pio_iopll_0|outclk0}]  0.320  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}] -fall_to [get_clocks {u0|iopll_0|pio_iopll_0|outclk0}]  0.320  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pld_clk}] -setup 0.019  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pld_clk}] -hold 0.067  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pld_clk}] -setup 0.019  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pld_clk}] -hold 0.067  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.330  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.330  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}] -rise_to [get_clocks {u0|iopll_0|pio_iopll_0|outclk0}]  0.320  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}] -fall_to [get_clocks {u0|iopll_0|pio_iopll_0|outclk0}]  0.320  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pld_clk}] -setup 0.019  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pld_clk}] -hold 0.067  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pld_clk}] -setup 0.019  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pld_clk}] -hold 0.067  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.330  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.330  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|hip_cmn_clk[0]}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|hip_cmn_clk[0]}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|hip_cmn_clk[0]}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|hip_cmn_clk[0]}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|hip_cmn_clk[0]}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|hip_cmn_clk[0]}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|hip_cmn_clk[0]}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|hip_cmn_clk[0]}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_clk}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_clk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_clk}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_clk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_clk}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_clk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_clk}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_clk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_clkout}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_clkout}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_clkout}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_clkout}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_clkout}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_clkout}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_clkout}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|rx_clkout}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|avmmclk}] -rise_to [get_clocks {pcie_refclk_clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|avmmclk}] -fall_to [get_clocks {pcie_refclk_clk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|avmmclk}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|avmmclk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|avmmclk}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|avmmclk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|avmmclk}] -rise_to [get_clocks {pcie_refclk_clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|avmmclk}] -fall_to [get_clocks {pcie_refclk_clk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|avmmclk}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|avmmclk}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|avmmclk}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|avmmclk}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_coreclkin}] -rise_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_coreclkin}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_coreclkin}] -fall_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_coreclkin}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_coreclkin}] -rise_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_coreclkin}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_coreclkin}] -fall_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_coreclkin}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_pma_clk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_pma_clk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_pma_clk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_pma_clk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_pma_clk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_pma_clk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_pma_clk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_pma_clk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_pma_clk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_pma_clk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_pma_clk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_pma_clk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_pma_clk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_pma_clk}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_pma_clk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_pma_clk}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|avmmclk}] -rise_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|avmmclk}] -fall_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|avmmclk}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|avmmclk}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|avmmclk}] -rise_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|avmmclk}] -fall_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|avmmclk}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|avmmclk}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}] -rise_to [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}] -fall_to [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}] -rise_to [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}] -fall_to [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}] -rise_to [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}] -fall_to [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}] -rise_to [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}] -fall_to [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_pma_clk}] -setup 0.074  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_pma_clk}] -hold 0.063  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_pma_clk}] -setup 0.074  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_pma_clk}] -hold 0.063  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_coreclkin}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_coreclkin}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_pma_clk}] -setup 0.074  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_pma_clk}] -hold 0.063  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_pma_clk}] -setup 0.074  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_pma_clk}] -hold 0.063  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_coreclkin}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_coreclkin}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk2}] -rise_to [get_clocks {pll|iopll_0|outclk2}]  0.120  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk2}] -fall_to [get_clocks {pll|iopll_0|outclk2}]  0.120  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk2}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.090  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk2}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.090  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk2}] -rise_to [get_clocks {pll|iopll_0|outclk2}]  0.120  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk2}] -fall_to [get_clocks {pll|iopll_0|outclk2}]  0.120  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk2}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.090  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk2}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.090  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk1}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_0}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk1}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_0}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk1}] -rise_to [get_clocks {u0|emif_0|emif_0_vco_clk}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk1}] -fall_to [get_clocks {u0|emif_0|emif_0_vco_clk}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk1}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk1}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk1}] -rise_to [get_clocks {u0|emif_0|emif_0_vco_clk_1}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk1}] -fall_to [get_clocks {u0|emif_0|emif_0_vco_clk_1}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk1}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk1}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk1}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_1}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk1}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_1}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk1}] -rise_to [get_clocks {pll|iopll_0|outclk1}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk1}] -fall_to [get_clocks {pll|iopll_0|outclk1}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk1}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_0}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk1}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_0}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk1}] -rise_to [get_clocks {u0|emif_0|emif_0_vco_clk}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk1}] -fall_to [get_clocks {u0|emif_0|emif_0_vco_clk}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk1}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk1}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk1}] -rise_to [get_clocks {u0|emif_0|emif_0_vco_clk_1}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk1}] -fall_to [get_clocks {u0|emif_0|emif_0_vco_clk_1}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk1}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk1}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_l_1}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk1}] -rise_to [get_clocks {u0|emif_0|emif_0_phy_clk_1}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk1}] -fall_to [get_clocks {u0|emif_0|emif_0_phy_clk_1}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk1}] -rise_to [get_clocks {pll|iopll_0|outclk1}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk1}] -fall_to [get_clocks {pll|iopll_0|outclk1}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {~ALTERA_CLKUSR~}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {~ALTERA_CLKUSR~}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|iopll_0|pio_iopll_0|outclk1}]  0.530  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|iopll_0|pio_iopll_0|outclk1}]  0.530  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|emif_0|emif_0_core_extra_clk_0}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|emif_0|emif_0_core_extra_clk_0}]  0.380  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pll_pcie_clk}]  0.330  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pll_pcie_clk}]  0.330  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}]  0.330  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}]  0.330  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_coreclkin}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_coreclkin}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_coreclkin}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_coreclkin}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_coreclkin}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_coreclkin}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {~ALTERA_CLKUSR~}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {~ALTERA_CLKUSR~}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|iopll_0|pio_iopll_0|outclk1}]  0.530  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|iopll_0|pio_iopll_0|outclk1}]  0.530  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|emif_0|emif_0_core_extra_clk_0}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|emif_0|emif_0_core_extra_clk_0}]  0.380  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pll_pcie_clk}]  0.330  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|pll_pcie_clk}]  0.330  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}]  0.330  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}]  0.330  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_coreclkin}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_coreclkin}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_coreclkin}] -setup 0.040  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_coreclkin}] -hold 0.069  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_coreclkin}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_coreclkin}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_coreclkin}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {pll|iopll_0|outclk0}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_coreclkin}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_coreclkin}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_coreclkin}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_coreclkin}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_coreclkin}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_coreclkin}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_coreclkin}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_coreclkin}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_coreclkin}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_coreclkin}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_coreclkin}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_coreclkin}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_coreclkin}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_coreclkin}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_coreclkin}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_coreclkin}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_coreclkin}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_coreclkin}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_coreclkin}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}] -rise_to [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}] -fall_to [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}] -rise_to [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}] -fall_to [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}] -rise_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}] -fall_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}] -rise_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}] -fall_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}] -rise_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}] -fall_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}] -rise_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}] -fall_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}] -rise_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}] -fall_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}] -rise_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}] -fall_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}] -rise_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}] -fall_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}] -rise_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}] -fall_to [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}] -rise_to [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}] -fall_to [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}] -rise_to [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}] -fall_to [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}] -rise_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}] -fall_to [get_clocks {pll|iopll_0|outclk0}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|avmmclk}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}] -setup 0.074  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}] -hold 0.063  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}] -setup 0.074  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}] -hold 0.063  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}] -setup 0.074  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}] -hold 0.063  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}] -setup 0.074  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}] -hold 0.063  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}] -setup 0.074  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}] -hold 0.063  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}] -setup 0.074  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}] -hold 0.063  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}] -setup 0.074  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}] -hold 0.063  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}] -setup 0.074  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}] -hold 0.063  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_pma_clk}] -setup 0.074  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_pma_clk}] -hold 0.063  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_pma_clk}] -setup 0.074  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_pma_clk}] -hold 0.063  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_coreclkin}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_coreclkin}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_pma_clk}] -setup 0.074  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_pma_clk}] -hold 0.063  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_pma_clk}] -setup 0.074  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_pma_clk}] -hold 0.063  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_coreclkin}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_coreclkin}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}] -setup 0.074  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}] -hold 0.063  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}] -setup 0.074  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}] -hold 0.063  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}] -setup 0.074  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}] -hold 0.063  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}] -setup 0.074  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}] -hold 0.063  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_coreclkin}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}] -setup 0.074  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}] -hold 0.063  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}] -setup 0.074  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}] -hold 0.063  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}] -setup 0.074  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}] -hold 0.063  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}] -setup 0.074  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}] -hold 0.063  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_coreclkin}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_pma_clk}] -setup 0.074  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_pma_clk}] -hold 0.063  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_pma_clk}] -setup 0.074  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_pma_clk}] -hold 0.063  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_coreclkin}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_coreclkin}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_pma_clk}] -setup 0.074  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_pma_clk}] -hold 0.063  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_pma_clk}] -setup 0.074  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_pma_clk}] -hold 0.063  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_coreclkin}] -rise_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_coreclkin}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_coreclkin}] -fall_to [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_coreclkin}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_5}] -rise_to [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.180  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_5}] -fall_to [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.180  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_5}] -rise_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_5}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_5}] -fall_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_5}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_5}] -rise_to [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.180  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_5}] -fall_to [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.180  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_5}] -rise_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_5}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_5}] -fall_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_5}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_4}] -rise_to [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.180  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_4}] -fall_to [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.180  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_4}] -rise_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_4}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_4}] -fall_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_4}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_4}] -rise_to [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.180  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_4}] -fall_to [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.180  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_4}] -rise_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_4}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_4}] -fall_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_4}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_3}] -rise_to [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.180  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_3}] -fall_to [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.180  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_3}] -rise_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_3}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_3}] -fall_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_3}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_3}] -rise_to [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.180  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_3}] -fall_to [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.180  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_3}] -rise_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_3}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_3}] -fall_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_3}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_2}] -rise_to [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.180  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_2}] -fall_to [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.180  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_2}] -rise_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_2}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_2}] -fall_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_2}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_2}] -rise_to [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.180  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_2}] -fall_to [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.180  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_2}] -rise_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_2}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_2}] -fall_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_2}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_1}] -rise_to [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.180  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_1}] -fall_to [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.180  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_1}] -rise_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_1}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_1}] -fall_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_1}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_1}] -rise_to [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.180  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_1}] -fall_to [get_clocks {pio_system|emif_a10_hps_0_ref_clock}]  0.180  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_1}] -rise_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_1}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_1}] -fall_to [get_clocks {u0|emif_a10_hps_0|emif_a10_hps_0_wf_clk_1}]  0.030  


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_alert_n}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dbi_n[0]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dbi_n[1]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dbi_n[2]}]
set_input_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dbi_n[3]}]
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
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dqs[0]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dqs[1]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dqs[2]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dqs[3]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dqs_n[0]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dqs_n[1]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dqs_n[2]}]
set_output_delay -add_delay  -clock [get_clocks {pio_system|emif_0_ref_clock}]  0.000 [get_ports {FPGA_memory_mem1_dqs_n[3]}]
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

set_clock_groups -asynchronous \
						-group { AD1939_MCLK \
						         AD1939_ADC_ABCLK \
						         AD1939_ADC_ALRCLK \
						       }

set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk1}] -group [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk1}] -group [get_clocks {u0|emif_0|emif_0_core_cal_slave_clk}] 
set_clock_groups -asynchronous -group [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -group [get_clocks {pll|iopll_0|outclk0}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {refclk_1F_p}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk1}] -group [get_clocks {pll|iopll_0|outclk0}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {refclk_1D_p}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {refclk_1E_p}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {refclk_1C_p}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|rx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_4|xcvr_native_a10_0|rx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|rx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|rx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|rx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_4|xcvr_native_a10_0|tx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_3|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_0|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_2|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_1|xcvr_native_a10_0|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {altera_reserved_tck}] -group [get_clocks {pcie_refclk_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pcie_refclk_clk}] -group [get_clocks {altera_reserved_tck}] 
set_clock_groups -asynchronous -group [get_clocks {u0|iw_sata_controller_0|iw_sata_controller_0|U0|xcvr_native_a10_0|xcvr_native_a10_0|rx_coreclkin}] -group [get_clocks {pll|iopll_0|outclk0}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk1}] -group [get_clocks {u0|pio_pcie_0|pcie_a10_hip_avmm|wys~CORE_CLK_OUT}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|pio_pcie_0|pcie_a10_hip_avmm|wys~CORE_CLK_OUT}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|iw_sata_controller_0|iw_sata_controller_0|U0|xcvr_native_a10_0|xcvr_native_a10_0|rx_clkout}] 
set_clock_groups -asynchronous -group [get_clocks {u0|iw_sata_controller_0|iw_sata_controller_0|U0|xcvr_native_a10_0|xcvr_native_a10_0|tx_clkout}] -group [get_clocks {pll|iopll_0|outclk0}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|iw_sata_controller_0|iw_sata_controller_0|U0|xcvr_native_a10_0|xcvr_native_a10_0|tx_clkout}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[2]|tx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[3]|tx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[1]|tx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk0}] -group [get_clocks {u0|xcvr_1|xcvr_native_a10_0|g_xcvr_native_insts[0]|tx_pma_clk}] 
set_clock_groups -asynchronous -group [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -group [get_clocks {u0|emif_0|emif_0_core_usr_clk}] 
set_clock_groups -asynchronous -group [get_clocks {u0|emif_0|emif_0_phy_clk_l_0}] -group [get_clocks {u0|emif_0|emif_0_core_usr_clk}] 
set_clock_groups -asynchronous -group [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -group [get_clocks {u0|emif_0|emif_0_core_usr_clk}] 
set_clock_groups -asynchronous -group [get_clocks {u0|emif_0|emif_0_core_usr_clk}] -group [get_clocks {pll|iopll_0|outclk0}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk1}] -group [get_clocks {u0|iopll_0|pio_iopll_0|outclk1}] 
set_clock_groups -asynchronous -group [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}] -group [get_clocks {u0|iopll_0|pio_iopll_0|outclk1}] 
set_clock_groups -asynchronous -group [get_clocks {pll|iopll_0|outclk1}] -group [get_clocks {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|wys~CORE_CLK_OUT}] 
set_clock_groups -asynchronous -group [get_clocks {u0|emif_0|emif_0_phy_clk_0}] -group [get_clocks {pll|iopll_0|outclk0}] 


#**************************************************************
# Set False Path
#**************************************************************

set_false_path  -from  [get_clocks {altera_reserved_tck}]  -to  [get_clocks {fpga_clk_i}]
set_false_path  -from  [get_clocks {altera_reserved_tck}]  -to  [get_clocks {pll|iopll_0|outclk0}]
set_false_path  -from  [get_clocks {fpga_clk_i}]  -to  [get_clocks {altera_reserved_tck}]
set_false_path  -from  [get_clocks {pll|iopll_0|outclk0}]  -to  [get_clocks {altera_reserved_tck}]
set_false_path  -from  [get_clocks {altera_reserved_tck}]  -to  [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}]
set_false_path  -from  [get_clocks {u0|emif_0|emif_0_core_cal_master_clk}]  -to  [get_clocks {altera_reserved_tck}]
set_false_path  -from  [get_clocks {fpga_clk_i}]  -to  [get_clocks {refclk_1C_p}]
set_false_path  -from  [get_clocks {fpga_clk_i}]  -to  [get_clocks {refclk_1D_p}]
set_false_path  -from  [get_clocks {fpga_clk_i}]  -to  [get_clocks {refclk_1E_p}]
set_false_path  -from  [get_clocks {fpga_clk_i}]  -to  [get_clocks {refclk_1F_p}]
set_false_path -to [get_registers {*alt_xcvr_resync*sync_r[0]}]
set_false_path -to [get_keepers {*altera_std_synchronizer:*|din_s1}]
set_false_path -from [get_fanins -asynch [get_keepers {*app_rstn_altpcie_reset_delay_sync_altpcie_a10_hip_hwtcl*rs_meta[*]}]] -to [get_keepers {*app_rstn_altpcie_reset_delay_sync_altpcie_a10_hip_hwtcl*rs_meta[*]}]
set_false_path -from [get_fanins -asynch [get_keepers {*por_sync_altpcie_reset_delay_sync*rs_meta[*]}]] -to [get_keepers {*por_sync_altpcie_reset_delay_sync*rs_meta[*]}]
set_false_path -from [get_fanins -asynch [get_keepers {*app_rstn_altpcie_reset_delay_sync_altpcie_a10_hip_hwtcl*rs_meta[*]}]] -to [get_keepers {*app_rstn_altpcie_reset_delay_sync_altpcie_a10_hip_hwtcl*rs_meta[*]}]
set_false_path -from [get_fanins -asynch [get_keepers {*por_sync_altpcie_reset_delay_sync*rs_meta[*]}]] -to [get_keepers {*por_sync_altpcie_reset_delay_sync*rs_meta[*]}]
set_false_path -from [get_fanins -asynch [get_keepers {*app_rstn_altpcie_reset_delay_sync_altpcie_a10_hip_hwtcl*rs_meta[*]}]] -to [get_keepers {*app_rstn_altpcie_reset_delay_sync_altpcie_a10_hip_hwtcl*rs_meta[*]}]
set_false_path -from [get_fanins -asynch [get_keepers {*por_sync_altpcie_reset_delay_sync*rs_meta[*]}]] -to [get_keepers {*por_sync_altpcie_reset_delay_sync*rs_meta[*]}]
set_false_path -hold -to [get_keepers {*pld_clk_in_use_altpcie_sc_bitsync*altpcie_sc_bitsync_meta_dff[*]}]
set_false_path -hold -to [get_keepers {*reset_status_altpcie_sc_bitsync*altpcie_sc_bitsync_meta_dff[*]}]
set_false_path -to [get_keepers {{FPGA_memory_mem1_a[0]} {FPGA_memory_mem1_a[1]} {FPGA_memory_mem1_a[2]} {FPGA_memory_mem1_a[3]} {FPGA_memory_mem1_a[4]} {FPGA_memory_mem1_a[5]} {FPGA_memory_mem1_a[6]} {FPGA_memory_mem1_a[7]} {FPGA_memory_mem1_a[8]} {FPGA_memory_mem1_a[9]} {FPGA_memory_mem1_a[10]} {FPGA_memory_mem1_a[11]} {FPGA_memory_mem1_a[12]} {FPGA_memory_mem1_a[13]} {FPGA_memory_mem1_a[14]} {FPGA_memory_mem1_a[15]} {FPGA_memory_mem1_a[16]} FPGA_memory_mem1_act_n {FPGA_memory_mem1_ba[0]} {FPGA_memory_mem1_ba[1]} FPGA_memory_mem1_bg FPGA_memory_mem1_cke FPGA_memory_mem1_cs_n FPGA_memory_mem1_odt FPGA_memory_mem1_par}]
set_false_path -through [get_pins {u0|emif_0|emif_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].lane_gen[*].lane_inst|core_dll[2]}]  -to [get_keepers {u0|emif_0|emif_0*|tile_gen[*].lane_gen[*].lane_inst~lane_reg}]
set_false_path -to [get_keepers {{FPGA_memory_mem1_dq[0]} {FPGA_memory_mem1_dq[1]} {FPGA_memory_mem1_dq[2]} {FPGA_memory_mem1_dq[3]} {FPGA_memory_mem1_dq[4]} {FPGA_memory_mem1_dq[5]} {FPGA_memory_mem1_dq[6]} {FPGA_memory_mem1_dq[7]} {FPGA_memory_mem1_dq[8]} {FPGA_memory_mem1_dq[9]} {FPGA_memory_mem1_dq[10]} {FPGA_memory_mem1_dq[11]} {FPGA_memory_mem1_dq[12]} {FPGA_memory_mem1_dq[13]} {FPGA_memory_mem1_dq[14]} {FPGA_memory_mem1_dq[15]} {FPGA_memory_mem1_dq[16]} {FPGA_memory_mem1_dq[17]} {FPGA_memory_mem1_dq[18]} {FPGA_memory_mem1_dq[19]} {FPGA_memory_mem1_dq[20]} {FPGA_memory_mem1_dq[21]} {FPGA_memory_mem1_dq[22]} {FPGA_memory_mem1_dq[23]} {FPGA_memory_mem1_dq[24]} {FPGA_memory_mem1_dq[25]} {FPGA_memory_mem1_dq[26]} {FPGA_memory_mem1_dq[27]} {FPGA_memory_mem1_dq[28]} {FPGA_memory_mem1_dq[29]} {FPGA_memory_mem1_dq[30]} {FPGA_memory_mem1_dq[31]}}]
set_false_path -from [get_keepers {{FPGA_memory_mem1_dq[0]} {FPGA_memory_mem1_dq[1]} {FPGA_memory_mem1_dq[2]} {FPGA_memory_mem1_dq[3]} {FPGA_memory_mem1_dq[4]} {FPGA_memory_mem1_dq[5]} {FPGA_memory_mem1_dq[6]} {FPGA_memory_mem1_dq[7]} {FPGA_memory_mem1_dq[8]} {FPGA_memory_mem1_dq[9]} {FPGA_memory_mem1_dq[10]} {FPGA_memory_mem1_dq[11]} {FPGA_memory_mem1_dq[12]} {FPGA_memory_mem1_dq[13]} {FPGA_memory_mem1_dq[14]} {FPGA_memory_mem1_dq[15]} {FPGA_memory_mem1_dq[16]} {FPGA_memory_mem1_dq[17]} {FPGA_memory_mem1_dq[18]} {FPGA_memory_mem1_dq[19]} {FPGA_memory_mem1_dq[20]} {FPGA_memory_mem1_dq[21]} {FPGA_memory_mem1_dq[22]} {FPGA_memory_mem1_dq[23]} {FPGA_memory_mem1_dq[24]} {FPGA_memory_mem1_dq[25]} {FPGA_memory_mem1_dq[26]} {FPGA_memory_mem1_dq[27]} {FPGA_memory_mem1_dq[28]} {FPGA_memory_mem1_dq[29]} {FPGA_memory_mem1_dq[30]} {FPGA_memory_mem1_dq[31]}}] 
set_false_path -to [get_keepers {{FPGA_memory_mem1_dbi_n[0]} {FPGA_memory_mem1_dbi_n[1]} {FPGA_memory_mem1_dbi_n[2]} {FPGA_memory_mem1_dbi_n[3]}}]
set_false_path -from [get_keepers {{FPGA_memory_mem1_dbi_n[0]} {FPGA_memory_mem1_dbi_n[1]} {FPGA_memory_mem1_dbi_n[2]} {FPGA_memory_mem1_dbi_n[3]}}] 
set_false_path -to [get_keepers {{FPGA_memory_mem1_dqs[0]} {FPGA_memory_mem1_dqs[1]} {FPGA_memory_mem1_dqs[2]} {FPGA_memory_mem1_dqs[3]}}]
set_false_path -to [get_keepers {{FPGA_memory_mem1_dqs_n[0]} {FPGA_memory_mem1_dqs_n[1]} {FPGA_memory_mem1_dqs_n[2]} {FPGA_memory_mem1_dqs_n[3]}}]
set_false_path -from [get_keepers {{FPGA_memory_mem1_dqs[0]} {FPGA_memory_mem1_dqs[1]} {FPGA_memory_mem1_dqs[2]} {FPGA_memory_mem1_dqs[3]}}] 
set_false_path -from [get_keepers {{FPGA_memory_mem1_dqs_n[0]} {FPGA_memory_mem1_dqs_n[1]} {FPGA_memory_mem1_dqs_n[2]} {FPGA_memory_mem1_dqs_n[3]}}] 
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
set_false_path -from [get_keepers {*altera_avalon_data_pattern_checker:*|pattern_select*}] 
set_false_path -from [get_keepers {*altera_avalon_data_pattern_checker:*|clock_sensor*}] -to [get_keepers {*altera_avalon_data_pattern_checker:*|avs_readdata[1]*}]
set_false_path -from [get_keepers {*altera_avalon_data_pattern_checker:*|snap_handshake_clock_crosser:*|din*}] -to [get_keepers {*altera_avalon_data_pattern_checker:*|snap_handshake_clock_crosser:*|dout*}]
set_false_path -from [get_keepers {*altera_avalon_data_pattern_checker:*|snap_handshake_clock_crosser:*|dout*}] 
set_false_path -from [get_keepers {*altera_avalon_data_pattern_generator:*|pattern_select*}] 
set_false_path -from [get_keepers {*altera_avalon_data_pattern_generator:*|sync_character*}] 
set_false_path -from [get_keepers {*altera_avalon_data_pattern_generator:*|preamble_register*}] 
set_false_path -to [get_pins -compatibility_mode {*twentynm_xcvr_native_inst|*inst_twentynm_pcs|*twentynm_hssi_*_pld_pcs_interface*|pld_10g_krfec_rx_pld_rst_n*}]
set_false_path -to [get_pins -compatibility_mode {*twentynm_xcvr_native_inst|*inst_twentynm_pcs|*twentynm_hssi_*_pld_pcs_interface*|pld_8g_g3_rx_pld_rst_n*}]
set_false_path -to [get_pins -compatibility_mode {*twentynm_xcvr_native_inst|*inst_twentynm_pcs|*twentynm_hssi_*_pld_pcs_interface*|pld_8g_rxpolarity*}]
set_false_path -to [get_pins -compatibility_mode {*twentynm_xcvr_native_inst|*inst_twentynm_pcs|*twentynm_hssi_*_pld_pcs_interface*|pld_pmaif_rx_pld_rst_n*}]
set_false_path -to [get_pins -compatibility_mode {*twentynm_xcvr_native_inst|*inst_twentynm_pcs|*twentynm_hssi_*_pld_pcs_interface*|pld_bitslip*}]
set_false_path -to [get_pins -compatibility_mode {*twentynm_xcvr_native_inst|*inst_twentynm_pcs|*twentynm_hssi_*_pld_pcs_interface*|pld_rx_prbs_err_clr*}]
set_false_path -to [get_pins -compatibility_mode {*twentynm_xcvr_native_inst|*inst_twentynm_pcs|*twentynm_hssi_*_pld_pcs_interface*|pld_polinv_tx*}]
set_false_path -to [get_pins -compatibility_mode {*twentynm_xcvr_native_inst|*inst_twentynm_pcs|*twentynm_hssi_*_pld_pcs_interface*|pld_polinv_rx*}]
set_false_path -from [get_registers {*altera_jtag_src_crosser:*|sink_data_buffer*}] -to [get_registers {*altera_jtag_src_crosser:*|src_data*}]
set_false_path -to [get_pins -nocase -compatibility_mode {*|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain*|clrn}]


#**************************************************************
# Set Multicycle Path
#**************************************************************

set_multicycle_path -setup -end -to [get_keepers {*pld_clk_in_use_altpcie_sc_bitsync*altpcie_sc_bitsync_meta_dff[*]}] 3
set_multicycle_path -setup -end -to [get_keepers {*reset_status_altpcie_sc_bitsync*altpcie_sc_bitsync_meta_dff[*]}] 3
set_multicycle_path -setup -start -from [get_keepers {u0|emif_0|emif_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].tile_ctrl_inst~hmc_reg0}] -through [get_pins {u0|emif_0|emif_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].tile_ctrl_inst|ctl2core_avl_cmd_ready}]  2
set_multicycle_path -hold -start -from [get_keepers {u0|emif_0|emif_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].tile_ctrl_inst~hmc_reg0}] -through [get_pins {u0|emif_0|emif_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].tile_ctrl_inst|ctl2core_avl_cmd_ready}]  1
set_multicycle_path -setup -end -through [get_pins {u0|emif_0|emif_0|arch|arch_inst|seq_if_inst|afi_cal_success_sync_inst|din_s1|d u0|emif_0|emif_0|arch|arch_inst|seq_if_inst|afi_cal_success_sync_inst|din_s1|*data}]  -to [get_keepers {u0|emif_0|emif_0|arch|arch_inst|seq_if_inst|afi_cal_success_sync_inst|din_s1}] 7
set_multicycle_path -hold -end -through [get_pins {u0|emif_0|emif_0|arch|arch_inst|seq_if_inst|afi_cal_success_sync_inst|din_s1|d u0|emif_0|emif_0|arch|arch_inst|seq_if_inst|afi_cal_success_sync_inst|din_s1|*data}]  -to [get_keepers {u0|emif_0|emif_0|arch|arch_inst|seq_if_inst|afi_cal_success_sync_inst|din_s1}] 6
set_multicycle_path -setup -end -through [get_pins {u0|emif_0|emif_0|arch|arch_inst|seq_if_inst|afi_cal_fail_sync_inst|din_s1|d u0|emif_0|emif_0|arch|arch_inst|seq_if_inst|afi_cal_fail_sync_inst|din_s1|*data}]  -to [get_keepers {u0|emif_0|emif_0|arch|arch_inst|seq_if_inst|afi_cal_fail_sync_inst|din_s1}] 7
set_multicycle_path -hold -end -through [get_pins {u0|emif_0|emif_0|arch|arch_inst|seq_if_inst|afi_cal_fail_sync_inst|din_s1|d u0|emif_0|emif_0|arch|arch_inst|seq_if_inst|afi_cal_fail_sync_inst|din_s1|*data}]  -to [get_keepers {u0|emif_0|emif_0|arch|arch_inst|seq_if_inst|afi_cal_fail_sync_inst|din_s1}] 6
set_multicycle_path -setup -end -through [get_pins {u0|emif_0|emif_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].lane_gen[*].lane_inst|reset_n}]  -to [get_keepers {u0|emif_0|emif_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].lane_gen[*].lane_inst*}] 7
set_multicycle_path -hold -end -through [get_pins {u0|emif_0|emif_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].lane_gen[*].lane_inst|reset_n}]  -to [get_keepers {u0|emif_0|emif_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].lane_gen[*].lane_inst*}] 6
set_multicycle_path -setup -end -through [get_pins {u0|emif_0|emif_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].tile_ctrl_inst*|global_reset_n}]  -to [get_keepers {u0|emif_0|emif_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].tile_ctrl_inst*}] 7
set_multicycle_path -hold -end -through [get_pins {u0|emif_0|emif_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].tile_ctrl_inst*|global_reset_n}]  -to [get_keepers {u0|emif_0|emif_0|arch|arch_inst|io_tiles_wrap_inst|io_tiles_inst|tile_gen[*].tile_ctrl_inst*}] 6
set_multicycle_path -setup -end -through [get_pins {u0|emif_0|emif_0|arch|arch_inst|io_aux_inst|io_aux|core_usr_reset_n}]  -to [get_keepers {u0|emif_0|emif_0|arch|arch_inst|io_aux_inst|io_aux*}] 7
set_multicycle_path -hold -end -through [get_pins {u0|emif_0|emif_0|arch|arch_inst|io_aux_inst|io_aux|core_usr_reset_n}]  -to [get_keepers {u0|emif_0|emif_0|arch|arch_inst|io_aux_inst|io_aux*}] 6
set_multicycle_path -setup -end -through [get_pins {u0|emif_0|emif_0|arch|arch_inst|non_hps.core_clks_rsts_inst|*reset_sync*|clrn}]  -to [get_keepers {u0|emif_0|emif_0|arch|arch_inst|non_hps.core_clks_rsts_inst|*reset_sync*}] 7
set_multicycle_path -hold -end -through [get_pins {u0|emif_0|emif_0|arch|arch_inst|non_hps.core_clks_rsts_inst|*reset_sync*|clrn}]  -to [get_keepers {u0|emif_0|emif_0|arch|arch_inst|non_hps.core_clks_rsts_inst|*reset_sync*}] 6
set_multicycle_path -setup -end -through [get_pins -nocase -compatibility_mode {*|altpcie_a10_hip_pipen1b:altpcie_a10_hip_pipen1b|wys|tl_cfg_add[*]}]  2
set_multicycle_path -hold -end -through [get_pins -nocase -compatibility_mode {*|altpcie_a10_hip_pipen1b:altpcie_a10_hip_pipen1b|wys|tl_cfg_add[*]}]  2
set_multicycle_path -setup -end -through [get_pins -nocase -compatibility_mode {*|altpcie_a10_hip_pipen1b:altpcie_a10_hip_pipen1b|wys|tl_cfg_ctl[*]}]  2
set_multicycle_path -hold -end -through [get_pins -nocase -compatibility_mode {*|altpcie_a10_hip_pipen1b:altpcie_a10_hip_pipen1b|wys|tl_cfg_ctl[*]}]  2
set_multicycle_path -setup -end -through [get_pins {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|altpcie_a10_hip_pipen1b|g_xcvr.altpcie_a10_hip_pllnphy|g_xcvr.g_phy_g2x1.phy_g2x1|phy_g2x1|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|gen_twentynm_hssi_8g_rx_pcs.inst_twentynm_hssi_8g_rx_pcs|pld_rx_data_8g_txclk_reg}]  0
set_multicycle_path -setup -end -through [get_pins {u0|pio_pcie_0|pcie_a10|subsystem_pcie_pcie_a10_hip_0|altpcie_a10_hip_pipen1b|g_xcvr.altpcie_a10_hip_pllnphy|g_xcvr.g_phy_g2x1.phy_g2x1|phy_g2x1|g_xcvr_native_insts[0].twentynm_xcvr_native_inst|twentynm_xcvr_native_inst|inst_twentynm_pcs|gen_twentynm_hssi_8g_rx_pcs.inst_twentynm_hssi_8g_rx_pcs|pld_rx_data_8g_reg}]  0


#**************************************************************
# Set Maximum Delay
#**************************************************************

set_max_delay -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {*altera_avalon_st_clock_crosser:*|out_data_buffer*}] 100.000
set_max_delay -from [get_registers {*altera_avalon_st_clock_crosser:*}] -to [get_registers {*altera_avalon_st_clock_crosser:*|altera_std_synchronizer_nocut:*|din_s1}] 100.000
set_max_delay -to [get_pins -compatibility_mode {*twentynm_xcvr_native_inst|*inst_twentynm_pcs|*twentynm_hssi_*_pld_pcs_interface*|pld_pmaif_tx_pld_rst_n}] 50.000
set_max_delay -to [get_pins -compatibility_mode {*twentynm_xcvr_native_inst|*inst_twentynm_pcs|*twentynm_hssi_*_pld_pcs_interface*|pld_8g_g3_tx_pld_rst_n}] 50.000
set_max_delay -to [get_pins -compatibility_mode {*twentynm_xcvr_native_inst|*inst_twentynm_pcs|*twentynm_hssi_*_pld_pcs_interface*|pld_10g_krfec_tx_pld_rst_n}] 50.000
set_max_delay -to [get_pins -compatibility_mode {*twentynm_xcvr_native_inst|*inst_twentynm_pcs|*twentynm_hssi_*_pld_pcs_interface*|pld_pma_txpma_rstb}] 20.000
set_max_delay -to [get_pins -compatibility_mode {*twentynm_xcvr_native_inst|*inst_twentynm_pcs|*twentynm_hssi_*_pld_pcs_interface*|pld_pma_rxpma_rstb}] 20.000
set_max_delay -from [get_registers {*|in_wr_ptr_gray[*]}] -to [get_registers {*|altera_dcfifo_synchronizer_bundle:write_crosser|altera_std_synchronizer_nocut:sync[*].u|din_s1}] 200.000
set_max_delay -from [get_registers {*|out_rd_ptr_gray[*]}] -to [get_registers {*|altera_dcfifo_synchronizer_bundle:read_crosser|altera_std_synchronizer_nocut:sync[*].u|din_s1}] 200.000


#**************************************************************
# Set Minimum Delay
#**************************************************************

set_min_delay -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {*altera_avalon_st_clock_crosser:*|out_data_buffer*}] -100.000
set_min_delay -from [get_registers {*altera_avalon_st_clock_crosser:*}] -to [get_registers {*altera_avalon_st_clock_crosser:*|altera_std_synchronizer_nocut:*|din_s1}] -100.000
set_min_delay -to [get_pins -compatibility_mode {*twentynm_xcvr_native_inst|*inst_twentynm_pcs|*twentynm_hssi_*_pld_pcs_interface*|pld_pmaif_tx_pld_rst_n}] -50.000
set_min_delay -to [get_pins -compatibility_mode {*twentynm_xcvr_native_inst|*inst_twentynm_pcs|*twentynm_hssi_*_pld_pcs_interface*|pld_8g_g3_tx_pld_rst_n}] -50.000
set_min_delay -to [get_pins -compatibility_mode {*twentynm_xcvr_native_inst|*inst_twentynm_pcs|*twentynm_hssi_*_pld_pcs_interface*|pld_10g_krfec_tx_pld_rst_n}] -50.000
set_min_delay -to [get_pins -compatibility_mode {*twentynm_xcvr_native_inst|*inst_twentynm_pcs|*twentynm_hssi_*_pld_pcs_interface*|pld_pma_txpma_rstb}] -10.000
set_min_delay -to [get_pins -compatibility_mode {*twentynm_xcvr_native_inst|*inst_twentynm_pcs|*twentynm_hssi_*_pld_pcs_interface*|pld_pma_rxpma_rstb}] -10.000
set_min_delay -from [get_registers {*|in_wr_ptr_gray[*]}] -to [get_registers {*|altera_dcfifo_synchronizer_bundle:write_crosser|altera_std_synchronizer_nocut:sync[*].u|din_s1}] -200.000
set_min_delay -from [get_registers {*|out_rd_ptr_gray[*]}] -to [get_registers {*|altera_dcfifo_synchronizer_bundle:read_crosser|altera_std_synchronizer_nocut:sync[*].u|din_s1}] -200.000


#**************************************************************
# Set Input Transition
#**************************************************************



#**************************************************************
# Set Net Delay
#**************************************************************

set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {auto_fab_0|alt_sld_fab_0|alt_sld_fab_0|host_link_jtag|jtag|normal.jtag_dc_streaming|sink_crosser|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_002|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|emif_0|emif_0|col_if|colmaster|jtag_phy_embedded_in_jtag_master|normal.jtag_dc_streaming|sink_crosser|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|xcvr_0|master_0|master_0|jtag_phy_embedded_in_jtag_master|normal.jtag_dc_streaming|sink_crosser|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|xcvr_1|master_0|master_0|jtag_phy_embedded_in_jtag_master|normal.jtag_dc_streaming|sink_crosser|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|xcvr_2|master_0|master_0|jtag_phy_embedded_in_jtag_master|normal.jtag_dc_streaming|sink_crosser|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|xcvr_3|master_0|master_0|jtag_phy_embedded_in_jtag_master|normal.jtag_dc_streaming|sink_crosser|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|xcvr_4|master_0|sfp_1f_xcvr_master_0|jtag_phy_embedded_in_jtag_master|normal.jtag_dc_streaming|sink_crosser|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_001|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_003|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|mm_interconnect_3|crosser|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|mm_interconnect_2|crosser_005|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|mm_interconnect_2|crosser_007|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|mm_interconnect_3|crosser_003|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|mm_interconnect_3|crosser_008|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_011|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_003|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|mm_interconnect_1|crosser|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|mm_interconnect_1|crosser_003|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|mm_interconnect_0|crosser_002|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|mm_interconnect_0|crosser_003|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|mm_interconnect_0|crosser|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_010|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_009|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_006|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_008|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_007|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|mm_interconnect_3|crosser_009|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|mm_interconnect_2|crosser_001|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|mm_interconnect_3|crosser_004|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|mm_interconnect_3|crosser_006|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_005|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_004|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_008|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_010|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_006|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|mm_interconnect_2|crosser|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_005|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_004|async_clock_crosser.clock_xer|out_data_buffer*}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {auto_fab_0|alt_sld_fab_0|alt_sld_fab_0|host_link_jtag|jtag|normal.jtag_dc_streaming|sink_crosser|in_data_toggle}] -to [get_registers {auto_fab_0|alt_sld_fab_0|alt_sld_fab_0|host_link_jtag|jtag|normal.jtag_dc_streaming|sink_crosser|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_2|crosser_002|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|mm_interconnect_2|crosser_002|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_2|crosser_003|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|mm_interconnect_2|crosser_003|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_2|crosser|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|mm_interconnect_2|crosser|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_2|crosser_001|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|mm_interconnect_2|crosser_001|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_3|crosser_001|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|mm_interconnect_3|crosser_001|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_3|crosser_005|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|mm_interconnect_3|crosser_005|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_3|crosser|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|mm_interconnect_3|crosser|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_3|crosser_004|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|mm_interconnect_3|crosser_004|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|xcvr_0|master_0|master_0|jtag_phy_embedded_in_jtag_master|normal.jtag_dc_streaming|sink_crosser|in_data_toggle}] -to [get_registers {u0|xcvr_0|master_0|master_0|jtag_phy_embedded_in_jtag_master|normal.jtag_dc_streaming|sink_crosser|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|xcvr_1|master_0|master_0|jtag_phy_embedded_in_jtag_master|normal.jtag_dc_streaming|sink_crosser|in_data_toggle}] -to [get_registers {u0|xcvr_1|master_0|master_0|jtag_phy_embedded_in_jtag_master|normal.jtag_dc_streaming|sink_crosser|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|xcvr_2|master_0|master_0|jtag_phy_embedded_in_jtag_master|normal.jtag_dc_streaming|sink_crosser|in_data_toggle}] -to [get_registers {u0|xcvr_2|master_0|master_0|jtag_phy_embedded_in_jtag_master|normal.jtag_dc_streaming|sink_crosser|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_007|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_007|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_008|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_008|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|xcvr_3|master_0|master_0|jtag_phy_embedded_in_jtag_master|normal.jtag_dc_streaming|sink_crosser|in_data_toggle}] -to [get_registers {u0|xcvr_3|master_0|master_0|jtag_phy_embedded_in_jtag_master|normal.jtag_dc_streaming|sink_crosser|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|xcvr_4|master_0|sfp_1f_xcvr_master_0|jtag_phy_embedded_in_jtag_master|normal.jtag_dc_streaming|sink_crosser|in_data_toggle}] -to [get_registers {u0|xcvr_4|master_0|sfp_1f_xcvr_master_0|jtag_phy_embedded_in_jtag_master|normal.jtag_dc_streaming|sink_crosser|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_0|crosser_001|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|mm_interconnect_0|crosser_001|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_0|crosser|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|mm_interconnect_0|crosser|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_004|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_004|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_005|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_005|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_003|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_003|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_001|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_001|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_011|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_011|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_010|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_010|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_002|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_002|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_003|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_003|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_004|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_004|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_2|crosser_006|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|mm_interconnect_2|crosser_006|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_2|crosser_004|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|mm_interconnect_2|crosser_004|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_2|crosser_005|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|mm_interconnect_2|crosser_005|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_2|crosser_007|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|mm_interconnect_2|crosser_007|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_3|crosser_002|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|mm_interconnect_3|crosser_002|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_3|crosser_007|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|mm_interconnect_3|crosser_007|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_3|crosser_008|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|mm_interconnect_3|crosser_008|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_3|crosser_003|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|mm_interconnect_3|crosser_003|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_008|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_008|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_009|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_009|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_3|crosser_006|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|mm_interconnect_3|crosser_006|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_005|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_005|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_010|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_010|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_011|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_011|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|emif_0|emif_0|col_if|colmaster|jtag_phy_embedded_in_jtag_master|normal.jtag_dc_streaming|sink_crosser|in_data_toggle}] -to [get_registers {u0|emif_0|emif_0|col_if|colmaster|jtag_phy_embedded_in_jtag_master|normal.jtag_dc_streaming|sink_crosser|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_009|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_009|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_001|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_001|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_002|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_002|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_1|crosser_001|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|mm_interconnect_1|crosser_001|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_1|crosser|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|mm_interconnect_1|crosser|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_3|crosser_009|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|mm_interconnect_3|crosser_009|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_1|crosser_002|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|mm_interconnect_1|crosser_002|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_1|crosser_003|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|mm_interconnect_1|crosser_003|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_0|crosser_002|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|mm_interconnect_0|crosser_002|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_0|crosser_003|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|mm_interconnect_0|crosser_003|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_006|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_006|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_006|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_006|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_007|async_clock_crosser.clock_xer|in_data_toggle}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_007|async_clock_crosser.clock_xer|in_to_out_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {auto_fab_0|alt_sld_fab_0|alt_sld_fab_0|host_link_jtag|jtag|normal.jtag_dc_streaming|sink_crosser|out_data_toggle_flopped}] -to [get_registers {auto_fab_0|alt_sld_fab_0|alt_sld_fab_0|host_link_jtag|jtag|normal.jtag_dc_streaming|sink_crosser|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_001|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_001|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_002|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_002|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_2|crosser_006|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|mm_interconnect_2|crosser_006|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_2|crosser_004|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|mm_interconnect_2|crosser_004|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_2|crosser_005|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|mm_interconnect_2|crosser_005|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_2|crosser_007|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|mm_interconnect_2|crosser_007|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_3|crosser_002|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|mm_interconnect_3|crosser_002|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_3|crosser_007|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|mm_interconnect_3|crosser_007|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_3|crosser_008|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|mm_interconnect_3|crosser_008|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_3|crosser_003|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|mm_interconnect_3|crosser_003|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|emif_0|emif_0|col_if|colmaster|jtag_phy_embedded_in_jtag_master|normal.jtag_dc_streaming|sink_crosser|out_data_toggle_flopped}] -to [get_registers {u0|emif_0|emif_0|col_if|colmaster|jtag_phy_embedded_in_jtag_master|normal.jtag_dc_streaming|sink_crosser|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|xcvr_0|master_0|master_0|jtag_phy_embedded_in_jtag_master|normal.jtag_dc_streaming|sink_crosser|out_data_toggle_flopped}] -to [get_registers {u0|xcvr_0|master_0|master_0|jtag_phy_embedded_in_jtag_master|normal.jtag_dc_streaming|sink_crosser|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|xcvr_1|master_0|master_0|jtag_phy_embedded_in_jtag_master|normal.jtag_dc_streaming|sink_crosser|out_data_toggle_flopped}] -to [get_registers {u0|xcvr_1|master_0|master_0|jtag_phy_embedded_in_jtag_master|normal.jtag_dc_streaming|sink_crosser|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|xcvr_2|master_0|master_0|jtag_phy_embedded_in_jtag_master|normal.jtag_dc_streaming|sink_crosser|out_data_toggle_flopped}] -to [get_registers {u0|xcvr_2|master_0|master_0|jtag_phy_embedded_in_jtag_master|normal.jtag_dc_streaming|sink_crosser|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|xcvr_3|master_0|master_0|jtag_phy_embedded_in_jtag_master|normal.jtag_dc_streaming|sink_crosser|out_data_toggle_flopped}] -to [get_registers {u0|xcvr_3|master_0|master_0|jtag_phy_embedded_in_jtag_master|normal.jtag_dc_streaming|sink_crosser|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|xcvr_4|master_0|sfp_1f_xcvr_master_0|jtag_phy_embedded_in_jtag_master|normal.jtag_dc_streaming|sink_crosser|out_data_toggle_flopped}] -to [get_registers {u0|xcvr_4|master_0|sfp_1f_xcvr_master_0|jtag_phy_embedded_in_jtag_master|normal.jtag_dc_streaming|sink_crosser|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_004|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_004|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_005|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_005|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_003|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_003|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_2|crosser_002|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|mm_interconnect_2|crosser_002|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_2|crosser_003|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|mm_interconnect_2|crosser_003|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_2|crosser|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|mm_interconnect_2|crosser|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_2|crosser_001|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|mm_interconnect_2|crosser_001|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_1|crosser_003|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|mm_interconnect_1|crosser_003|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_3|crosser_001|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|mm_interconnect_3|crosser_001|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_3|crosser_005|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|mm_interconnect_3|crosser_005|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_3|crosser|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|mm_interconnect_3|crosser|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_3|crosser_004|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|mm_interconnect_3|crosser_004|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_002|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_002|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_005|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_005|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_001|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_001|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_004|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_004|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_0|crosser_002|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|mm_interconnect_0|crosser_002|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_0|crosser_003|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|mm_interconnect_0|crosser_003|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_008|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_008|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_010|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_010|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_009|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_009|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_007|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_007|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_006|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_006|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_1|crosser_002|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|mm_interconnect_1|crosser_002|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_011|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser_011|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_0|crosser_001|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|mm_interconnect_0|crosser_001|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_0|crosser|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|mm_interconnect_0|crosser|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_1|crosser_001|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|mm_interconnect_1|crosser_001|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_1|crosser|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|mm_interconnect_1|crosser|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_006|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_006|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_008|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_008|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_010|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_010|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_003|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_003|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_0|crosser|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_3|crosser_006|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|mm_interconnect_3|crosser_006|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_009|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_009|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_011|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_011|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|mm_interconnect_3|crosser_009|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|mm_interconnect_3|crosser_009|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_007|async_clock_crosser.clock_xer|out_data_toggle_flopped}] -to [get_registers {u0|pio_pcie_0|mm_interconnect_2|crosser_007|async_clock_crosser.clock_xer|out_to_in_synchronizer|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_pins -compatibility_mode {*|in_wr_ptr_gray[*]*}] -to [get_registers {*|altera_dcfifo_synchronizer_bundle:write_crosser|altera_std_synchronizer_nocut:sync[*].u|din_s1}]
set_net_delay -max -value_multiplier 0.800 -get_value_from_clock_period dst_clock_period -from [get_pins -compatibility_mode {*|out_rd_ptr_gray[*]*}] -to [get_registers {*|altera_dcfifo_synchronizer_bundle:read_crosser|altera_std_synchronizer_nocut:sync[*].u|din_s1}]


#**************************************************************
# Set Max Skew
#**************************************************************

set_max_skew -from [get_registers {u0|mm_clock_crossing_bridge|mm_clock_crossing_bridge|cmd_fifo|in_wr_ptr_gray[*]}] -to [get_registers {u0|mm_clock_crossing_bridge|mm_clock_crossing_bridge|cmd_fifo|write_crosser|sync[*].u|din_s1}] -get_skew_value_from_clock_period src_clock_period -skew_value_multiplier 0.800 
set_max_skew -from [get_registers {u0|mm_clock_crossing_bridge|mm_clock_crossing_bridge|cmd_fifo|out_rd_ptr_gray[*]}] -to [get_registers {u0|mm_clock_crossing_bridge|mm_clock_crossing_bridge|cmd_fifo|read_crosser|sync[*].u|din_s1}] -get_skew_value_from_clock_period src_clock_period -skew_value_multiplier 0.800 
set_max_skew -from [get_registers {u0|mm_clock_crossing_bridge|mm_clock_crossing_bridge|rsp_fifo|in_wr_ptr_gray[*]}] -to [get_registers {u0|mm_clock_crossing_bridge|mm_clock_crossing_bridge|rsp_fifo|write_crosser|sync[*].u|din_s1}] -get_skew_value_from_clock_period src_clock_period -skew_value_multiplier 0.800 
set_max_skew -from [get_registers {u0|mm_clock_crossing_bridge|mm_clock_crossing_bridge|rsp_fifo|out_rd_ptr_gray[*]}] -to [get_registers {u0|mm_clock_crossing_bridge|mm_clock_crossing_bridge|rsp_fifo|read_crosser|sync[*].u|din_s1}] -get_skew_value_from_clock_period src_clock_period -skew_value_multiplier 0.800 
set_max_skew -from [get_registers {u0|pio_pcie_0|ccb_h2f|subsys_pcie_ccb_h2f|cmd_fifo|in_wr_ptr_gray[*]}] -to [get_registers {u0|pio_pcie_0|ccb_h2f|subsys_pcie_ccb_h2f|cmd_fifo|write_crosser|sync[*].u|din_s1}] -get_skew_value_from_clock_period src_clock_period -skew_value_multiplier 0.800 
set_max_skew -from [get_registers {u0|pio_pcie_0|ccb_h2f|subsys_pcie_ccb_h2f|cmd_fifo|out_rd_ptr_gray[*]}] -to [get_registers {u0|pio_pcie_0|ccb_h2f|subsys_pcie_ccb_h2f|cmd_fifo|read_crosser|sync[*].u|din_s1}] -get_skew_value_from_clock_period src_clock_period -skew_value_multiplier 0.800 
set_max_skew -from [get_registers {u0|pio_pcie_0|ccb_h2f|subsys_pcie_ccb_h2f|rsp_fifo|in_wr_ptr_gray[*]}] -to [get_registers {u0|pio_pcie_0|ccb_h2f|subsys_pcie_ccb_h2f|rsp_fifo|write_crosser|sync[*].u|din_s1}] -get_skew_value_from_clock_period src_clock_period -skew_value_multiplier 0.800 
set_max_skew -from [get_registers {u0|pio_pcie_0|ccb_h2f|subsys_pcie_ccb_h2f|rsp_fifo|out_rd_ptr_gray[*]}] -to [get_registers {u0|pio_pcie_0|ccb_h2f|subsys_pcie_ccb_h2f|rsp_fifo|read_crosser|sync[*].u|din_s1}] -get_skew_value_from_clock_period src_clock_period -skew_value_multiplier 0.800 
set_max_skew -from [get_registers {auto_fab_0|alt_sld_fab_0|alt_sld_fab_0|stfabric|h2t0_fifo|in_wr_ptr_gray[*]}] -to [get_registers {auto_fab_0|alt_sld_fab_0|alt_sld_fab_0|stfabric|h2t0_fifo|write_crosser|sync[*].u|din_s1}] -get_skew_value_from_clock_period src_clock_period -skew_value_multiplier 0.800 
set_max_skew -from [get_registers {auto_fab_0|alt_sld_fab_0|alt_sld_fab_0|stfabric|h2t0_fifo|out_rd_ptr_gray[*]}] -to [get_registers {auto_fab_0|alt_sld_fab_0|alt_sld_fab_0|stfabric|h2t0_fifo|read_crosser|sync[*].u|din_s1}] -get_skew_value_from_clock_period src_clock_period -skew_value_multiplier 0.800 
set_max_skew -from [get_registers {auto_fab_0|alt_sld_fab_0|alt_sld_fab_0|stfabric|t2h0_fifo|in_wr_ptr_gray[*]}] -to [get_registers {auto_fab_0|alt_sld_fab_0|alt_sld_fab_0|stfabric|t2h0_fifo|write_crosser|sync[*].u|din_s1}] -get_skew_value_from_clock_period src_clock_period -skew_value_multiplier 0.800 
set_max_skew -from [get_registers {auto_fab_0|alt_sld_fab_0|alt_sld_fab_0|stfabric|t2h0_fifo|out_rd_ptr_gray[*]}] -to [get_registers {auto_fab_0|alt_sld_fab_0|alt_sld_fab_0|stfabric|t2h0_fifo|read_crosser|sync[*].u|din_s1}] -get_skew_value_from_clock_period src_clock_period -skew_value_multiplier 0.800 
