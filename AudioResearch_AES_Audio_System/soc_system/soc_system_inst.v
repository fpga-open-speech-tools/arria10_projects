	soc_system u0 (
		.ad1939_abclk_clk                     (<connected-to-ad1939_abclk_clk>),                     //                 ad1939_abclk.clk
		.ad1939_alrclk_clk                    (<connected-to-ad1939_alrclk_clk>),                    //                ad1939_alrclk.clk
		.ad1939_mclk_clk                      (<connected-to-ad1939_mclk_clk>),                      //                  ad1939_mclk.clk
		.ad1939_physical_ad1939_adc_asdata1   (<connected-to-ad1939_physical_ad1939_adc_asdata1>),   //              ad1939_physical.ad1939_adc_asdata1
		.ad1939_physical_ad1939_adc_asdata2   (<connected-to-ad1939_physical_ad1939_adc_asdata2>),   //                             .ad1939_adc_asdata2
		.ad1939_physical_ad1939_dac_dbclk     (<connected-to-ad1939_physical_ad1939_dac_dbclk>),     //                             .ad1939_dac_dbclk
		.ad1939_physical_ad1939_dac_dlrclk    (<connected-to-ad1939_physical_ad1939_dac_dlrclk>),    //                             .ad1939_dac_dlrclk
		.ad1939_physical_ad1939_dac_dsdata1   (<connected-to-ad1939_physical_ad1939_dac_dsdata1>),   //                             .ad1939_dac_dsdata1
		.ad1939_physical_ad1939_dac_dsdata2   (<connected-to-ad1939_physical_ad1939_dac_dsdata2>),   //                             .ad1939_dac_dsdata2
		.ad1939_physical_ad1939_dac_dsdata3   (<connected-to-ad1939_physical_ad1939_dac_dsdata3>),   //                             .ad1939_dac_dsdata3
		.ad1939_physical_ad1939_dac_dsdata4   (<connected-to-ad1939_physical_ad1939_dac_dsdata4>),   //                             .ad1939_dac_dsdata4
		.clk_clk                              (<connected-to-clk_clk>),                              //                          clk.clk
		.ddr4_global_reset_reset_sink_reset_n (<connected-to-ddr4_global_reset_reset_sink_reset_n>), // ddr4_global_reset_reset_sink.reset_n
		.ddr4_mem_conduit_end_mem_ck          (<connected-to-ddr4_mem_conduit_end_mem_ck>),          //         ddr4_mem_conduit_end.mem_ck
		.ddr4_mem_conduit_end_mem_ck_n        (<connected-to-ddr4_mem_conduit_end_mem_ck_n>),        //                             .mem_ck_n
		.ddr4_mem_conduit_end_mem_a           (<connected-to-ddr4_mem_conduit_end_mem_a>),           //                             .mem_a
		.ddr4_mem_conduit_end_mem_act_n       (<connected-to-ddr4_mem_conduit_end_mem_act_n>),       //                             .mem_act_n
		.ddr4_mem_conduit_end_mem_ba          (<connected-to-ddr4_mem_conduit_end_mem_ba>),          //                             .mem_ba
		.ddr4_mem_conduit_end_mem_bg          (<connected-to-ddr4_mem_conduit_end_mem_bg>),          //                             .mem_bg
		.ddr4_mem_conduit_end_mem_cke         (<connected-to-ddr4_mem_conduit_end_mem_cke>),         //                             .mem_cke
		.ddr4_mem_conduit_end_mem_cs_n        (<connected-to-ddr4_mem_conduit_end_mem_cs_n>),        //                             .mem_cs_n
		.ddr4_mem_conduit_end_mem_odt         (<connected-to-ddr4_mem_conduit_end_mem_odt>),         //                             .mem_odt
		.ddr4_mem_conduit_end_mem_reset_n     (<connected-to-ddr4_mem_conduit_end_mem_reset_n>),     //                             .mem_reset_n
		.ddr4_mem_conduit_end_mem_par         (<connected-to-ddr4_mem_conduit_end_mem_par>),         //                             .mem_par
		.ddr4_mem_conduit_end_mem_alert_n     (<connected-to-ddr4_mem_conduit_end_mem_alert_n>),     //                             .mem_alert_n
		.ddr4_mem_conduit_end_mem_dqs         (<connected-to-ddr4_mem_conduit_end_mem_dqs>),         //                             .mem_dqs
		.ddr4_mem_conduit_end_mem_dqs_n       (<connected-to-ddr4_mem_conduit_end_mem_dqs_n>),       //                             .mem_dqs_n
		.ddr4_mem_conduit_end_mem_dq          (<connected-to-ddr4_mem_conduit_end_mem_dq>),          //                             .mem_dq
		.ddr4_mem_conduit_end_mem_dbi_n       (<connected-to-ddr4_mem_conduit_end_mem_dbi_n>),       //                             .mem_dbi_n
		.ddr4_oct_conduit_end_oct_rzqin       (<connected-to-ddr4_oct_conduit_end_oct_rzqin>),       //         ddr4_oct_conduit_end.oct_rzqin
		.ddr4_pll_ref_clk_clock_sink_clk      (<connected-to-ddr4_pll_ref_clk_clock_sink_clk>),      //  ddr4_pll_ref_clk_clock_sink.clk
		.hps_f2h_cold_reset_req_reset_n       (<connected-to-hps_f2h_cold_reset_req_reset_n>),       //       hps_f2h_cold_reset_req.reset_n
		.hps_f2h_irq0_irq                     (<connected-to-hps_f2h_irq0_irq>),                     //                 hps_f2h_irq0.irq
		.hps_f2h_irq1_irq                     (<connected-to-hps_f2h_irq1_irq>),                     //                 hps_f2h_irq1.irq
		.hps_f2h_warm_reset_req_reset_n       (<connected-to-hps_f2h_warm_reset_req_reset_n>),       //       hps_f2h_warm_reset_req.reset_n
		.hps_i2c0_sda_i                       (<connected-to-hps_i2c0_sda_i>),                       //                     hps_i2c0.sda_i
		.hps_i2c0_sda_oe                      (<connected-to-hps_i2c0_sda_oe>),                      //                             .sda_oe
		.hps_i2c0_clk_clk                     (<connected-to-hps_i2c0_clk_clk>),                     //                 hps_i2c0_clk.clk
		.hps_i2c0_scl_in_clk                  (<connected-to-hps_i2c0_scl_in_clk>),                  //              hps_i2c0_scl_in.clk
		.hps_io_hps_io_phery_emac1_TX_CLK     (<connected-to-hps_io_hps_io_phery_emac1_TX_CLK>),     //                       hps_io.hps_io_phery_emac1_TX_CLK
		.hps_io_hps_io_phery_emac1_TXD0       (<connected-to-hps_io_hps_io_phery_emac1_TXD0>),       //                             .hps_io_phery_emac1_TXD0
		.hps_io_hps_io_phery_emac1_TXD1       (<connected-to-hps_io_hps_io_phery_emac1_TXD1>),       //                             .hps_io_phery_emac1_TXD1
		.hps_io_hps_io_phery_emac1_TXD2       (<connected-to-hps_io_hps_io_phery_emac1_TXD2>),       //                             .hps_io_phery_emac1_TXD2
		.hps_io_hps_io_phery_emac1_TXD3       (<connected-to-hps_io_hps_io_phery_emac1_TXD3>),       //                             .hps_io_phery_emac1_TXD3
		.hps_io_hps_io_phery_emac1_RX_CTL     (<connected-to-hps_io_hps_io_phery_emac1_RX_CTL>),     //                             .hps_io_phery_emac1_RX_CTL
		.hps_io_hps_io_phery_emac1_TX_CTL     (<connected-to-hps_io_hps_io_phery_emac1_TX_CTL>),     //                             .hps_io_phery_emac1_TX_CTL
		.hps_io_hps_io_phery_emac1_RX_CLK     (<connected-to-hps_io_hps_io_phery_emac1_RX_CLK>),     //                             .hps_io_phery_emac1_RX_CLK
		.hps_io_hps_io_phery_emac1_RXD0       (<connected-to-hps_io_hps_io_phery_emac1_RXD0>),       //                             .hps_io_phery_emac1_RXD0
		.hps_io_hps_io_phery_emac1_RXD1       (<connected-to-hps_io_hps_io_phery_emac1_RXD1>),       //                             .hps_io_phery_emac1_RXD1
		.hps_io_hps_io_phery_emac1_RXD2       (<connected-to-hps_io_hps_io_phery_emac1_RXD2>),       //                             .hps_io_phery_emac1_RXD2
		.hps_io_hps_io_phery_emac1_RXD3       (<connected-to-hps_io_hps_io_phery_emac1_RXD3>),       //                             .hps_io_phery_emac1_RXD3
		.hps_io_hps_io_phery_emac1_MDIO       (<connected-to-hps_io_hps_io_phery_emac1_MDIO>),       //                             .hps_io_phery_emac1_MDIO
		.hps_io_hps_io_phery_emac1_MDC        (<connected-to-hps_io_hps_io_phery_emac1_MDC>),        //                             .hps_io_phery_emac1_MDC
		.hps_io_hps_io_phery_emac2_TX_CLK     (<connected-to-hps_io_hps_io_phery_emac2_TX_CLK>),     //                             .hps_io_phery_emac2_TX_CLK
		.hps_io_hps_io_phery_emac2_TXD0       (<connected-to-hps_io_hps_io_phery_emac2_TXD0>),       //                             .hps_io_phery_emac2_TXD0
		.hps_io_hps_io_phery_emac2_TXD1       (<connected-to-hps_io_hps_io_phery_emac2_TXD1>),       //                             .hps_io_phery_emac2_TXD1
		.hps_io_hps_io_phery_emac2_TXD2       (<connected-to-hps_io_hps_io_phery_emac2_TXD2>),       //                             .hps_io_phery_emac2_TXD2
		.hps_io_hps_io_phery_emac2_TXD3       (<connected-to-hps_io_hps_io_phery_emac2_TXD3>),       //                             .hps_io_phery_emac2_TXD3
		.hps_io_hps_io_phery_emac2_RX_CTL     (<connected-to-hps_io_hps_io_phery_emac2_RX_CTL>),     //                             .hps_io_phery_emac2_RX_CTL
		.hps_io_hps_io_phery_emac2_TX_CTL     (<connected-to-hps_io_hps_io_phery_emac2_TX_CTL>),     //                             .hps_io_phery_emac2_TX_CTL
		.hps_io_hps_io_phery_emac2_RX_CLK     (<connected-to-hps_io_hps_io_phery_emac2_RX_CLK>),     //                             .hps_io_phery_emac2_RX_CLK
		.hps_io_hps_io_phery_emac2_RXD0       (<connected-to-hps_io_hps_io_phery_emac2_RXD0>),       //                             .hps_io_phery_emac2_RXD0
		.hps_io_hps_io_phery_emac2_RXD1       (<connected-to-hps_io_hps_io_phery_emac2_RXD1>),       //                             .hps_io_phery_emac2_RXD1
		.hps_io_hps_io_phery_emac2_RXD2       (<connected-to-hps_io_hps_io_phery_emac2_RXD2>),       //                             .hps_io_phery_emac2_RXD2
		.hps_io_hps_io_phery_emac2_RXD3       (<connected-to-hps_io_hps_io_phery_emac2_RXD3>),       //                             .hps_io_phery_emac2_RXD3
		.hps_io_hps_io_phery_emac2_MDIO       (<connected-to-hps_io_hps_io_phery_emac2_MDIO>),       //                             .hps_io_phery_emac2_MDIO
		.hps_io_hps_io_phery_emac2_MDC        (<connected-to-hps_io_hps_io_phery_emac2_MDC>),        //                             .hps_io_phery_emac2_MDC
		.hps_io_hps_io_phery_sdmmc_CMD        (<connected-to-hps_io_hps_io_phery_sdmmc_CMD>),        //                             .hps_io_phery_sdmmc_CMD
		.hps_io_hps_io_phery_sdmmc_D0         (<connected-to-hps_io_hps_io_phery_sdmmc_D0>),         //                             .hps_io_phery_sdmmc_D0
		.hps_io_hps_io_phery_sdmmc_D1         (<connected-to-hps_io_hps_io_phery_sdmmc_D1>),         //                             .hps_io_phery_sdmmc_D1
		.hps_io_hps_io_phery_sdmmc_D2         (<connected-to-hps_io_hps_io_phery_sdmmc_D2>),         //                             .hps_io_phery_sdmmc_D2
		.hps_io_hps_io_phery_sdmmc_D3         (<connected-to-hps_io_hps_io_phery_sdmmc_D3>),         //                             .hps_io_phery_sdmmc_D3
		.hps_io_hps_io_phery_sdmmc_D4         (<connected-to-hps_io_hps_io_phery_sdmmc_D4>),         //                             .hps_io_phery_sdmmc_D4
		.hps_io_hps_io_phery_sdmmc_D5         (<connected-to-hps_io_hps_io_phery_sdmmc_D5>),         //                             .hps_io_phery_sdmmc_D5
		.hps_io_hps_io_phery_sdmmc_D6         (<connected-to-hps_io_hps_io_phery_sdmmc_D6>),         //                             .hps_io_phery_sdmmc_D6
		.hps_io_hps_io_phery_sdmmc_D7         (<connected-to-hps_io_hps_io_phery_sdmmc_D7>),         //                             .hps_io_phery_sdmmc_D7
		.hps_io_hps_io_phery_sdmmc_CCLK       (<connected-to-hps_io_hps_io_phery_sdmmc_CCLK>),       //                             .hps_io_phery_sdmmc_CCLK
		.hps_io_hps_io_phery_usb1_DATA0       (<connected-to-hps_io_hps_io_phery_usb1_DATA0>),       //                             .hps_io_phery_usb1_DATA0
		.hps_io_hps_io_phery_usb1_DATA1       (<connected-to-hps_io_hps_io_phery_usb1_DATA1>),       //                             .hps_io_phery_usb1_DATA1
		.hps_io_hps_io_phery_usb1_DATA2       (<connected-to-hps_io_hps_io_phery_usb1_DATA2>),       //                             .hps_io_phery_usb1_DATA2
		.hps_io_hps_io_phery_usb1_DATA3       (<connected-to-hps_io_hps_io_phery_usb1_DATA3>),       //                             .hps_io_phery_usb1_DATA3
		.hps_io_hps_io_phery_usb1_DATA4       (<connected-to-hps_io_hps_io_phery_usb1_DATA4>),       //                             .hps_io_phery_usb1_DATA4
		.hps_io_hps_io_phery_usb1_DATA5       (<connected-to-hps_io_hps_io_phery_usb1_DATA5>),       //                             .hps_io_phery_usb1_DATA5
		.hps_io_hps_io_phery_usb1_DATA6       (<connected-to-hps_io_hps_io_phery_usb1_DATA6>),       //                             .hps_io_phery_usb1_DATA6
		.hps_io_hps_io_phery_usb1_DATA7       (<connected-to-hps_io_hps_io_phery_usb1_DATA7>),       //                             .hps_io_phery_usb1_DATA7
		.hps_io_hps_io_phery_usb1_CLK         (<connected-to-hps_io_hps_io_phery_usb1_CLK>),         //                             .hps_io_phery_usb1_CLK
		.hps_io_hps_io_phery_usb1_STP         (<connected-to-hps_io_hps_io_phery_usb1_STP>),         //                             .hps_io_phery_usb1_STP
		.hps_io_hps_io_phery_usb1_DIR         (<connected-to-hps_io_hps_io_phery_usb1_DIR>),         //                             .hps_io_phery_usb1_DIR
		.hps_io_hps_io_phery_usb1_NXT         (<connected-to-hps_io_hps_io_phery_usb1_NXT>),         //                             .hps_io_phery_usb1_NXT
		.hps_io_hps_io_phery_uart0_RX         (<connected-to-hps_io_hps_io_phery_uart0_RX>),         //                             .hps_io_phery_uart0_RX
		.hps_io_hps_io_phery_uart0_TX         (<connected-to-hps_io_hps_io_phery_uart0_TX>),         //                             .hps_io_phery_uart0_TX
		.hps_io_hps_io_phery_uart0_CTS_N      (<connected-to-hps_io_hps_io_phery_uart0_CTS_N>),      //                             .hps_io_phery_uart0_CTS_N
		.hps_io_hps_io_phery_uart0_RTS_N      (<connected-to-hps_io_hps_io_phery_uart0_RTS_N>),      //                             .hps_io_phery_uart0_RTS_N
		.hps_spim1_mosi_o                     (<connected-to-hps_spim1_mosi_o>),                     //                    hps_spim1.mosi_o
		.hps_spim1_miso_i                     (<connected-to-hps_spim1_miso_i>),                     //                             .miso_i
		.hps_spim1_ss_in_n                    (<connected-to-hps_spim1_ss_in_n>),                    //                             .ss_in_n
		.hps_spim1_mosi_oe                    (<connected-to-hps_spim1_mosi_oe>),                    //                             .mosi_oe
		.hps_spim1_ss0_n_o                    (<connected-to-hps_spim1_ss0_n_o>),                    //                             .ss0_n_o
		.hps_spim1_ss1_n_o                    (<connected-to-hps_spim1_ss1_n_o>),                    //                             .ss1_n_o
		.hps_spim1_ss2_n_o                    (<connected-to-hps_spim1_ss2_n_o>),                    //                             .ss2_n_o
		.hps_spim1_ss3_n_o                    (<connected-to-hps_spim1_ss3_n_o>),                    //                             .ss3_n_o
		.hps_spim1_sclk_out_clk               (<connected-to-hps_spim1_sclk_out_clk>),               //           hps_spim1_sclk_out.clk
		.mclk_pll_locked_export               (<connected-to-mclk_pll_locked_export>),               //              mclk_pll_locked.export
		.reset_reset_n                        (<connected-to-reset_reset_n>),                        //                        reset.reset_n
		.rj45_interface_serial_data_in        (<connected-to-rj45_interface_serial_data_in>),        //               rj45_interface.serial_data_in
		.rj45_interface_serial_data_out       (<connected-to-rj45_interface_serial_data_out>),       //                             .serial_data_out
		.rj45_interface_serial_clk_out        (<connected-to-rj45_interface_serial_clk_out>)         //                             .serial_clk_out
	);

