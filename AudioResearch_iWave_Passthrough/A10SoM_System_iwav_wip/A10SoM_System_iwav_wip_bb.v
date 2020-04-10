
module A10SoM_System_iwav_wip (
	addr_sel_in_add_sel,
	addr_sel_out_export,
	clk_100_clk,
	ddr_ref_clk_clk,
	emif_0_global_reset_n_reset_n,
	emif_0_global_reset_reset_sink_reset_n,
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
	emif_0_pll_ref_clk_clk,
	emif_0_status_local_cal_success,
	emif_0_status_local_cal_fail,
	fmc1_inout_pio1_export,
	fmc1_inout_pio2_export,
	fmc1_inout_pio3_export,
	fmc1_inout_pio4_export,
	fmc1_inout_pio5_export,
	fmc2_inout_pio6_export,
	fmc2_inout_pio7_export,
	hps_0_h2f_reset_reset_n,
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
	hps_io_hps_io_gpio_gpio0_io2,
	hps_io_hps_io_gpio_gpio0_io3,
	hps_io_hps_io_gpio_gpio0_io6,
	hps_io_hps_io_gpio_gpio0_io7,
	hps_io_hps_io_gpio_gpio0_io10,
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
	oct_oct_rzqin,
	pciex4_inout_pio10_export,
	pmod1_inout_pio8_export,
	pmod2_inout_pio9_export,
	reset_reset_n,
	som_config_pio_export,
	temp_sens_pio_export,
	usb_inout_pio11_export,
	vcc0_export,
	vcc1_export,
	vcc2_export,
	vcc3_export,
	vcc4_export,
	vcc5_export,
	vcc6_export,
	vcc7_export,
	emif_0_0_pll_extra_clk_0_pll_extra_clk_0,
	mm_clock_crossing_bridge_0_s0_clk_clk,
	ddr_pio_export);	

	input	[2:0]	addr_sel_in_add_sel;
	input	[2:0]	addr_sel_out_export;
	input		clk_100_clk;
	input		ddr_ref_clk_clk;
	input		emif_0_global_reset_n_reset_n;
	input		emif_0_global_reset_reset_sink_reset_n;
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
	input		emif_0_pll_ref_clk_clk;
	output		emif_0_status_local_cal_success;
	output		emif_0_status_local_cal_fail;
	inout	[19:0]	fmc1_inout_pio1_export;
	inout	[19:0]	fmc1_inout_pio2_export;
	inout	[19:0]	fmc1_inout_pio3_export;
	inout	[19:0]	fmc1_inout_pio4_export;
	inout	[19:0]	fmc1_inout_pio5_export;
	inout	[19:0]	fmc2_inout_pio6_export;
	inout	[19:0]	fmc2_inout_pio7_export;
	output		hps_0_h2f_reset_reset_n;
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
	inout		hps_io_hps_io_gpio_gpio0_io2;
	inout		hps_io_hps_io_gpio_gpio0_io3;
	inout		hps_io_hps_io_gpio_gpio0_io6;
	inout		hps_io_hps_io_gpio_gpio0_io7;
	inout		hps_io_hps_io_gpio_gpio0_io10;
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
	input		oct_oct_rzqin;
	inout	[1:0]	pciex4_inout_pio10_export;
	inout	[7:0]	pmod1_inout_pio8_export;
	inout	[7:0]	pmod2_inout_pio9_export;
	input		reset_reset_n;
	inout	[1:0]	som_config_pio_export;
	input	[9:0]	temp_sens_pio_export;
	inout	[1:0]	usb_inout_pio11_export;
	input	[5:0]	vcc0_export;
	input	[5:0]	vcc1_export;
	input	[5:0]	vcc2_export;
	input	[5:0]	vcc3_export;
	input	[5:0]	vcc4_export;
	input	[5:0]	vcc5_export;
	input	[5:0]	vcc6_export;
	input	[5:0]	vcc7_export;
	output		emif_0_0_pll_extra_clk_0_pll_extra_clk_0;
	input		mm_clock_crossing_bridge_0_s0_clk_clk;
	input	[1:0]	ddr_pio_export;
endmodule
