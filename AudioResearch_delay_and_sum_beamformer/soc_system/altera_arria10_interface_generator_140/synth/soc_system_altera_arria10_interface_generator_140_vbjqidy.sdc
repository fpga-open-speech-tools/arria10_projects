create_clock -name hps_spim1_sclk_out -period 1000.0 [get_nodes *spim_1_clk]
create_clock -name hps_i2c_internal -period 2500.000 [get_registers {*~l4_sp_clk.reg}]