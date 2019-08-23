library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package soc_system_pkg is
	component soc_system_altera_arria10_hps_180_4pootmi is
		generic (
			F2S_Width : integer := 5;
			S2F_Width : integer := 5
		);
		port (
			h2f_rst_n                 : out   std_logic;                                          -- reset_n
			f2h_cold_rst_req_n        : in    std_logic                       := 'X';             -- reset_n
			f2h_warm_rst_req_n        : in    std_logic                       := 'X';             -- reset_n
			emif_emif_to_hps          : in    std_logic_vector(4095 downto 0) := (others => 'X'); -- emif_to_hps
			emif_hps_to_emif          : out   std_logic_vector(4095 downto 0);                    -- hps_to_emif
			emif_emif_to_gp           : in    std_logic                       := 'X';             -- emif_to_gp
			emif_gp_to_emif           : out   std_logic_vector(1 downto 0);                       -- gp_to_emif
			h2f_lw_axi_clk            : in    std_logic                       := 'X';             -- clk
			h2f_lw_axi_rst            : in    std_logic                       := 'X';             -- reset_n
			h2f_lw_AWID               : out   std_logic_vector(3 downto 0);                       -- awid
			h2f_lw_AWADDR             : out   std_logic_vector(20 downto 0);                      -- awaddr
			h2f_lw_AWLEN              : out   std_logic_vector(3 downto 0);                       -- awlen
			h2f_lw_AWSIZE             : out   std_logic_vector(2 downto 0);                       -- awsize
			h2f_lw_AWBURST            : out   std_logic_vector(1 downto 0);                       -- awburst
			h2f_lw_AWLOCK             : out   std_logic_vector(1 downto 0);                       -- awlock
			h2f_lw_AWCACHE            : out   std_logic_vector(3 downto 0);                       -- awcache
			h2f_lw_AWPROT             : out   std_logic_vector(2 downto 0);                       -- awprot
			h2f_lw_AWVALID            : out   std_logic;                                          -- awvalid
			h2f_lw_AWREADY            : in    std_logic                       := 'X';             -- awready
			h2f_lw_AWUSER             : out   std_logic_vector(4 downto 0);                       -- awuser
			h2f_lw_WID                : out   std_logic_vector(3 downto 0);                       -- wid
			h2f_lw_WDATA              : out   std_logic_vector(31 downto 0);                      -- wdata
			h2f_lw_WSTRB              : out   std_logic_vector(3 downto 0);                       -- wstrb
			h2f_lw_WLAST              : out   std_logic;                                          -- wlast
			h2f_lw_WVALID             : out   std_logic;                                          -- wvalid
			h2f_lw_WREADY             : in    std_logic                       := 'X';             -- wready
			h2f_lw_BID                : in    std_logic_vector(3 downto 0)    := (others => 'X'); -- bid
			h2f_lw_BRESP              : in    std_logic_vector(1 downto 0)    := (others => 'X'); -- bresp
			h2f_lw_BVALID             : in    std_logic                       := 'X';             -- bvalid
			h2f_lw_BREADY             : out   std_logic;                                          -- bready
			h2f_lw_ARID               : out   std_logic_vector(3 downto 0);                       -- arid
			h2f_lw_ARADDR             : out   std_logic_vector(20 downto 0);                      -- araddr
			h2f_lw_ARLEN              : out   std_logic_vector(3 downto 0);                       -- arlen
			h2f_lw_ARSIZE             : out   std_logic_vector(2 downto 0);                       -- arsize
			h2f_lw_ARBURST            : out   std_logic_vector(1 downto 0);                       -- arburst
			h2f_lw_ARLOCK             : out   std_logic_vector(1 downto 0);                       -- arlock
			h2f_lw_ARCACHE            : out   std_logic_vector(3 downto 0);                       -- arcache
			h2f_lw_ARPROT             : out   std_logic_vector(2 downto 0);                       -- arprot
			h2f_lw_ARVALID            : out   std_logic;                                          -- arvalid
			h2f_lw_ARREADY            : in    std_logic                       := 'X';             -- arready
			h2f_lw_ARUSER             : out   std_logic_vector(4 downto 0);                       -- aruser
			h2f_lw_RID                : in    std_logic_vector(3 downto 0)    := (others => 'X'); -- rid
			h2f_lw_RDATA              : in    std_logic_vector(31 downto 0)   := (others => 'X'); -- rdata
			h2f_lw_RRESP              : in    std_logic_vector(1 downto 0)    := (others => 'X'); -- rresp
			h2f_lw_RLAST              : in    std_logic                       := 'X';             -- rlast
			h2f_lw_RVALID             : in    std_logic                       := 'X';             -- rvalid
			h2f_lw_RREADY             : out   std_logic;                                          -- rready
			f2h_irq_p0                : in    std_logic_vector(31 downto 0)   := (others => 'X'); -- irq
			f2h_irq_p1                : in    std_logic_vector(31 downto 0)   := (others => 'X'); -- irq
			spim1_mosi_o              : out   std_logic;                                          -- mosi_o
			spim1_miso_i              : in    std_logic                       := 'X';             -- miso_i
			spim1_ss_in_n             : in    std_logic                       := 'X';             -- ss_in_n
			spim1_mosi_oe             : out   std_logic;                                          -- mosi_oe
			spim1_ss0_n_o             : out   std_logic;                                          -- ss0_n_o
			spim1_ss1_n_o             : out   std_logic;                                          -- ss1_n_o
			spim1_ss2_n_o             : out   std_logic;                                          -- ss2_n_o
			spim1_ss3_n_o             : out   std_logic;                                          -- ss3_n_o
			spim1_sclk_out            : out   std_logic;                                          -- clk
			i2c0_scl_i                : in    std_logic                       := 'X';             -- clk
			i2c0_scl_oe               : out   std_logic;                                          -- clk
			i2c0_sda_i                : in    std_logic                       := 'X';             -- sda_i
			i2c0_sda_oe               : out   std_logic;                                          -- sda_oe
			hps_io_phery_emac1_TX_CLK : out   std_logic;                                          -- hps_io_phery_emac1_TX_CLK
			hps_io_phery_emac1_TXD0   : out   std_logic;                                          -- hps_io_phery_emac1_TXD0
			hps_io_phery_emac1_TXD1   : out   std_logic;                                          -- hps_io_phery_emac1_TXD1
			hps_io_phery_emac1_TXD2   : out   std_logic;                                          -- hps_io_phery_emac1_TXD2
			hps_io_phery_emac1_TXD3   : out   std_logic;                                          -- hps_io_phery_emac1_TXD3
			hps_io_phery_emac1_RX_CTL : in    std_logic                       := 'X';             -- hps_io_phery_emac1_RX_CTL
			hps_io_phery_emac1_TX_CTL : out   std_logic;                                          -- hps_io_phery_emac1_TX_CTL
			hps_io_phery_emac1_RX_CLK : in    std_logic                       := 'X';             -- hps_io_phery_emac1_RX_CLK
			hps_io_phery_emac1_RXD0   : in    std_logic                       := 'X';             -- hps_io_phery_emac1_RXD0
			hps_io_phery_emac1_RXD1   : in    std_logic                       := 'X';             -- hps_io_phery_emac1_RXD1
			hps_io_phery_emac1_RXD2   : in    std_logic                       := 'X';             -- hps_io_phery_emac1_RXD2
			hps_io_phery_emac1_RXD3   : in    std_logic                       := 'X';             -- hps_io_phery_emac1_RXD3
			hps_io_phery_emac1_MDIO   : inout std_logic                       := 'X';             -- hps_io_phery_emac1_MDIO
			hps_io_phery_emac1_MDC    : out   std_logic;                                          -- hps_io_phery_emac1_MDC
			hps_io_phery_emac2_TX_CLK : out   std_logic;                                          -- hps_io_phery_emac2_TX_CLK
			hps_io_phery_emac2_TXD0   : out   std_logic;                                          -- hps_io_phery_emac2_TXD0
			hps_io_phery_emac2_TXD1   : out   std_logic;                                          -- hps_io_phery_emac2_TXD1
			hps_io_phery_emac2_TXD2   : out   std_logic;                                          -- hps_io_phery_emac2_TXD2
			hps_io_phery_emac2_TXD3   : out   std_logic;                                          -- hps_io_phery_emac2_TXD3
			hps_io_phery_emac2_RX_CTL : in    std_logic                       := 'X';             -- hps_io_phery_emac2_RX_CTL
			hps_io_phery_emac2_TX_CTL : out   std_logic;                                          -- hps_io_phery_emac2_TX_CTL
			hps_io_phery_emac2_RX_CLK : in    std_logic                       := 'X';             -- hps_io_phery_emac2_RX_CLK
			hps_io_phery_emac2_RXD0   : in    std_logic                       := 'X';             -- hps_io_phery_emac2_RXD0
			hps_io_phery_emac2_RXD1   : in    std_logic                       := 'X';             -- hps_io_phery_emac2_RXD1
			hps_io_phery_emac2_RXD2   : in    std_logic                       := 'X';             -- hps_io_phery_emac2_RXD2
			hps_io_phery_emac2_RXD3   : in    std_logic                       := 'X';             -- hps_io_phery_emac2_RXD3
			hps_io_phery_emac2_MDIO   : inout std_logic                       := 'X';             -- hps_io_phery_emac2_MDIO
			hps_io_phery_emac2_MDC    : out   std_logic;                                          -- hps_io_phery_emac2_MDC
			hps_io_phery_sdmmc_CMD    : inout std_logic                       := 'X';             -- hps_io_phery_sdmmc_CMD
			hps_io_phery_sdmmc_D0     : inout std_logic                       := 'X';             -- hps_io_phery_sdmmc_D0
			hps_io_phery_sdmmc_D1     : inout std_logic                       := 'X';             -- hps_io_phery_sdmmc_D1
			hps_io_phery_sdmmc_D2     : inout std_logic                       := 'X';             -- hps_io_phery_sdmmc_D2
			hps_io_phery_sdmmc_D3     : inout std_logic                       := 'X';             -- hps_io_phery_sdmmc_D3
			hps_io_phery_sdmmc_D4     : inout std_logic                       := 'X';             -- hps_io_phery_sdmmc_D4
			hps_io_phery_sdmmc_D5     : inout std_logic                       := 'X';             -- hps_io_phery_sdmmc_D5
			hps_io_phery_sdmmc_D6     : inout std_logic                       := 'X';             -- hps_io_phery_sdmmc_D6
			hps_io_phery_sdmmc_D7     : inout std_logic                       := 'X';             -- hps_io_phery_sdmmc_D7
			hps_io_phery_sdmmc_CCLK   : out   std_logic;                                          -- hps_io_phery_sdmmc_CCLK
			hps_io_phery_usb1_DATA0   : inout std_logic                       := 'X';             -- hps_io_phery_usb1_DATA0
			hps_io_phery_usb1_DATA1   : inout std_logic                       := 'X';             -- hps_io_phery_usb1_DATA1
			hps_io_phery_usb1_DATA2   : inout std_logic                       := 'X';             -- hps_io_phery_usb1_DATA2
			hps_io_phery_usb1_DATA3   : inout std_logic                       := 'X';             -- hps_io_phery_usb1_DATA3
			hps_io_phery_usb1_DATA4   : inout std_logic                       := 'X';             -- hps_io_phery_usb1_DATA4
			hps_io_phery_usb1_DATA5   : inout std_logic                       := 'X';             -- hps_io_phery_usb1_DATA5
			hps_io_phery_usb1_DATA6   : inout std_logic                       := 'X';             -- hps_io_phery_usb1_DATA6
			hps_io_phery_usb1_DATA7   : inout std_logic                       := 'X';             -- hps_io_phery_usb1_DATA7
			hps_io_phery_usb1_CLK     : in    std_logic                       := 'X';             -- hps_io_phery_usb1_CLK
			hps_io_phery_usb1_STP     : out   std_logic;                                          -- hps_io_phery_usb1_STP
			hps_io_phery_usb1_DIR     : in    std_logic                       := 'X';             -- hps_io_phery_usb1_DIR
			hps_io_phery_usb1_NXT     : in    std_logic                       := 'X';             -- hps_io_phery_usb1_NXT
			hps_io_phery_uart0_RX     : in    std_logic                       := 'X';             -- hps_io_phery_uart0_RX
			hps_io_phery_uart0_TX     : out   std_logic;                                          -- hps_io_phery_uart0_TX
			hps_io_phery_uart0_CTS_N  : in    std_logic                       := 'X';             -- hps_io_phery_uart0_CTS_N
			hps_io_phery_uart0_RTS_N  : out   std_logic                                           -- hps_io_phery_uart0_RTS_N
		);
	end component soc_system_altera_arria10_hps_180_4pootmi;

end soc_system_pkg;
