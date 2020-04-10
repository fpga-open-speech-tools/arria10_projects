	component A10SoM_System_iwav_wip is
		port (
			addr_sel_in_add_sel                      : in    std_logic_vector(2 downto 0)  := (others => 'X'); -- add_sel
			addr_sel_out_export                      : in    std_logic_vector(2 downto 0)  := (others => 'X'); -- export
			clk_100_clk                              : in    std_logic                     := 'X';             -- clk
			ddr_ref_clk_clk                          : in    std_logic                     := 'X';             -- clk
			emif_0_global_reset_n_reset_n            : in    std_logic                     := 'X';             -- reset_n
			emif_0_global_reset_reset_sink_reset_n   : in    std_logic                     := 'X';             -- reset_n
			emif_0_mem_mem_ck                        : out   std_logic_vector(0 downto 0);                     -- mem_ck
			emif_0_mem_mem_ck_n                      : out   std_logic_vector(0 downto 0);                     -- mem_ck_n
			emif_0_mem_mem_a                         : out   std_logic_vector(16 downto 0);                    -- mem_a
			emif_0_mem_mem_act_n                     : out   std_logic_vector(0 downto 0);                     -- mem_act_n
			emif_0_mem_mem_ba                        : out   std_logic_vector(1 downto 0);                     -- mem_ba
			emif_0_mem_mem_bg                        : out   std_logic_vector(0 downto 0);                     -- mem_bg
			emif_0_mem_mem_cke                       : out   std_logic_vector(0 downto 0);                     -- mem_cke
			emif_0_mem_mem_cs_n                      : out   std_logic_vector(0 downto 0);                     -- mem_cs_n
			emif_0_mem_mem_odt                       : out   std_logic_vector(0 downto 0);                     -- mem_odt
			emif_0_mem_mem_reset_n                   : out   std_logic_vector(0 downto 0);                     -- mem_reset_n
			emif_0_mem_mem_par                       : out   std_logic_vector(0 downto 0);                     -- mem_par
			emif_0_mem_mem_alert_n                   : in    std_logic_vector(0 downto 0)  := (others => 'X'); -- mem_alert_n
			emif_0_mem_mem_dqs                       : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- mem_dqs
			emif_0_mem_mem_dqs_n                     : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- mem_dqs_n
			emif_0_mem_mem_dq                        : inout std_logic_vector(63 downto 0) := (others => 'X'); -- mem_dq
			emif_0_mem_mem_dbi_n                     : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- mem_dbi_n
			emif_0_oct_oct_rzqin                     : in    std_logic                     := 'X';             -- oct_rzqin
			emif_0_pll_ref_clk_clk                   : in    std_logic                     := 'X';             -- clk
			emif_0_status_local_cal_success          : out   std_logic;                                        -- local_cal_success
			emif_0_status_local_cal_fail             : out   std_logic;                                        -- local_cal_fail
			fmc1_inout_pio1_export                   : inout std_logic_vector(19 downto 0) := (others => 'X'); -- export
			fmc1_inout_pio2_export                   : inout std_logic_vector(19 downto 0) := (others => 'X'); -- export
			fmc1_inout_pio3_export                   : inout std_logic_vector(19 downto 0) := (others => 'X'); -- export
			fmc1_inout_pio4_export                   : inout std_logic_vector(19 downto 0) := (others => 'X'); -- export
			fmc1_inout_pio5_export                   : inout std_logic_vector(19 downto 0) := (others => 'X'); -- export
			fmc2_inout_pio6_export                   : inout std_logic_vector(19 downto 0) := (others => 'X'); -- export
			fmc2_inout_pio7_export                   : inout std_logic_vector(19 downto 0) := (others => 'X'); -- export
			hps_0_h2f_reset_reset_n                  : out   std_logic;                                        -- reset_n
			hps_io_hps_io_phery_emac1_TX_CLK         : out   std_logic;                                        -- hps_io_phery_emac1_TX_CLK
			hps_io_hps_io_phery_emac1_TXD0           : out   std_logic;                                        -- hps_io_phery_emac1_TXD0
			hps_io_hps_io_phery_emac1_TXD1           : out   std_logic;                                        -- hps_io_phery_emac1_TXD1
			hps_io_hps_io_phery_emac1_TXD2           : out   std_logic;                                        -- hps_io_phery_emac1_TXD2
			hps_io_hps_io_phery_emac1_TXD3           : out   std_logic;                                        -- hps_io_phery_emac1_TXD3
			hps_io_hps_io_phery_emac1_RX_CTL         : in    std_logic                     := 'X';             -- hps_io_phery_emac1_RX_CTL
			hps_io_hps_io_phery_emac1_TX_CTL         : out   std_logic;                                        -- hps_io_phery_emac1_TX_CTL
			hps_io_hps_io_phery_emac1_RX_CLK         : in    std_logic                     := 'X';             -- hps_io_phery_emac1_RX_CLK
			hps_io_hps_io_phery_emac1_RXD0           : in    std_logic                     := 'X';             -- hps_io_phery_emac1_RXD0
			hps_io_hps_io_phery_emac1_RXD1           : in    std_logic                     := 'X';             -- hps_io_phery_emac1_RXD1
			hps_io_hps_io_phery_emac1_RXD2           : in    std_logic                     := 'X';             -- hps_io_phery_emac1_RXD2
			hps_io_hps_io_phery_emac1_RXD3           : in    std_logic                     := 'X';             -- hps_io_phery_emac1_RXD3
			hps_io_hps_io_phery_emac1_MDIO           : inout std_logic                     := 'X';             -- hps_io_phery_emac1_MDIO
			hps_io_hps_io_phery_emac1_MDC            : out   std_logic;                                        -- hps_io_phery_emac1_MDC
			hps_io_hps_io_phery_sdmmc_CMD            : inout std_logic                     := 'X';             -- hps_io_phery_sdmmc_CMD
			hps_io_hps_io_phery_sdmmc_D0             : inout std_logic                     := 'X';             -- hps_io_phery_sdmmc_D0
			hps_io_hps_io_phery_sdmmc_D1             : inout std_logic                     := 'X';             -- hps_io_phery_sdmmc_D1
			hps_io_hps_io_phery_sdmmc_D2             : inout std_logic                     := 'X';             -- hps_io_phery_sdmmc_D2
			hps_io_hps_io_phery_sdmmc_D3             : inout std_logic                     := 'X';             -- hps_io_phery_sdmmc_D3
			hps_io_hps_io_phery_sdmmc_CCLK           : out   std_logic;                                        -- hps_io_phery_sdmmc_CCLK
			hps_io_hps_io_phery_usb1_DATA0           : inout std_logic                     := 'X';             -- hps_io_phery_usb1_DATA0
			hps_io_hps_io_phery_usb1_DATA1           : inout std_logic                     := 'X';             -- hps_io_phery_usb1_DATA1
			hps_io_hps_io_phery_usb1_DATA2           : inout std_logic                     := 'X';             -- hps_io_phery_usb1_DATA2
			hps_io_hps_io_phery_usb1_DATA3           : inout std_logic                     := 'X';             -- hps_io_phery_usb1_DATA3
			hps_io_hps_io_phery_usb1_DATA4           : inout std_logic                     := 'X';             -- hps_io_phery_usb1_DATA4
			hps_io_hps_io_phery_usb1_DATA5           : inout std_logic                     := 'X';             -- hps_io_phery_usb1_DATA5
			hps_io_hps_io_phery_usb1_DATA6           : inout std_logic                     := 'X';             -- hps_io_phery_usb1_DATA6
			hps_io_hps_io_phery_usb1_DATA7           : inout std_logic                     := 'X';             -- hps_io_phery_usb1_DATA7
			hps_io_hps_io_phery_usb1_CLK             : in    std_logic                     := 'X';             -- hps_io_phery_usb1_CLK
			hps_io_hps_io_phery_usb1_STP             : out   std_logic;                                        -- hps_io_phery_usb1_STP
			hps_io_hps_io_phery_usb1_DIR             : in    std_logic                     := 'X';             -- hps_io_phery_usb1_DIR
			hps_io_hps_io_phery_usb1_NXT             : in    std_logic                     := 'X';             -- hps_io_phery_usb1_NXT
			hps_io_hps_io_phery_uart1_RX             : in    std_logic                     := 'X';             -- hps_io_phery_uart1_RX
			hps_io_hps_io_phery_uart1_TX             : out   std_logic;                                        -- hps_io_phery_uart1_TX
			hps_io_hps_io_phery_i2c0_SDA             : inout std_logic                     := 'X';             -- hps_io_phery_i2c0_SDA
			hps_io_hps_io_phery_i2c0_SCL             : inout std_logic                     := 'X';             -- hps_io_phery_i2c0_SCL
			hps_io_hps_io_gpio_gpio2_io6             : inout std_logic                     := 'X';             -- hps_io_gpio_gpio2_io6
			hps_io_hps_io_gpio_gpio2_io8             : inout std_logic                     := 'X';             -- hps_io_gpio_gpio2_io8
			hps_io_hps_io_gpio_gpio0_io0             : inout std_logic                     := 'X';             -- hps_io_gpio_gpio0_io0
			hps_io_hps_io_gpio_gpio0_io1             : inout std_logic                     := 'X';             -- hps_io_gpio_gpio0_io1
			hps_io_hps_io_gpio_gpio0_io2             : inout std_logic                     := 'X';             -- hps_io_gpio_gpio0_io2
			hps_io_hps_io_gpio_gpio0_io3             : inout std_logic                     := 'X';             -- hps_io_gpio_gpio0_io3
			hps_io_hps_io_gpio_gpio0_io6             : inout std_logic                     := 'X';             -- hps_io_gpio_gpio0_io6
			hps_io_hps_io_gpio_gpio0_io7             : inout std_logic                     := 'X';             -- hps_io_gpio_gpio0_io7
			hps_io_hps_io_gpio_gpio0_io10            : inout std_logic                     := 'X';             -- hps_io_gpio_gpio0_io10
			hps_io_hps_io_gpio_gpio0_io11            : inout std_logic                     := 'X';             -- hps_io_gpio_gpio0_io11
			hps_io_hps_io_gpio_gpio1_io12            : inout std_logic                     := 'X';             -- hps_io_gpio_gpio1_io12
			hps_io_hps_io_gpio_gpio1_io13            : inout std_logic                     := 'X';             -- hps_io_gpio_gpio1_io13
			hps_io_hps_io_gpio_gpio1_io14            : inout std_logic                     := 'X';             -- hps_io_gpio_gpio1_io14
			hps_io_hps_io_gpio_gpio1_io15            : inout std_logic                     := 'X';             -- hps_io_gpio_gpio1_io15
			hps_io_hps_io_gpio_gpio1_io16            : inout std_logic                     := 'X';             -- hps_io_gpio_gpio1_io16
			hps_io_hps_io_gpio_gpio1_io17            : inout std_logic                     := 'X';             -- hps_io_gpio_gpio1_io17
			hps_io_hps_io_gpio_gpio1_io18            : inout std_logic                     := 'X';             -- hps_io_gpio_gpio1_io18
			hps_io_hps_io_gpio_gpio1_io19            : inout std_logic                     := 'X';             -- hps_io_gpio_gpio1_io19
			hps_io_hps_io_gpio_gpio1_io20            : inout std_logic                     := 'X';             -- hps_io_gpio_gpio1_io20
			hps_io_hps_io_gpio_gpio1_io21            : inout std_logic                     := 'X';             -- hps_io_gpio_gpio1_io21
			hps_io_hps_io_gpio_gpio1_io22            : inout std_logic                     := 'X';             -- hps_io_gpio_gpio1_io22
			hps_io_hps_io_gpio_gpio1_io23            : inout std_logic                     := 'X';             -- hps_io_gpio_gpio1_io23
			mem_mem_ck                               : out   std_logic_vector(0 downto 0);                     -- mem_ck
			mem_mem_ck_n                             : out   std_logic_vector(0 downto 0);                     -- mem_ck_n
			mem_mem_a                                : out   std_logic_vector(16 downto 0);                    -- mem_a
			mem_mem_act_n                            : out   std_logic_vector(0 downto 0);                     -- mem_act_n
			mem_mem_ba                               : out   std_logic_vector(1 downto 0);                     -- mem_ba
			mem_mem_bg                               : out   std_logic_vector(0 downto 0);                     -- mem_bg
			mem_mem_cke                              : out   std_logic_vector(0 downto 0);                     -- mem_cke
			mem_mem_cs_n                             : out   std_logic_vector(0 downto 0);                     -- mem_cs_n
			mem_mem_odt                              : out   std_logic_vector(0 downto 0);                     -- mem_odt
			mem_mem_reset_n                          : out   std_logic_vector(0 downto 0);                     -- mem_reset_n
			mem_mem_par                              : out   std_logic_vector(0 downto 0);                     -- mem_par
			mem_mem_alert_n                          : in    std_logic_vector(0 downto 0)  := (others => 'X'); -- mem_alert_n
			mem_mem_dqs                              : inout std_logic_vector(4 downto 0)  := (others => 'X'); -- mem_dqs
			mem_mem_dqs_n                            : inout std_logic_vector(4 downto 0)  := (others => 'X'); -- mem_dqs_n
			mem_mem_dq                               : inout std_logic_vector(39 downto 0) := (others => 'X'); -- mem_dq
			mem_mem_dbi_n                            : inout std_logic_vector(4 downto 0)  := (others => 'X'); -- mem_dbi_n
			oct_oct_rzqin                            : in    std_logic                     := 'X';             -- oct_rzqin
			pciex4_inout_pio10_export                : inout std_logic_vector(1 downto 0)  := (others => 'X'); -- export
			pmod1_inout_pio8_export                  : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- export
			pmod2_inout_pio9_export                  : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- export
			reset_reset_n                            : in    std_logic                     := 'X';             -- reset_n
			som_config_pio_export                    : inout std_logic_vector(1 downto 0)  := (others => 'X'); -- export
			temp_sens_pio_export                     : in    std_logic_vector(9 downto 0)  := (others => 'X'); -- export
			usb_inout_pio11_export                   : inout std_logic_vector(1 downto 0)  := (others => 'X'); -- export
			vcc0_export                              : in    std_logic_vector(5 downto 0)  := (others => 'X'); -- export
			vcc1_export                              : in    std_logic_vector(5 downto 0)  := (others => 'X'); -- export
			vcc2_export                              : in    std_logic_vector(5 downto 0)  := (others => 'X'); -- export
			vcc3_export                              : in    std_logic_vector(5 downto 0)  := (others => 'X'); -- export
			vcc4_export                              : in    std_logic_vector(5 downto 0)  := (others => 'X'); -- export
			vcc5_export                              : in    std_logic_vector(5 downto 0)  := (others => 'X'); -- export
			vcc6_export                              : in    std_logic_vector(5 downto 0)  := (others => 'X'); -- export
			vcc7_export                              : in    std_logic_vector(5 downto 0)  := (others => 'X'); -- export
			emif_0_0_pll_extra_clk_0_pll_extra_clk_0 : out   std_logic;                                        -- pll_extra_clk_0
			mm_clock_crossing_bridge_0_s0_clk_clk    : in    std_logic                     := 'X';             -- clk
			ddr_pio_export                           : in    std_logic_vector(1 downto 0)  := (others => 'X')  -- export
		);
	end component A10SoM_System_iwav_wip;

	u0 : component A10SoM_System_iwav_wip
		port map (
			addr_sel_in_add_sel                      => CONNECTED_TO_addr_sel_in_add_sel,                      --                       addr_sel_in.add_sel
			addr_sel_out_export                      => CONNECTED_TO_addr_sel_out_export,                      --                      addr_sel_out.export
			clk_100_clk                              => CONNECTED_TO_clk_100_clk,                              --                           clk_100.clk
			ddr_ref_clk_clk                          => CONNECTED_TO_ddr_ref_clk_clk,                          --                       ddr_ref_clk.clk
			emif_0_global_reset_n_reset_n            => CONNECTED_TO_emif_0_global_reset_n_reset_n,            --             emif_0_global_reset_n.reset_n
			emif_0_global_reset_reset_sink_reset_n   => CONNECTED_TO_emif_0_global_reset_reset_sink_reset_n,   --    emif_0_global_reset_reset_sink.reset_n
			emif_0_mem_mem_ck                        => CONNECTED_TO_emif_0_mem_mem_ck,                        --                        emif_0_mem.mem_ck
			emif_0_mem_mem_ck_n                      => CONNECTED_TO_emif_0_mem_mem_ck_n,                      --                                  .mem_ck_n
			emif_0_mem_mem_a                         => CONNECTED_TO_emif_0_mem_mem_a,                         --                                  .mem_a
			emif_0_mem_mem_act_n                     => CONNECTED_TO_emif_0_mem_mem_act_n,                     --                                  .mem_act_n
			emif_0_mem_mem_ba                        => CONNECTED_TO_emif_0_mem_mem_ba,                        --                                  .mem_ba
			emif_0_mem_mem_bg                        => CONNECTED_TO_emif_0_mem_mem_bg,                        --                                  .mem_bg
			emif_0_mem_mem_cke                       => CONNECTED_TO_emif_0_mem_mem_cke,                       --                                  .mem_cke
			emif_0_mem_mem_cs_n                      => CONNECTED_TO_emif_0_mem_mem_cs_n,                      --                                  .mem_cs_n
			emif_0_mem_mem_odt                       => CONNECTED_TO_emif_0_mem_mem_odt,                       --                                  .mem_odt
			emif_0_mem_mem_reset_n                   => CONNECTED_TO_emif_0_mem_mem_reset_n,                   --                                  .mem_reset_n
			emif_0_mem_mem_par                       => CONNECTED_TO_emif_0_mem_mem_par,                       --                                  .mem_par
			emif_0_mem_mem_alert_n                   => CONNECTED_TO_emif_0_mem_mem_alert_n,                   --                                  .mem_alert_n
			emif_0_mem_mem_dqs                       => CONNECTED_TO_emif_0_mem_mem_dqs,                       --                                  .mem_dqs
			emif_0_mem_mem_dqs_n                     => CONNECTED_TO_emif_0_mem_mem_dqs_n,                     --                                  .mem_dqs_n
			emif_0_mem_mem_dq                        => CONNECTED_TO_emif_0_mem_mem_dq,                        --                                  .mem_dq
			emif_0_mem_mem_dbi_n                     => CONNECTED_TO_emif_0_mem_mem_dbi_n,                     --                                  .mem_dbi_n
			emif_0_oct_oct_rzqin                     => CONNECTED_TO_emif_0_oct_oct_rzqin,                     --                        emif_0_oct.oct_rzqin
			emif_0_pll_ref_clk_clk                   => CONNECTED_TO_emif_0_pll_ref_clk_clk,                   --                emif_0_pll_ref_clk.clk
			emif_0_status_local_cal_success          => CONNECTED_TO_emif_0_status_local_cal_success,          --                     emif_0_status.local_cal_success
			emif_0_status_local_cal_fail             => CONNECTED_TO_emif_0_status_local_cal_fail,             --                                  .local_cal_fail
			fmc1_inout_pio1_export                   => CONNECTED_TO_fmc1_inout_pio1_export,                   --                   fmc1_inout_pio1.export
			fmc1_inout_pio2_export                   => CONNECTED_TO_fmc1_inout_pio2_export,                   --                   fmc1_inout_pio2.export
			fmc1_inout_pio3_export                   => CONNECTED_TO_fmc1_inout_pio3_export,                   --                   fmc1_inout_pio3.export
			fmc1_inout_pio4_export                   => CONNECTED_TO_fmc1_inout_pio4_export,                   --                   fmc1_inout_pio4.export
			fmc1_inout_pio5_export                   => CONNECTED_TO_fmc1_inout_pio5_export,                   --                   fmc1_inout_pio5.export
			fmc2_inout_pio6_export                   => CONNECTED_TO_fmc2_inout_pio6_export,                   --                   fmc2_inout_pio6.export
			fmc2_inout_pio7_export                   => CONNECTED_TO_fmc2_inout_pio7_export,                   --                   fmc2_inout_pio7.export
			hps_0_h2f_reset_reset_n                  => CONNECTED_TO_hps_0_h2f_reset_reset_n,                  --                   hps_0_h2f_reset.reset_n
			hps_io_hps_io_phery_emac1_TX_CLK         => CONNECTED_TO_hps_io_hps_io_phery_emac1_TX_CLK,         --                            hps_io.hps_io_phery_emac1_TX_CLK
			hps_io_hps_io_phery_emac1_TXD0           => CONNECTED_TO_hps_io_hps_io_phery_emac1_TXD0,           --                                  .hps_io_phery_emac1_TXD0
			hps_io_hps_io_phery_emac1_TXD1           => CONNECTED_TO_hps_io_hps_io_phery_emac1_TXD1,           --                                  .hps_io_phery_emac1_TXD1
			hps_io_hps_io_phery_emac1_TXD2           => CONNECTED_TO_hps_io_hps_io_phery_emac1_TXD2,           --                                  .hps_io_phery_emac1_TXD2
			hps_io_hps_io_phery_emac1_TXD3           => CONNECTED_TO_hps_io_hps_io_phery_emac1_TXD3,           --                                  .hps_io_phery_emac1_TXD3
			hps_io_hps_io_phery_emac1_RX_CTL         => CONNECTED_TO_hps_io_hps_io_phery_emac1_RX_CTL,         --                                  .hps_io_phery_emac1_RX_CTL
			hps_io_hps_io_phery_emac1_TX_CTL         => CONNECTED_TO_hps_io_hps_io_phery_emac1_TX_CTL,         --                                  .hps_io_phery_emac1_TX_CTL
			hps_io_hps_io_phery_emac1_RX_CLK         => CONNECTED_TO_hps_io_hps_io_phery_emac1_RX_CLK,         --                                  .hps_io_phery_emac1_RX_CLK
			hps_io_hps_io_phery_emac1_RXD0           => CONNECTED_TO_hps_io_hps_io_phery_emac1_RXD0,           --                                  .hps_io_phery_emac1_RXD0
			hps_io_hps_io_phery_emac1_RXD1           => CONNECTED_TO_hps_io_hps_io_phery_emac1_RXD1,           --                                  .hps_io_phery_emac1_RXD1
			hps_io_hps_io_phery_emac1_RXD2           => CONNECTED_TO_hps_io_hps_io_phery_emac1_RXD2,           --                                  .hps_io_phery_emac1_RXD2
			hps_io_hps_io_phery_emac1_RXD3           => CONNECTED_TO_hps_io_hps_io_phery_emac1_RXD3,           --                                  .hps_io_phery_emac1_RXD3
			hps_io_hps_io_phery_emac1_MDIO           => CONNECTED_TO_hps_io_hps_io_phery_emac1_MDIO,           --                                  .hps_io_phery_emac1_MDIO
			hps_io_hps_io_phery_emac1_MDC            => CONNECTED_TO_hps_io_hps_io_phery_emac1_MDC,            --                                  .hps_io_phery_emac1_MDC
			hps_io_hps_io_phery_sdmmc_CMD            => CONNECTED_TO_hps_io_hps_io_phery_sdmmc_CMD,            --                                  .hps_io_phery_sdmmc_CMD
			hps_io_hps_io_phery_sdmmc_D0             => CONNECTED_TO_hps_io_hps_io_phery_sdmmc_D0,             --                                  .hps_io_phery_sdmmc_D0
			hps_io_hps_io_phery_sdmmc_D1             => CONNECTED_TO_hps_io_hps_io_phery_sdmmc_D1,             --                                  .hps_io_phery_sdmmc_D1
			hps_io_hps_io_phery_sdmmc_D2             => CONNECTED_TO_hps_io_hps_io_phery_sdmmc_D2,             --                                  .hps_io_phery_sdmmc_D2
			hps_io_hps_io_phery_sdmmc_D3             => CONNECTED_TO_hps_io_hps_io_phery_sdmmc_D3,             --                                  .hps_io_phery_sdmmc_D3
			hps_io_hps_io_phery_sdmmc_CCLK           => CONNECTED_TO_hps_io_hps_io_phery_sdmmc_CCLK,           --                                  .hps_io_phery_sdmmc_CCLK
			hps_io_hps_io_phery_usb1_DATA0           => CONNECTED_TO_hps_io_hps_io_phery_usb1_DATA0,           --                                  .hps_io_phery_usb1_DATA0
			hps_io_hps_io_phery_usb1_DATA1           => CONNECTED_TO_hps_io_hps_io_phery_usb1_DATA1,           --                                  .hps_io_phery_usb1_DATA1
			hps_io_hps_io_phery_usb1_DATA2           => CONNECTED_TO_hps_io_hps_io_phery_usb1_DATA2,           --                                  .hps_io_phery_usb1_DATA2
			hps_io_hps_io_phery_usb1_DATA3           => CONNECTED_TO_hps_io_hps_io_phery_usb1_DATA3,           --                                  .hps_io_phery_usb1_DATA3
			hps_io_hps_io_phery_usb1_DATA4           => CONNECTED_TO_hps_io_hps_io_phery_usb1_DATA4,           --                                  .hps_io_phery_usb1_DATA4
			hps_io_hps_io_phery_usb1_DATA5           => CONNECTED_TO_hps_io_hps_io_phery_usb1_DATA5,           --                                  .hps_io_phery_usb1_DATA5
			hps_io_hps_io_phery_usb1_DATA6           => CONNECTED_TO_hps_io_hps_io_phery_usb1_DATA6,           --                                  .hps_io_phery_usb1_DATA6
			hps_io_hps_io_phery_usb1_DATA7           => CONNECTED_TO_hps_io_hps_io_phery_usb1_DATA7,           --                                  .hps_io_phery_usb1_DATA7
			hps_io_hps_io_phery_usb1_CLK             => CONNECTED_TO_hps_io_hps_io_phery_usb1_CLK,             --                                  .hps_io_phery_usb1_CLK
			hps_io_hps_io_phery_usb1_STP             => CONNECTED_TO_hps_io_hps_io_phery_usb1_STP,             --                                  .hps_io_phery_usb1_STP
			hps_io_hps_io_phery_usb1_DIR             => CONNECTED_TO_hps_io_hps_io_phery_usb1_DIR,             --                                  .hps_io_phery_usb1_DIR
			hps_io_hps_io_phery_usb1_NXT             => CONNECTED_TO_hps_io_hps_io_phery_usb1_NXT,             --                                  .hps_io_phery_usb1_NXT
			hps_io_hps_io_phery_uart1_RX             => CONNECTED_TO_hps_io_hps_io_phery_uart1_RX,             --                                  .hps_io_phery_uart1_RX
			hps_io_hps_io_phery_uart1_TX             => CONNECTED_TO_hps_io_hps_io_phery_uart1_TX,             --                                  .hps_io_phery_uart1_TX
			hps_io_hps_io_phery_i2c0_SDA             => CONNECTED_TO_hps_io_hps_io_phery_i2c0_SDA,             --                                  .hps_io_phery_i2c0_SDA
			hps_io_hps_io_phery_i2c0_SCL             => CONNECTED_TO_hps_io_hps_io_phery_i2c0_SCL,             --                                  .hps_io_phery_i2c0_SCL
			hps_io_hps_io_gpio_gpio2_io6             => CONNECTED_TO_hps_io_hps_io_gpio_gpio2_io6,             --                                  .hps_io_gpio_gpio2_io6
			hps_io_hps_io_gpio_gpio2_io8             => CONNECTED_TO_hps_io_hps_io_gpio_gpio2_io8,             --                                  .hps_io_gpio_gpio2_io8
			hps_io_hps_io_gpio_gpio0_io0             => CONNECTED_TO_hps_io_hps_io_gpio_gpio0_io0,             --                                  .hps_io_gpio_gpio0_io0
			hps_io_hps_io_gpio_gpio0_io1             => CONNECTED_TO_hps_io_hps_io_gpio_gpio0_io1,             --                                  .hps_io_gpio_gpio0_io1
			hps_io_hps_io_gpio_gpio0_io2             => CONNECTED_TO_hps_io_hps_io_gpio_gpio0_io2,             --                                  .hps_io_gpio_gpio0_io2
			hps_io_hps_io_gpio_gpio0_io3             => CONNECTED_TO_hps_io_hps_io_gpio_gpio0_io3,             --                                  .hps_io_gpio_gpio0_io3
			hps_io_hps_io_gpio_gpio0_io6             => CONNECTED_TO_hps_io_hps_io_gpio_gpio0_io6,             --                                  .hps_io_gpio_gpio0_io6
			hps_io_hps_io_gpio_gpio0_io7             => CONNECTED_TO_hps_io_hps_io_gpio_gpio0_io7,             --                                  .hps_io_gpio_gpio0_io7
			hps_io_hps_io_gpio_gpio0_io10            => CONNECTED_TO_hps_io_hps_io_gpio_gpio0_io10,            --                                  .hps_io_gpio_gpio0_io10
			hps_io_hps_io_gpio_gpio0_io11            => CONNECTED_TO_hps_io_hps_io_gpio_gpio0_io11,            --                                  .hps_io_gpio_gpio0_io11
			hps_io_hps_io_gpio_gpio1_io12            => CONNECTED_TO_hps_io_hps_io_gpio_gpio1_io12,            --                                  .hps_io_gpio_gpio1_io12
			hps_io_hps_io_gpio_gpio1_io13            => CONNECTED_TO_hps_io_hps_io_gpio_gpio1_io13,            --                                  .hps_io_gpio_gpio1_io13
			hps_io_hps_io_gpio_gpio1_io14            => CONNECTED_TO_hps_io_hps_io_gpio_gpio1_io14,            --                                  .hps_io_gpio_gpio1_io14
			hps_io_hps_io_gpio_gpio1_io15            => CONNECTED_TO_hps_io_hps_io_gpio_gpio1_io15,            --                                  .hps_io_gpio_gpio1_io15
			hps_io_hps_io_gpio_gpio1_io16            => CONNECTED_TO_hps_io_hps_io_gpio_gpio1_io16,            --                                  .hps_io_gpio_gpio1_io16
			hps_io_hps_io_gpio_gpio1_io17            => CONNECTED_TO_hps_io_hps_io_gpio_gpio1_io17,            --                                  .hps_io_gpio_gpio1_io17
			hps_io_hps_io_gpio_gpio1_io18            => CONNECTED_TO_hps_io_hps_io_gpio_gpio1_io18,            --                                  .hps_io_gpio_gpio1_io18
			hps_io_hps_io_gpio_gpio1_io19            => CONNECTED_TO_hps_io_hps_io_gpio_gpio1_io19,            --                                  .hps_io_gpio_gpio1_io19
			hps_io_hps_io_gpio_gpio1_io20            => CONNECTED_TO_hps_io_hps_io_gpio_gpio1_io20,            --                                  .hps_io_gpio_gpio1_io20
			hps_io_hps_io_gpio_gpio1_io21            => CONNECTED_TO_hps_io_hps_io_gpio_gpio1_io21,            --                                  .hps_io_gpio_gpio1_io21
			hps_io_hps_io_gpio_gpio1_io22            => CONNECTED_TO_hps_io_hps_io_gpio_gpio1_io22,            --                                  .hps_io_gpio_gpio1_io22
			hps_io_hps_io_gpio_gpio1_io23            => CONNECTED_TO_hps_io_hps_io_gpio_gpio1_io23,            --                                  .hps_io_gpio_gpio1_io23
			mem_mem_ck                               => CONNECTED_TO_mem_mem_ck,                               --                               mem.mem_ck
			mem_mem_ck_n                             => CONNECTED_TO_mem_mem_ck_n,                             --                                  .mem_ck_n
			mem_mem_a                                => CONNECTED_TO_mem_mem_a,                                --                                  .mem_a
			mem_mem_act_n                            => CONNECTED_TO_mem_mem_act_n,                            --                                  .mem_act_n
			mem_mem_ba                               => CONNECTED_TO_mem_mem_ba,                               --                                  .mem_ba
			mem_mem_bg                               => CONNECTED_TO_mem_mem_bg,                               --                                  .mem_bg
			mem_mem_cke                              => CONNECTED_TO_mem_mem_cke,                              --                                  .mem_cke
			mem_mem_cs_n                             => CONNECTED_TO_mem_mem_cs_n,                             --                                  .mem_cs_n
			mem_mem_odt                              => CONNECTED_TO_mem_mem_odt,                              --                                  .mem_odt
			mem_mem_reset_n                          => CONNECTED_TO_mem_mem_reset_n,                          --                                  .mem_reset_n
			mem_mem_par                              => CONNECTED_TO_mem_mem_par,                              --                                  .mem_par
			mem_mem_alert_n                          => CONNECTED_TO_mem_mem_alert_n,                          --                                  .mem_alert_n
			mem_mem_dqs                              => CONNECTED_TO_mem_mem_dqs,                              --                                  .mem_dqs
			mem_mem_dqs_n                            => CONNECTED_TO_mem_mem_dqs_n,                            --                                  .mem_dqs_n
			mem_mem_dq                               => CONNECTED_TO_mem_mem_dq,                               --                                  .mem_dq
			mem_mem_dbi_n                            => CONNECTED_TO_mem_mem_dbi_n,                            --                                  .mem_dbi_n
			oct_oct_rzqin                            => CONNECTED_TO_oct_oct_rzqin,                            --                               oct.oct_rzqin
			pciex4_inout_pio10_export                => CONNECTED_TO_pciex4_inout_pio10_export,                --                pciex4_inout_pio10.export
			pmod1_inout_pio8_export                  => CONNECTED_TO_pmod1_inout_pio8_export,                  --                  pmod1_inout_pio8.export
			pmod2_inout_pio9_export                  => CONNECTED_TO_pmod2_inout_pio9_export,                  --                  pmod2_inout_pio9.export
			reset_reset_n                            => CONNECTED_TO_reset_reset_n,                            --                             reset.reset_n
			som_config_pio_export                    => CONNECTED_TO_som_config_pio_export,                    --                    som_config_pio.export
			temp_sens_pio_export                     => CONNECTED_TO_temp_sens_pio_export,                     --                     temp_sens_pio.export
			usb_inout_pio11_export                   => CONNECTED_TO_usb_inout_pio11_export,                   --                   usb_inout_pio11.export
			vcc0_export                              => CONNECTED_TO_vcc0_export,                              --                              vcc0.export
			vcc1_export                              => CONNECTED_TO_vcc1_export,                              --                              vcc1.export
			vcc2_export                              => CONNECTED_TO_vcc2_export,                              --                              vcc2.export
			vcc3_export                              => CONNECTED_TO_vcc3_export,                              --                              vcc3.export
			vcc4_export                              => CONNECTED_TO_vcc4_export,                              --                              vcc4.export
			vcc5_export                              => CONNECTED_TO_vcc5_export,                              --                              vcc5.export
			vcc6_export                              => CONNECTED_TO_vcc6_export,                              --                              vcc6.export
			vcc7_export                              => CONNECTED_TO_vcc7_export,                              --                              vcc7.export
			emif_0_0_pll_extra_clk_0_pll_extra_clk_0 => CONNECTED_TO_emif_0_0_pll_extra_clk_0_pll_extra_clk_0, --          emif_0_0_pll_extra_clk_0.pll_extra_clk_0
			mm_clock_crossing_bridge_0_s0_clk_clk    => CONNECTED_TO_mm_clock_crossing_bridge_0_s0_clk_clk,    -- mm_clock_crossing_bridge_0_s0_clk.clk
			ddr_pio_export                           => CONNECTED_TO_ddr_pio_export                            --                           ddr_pio.export
		);

