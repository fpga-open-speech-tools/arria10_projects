
module som_system (
	ad1939_abclk_clk,
	ad1939_alrclk_clk,
	ad1939_mclk_clk,
	ad1939_physical_ad1939_adc_asdata1,
	ad1939_physical_ad1939_adc_asdata2,
	ad1939_physical_ad1939_dac_dsdata1,
	ad1939_physical_ad1939_dac_dsdata2,
	ad1939_physical_ad1939_dac_dbclk,
	ad1939_physical_ad1939_dac_dlrclk,
	ad4020_left_physical_cnv,
	ad4020_left_physical_miso,
	ad4020_left_physical_mosi,
	ad4020_left_physical_sclk,
	ad4020_right_physical_cnv,
	ad4020_right_physical_miso,
	ad4020_right_physical_mosi,
	ad4020_right_physical_sclk,
	ad5791_left_physical_ad5791_clr_n_out,
	ad5791_left_physical_ad5791_ldac_n_out,
	ad5791_left_physical_ad5791_miso_out,
	ad5791_left_physical_ad5791_mosi_in,
	ad5791_left_physical_ad5791_sclk_out,
	ad5791_left_physical_ad5791_sync_n_out,
	ad5791_right_physical_ad5791_clr_n_out,
	ad5791_right_physical_ad5791_ldac_n_out,
	ad5791_right_physical_ad5791_miso_out,
	ad5791_right_physical_ad5791_mosi_in,
	ad5791_right_physical_ad5791_sclk_out,
	ad5791_right_physical_ad5791_sync_n_out,
	ad7768_physical_ad7768_dout_in,
	ad7768_physical_ad7768_drdy_in,
	ad7768_physical_ad7768_dclk_in,
	addr_sel_in_add_sel,
	axi_clk_bridge_in_clk_clk,
	clk_100_clk,
	ddr_ref_clk_clk,
	emif_0_global_reset_n_reset_n,
	emif_0_mem_mem_ck,
	emif_0_mem_mem_ck_n,
	emif_0_mem_mem_a,
	emif_0_mem_mem_act_n,
	emif_0_mem_mem_ba,
	emif_0_mem_mem_bg,
	emif_0_mem_mem_cke,
	emif_0_mem_mem_cs_n,
	emif_0_mem_mem_odt,
	emif_0_mem_mem_reset_n,
	emif_0_mem_mem_par,
	emif_0_mem_mem_alert_n,
	emif_0_mem_mem_dqs,
	emif_0_mem_mem_dqs_n,
	emif_0_mem_mem_dq,
	emif_0_mem_mem_dbi_n,
	emif_0_oct_oct_rzqin,
	emif_0_pll_extra_clk_0_pll_extra_clk_0,
	emif_0_pll_locked_pll_locked,
	emif_0_pll_ref_clk_clk,
	emif_0_status_local_cal_success,
	emif_0_status_local_cal_fail,
	emif_a10_hps_0_global_reset_reset_sink_reset_n,
	hps_0_h2f_reset_reset_n,
	hps_i2c1_sda_i,
	hps_i2c1_sda_oe,
	hps_i2c1_clk_clk,
	hps_i2c1_scl_in_clk,
	hps_io_hps_io_phery_emac1_TX_CLK,
	hps_io_hps_io_phery_emac1_TXD0,
	hps_io_hps_io_phery_emac1_TXD1,
	hps_io_hps_io_phery_emac1_TXD2,
	hps_io_hps_io_phery_emac1_TXD3,
	hps_io_hps_io_phery_emac1_RX_CTL,
	hps_io_hps_io_phery_emac1_TX_CTL,
	hps_io_hps_io_phery_emac1_RX_CLK,
	hps_io_hps_io_phery_emac1_RXD0,
	hps_io_hps_io_phery_emac1_RXD1,
	hps_io_hps_io_phery_emac1_RXD2,
	hps_io_hps_io_phery_emac1_RXD3,
	hps_io_hps_io_phery_emac1_MDIO,
	hps_io_hps_io_phery_emac1_MDC,
	hps_io_hps_io_phery_sdmmc_CMD,
	hps_io_hps_io_phery_sdmmc_D0,
	hps_io_hps_io_phery_sdmmc_D1,
	hps_io_hps_io_phery_sdmmc_D2,
	hps_io_hps_io_phery_sdmmc_D3,
	hps_io_hps_io_phery_sdmmc_CCLK,
	hps_io_hps_io_phery_usb1_DATA0,
	hps_io_hps_io_phery_usb1_DATA1,
	hps_io_hps_io_phery_usb1_DATA2,
	hps_io_hps_io_phery_usb1_DATA3,
	hps_io_hps_io_phery_usb1_DATA4,
	hps_io_hps_io_phery_usb1_DATA5,
	hps_io_hps_io_phery_usb1_DATA6,
	hps_io_hps_io_phery_usb1_DATA7,
	hps_io_hps_io_phery_usb1_CLK,
	hps_io_hps_io_phery_usb1_STP,
	hps_io_hps_io_phery_usb1_DIR,
	hps_io_hps_io_phery_usb1_NXT,
	hps_io_hps_io_phery_uart1_RX,
	hps_io_hps_io_phery_uart1_TX,
	hps_io_hps_io_phery_i2c0_SDA,
	hps_io_hps_io_phery_i2c0_SCL,
	hps_io_hps_io_gpio_gpio2_io6,
	hps_io_hps_io_gpio_gpio2_io8,
	hps_io_hps_io_gpio_gpio0_io0,
	hps_io_hps_io_gpio_gpio0_io1,
	hps_io_hps_io_gpio_gpio0_io6,
	hps_io_hps_io_gpio_gpio0_io11,
	hps_io_hps_io_gpio_gpio1_io12,
	hps_io_hps_io_gpio_gpio1_io13,
	hps_io_hps_io_gpio_gpio1_io14,
	hps_io_hps_io_gpio_gpio1_io15,
	hps_io_hps_io_gpio_gpio1_io16,
	hps_io_hps_io_gpio_gpio1_io17,
	hps_io_hps_io_gpio_gpio1_io18,
	hps_io_hps_io_gpio_gpio1_io19,
	hps_io_hps_io_gpio_gpio1_io20,
	hps_io_hps_io_gpio_gpio1_io21,
	hps_io_hps_io_gpio_gpio1_io22,
	hps_io_hps_io_gpio_gpio1_io23,
	hps_spim0_mosi_o,
	hps_spim0_miso_i,
	hps_spim0_ss_in_n,
	hps_spim0_mosi_oe,
	hps_spim0_ss0_n_o,
	hps_spim0_ss1_n_o,
	hps_spim0_ss2_n_o,
	hps_spim0_ss3_n_o,
	hps_spim0_sclk_out_clk,
	mclk_pll_locked_export,
	mem_mem_ck,
	mem_mem_ck_n,
	mem_mem_a,
	mem_mem_act_n,
	mem_mem_ba,
	mem_mem_bg,
	mem_mem_cke,
	mem_mem_cs_n,
	mem_mem_odt,
	mem_mem_reset_n,
	mem_mem_par,
	mem_mem_alert_n,
	mem_mem_dqs,
	mem_mem_dqs_n,
	mem_mem_dq,
	mem_mem_dbi_n,
	mic_array0_control_busy_out,
	mic_array0_physical_serial_data_in,
	mic_array0_physical_serial_data_out,
	mic_array0_physical_serial_clk_out,
	mic_array10_control_busy_out,
	mic_array10_physical_serial_data_in,
	mic_array10_physical_serial_data_out,
	mic_array10_physical_serial_clk_out,
	mic_array11_control_busy_out,
	mic_array11_physical_serial_data_in,
	mic_array11_physical_serial_data_out,
	mic_array11_physical_serial_clk_out,
	mic_array12_control_busy_out,
	mic_array12_physical_serial_data_in,
	mic_array12_physical_serial_data_out,
	mic_array12_physical_serial_clk_out,
	mic_array13_control_busy_out,
	mic_array13_physical_serial_data_in,
	mic_array13_physical_serial_data_out,
	mic_array13_physical_serial_clk_out,
	mic_array14_control_busy_out,
	mic_array14_physical_serial_data_in,
	mic_array14_physical_serial_data_out,
	mic_array14_physical_serial_clk_out,
	mic_array15_control_busy_out,
	mic_array15_physical_serial_data_in,
	mic_array15_physical_serial_data_out,
	mic_array15_physical_serial_clk_out,
	mic_array1_control_busy_out,
	mic_array1_physical_serial_data_in,
	mic_array1_physical_serial_data_out,
	mic_array1_physical_serial_clk_out,
	mic_array2_control_busy_out,
	mic_array2_physical_serial_data_in,
	mic_array2_physical_serial_data_out,
	mic_array2_physical_serial_clk_out,
	mic_array3_control_busy_out,
	mic_array3_physical_serial_data_in,
	mic_array3_physical_serial_data_out,
	mic_array3_physical_serial_clk_out,
	mic_array4_control_busy_out,
	mic_array4_physical_serial_data_in,
	mic_array4_physical_serial_data_out,
	mic_array4_physical_serial_clk_out,
	mic_array5_control_busy_out,
	mic_array5_physical_serial_data_in,
	mic_array5_physical_serial_data_out,
	mic_array5_physical_serial_clk_out,
	mic_array6_physical_serial_data_in,
	mic_array6_physical_serial_data_out,
	mic_array6_physical_serial_clk_out,
	mic_array6_physical_1_busy_out,
	mic_array7_control_busy_out,
	mic_array7_physical_serial_data_in,
	mic_array7_physical_serial_data_out,
	mic_array7_physical_serial_clk_out,
	mic_array8_control_busy_out,
	mic_array8_physical_serial_data_in,
	mic_array8_physical_serial_data_out,
	mic_array8_physical_serial_clk_out,
	mic_array9_control_busy_out,
	mic_array9_physical_serial_data_in,
	mic_array9_physical_serial_data_out,
	mic_array9_physical_serial_clk_out,
	oct_oct_rzqin,
	reset_reset_n,
	som_config_pio_export);	

	input		ad1939_abclk_clk;
	input		ad1939_alrclk_clk;
	input		ad1939_mclk_clk;
	input		ad1939_physical_ad1939_adc_asdata1;
	input		ad1939_physical_ad1939_adc_asdata2;
	output		ad1939_physical_ad1939_dac_dsdata1;
	output		ad1939_physical_ad1939_dac_dsdata2;
	output		ad1939_physical_ad1939_dac_dbclk;
	output		ad1939_physical_ad1939_dac_dlrclk;
	output		ad4020_left_physical_cnv;
	input		ad4020_left_physical_miso;
	output		ad4020_left_physical_mosi;
	output		ad4020_left_physical_sclk;
	output		ad4020_right_physical_cnv;
	input		ad4020_right_physical_miso;
	output		ad4020_right_physical_mosi;
	output		ad4020_right_physical_sclk;
	output		ad5791_left_physical_ad5791_clr_n_out;
	output		ad5791_left_physical_ad5791_ldac_n_out;
	input		ad5791_left_physical_ad5791_miso_out;
	output		ad5791_left_physical_ad5791_mosi_in;
	output		ad5791_left_physical_ad5791_sclk_out;
	output		ad5791_left_physical_ad5791_sync_n_out;
	output		ad5791_right_physical_ad5791_clr_n_out;
	output		ad5791_right_physical_ad5791_ldac_n_out;
	input		ad5791_right_physical_ad5791_miso_out;
	output		ad5791_right_physical_ad5791_mosi_in;
	output		ad5791_right_physical_ad5791_sclk_out;
	output		ad5791_right_physical_ad5791_sync_n_out;
	input	[3:0]	ad7768_physical_ad7768_dout_in;
	input		ad7768_physical_ad7768_drdy_in;
	input		ad7768_physical_ad7768_dclk_in;
	input	[2:0]	addr_sel_in_add_sel;
	input		axi_clk_bridge_in_clk_clk;
	input		clk_100_clk;
	input		ddr_ref_clk_clk;
	input		emif_0_global_reset_n_reset_n;
	output	[0:0]	emif_0_mem_mem_ck;
	output	[0:0]	emif_0_mem_mem_ck_n;
	output	[16:0]	emif_0_mem_mem_a;
	output	[0:0]	emif_0_mem_mem_act_n;
	output	[1:0]	emif_0_mem_mem_ba;
	output	[0:0]	emif_0_mem_mem_bg;
	output	[0:0]	emif_0_mem_mem_cke;
	output	[0:0]	emif_0_mem_mem_cs_n;
	output	[0:0]	emif_0_mem_mem_odt;
	output	[0:0]	emif_0_mem_mem_reset_n;
	output	[0:0]	emif_0_mem_mem_par;
	input	[0:0]	emif_0_mem_mem_alert_n;
	inout	[7:0]	emif_0_mem_mem_dqs;
	inout	[7:0]	emif_0_mem_mem_dqs_n;
	inout	[63:0]	emif_0_mem_mem_dq;
	inout	[7:0]	emif_0_mem_mem_dbi_n;
	input		emif_0_oct_oct_rzqin;
	output		emif_0_pll_extra_clk_0_pll_extra_clk_0;
	output		emif_0_pll_locked_pll_locked;
	input		emif_0_pll_ref_clk_clk;
	output		emif_0_status_local_cal_success;
	output		emif_0_status_local_cal_fail;
	input		emif_a10_hps_0_global_reset_reset_sink_reset_n;
	output		hps_0_h2f_reset_reset_n;
	input		hps_i2c1_sda_i;
	output		hps_i2c1_sda_oe;
	output		hps_i2c1_clk_clk;
	input		hps_i2c1_scl_in_clk;
	output		hps_io_hps_io_phery_emac1_TX_CLK;
	output		hps_io_hps_io_phery_emac1_TXD0;
	output		hps_io_hps_io_phery_emac1_TXD1;
	output		hps_io_hps_io_phery_emac1_TXD2;
	output		hps_io_hps_io_phery_emac1_TXD3;
	input		hps_io_hps_io_phery_emac1_RX_CTL;
	output		hps_io_hps_io_phery_emac1_TX_CTL;
	input		hps_io_hps_io_phery_emac1_RX_CLK;
	input		hps_io_hps_io_phery_emac1_RXD0;
	input		hps_io_hps_io_phery_emac1_RXD1;
	input		hps_io_hps_io_phery_emac1_RXD2;
	input		hps_io_hps_io_phery_emac1_RXD3;
	inout		hps_io_hps_io_phery_emac1_MDIO;
	output		hps_io_hps_io_phery_emac1_MDC;
	inout		hps_io_hps_io_phery_sdmmc_CMD;
	inout		hps_io_hps_io_phery_sdmmc_D0;
	inout		hps_io_hps_io_phery_sdmmc_D1;
	inout		hps_io_hps_io_phery_sdmmc_D2;
	inout		hps_io_hps_io_phery_sdmmc_D3;
	output		hps_io_hps_io_phery_sdmmc_CCLK;
	inout		hps_io_hps_io_phery_usb1_DATA0;
	inout		hps_io_hps_io_phery_usb1_DATA1;
	inout		hps_io_hps_io_phery_usb1_DATA2;
	inout		hps_io_hps_io_phery_usb1_DATA3;
	inout		hps_io_hps_io_phery_usb1_DATA4;
	inout		hps_io_hps_io_phery_usb1_DATA5;
	inout		hps_io_hps_io_phery_usb1_DATA6;
	inout		hps_io_hps_io_phery_usb1_DATA7;
	input		hps_io_hps_io_phery_usb1_CLK;
	output		hps_io_hps_io_phery_usb1_STP;
	input		hps_io_hps_io_phery_usb1_DIR;
	input		hps_io_hps_io_phery_usb1_NXT;
	input		hps_io_hps_io_phery_uart1_RX;
	output		hps_io_hps_io_phery_uart1_TX;
	inout		hps_io_hps_io_phery_i2c0_SDA;
	inout		hps_io_hps_io_phery_i2c0_SCL;
	inout		hps_io_hps_io_gpio_gpio2_io6;
	inout		hps_io_hps_io_gpio_gpio2_io8;
	inout		hps_io_hps_io_gpio_gpio0_io0;
	inout		hps_io_hps_io_gpio_gpio0_io1;
	inout		hps_io_hps_io_gpio_gpio0_io6;
	inout		hps_io_hps_io_gpio_gpio0_io11;
	inout		hps_io_hps_io_gpio_gpio1_io12;
	inout		hps_io_hps_io_gpio_gpio1_io13;
	inout		hps_io_hps_io_gpio_gpio1_io14;
	inout		hps_io_hps_io_gpio_gpio1_io15;
	inout		hps_io_hps_io_gpio_gpio1_io16;
	inout		hps_io_hps_io_gpio_gpio1_io17;
	inout		hps_io_hps_io_gpio_gpio1_io18;
	inout		hps_io_hps_io_gpio_gpio1_io19;
	inout		hps_io_hps_io_gpio_gpio1_io20;
	inout		hps_io_hps_io_gpio_gpio1_io21;
	inout		hps_io_hps_io_gpio_gpio1_io22;
	inout		hps_io_hps_io_gpio_gpio1_io23;
	output		hps_spim0_mosi_o;
	input		hps_spim0_miso_i;
	input		hps_spim0_ss_in_n;
	output		hps_spim0_mosi_oe;
	output		hps_spim0_ss0_n_o;
	output		hps_spim0_ss1_n_o;
	output		hps_spim0_ss2_n_o;
	output		hps_spim0_ss3_n_o;
	output		hps_spim0_sclk_out_clk;
	output		mclk_pll_locked_export;
	output	[0:0]	mem_mem_ck;
	output	[0:0]	mem_mem_ck_n;
	output	[16:0]	mem_mem_a;
	output	[0:0]	mem_mem_act_n;
	output	[1:0]	mem_mem_ba;
	output	[0:0]	mem_mem_bg;
	output	[0:0]	mem_mem_cke;
	output	[0:0]	mem_mem_cs_n;
	output	[0:0]	mem_mem_odt;
	output	[0:0]	mem_mem_reset_n;
	output	[0:0]	mem_mem_par;
	input	[0:0]	mem_mem_alert_n;
	inout	[4:0]	mem_mem_dqs;
	inout	[4:0]	mem_mem_dqs_n;
	inout	[39:0]	mem_mem_dq;
	inout	[4:0]	mem_mem_dbi_n;
	output		mic_array0_control_busy_out;
	input		mic_array0_physical_serial_data_in;
	output		mic_array0_physical_serial_data_out;
	output		mic_array0_physical_serial_clk_out;
	output		mic_array10_control_busy_out;
	input		mic_array10_physical_serial_data_in;
	output		mic_array10_physical_serial_data_out;
	output		mic_array10_physical_serial_clk_out;
	output		mic_array11_control_busy_out;
	input		mic_array11_physical_serial_data_in;
	output		mic_array11_physical_serial_data_out;
	output		mic_array11_physical_serial_clk_out;
	output		mic_array12_control_busy_out;
	input		mic_array12_physical_serial_data_in;
	output		mic_array12_physical_serial_data_out;
	output		mic_array12_physical_serial_clk_out;
	output		mic_array13_control_busy_out;
	input		mic_array13_physical_serial_data_in;
	output		mic_array13_physical_serial_data_out;
	output		mic_array13_physical_serial_clk_out;
	output		mic_array14_control_busy_out;
	input		mic_array14_physical_serial_data_in;
	output		mic_array14_physical_serial_data_out;
	output		mic_array14_physical_serial_clk_out;
	output		mic_array15_control_busy_out;
	input		mic_array15_physical_serial_data_in;
	output		mic_array15_physical_serial_data_out;
	output		mic_array15_physical_serial_clk_out;
	output		mic_array1_control_busy_out;
	input		mic_array1_physical_serial_data_in;
	output		mic_array1_physical_serial_data_out;
	output		mic_array1_physical_serial_clk_out;
	output		mic_array2_control_busy_out;
	input		mic_array2_physical_serial_data_in;
	output		mic_array2_physical_serial_data_out;
	output		mic_array2_physical_serial_clk_out;
	output		mic_array3_control_busy_out;
	input		mic_array3_physical_serial_data_in;
	output		mic_array3_physical_serial_data_out;
	output		mic_array3_physical_serial_clk_out;
	output		mic_array4_control_busy_out;
	input		mic_array4_physical_serial_data_in;
	output		mic_array4_physical_serial_data_out;
	output		mic_array4_physical_serial_clk_out;
	output		mic_array5_control_busy_out;
	input		mic_array5_physical_serial_data_in;
	output		mic_array5_physical_serial_data_out;
	output		mic_array5_physical_serial_clk_out;
	input		mic_array6_physical_serial_data_in;
	output		mic_array6_physical_serial_data_out;
	output		mic_array6_physical_serial_clk_out;
	output		mic_array6_physical_1_busy_out;
	output		mic_array7_control_busy_out;
	input		mic_array7_physical_serial_data_in;
	output		mic_array7_physical_serial_data_out;
	output		mic_array7_physical_serial_clk_out;
	output		mic_array8_control_busy_out;
	input		mic_array8_physical_serial_data_in;
	output		mic_array8_physical_serial_data_out;
	output		mic_array8_physical_serial_clk_out;
	output		mic_array9_control_busy_out;
	input		mic_array9_physical_serial_data_in;
	output		mic_array9_physical_serial_data_out;
	output		mic_array9_physical_serial_clk_out;
	input		oct_oct_rzqin;
	input		reset_reset_n;
	inout	[1:0]	som_config_pio_export;
endmodule
