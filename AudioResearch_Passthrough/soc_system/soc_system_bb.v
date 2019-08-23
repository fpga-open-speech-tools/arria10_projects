
module soc_system (
	ad1939_abclk_clk,
	ad1939_alrclk_clk,
	ad1939_mclk_clk,
	ad1939_physical_ad1939_adc_asdata1,
	ad1939_physical_ad1939_adc_asdata2,
	ad1939_physical_ad1939_dac_dbclk,
	ad1939_physical_ad1939_dac_dlrclk,
	ad1939_physical_ad1939_dac_dsdata1,
	ad1939_physical_ad1939_dac_dsdata2,
	ad1939_physical_ad1939_dac_dsdata3,
	ad1939_physical_ad1939_dac_dsdata4,
	clk_clk,
	ddr4_global_reset_reset_sink_reset_n,
	ddr4_mem_conduit_end_mem_ck,
	ddr4_mem_conduit_end_mem_ck_n,
	ddr4_mem_conduit_end_mem_a,
	ddr4_mem_conduit_end_mem_act_n,
	ddr4_mem_conduit_end_mem_ba,
	ddr4_mem_conduit_end_mem_bg,
	ddr4_mem_conduit_end_mem_cke,
	ddr4_mem_conduit_end_mem_cs_n,
	ddr4_mem_conduit_end_mem_odt,
	ddr4_mem_conduit_end_mem_reset_n,
	ddr4_mem_conduit_end_mem_par,
	ddr4_mem_conduit_end_mem_alert_n,
	ddr4_mem_conduit_end_mem_dqs,
	ddr4_mem_conduit_end_mem_dqs_n,
	ddr4_mem_conduit_end_mem_dq,
	ddr4_mem_conduit_end_mem_dbi_n,
	ddr4_oct_conduit_end_oct_rzqin,
	ddr4_pll_ref_clk_clock_sink_clk,
	hps_f2h_cold_reset_req_reset_n,
	hps_f2h_irq0_irq,
	hps_f2h_irq1_irq,
	hps_f2h_warm_reset_req_reset_n,
	hps_i2c0_sda_i,
	hps_i2c0_sda_oe,
	hps_i2c0_clk_clk,
	hps_i2c0_scl_in_clk,
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
	hps_io_hps_io_phery_emac2_TX_CLK,
	hps_io_hps_io_phery_emac2_TXD0,
	hps_io_hps_io_phery_emac2_TXD1,
	hps_io_hps_io_phery_emac2_TXD2,
	hps_io_hps_io_phery_emac2_TXD3,
	hps_io_hps_io_phery_emac2_RX_CTL,
	hps_io_hps_io_phery_emac2_TX_CTL,
	hps_io_hps_io_phery_emac2_RX_CLK,
	hps_io_hps_io_phery_emac2_RXD0,
	hps_io_hps_io_phery_emac2_RXD1,
	hps_io_hps_io_phery_emac2_RXD2,
	hps_io_hps_io_phery_emac2_RXD3,
	hps_io_hps_io_phery_emac2_MDIO,
	hps_io_hps_io_phery_emac2_MDC,
	hps_io_hps_io_phery_sdmmc_CMD,
	hps_io_hps_io_phery_sdmmc_D0,
	hps_io_hps_io_phery_sdmmc_D1,
	hps_io_hps_io_phery_sdmmc_D2,
	hps_io_hps_io_phery_sdmmc_D3,
	hps_io_hps_io_phery_sdmmc_D4,
	hps_io_hps_io_phery_sdmmc_D5,
	hps_io_hps_io_phery_sdmmc_D6,
	hps_io_hps_io_phery_sdmmc_D7,
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
	hps_io_hps_io_phery_uart0_RX,
	hps_io_hps_io_phery_uart0_TX,
	hps_io_hps_io_phery_uart0_CTS_N,
	hps_io_hps_io_phery_uart0_RTS_N,
	hps_spim1_mosi_o,
	hps_spim1_miso_i,
	hps_spim1_ss_in_n,
	hps_spim1_mosi_oe,
	hps_spim1_ss0_n_o,
	hps_spim1_ss1_n_o,
	hps_spim1_ss2_n_o,
	hps_spim1_ss3_n_o,
	hps_spim1_sclk_out_clk,
	mclk_pll_locked_export,
	reset_reset_n);	

	input		ad1939_abclk_clk;
	input		ad1939_alrclk_clk;
	input		ad1939_mclk_clk;
	input		ad1939_physical_ad1939_adc_asdata1;
	input		ad1939_physical_ad1939_adc_asdata2;
	output		ad1939_physical_ad1939_dac_dbclk;
	output		ad1939_physical_ad1939_dac_dlrclk;
	output		ad1939_physical_ad1939_dac_dsdata1;
	output		ad1939_physical_ad1939_dac_dsdata2;
	output		ad1939_physical_ad1939_dac_dsdata3;
	output		ad1939_physical_ad1939_dac_dsdata4;
	input		clk_clk;
	input		ddr4_global_reset_reset_sink_reset_n;
	output	[0:0]	ddr4_mem_conduit_end_mem_ck;
	output	[0:0]	ddr4_mem_conduit_end_mem_ck_n;
	output	[16:0]	ddr4_mem_conduit_end_mem_a;
	output	[0:0]	ddr4_mem_conduit_end_mem_act_n;
	output	[1:0]	ddr4_mem_conduit_end_mem_ba;
	output	[1:0]	ddr4_mem_conduit_end_mem_bg;
	output	[0:0]	ddr4_mem_conduit_end_mem_cke;
	output	[0:0]	ddr4_mem_conduit_end_mem_cs_n;
	output	[0:0]	ddr4_mem_conduit_end_mem_odt;
	output	[0:0]	ddr4_mem_conduit_end_mem_reset_n;
	output	[0:0]	ddr4_mem_conduit_end_mem_par;
	input	[0:0]	ddr4_mem_conduit_end_mem_alert_n;
	inout	[3:0]	ddr4_mem_conduit_end_mem_dqs;
	inout	[3:0]	ddr4_mem_conduit_end_mem_dqs_n;
	inout	[31:0]	ddr4_mem_conduit_end_mem_dq;
	inout	[3:0]	ddr4_mem_conduit_end_mem_dbi_n;
	input		ddr4_oct_conduit_end_oct_rzqin;
	input		ddr4_pll_ref_clk_clock_sink_clk;
	input		hps_f2h_cold_reset_req_reset_n;
	input	[31:0]	hps_f2h_irq0_irq;
	input	[31:0]	hps_f2h_irq1_irq;
	input		hps_f2h_warm_reset_req_reset_n;
	input		hps_i2c0_sda_i;
	output		hps_i2c0_sda_oe;
	output		hps_i2c0_clk_clk;
	input		hps_i2c0_scl_in_clk;
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
	output		hps_io_hps_io_phery_emac2_TX_CLK;
	output		hps_io_hps_io_phery_emac2_TXD0;
	output		hps_io_hps_io_phery_emac2_TXD1;
	output		hps_io_hps_io_phery_emac2_TXD2;
	output		hps_io_hps_io_phery_emac2_TXD3;
	input		hps_io_hps_io_phery_emac2_RX_CTL;
	output		hps_io_hps_io_phery_emac2_TX_CTL;
	input		hps_io_hps_io_phery_emac2_RX_CLK;
	input		hps_io_hps_io_phery_emac2_RXD0;
	input		hps_io_hps_io_phery_emac2_RXD1;
	input		hps_io_hps_io_phery_emac2_RXD2;
	input		hps_io_hps_io_phery_emac2_RXD3;
	inout		hps_io_hps_io_phery_emac2_MDIO;
	output		hps_io_hps_io_phery_emac2_MDC;
	inout		hps_io_hps_io_phery_sdmmc_CMD;
	inout		hps_io_hps_io_phery_sdmmc_D0;
	inout		hps_io_hps_io_phery_sdmmc_D1;
	inout		hps_io_hps_io_phery_sdmmc_D2;
	inout		hps_io_hps_io_phery_sdmmc_D3;
	inout		hps_io_hps_io_phery_sdmmc_D4;
	inout		hps_io_hps_io_phery_sdmmc_D5;
	inout		hps_io_hps_io_phery_sdmmc_D6;
	inout		hps_io_hps_io_phery_sdmmc_D7;
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
	input		hps_io_hps_io_phery_uart0_RX;
	output		hps_io_hps_io_phery_uart0_TX;
	input		hps_io_hps_io_phery_uart0_CTS_N;
	output		hps_io_hps_io_phery_uart0_RTS_N;
	output		hps_spim1_mosi_o;
	input		hps_spim1_miso_i;
	input		hps_spim1_ss_in_n;
	output		hps_spim1_mosi_oe;
	output		hps_spim1_ss0_n_o;
	output		hps_spim1_ss1_n_o;
	output		hps_spim1_ss2_n_o;
	output		hps_spim1_ss3_n_o;
	output		hps_spim1_sclk_out_clk;
	output		mclk_pll_locked_export;
	input		reset_reset_n;
endmodule
