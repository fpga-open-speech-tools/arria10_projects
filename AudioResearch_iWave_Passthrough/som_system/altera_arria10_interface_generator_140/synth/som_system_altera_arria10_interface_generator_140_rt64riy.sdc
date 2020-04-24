create_clock -period 10.0 [get_pins -compatibility_mode *|fpga_interfaces|s2f_user0_clk*]
create_clock -name hps_spim0_sclk_out -period 10.0 [get_nodes *spim_0_clk]