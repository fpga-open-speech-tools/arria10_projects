	component soc_system is
		port (
			ad1939_abclk_clk                     : in    std_logic                     := 'X';             -- clk
			ad1939_alrclk_clk                    : in    std_logic                     := 'X';             -- clk
			ad1939_mclk_clk                      : in    std_logic                     := 'X';             -- clk
			ad1939_physical_ad1939_adc_asdata1   : in    std_logic                     := 'X';             -- ad1939_adc_asdata1
			ad1939_physical_ad1939_adc_asdata2   : in    std_logic                     := 'X';             -- ad1939_adc_asdata2
			ad1939_physical_ad1939_dac_dbclk     : out   std_logic;                                        -- ad1939_dac_dbclk
			ad1939_physical_ad1939_dac_dlrclk    : out   std_logic;                                        -- ad1939_dac_dlrclk
			ad1939_physical_ad1939_dac_dsdata1   : out   std_logic;                                        -- ad1939_dac_dsdata1
			ad1939_physical_ad1939_dac_dsdata2   : out   std_logic;                                        -- ad1939_dac_dsdata2
			ad1939_physical_ad1939_dac_dsdata3   : out   std_logic;                                        -- ad1939_dac_dsdata3
			ad1939_physical_ad1939_dac_dsdata4   : out   std_logic;                                        -- ad1939_dac_dsdata4
			ddr4_global_reset_reset_sink_reset_n : in    std_logic                     := 'X';             -- reset_n
			ddr4_mem_conduit_end_mem_ck          : out   std_logic_vector(0 downto 0);                     -- mem_ck
			ddr4_mem_conduit_end_mem_ck_n        : out   std_logic_vector(0 downto 0);                     -- mem_ck_n
			ddr4_mem_conduit_end_mem_a           : out   std_logic_vector(16 downto 0);                    -- mem_a
			ddr4_mem_conduit_end_mem_act_n       : out   std_logic_vector(0 downto 0);                     -- mem_act_n
			ddr4_mem_conduit_end_mem_ba          : out   std_logic_vector(1 downto 0);                     -- mem_ba
			ddr4_mem_conduit_end_mem_bg          : out   std_logic_vector(1 downto 0);                     -- mem_bg
			ddr4_mem_conduit_end_mem_cke         : out   std_logic_vector(0 downto 0);                     -- mem_cke
			ddr4_mem_conduit_end_mem_cs_n        : out   std_logic_vector(0 downto 0);                     -- mem_cs_n
			ddr4_mem_conduit_end_mem_odt         : out   std_logic_vector(0 downto 0);                     -- mem_odt
			ddr4_mem_conduit_end_mem_reset_n     : out   std_logic_vector(0 downto 0);                     -- mem_reset_n
			ddr4_mem_conduit_end_mem_par         : out   std_logic_vector(0 downto 0);                     -- mem_par
			ddr4_mem_conduit_end_mem_alert_n     : in    std_logic_vector(0 downto 0)  := (others => 'X'); -- mem_alert_n
			ddr4_mem_conduit_end_mem_dqs         : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs
			ddr4_mem_conduit_end_mem_dqs_n       : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs_n
			ddr4_mem_conduit_end_mem_dq          : inout std_logic_vector(31 downto 0) := (others => 'X'); -- mem_dq
			ddr4_mem_conduit_end_mem_dbi_n       : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dbi_n
			ddr4_oct_conduit_end_oct_rzqin       : in    std_logic                     := 'X';             -- oct_rzqin
			ddr4_pll_ref_clk_clock_sink_clk      : in    std_logic                     := 'X';             -- clk
			hps_f2h_cold_reset_req_reset_n       : in    std_logic                     := 'X';             -- reset_n
			hps_f2h_irq0_irq                     : in    std_logic_vector(31 downto 0) := (others => 'X'); -- irq
			hps_f2h_irq1_irq                     : in    std_logic_vector(31 downto 0) := (others => 'X'); -- irq
			hps_f2h_warm_reset_req_reset_n       : in    std_logic                     := 'X';             -- reset_n
			hps_i2c0_sda_i                       : in    std_logic                     := 'X';             -- sda_i
			hps_i2c0_sda_oe                      : out   std_logic;                                        -- sda_oe
			hps_i2c0_clk_clk                     : out   std_logic;                                        -- clk
			hps_i2c0_scl_in_clk                  : in    std_logic                     := 'X';             -- clk
			hps_io_hps_io_phery_emac1_TX_CLK     : out   std_logic;                                        -- hps_io_phery_emac1_TX_CLK
			hps_io_hps_io_phery_emac1_TXD0       : out   std_logic;                                        -- hps_io_phery_emac1_TXD0
			hps_io_hps_io_phery_emac1_TXD1       : out   std_logic;                                        -- hps_io_phery_emac1_TXD1
			hps_io_hps_io_phery_emac1_TXD2       : out   std_logic;                                        -- hps_io_phery_emac1_TXD2
			hps_io_hps_io_phery_emac1_TXD3       : out   std_logic;                                        -- hps_io_phery_emac1_TXD3
			hps_io_hps_io_phery_emac1_RX_CTL     : in    std_logic                     := 'X';             -- hps_io_phery_emac1_RX_CTL
			hps_io_hps_io_phery_emac1_TX_CTL     : out   std_logic;                                        -- hps_io_phery_emac1_TX_CTL
			hps_io_hps_io_phery_emac1_RX_CLK     : in    std_logic                     := 'X';             -- hps_io_phery_emac1_RX_CLK
			hps_io_hps_io_phery_emac1_RXD0       : in    std_logic                     := 'X';             -- hps_io_phery_emac1_RXD0
			hps_io_hps_io_phery_emac1_RXD1       : in    std_logic                     := 'X';             -- hps_io_phery_emac1_RXD1
			hps_io_hps_io_phery_emac1_RXD2       : in    std_logic                     := 'X';             -- hps_io_phery_emac1_RXD2
			hps_io_hps_io_phery_emac1_RXD3       : in    std_logic                     := 'X';             -- hps_io_phery_emac1_RXD3
			hps_io_hps_io_phery_emac1_MDIO       : inout std_logic                     := 'X';             -- hps_io_phery_emac1_MDIO
			hps_io_hps_io_phery_emac1_MDC        : out   std_logic;                                        -- hps_io_phery_emac1_MDC
			hps_io_hps_io_phery_emac2_TX_CLK     : out   std_logic;                                        -- hps_io_phery_emac2_TX_CLK
			hps_io_hps_io_phery_emac2_TXD0       : out   std_logic;                                        -- hps_io_phery_emac2_TXD0
			hps_io_hps_io_phery_emac2_TXD1       : out   std_logic;                                        -- hps_io_phery_emac2_TXD1
			hps_io_hps_io_phery_emac2_TXD2       : out   std_logic;                                        -- hps_io_phery_emac2_TXD2
			hps_io_hps_io_phery_emac2_TXD3       : out   std_logic;                                        -- hps_io_phery_emac2_TXD3
			hps_io_hps_io_phery_emac2_RX_CTL     : in    std_logic                     := 'X';             -- hps_io_phery_emac2_RX_CTL
			hps_io_hps_io_phery_emac2_TX_CTL     : out   std_logic;                                        -- hps_io_phery_emac2_TX_CTL
			hps_io_hps_io_phery_emac2_RX_CLK     : in    std_logic                     := 'X';             -- hps_io_phery_emac2_RX_CLK
			hps_io_hps_io_phery_emac2_RXD0       : in    std_logic                     := 'X';             -- hps_io_phery_emac2_RXD0
			hps_io_hps_io_phery_emac2_RXD1       : in    std_logic                     := 'X';             -- hps_io_phery_emac2_RXD1
			hps_io_hps_io_phery_emac2_RXD2       : in    std_logic                     := 'X';             -- hps_io_phery_emac2_RXD2
			hps_io_hps_io_phery_emac2_RXD3       : in    std_logic                     := 'X';             -- hps_io_phery_emac2_RXD3
			hps_io_hps_io_phery_emac2_MDIO       : inout std_logic                     := 'X';             -- hps_io_phery_emac2_MDIO
			hps_io_hps_io_phery_emac2_MDC        : out   std_logic;                                        -- hps_io_phery_emac2_MDC
			hps_io_hps_io_phery_sdmmc_CMD        : inout std_logic                     := 'X';             -- hps_io_phery_sdmmc_CMD
			hps_io_hps_io_phery_sdmmc_D0         : inout std_logic                     := 'X';             -- hps_io_phery_sdmmc_D0
			hps_io_hps_io_phery_sdmmc_D1         : inout std_logic                     := 'X';             -- hps_io_phery_sdmmc_D1
			hps_io_hps_io_phery_sdmmc_D2         : inout std_logic                     := 'X';             -- hps_io_phery_sdmmc_D2
			hps_io_hps_io_phery_sdmmc_D3         : inout std_logic                     := 'X';             -- hps_io_phery_sdmmc_D3
			hps_io_hps_io_phery_sdmmc_D4         : inout std_logic                     := 'X';             -- hps_io_phery_sdmmc_D4
			hps_io_hps_io_phery_sdmmc_D5         : inout std_logic                     := 'X';             -- hps_io_phery_sdmmc_D5
			hps_io_hps_io_phery_sdmmc_D6         : inout std_logic                     := 'X';             -- hps_io_phery_sdmmc_D6
			hps_io_hps_io_phery_sdmmc_D7         : inout std_logic                     := 'X';             -- hps_io_phery_sdmmc_D7
			hps_io_hps_io_phery_sdmmc_CCLK       : out   std_logic;                                        -- hps_io_phery_sdmmc_CCLK
			hps_io_hps_io_phery_usb1_DATA0       : inout std_logic                     := 'X';             -- hps_io_phery_usb1_DATA0
			hps_io_hps_io_phery_usb1_DATA1       : inout std_logic                     := 'X';             -- hps_io_phery_usb1_DATA1
			hps_io_hps_io_phery_usb1_DATA2       : inout std_logic                     := 'X';             -- hps_io_phery_usb1_DATA2
			hps_io_hps_io_phery_usb1_DATA3       : inout std_logic                     := 'X';             -- hps_io_phery_usb1_DATA3
			hps_io_hps_io_phery_usb1_DATA4       : inout std_logic                     := 'X';             -- hps_io_phery_usb1_DATA4
			hps_io_hps_io_phery_usb1_DATA5       : inout std_logic                     := 'X';             -- hps_io_phery_usb1_DATA5
			hps_io_hps_io_phery_usb1_DATA6       : inout std_logic                     := 'X';             -- hps_io_phery_usb1_DATA6
			hps_io_hps_io_phery_usb1_DATA7       : inout std_logic                     := 'X';             -- hps_io_phery_usb1_DATA7
			hps_io_hps_io_phery_usb1_CLK         : in    std_logic                     := 'X';             -- hps_io_phery_usb1_CLK
			hps_io_hps_io_phery_usb1_STP         : out   std_logic;                                        -- hps_io_phery_usb1_STP
			hps_io_hps_io_phery_usb1_DIR         : in    std_logic                     := 'X';             -- hps_io_phery_usb1_DIR
			hps_io_hps_io_phery_usb1_NXT         : in    std_logic                     := 'X';             -- hps_io_phery_usb1_NXT
			hps_io_hps_io_phery_uart0_RX         : in    std_logic                     := 'X';             -- hps_io_phery_uart0_RX
			hps_io_hps_io_phery_uart0_TX         : out   std_logic;                                        -- hps_io_phery_uart0_TX
			hps_io_hps_io_phery_uart0_CTS_N      : in    std_logic                     := 'X';             -- hps_io_phery_uart0_CTS_N
			hps_io_hps_io_phery_uart0_RTS_N      : out   std_logic;                                        -- hps_io_phery_uart0_RTS_N
			hps_spim1_mosi_o                     : out   std_logic;                                        -- mosi_o
			hps_spim1_miso_i                     : in    std_logic                     := 'X';             -- miso_i
			hps_spim1_ss_in_n                    : in    std_logic                     := 'X';             -- ss_in_n
			hps_spim1_mosi_oe                    : out   std_logic;                                        -- mosi_oe
			hps_spim1_ss0_n_o                    : out   std_logic;                                        -- ss0_n_o
			hps_spim1_ss1_n_o                    : out   std_logic;                                        -- ss1_n_o
			hps_spim1_ss2_n_o                    : out   std_logic;                                        -- ss2_n_o
			hps_spim1_ss3_n_o                    : out   std_logic;                                        -- ss3_n_o
			hps_spim1_sclk_out_clk               : out   std_logic;                                        -- clk
			mic_array_0_led_sd                   : out   std_logic;                                        -- led_sd
			mic_array_0_led_ws                   : out   std_logic;                                        -- led_ws
			mic_array_0_sd                       : in    std_logic                     := 'X';             -- sd
			mic_array_0_ws                       : out   std_logic;                                        -- ws
			mic_array_sck_clk                    : out   std_logic;                                        -- clk
			reset_reset                          : in    std_logic                     := 'X'              -- reset
		);
	end component soc_system;

	u0 : component soc_system
		port map (
			ad1939_abclk_clk                     => CONNECTED_TO_ad1939_abclk_clk,                     --                 ad1939_abclk.clk
			ad1939_alrclk_clk                    => CONNECTED_TO_ad1939_alrclk_clk,                    --                ad1939_alrclk.clk
			ad1939_mclk_clk                      => CONNECTED_TO_ad1939_mclk_clk,                      --                  ad1939_mclk.clk
			ad1939_physical_ad1939_adc_asdata1   => CONNECTED_TO_ad1939_physical_ad1939_adc_asdata1,   --              ad1939_physical.ad1939_adc_asdata1
			ad1939_physical_ad1939_adc_asdata2   => CONNECTED_TO_ad1939_physical_ad1939_adc_asdata2,   --                             .ad1939_adc_asdata2
			ad1939_physical_ad1939_dac_dbclk     => CONNECTED_TO_ad1939_physical_ad1939_dac_dbclk,     --                             .ad1939_dac_dbclk
			ad1939_physical_ad1939_dac_dlrclk    => CONNECTED_TO_ad1939_physical_ad1939_dac_dlrclk,    --                             .ad1939_dac_dlrclk
			ad1939_physical_ad1939_dac_dsdata1   => CONNECTED_TO_ad1939_physical_ad1939_dac_dsdata1,   --                             .ad1939_dac_dsdata1
			ad1939_physical_ad1939_dac_dsdata2   => CONNECTED_TO_ad1939_physical_ad1939_dac_dsdata2,   --                             .ad1939_dac_dsdata2
			ad1939_physical_ad1939_dac_dsdata3   => CONNECTED_TO_ad1939_physical_ad1939_dac_dsdata3,   --                             .ad1939_dac_dsdata3
			ad1939_physical_ad1939_dac_dsdata4   => CONNECTED_TO_ad1939_physical_ad1939_dac_dsdata4,   --                             .ad1939_dac_dsdata4
			ddr4_global_reset_reset_sink_reset_n => CONNECTED_TO_ddr4_global_reset_reset_sink_reset_n, -- ddr4_global_reset_reset_sink.reset_n
			ddr4_mem_conduit_end_mem_ck          => CONNECTED_TO_ddr4_mem_conduit_end_mem_ck,          --         ddr4_mem_conduit_end.mem_ck
			ddr4_mem_conduit_end_mem_ck_n        => CONNECTED_TO_ddr4_mem_conduit_end_mem_ck_n,        --                             .mem_ck_n
			ddr4_mem_conduit_end_mem_a           => CONNECTED_TO_ddr4_mem_conduit_end_mem_a,           --                             .mem_a
			ddr4_mem_conduit_end_mem_act_n       => CONNECTED_TO_ddr4_mem_conduit_end_mem_act_n,       --                             .mem_act_n
			ddr4_mem_conduit_end_mem_ba          => CONNECTED_TO_ddr4_mem_conduit_end_mem_ba,          --                             .mem_ba
			ddr4_mem_conduit_end_mem_bg          => CONNECTED_TO_ddr4_mem_conduit_end_mem_bg,          --                             .mem_bg
			ddr4_mem_conduit_end_mem_cke         => CONNECTED_TO_ddr4_mem_conduit_end_mem_cke,         --                             .mem_cke
			ddr4_mem_conduit_end_mem_cs_n        => CONNECTED_TO_ddr4_mem_conduit_end_mem_cs_n,        --                             .mem_cs_n
			ddr4_mem_conduit_end_mem_odt         => CONNECTED_TO_ddr4_mem_conduit_end_mem_odt,         --                             .mem_odt
			ddr4_mem_conduit_end_mem_reset_n     => CONNECTED_TO_ddr4_mem_conduit_end_mem_reset_n,     --                             .mem_reset_n
			ddr4_mem_conduit_end_mem_par         => CONNECTED_TO_ddr4_mem_conduit_end_mem_par,         --                             .mem_par
			ddr4_mem_conduit_end_mem_alert_n     => CONNECTED_TO_ddr4_mem_conduit_end_mem_alert_n,     --                             .mem_alert_n
			ddr4_mem_conduit_end_mem_dqs         => CONNECTED_TO_ddr4_mem_conduit_end_mem_dqs,         --                             .mem_dqs
			ddr4_mem_conduit_end_mem_dqs_n       => CONNECTED_TO_ddr4_mem_conduit_end_mem_dqs_n,       --                             .mem_dqs_n
			ddr4_mem_conduit_end_mem_dq          => CONNECTED_TO_ddr4_mem_conduit_end_mem_dq,          --                             .mem_dq
			ddr4_mem_conduit_end_mem_dbi_n       => CONNECTED_TO_ddr4_mem_conduit_end_mem_dbi_n,       --                             .mem_dbi_n
			ddr4_oct_conduit_end_oct_rzqin       => CONNECTED_TO_ddr4_oct_conduit_end_oct_rzqin,       --         ddr4_oct_conduit_end.oct_rzqin
			ddr4_pll_ref_clk_clock_sink_clk      => CONNECTED_TO_ddr4_pll_ref_clk_clock_sink_clk,      --  ddr4_pll_ref_clk_clock_sink.clk
			hps_f2h_cold_reset_req_reset_n       => CONNECTED_TO_hps_f2h_cold_reset_req_reset_n,       --       hps_f2h_cold_reset_req.reset_n
			hps_f2h_irq0_irq                     => CONNECTED_TO_hps_f2h_irq0_irq,                     --                 hps_f2h_irq0.irq
			hps_f2h_irq1_irq                     => CONNECTED_TO_hps_f2h_irq1_irq,                     --                 hps_f2h_irq1.irq
			hps_f2h_warm_reset_req_reset_n       => CONNECTED_TO_hps_f2h_warm_reset_req_reset_n,       --       hps_f2h_warm_reset_req.reset_n
			hps_i2c0_sda_i                       => CONNECTED_TO_hps_i2c0_sda_i,                       --                     hps_i2c0.sda_i
			hps_i2c0_sda_oe                      => CONNECTED_TO_hps_i2c0_sda_oe,                      --                             .sda_oe
			hps_i2c0_clk_clk                     => CONNECTED_TO_hps_i2c0_clk_clk,                     --                 hps_i2c0_clk.clk
			hps_i2c0_scl_in_clk                  => CONNECTED_TO_hps_i2c0_scl_in_clk,                  --              hps_i2c0_scl_in.clk
			hps_io_hps_io_phery_emac1_TX_CLK     => CONNECTED_TO_hps_io_hps_io_phery_emac1_TX_CLK,     --                       hps_io.hps_io_phery_emac1_TX_CLK
			hps_io_hps_io_phery_emac1_TXD0       => CONNECTED_TO_hps_io_hps_io_phery_emac1_TXD0,       --                             .hps_io_phery_emac1_TXD0
			hps_io_hps_io_phery_emac1_TXD1       => CONNECTED_TO_hps_io_hps_io_phery_emac1_TXD1,       --                             .hps_io_phery_emac1_TXD1
			hps_io_hps_io_phery_emac1_TXD2       => CONNECTED_TO_hps_io_hps_io_phery_emac1_TXD2,       --                             .hps_io_phery_emac1_TXD2
			hps_io_hps_io_phery_emac1_TXD3       => CONNECTED_TO_hps_io_hps_io_phery_emac1_TXD3,       --                             .hps_io_phery_emac1_TXD3
			hps_io_hps_io_phery_emac1_RX_CTL     => CONNECTED_TO_hps_io_hps_io_phery_emac1_RX_CTL,     --                             .hps_io_phery_emac1_RX_CTL
			hps_io_hps_io_phery_emac1_TX_CTL     => CONNECTED_TO_hps_io_hps_io_phery_emac1_TX_CTL,     --                             .hps_io_phery_emac1_TX_CTL
			hps_io_hps_io_phery_emac1_RX_CLK     => CONNECTED_TO_hps_io_hps_io_phery_emac1_RX_CLK,     --                             .hps_io_phery_emac1_RX_CLK
			hps_io_hps_io_phery_emac1_RXD0       => CONNECTED_TO_hps_io_hps_io_phery_emac1_RXD0,       --                             .hps_io_phery_emac1_RXD0
			hps_io_hps_io_phery_emac1_RXD1       => CONNECTED_TO_hps_io_hps_io_phery_emac1_RXD1,       --                             .hps_io_phery_emac1_RXD1
			hps_io_hps_io_phery_emac1_RXD2       => CONNECTED_TO_hps_io_hps_io_phery_emac1_RXD2,       --                             .hps_io_phery_emac1_RXD2
			hps_io_hps_io_phery_emac1_RXD3       => CONNECTED_TO_hps_io_hps_io_phery_emac1_RXD3,       --                             .hps_io_phery_emac1_RXD3
			hps_io_hps_io_phery_emac1_MDIO       => CONNECTED_TO_hps_io_hps_io_phery_emac1_MDIO,       --                             .hps_io_phery_emac1_MDIO
			hps_io_hps_io_phery_emac1_MDC        => CONNECTED_TO_hps_io_hps_io_phery_emac1_MDC,        --                             .hps_io_phery_emac1_MDC
			hps_io_hps_io_phery_emac2_TX_CLK     => CONNECTED_TO_hps_io_hps_io_phery_emac2_TX_CLK,     --                             .hps_io_phery_emac2_TX_CLK
			hps_io_hps_io_phery_emac2_TXD0       => CONNECTED_TO_hps_io_hps_io_phery_emac2_TXD0,       --                             .hps_io_phery_emac2_TXD0
			hps_io_hps_io_phery_emac2_TXD1       => CONNECTED_TO_hps_io_hps_io_phery_emac2_TXD1,       --                             .hps_io_phery_emac2_TXD1
			hps_io_hps_io_phery_emac2_TXD2       => CONNECTED_TO_hps_io_hps_io_phery_emac2_TXD2,       --                             .hps_io_phery_emac2_TXD2
			hps_io_hps_io_phery_emac2_TXD3       => CONNECTED_TO_hps_io_hps_io_phery_emac2_TXD3,       --                             .hps_io_phery_emac2_TXD3
			hps_io_hps_io_phery_emac2_RX_CTL     => CONNECTED_TO_hps_io_hps_io_phery_emac2_RX_CTL,     --                             .hps_io_phery_emac2_RX_CTL
			hps_io_hps_io_phery_emac2_TX_CTL     => CONNECTED_TO_hps_io_hps_io_phery_emac2_TX_CTL,     --                             .hps_io_phery_emac2_TX_CTL
			hps_io_hps_io_phery_emac2_RX_CLK     => CONNECTED_TO_hps_io_hps_io_phery_emac2_RX_CLK,     --                             .hps_io_phery_emac2_RX_CLK
			hps_io_hps_io_phery_emac2_RXD0       => CONNECTED_TO_hps_io_hps_io_phery_emac2_RXD0,       --                             .hps_io_phery_emac2_RXD0
			hps_io_hps_io_phery_emac2_RXD1       => CONNECTED_TO_hps_io_hps_io_phery_emac2_RXD1,       --                             .hps_io_phery_emac2_RXD1
			hps_io_hps_io_phery_emac2_RXD2       => CONNECTED_TO_hps_io_hps_io_phery_emac2_RXD2,       --                             .hps_io_phery_emac2_RXD2
			hps_io_hps_io_phery_emac2_RXD3       => CONNECTED_TO_hps_io_hps_io_phery_emac2_RXD3,       --                             .hps_io_phery_emac2_RXD3
			hps_io_hps_io_phery_emac2_MDIO       => CONNECTED_TO_hps_io_hps_io_phery_emac2_MDIO,       --                             .hps_io_phery_emac2_MDIO
			hps_io_hps_io_phery_emac2_MDC        => CONNECTED_TO_hps_io_hps_io_phery_emac2_MDC,        --                             .hps_io_phery_emac2_MDC
			hps_io_hps_io_phery_sdmmc_CMD        => CONNECTED_TO_hps_io_hps_io_phery_sdmmc_CMD,        --                             .hps_io_phery_sdmmc_CMD
			hps_io_hps_io_phery_sdmmc_D0         => CONNECTED_TO_hps_io_hps_io_phery_sdmmc_D0,         --                             .hps_io_phery_sdmmc_D0
			hps_io_hps_io_phery_sdmmc_D1         => CONNECTED_TO_hps_io_hps_io_phery_sdmmc_D1,         --                             .hps_io_phery_sdmmc_D1
			hps_io_hps_io_phery_sdmmc_D2         => CONNECTED_TO_hps_io_hps_io_phery_sdmmc_D2,         --                             .hps_io_phery_sdmmc_D2
			hps_io_hps_io_phery_sdmmc_D3         => CONNECTED_TO_hps_io_hps_io_phery_sdmmc_D3,         --                             .hps_io_phery_sdmmc_D3
			hps_io_hps_io_phery_sdmmc_D4         => CONNECTED_TO_hps_io_hps_io_phery_sdmmc_D4,         --                             .hps_io_phery_sdmmc_D4
			hps_io_hps_io_phery_sdmmc_D5         => CONNECTED_TO_hps_io_hps_io_phery_sdmmc_D5,         --                             .hps_io_phery_sdmmc_D5
			hps_io_hps_io_phery_sdmmc_D6         => CONNECTED_TO_hps_io_hps_io_phery_sdmmc_D6,         --                             .hps_io_phery_sdmmc_D6
			hps_io_hps_io_phery_sdmmc_D7         => CONNECTED_TO_hps_io_hps_io_phery_sdmmc_D7,         --                             .hps_io_phery_sdmmc_D7
			hps_io_hps_io_phery_sdmmc_CCLK       => CONNECTED_TO_hps_io_hps_io_phery_sdmmc_CCLK,       --                             .hps_io_phery_sdmmc_CCLK
			hps_io_hps_io_phery_usb1_DATA0       => CONNECTED_TO_hps_io_hps_io_phery_usb1_DATA0,       --                             .hps_io_phery_usb1_DATA0
			hps_io_hps_io_phery_usb1_DATA1       => CONNECTED_TO_hps_io_hps_io_phery_usb1_DATA1,       --                             .hps_io_phery_usb1_DATA1
			hps_io_hps_io_phery_usb1_DATA2       => CONNECTED_TO_hps_io_hps_io_phery_usb1_DATA2,       --                             .hps_io_phery_usb1_DATA2
			hps_io_hps_io_phery_usb1_DATA3       => CONNECTED_TO_hps_io_hps_io_phery_usb1_DATA3,       --                             .hps_io_phery_usb1_DATA3
			hps_io_hps_io_phery_usb1_DATA4       => CONNECTED_TO_hps_io_hps_io_phery_usb1_DATA4,       --                             .hps_io_phery_usb1_DATA4
			hps_io_hps_io_phery_usb1_DATA5       => CONNECTED_TO_hps_io_hps_io_phery_usb1_DATA5,       --                             .hps_io_phery_usb1_DATA5
			hps_io_hps_io_phery_usb1_DATA6       => CONNECTED_TO_hps_io_hps_io_phery_usb1_DATA6,       --                             .hps_io_phery_usb1_DATA6
			hps_io_hps_io_phery_usb1_DATA7       => CONNECTED_TO_hps_io_hps_io_phery_usb1_DATA7,       --                             .hps_io_phery_usb1_DATA7
			hps_io_hps_io_phery_usb1_CLK         => CONNECTED_TO_hps_io_hps_io_phery_usb1_CLK,         --                             .hps_io_phery_usb1_CLK
			hps_io_hps_io_phery_usb1_STP         => CONNECTED_TO_hps_io_hps_io_phery_usb1_STP,         --                             .hps_io_phery_usb1_STP
			hps_io_hps_io_phery_usb1_DIR         => CONNECTED_TO_hps_io_hps_io_phery_usb1_DIR,         --                             .hps_io_phery_usb1_DIR
			hps_io_hps_io_phery_usb1_NXT         => CONNECTED_TO_hps_io_hps_io_phery_usb1_NXT,         --                             .hps_io_phery_usb1_NXT
			hps_io_hps_io_phery_uart0_RX         => CONNECTED_TO_hps_io_hps_io_phery_uart0_RX,         --                             .hps_io_phery_uart0_RX
			hps_io_hps_io_phery_uart0_TX         => CONNECTED_TO_hps_io_hps_io_phery_uart0_TX,         --                             .hps_io_phery_uart0_TX
			hps_io_hps_io_phery_uart0_CTS_N      => CONNECTED_TO_hps_io_hps_io_phery_uart0_CTS_N,      --                             .hps_io_phery_uart0_CTS_N
			hps_io_hps_io_phery_uart0_RTS_N      => CONNECTED_TO_hps_io_hps_io_phery_uart0_RTS_N,      --                             .hps_io_phery_uart0_RTS_N
			hps_spim1_mosi_o                     => CONNECTED_TO_hps_spim1_mosi_o,                     --                    hps_spim1.mosi_o
			hps_spim1_miso_i                     => CONNECTED_TO_hps_spim1_miso_i,                     --                             .miso_i
			hps_spim1_ss_in_n                    => CONNECTED_TO_hps_spim1_ss_in_n,                    --                             .ss_in_n
			hps_spim1_mosi_oe                    => CONNECTED_TO_hps_spim1_mosi_oe,                    --                             .mosi_oe
			hps_spim1_ss0_n_o                    => CONNECTED_TO_hps_spim1_ss0_n_o,                    --                             .ss0_n_o
			hps_spim1_ss1_n_o                    => CONNECTED_TO_hps_spim1_ss1_n_o,                    --                             .ss1_n_o
			hps_spim1_ss2_n_o                    => CONNECTED_TO_hps_spim1_ss2_n_o,                    --                             .ss2_n_o
			hps_spim1_ss3_n_o                    => CONNECTED_TO_hps_spim1_ss3_n_o,                    --                             .ss3_n_o
			hps_spim1_sclk_out_clk               => CONNECTED_TO_hps_spim1_sclk_out_clk,               --           hps_spim1_sclk_out.clk
			mic_array_0_led_sd                   => CONNECTED_TO_mic_array_0_led_sd,                   --                  mic_array_0.led_sd
			mic_array_0_led_ws                   => CONNECTED_TO_mic_array_0_led_ws,                   --                             .led_ws
			mic_array_0_sd                       => CONNECTED_TO_mic_array_0_sd,                       --                             .sd
			mic_array_0_ws                       => CONNECTED_TO_mic_array_0_ws,                       --                             .ws
			mic_array_sck_clk                    => CONNECTED_TO_mic_array_sck_clk,                    --                mic_array_sck.clk
			reset_reset                          => CONNECTED_TO_reset_reset                           --                        reset.reset
		);

