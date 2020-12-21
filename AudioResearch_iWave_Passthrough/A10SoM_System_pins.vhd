-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

library ieee;
use ieee.std_logic_1164.all;
library altera;
use altera.altera_syn_attributes.all;

entity A10SoM_System_pins is
	port
	(
-- {ALTERA_IO_BEGIN} DO NOT REMOVE THIS LINE!

		AD1939_MCLK : in std_logic;
		clk_200 : in std_logic;
		ddr_ref_clk_i : in std_logic;
		fmc1_inout_pio1 : inout std_logic_vector(19 downto 0);
		fmc1_inout_pio2 : inout std_logic_vector(19 downto 0);
		fmc1_inout_pio3 : inout std_logic_vector(19 downto 0);
		fmc1_inout_pio4 : inout std_logic_vector(19 downto 0);
		fmc1_inout_pio5 : inout std_logic_vector(19 downto 0);
		fmc2_inout_pio6 : inout std_logic_vector(19 downto 0);
		fmc2_inout_pio7 : inout std_logic_vector(19 downto 0);
		fmc_1C_rx_ch0 : in std_logic;
		fmc_1C_rx_ch1 : in std_logic;
		fmc_1C_rx_ch2 : in std_logic;
		fmc_1C_rx_ch3 : in std_logic;
		fmc_1C_tx_ch0 : out std_logic;
		fmc_1C_tx_ch1 : out std_logic;
		fmc_1C_tx_ch2 : out std_logic;
		fmc_1C_tx_ch3 : out std_logic;
		fmc_1D_rx_ch0 : in std_logic;
		fmc_1D_rx_ch1 : in std_logic;
		fmc_1D_rx_ch2 : in std_logic;
		fmc_1D_rx_ch3 : in std_logic;
		fmc_1D_tx_ch0 : out std_logic;
		fmc_1D_tx_ch1 : out std_logic;
		fmc_1D_tx_ch2 : out std_logic;
		fmc_1D_tx_ch3 : out std_logic;
		fmc_1E_rx_ch0 : in std_logic;
		fmc_1E_rx_ch1 : in std_logic;
		fmc_1E_rx_ch2 : in std_logic;
		fmc_1E_rx_ch3 : in std_logic;
		fmc_1E_tx_ch0 : out std_logic;
		fmc_1E_tx_ch1 : out std_logic;
		fmc_1E_tx_ch2 : out std_logic;
		fmc_1E_tx_ch3 : out std_logic;
		fmc_1F_rx_ch0 : in std_logic;
		fmc_1F_rx_ch1 : in std_logic;
		fmc_1F_tx_ch0 : out std_logic;
		fmc_1F_tx_ch1 : out std_logic;
		fpga_clk_i : in std_logic;
		FPGA_memory_mem1_a : out std_logic_vector(16 downto 0);
		FPGA_memory_mem1_act_n : out std_logic;
		FPGA_memory_mem1_alert_n : in std_logic;
		FPGA_memory_mem1_ba : out std_logic_vector(1 downto 0);
		FPGA_memory_mem1_bg : out std_logic;
		FPGA_memory_mem1_ck : out std_logic;
		FPGA_memory_mem1_ck_n : out std_logic;
		FPGA_memory_mem1_cke : out std_logic;
		FPGA_memory_mem1_cs_n : out std_logic;
		FPGA_memory_mem1_dbi_n : inout std_logic_vector(7 downto 0);
		FPGA_memory_mem1_dq : inout std_logic_vector(63 downto 0);
		FPGA_memory_mem1_dqs : inout std_logic_vector(7 downto 0);
		FPGA_memory_mem1_dqs_n : inout std_logic_vector(7 downto 0);
		FPGA_memory_mem1_odt : out std_logic;
		FPGA_memory_mem1_par : out std_logic;
		FPGA_memory_mem1_reset_n : out std_logic;
		FPGA_memory_oct1_rzqin : in std_logic;
		hps_emac1_MDC : out std_logic;
		hps_emac1_MDIO : inout std_logic;
		hps_emac1_RX_CLK : in std_logic;
		hps_emac1_RX_CTL : in std_logic;
		hps_emac1_RXD0 : in std_logic;
		hps_emac1_RXD1 : in std_logic;
		hps_emac1_RXD2 : in std_logic;
		hps_emac1_RXD3 : in std_logic;
		hps_emac1_TX_CLK : out std_logic;
		hps_emac1_TX_CTL : out std_logic;
		hps_emac1_TXD0 : out std_logic;
		hps_emac1_TXD1 : out std_logic;
		hps_emac1_TXD2 : out std_logic;
		hps_emac1_TXD3 : out std_logic;
		hps_gpio2_GPIO6 : inout std_logic;
		hps_gpio2_GPIO8 : inout std_logic;
		hps_gpio_GPIO0 : inout std_logic;
		hps_gpio_GPIO1 : inout std_logic;
		hps_gpio_GPIO2 : inout std_logic;
		hps_gpio_GPIO3 : inout std_logic;
		hps_gpio_GPIO6 : inout std_logic;
		hps_gpio_GPIO7 : inout std_logic;
		hps_gpio_GPIO10 : inout std_logic;
		hps_gpio_GPIO11 : inout std_logic;
		hps_gpio_GPIO12 : inout std_logic;
		hps_gpio_GPIO13 : inout std_logic;
		hps_gpio_GPIO14 : inout std_logic;
		hps_gpio_GPIO15 : inout std_logic;
		hps_gpio_GPIO16 : inout std_logic;
		hps_gpio_GPIO17 : inout std_logic;
		hps_gpio_GPIO18 : inout std_logic;
		hps_gpio_GPIO19 : inout std_logic;
		hps_gpio_GPIO20 : inout std_logic;
		hps_gpio_GPIO21 : inout std_logic;
		hps_gpio_GPIO22 : inout std_logic;
		hps_gpio_GPIO23 : inout std_logic;
		hps_i2c0_SCL : inout std_logic;
		hps_i2c0_SDA : inout std_logic;
		hps_memory_mem_a : out std_logic_vector(16 downto 0);
		hps_memory_mem_act_n : out std_logic;
		hps_memory_mem_alert_n : in std_logic;
		hps_memory_mem_ba : out std_logic_vector(1 downto 0);
		hps_memory_mem_bg : out std_logic;
		hps_memory_mem_ck : out std_logic;
		hps_memory_mem_ck_n : out std_logic;
		hps_memory_mem_cke : out std_logic;
		hps_memory_mem_cs_n : out std_logic;
		hps_memory_mem_dbi_n : inout std_logic_vector(4 downto 0);
		hps_memory_mem_dq : inout std_logic_vector(39 downto 0);
		hps_memory_mem_dqs : inout std_logic_vector(4 downto 0);
		hps_memory_mem_dqs_n : inout std_logic_vector(4 downto 0);
		hps_memory_mem_odt : out std_logic;
		hps_memory_mem_par : out std_logic;
		hps_memory_mem_reset_n : out std_logic;
		hps_memory_oct_rzqin : in std_logic;
		hps_sdio_CLK : out std_logic;
		hps_sdio_CMD : inout std_logic;
		hps_sdio_D0 : inout std_logic;
		hps_sdio_D1 : inout std_logic;
		hps_sdio_D2 : inout std_logic;
		hps_sdio_D3 : inout std_logic;
		hps_uart1_RX : in std_logic;
		hps_uart1_TX : out std_logic;
		hps_usb1_CLK : in std_logic;
		hps_usb1_D0 : inout std_logic;
		hps_usb1_D1 : inout std_logic;
		hps_usb1_D2 : inout std_logic;
		hps_usb1_D3 : inout std_logic;
		hps_usb1_D4 : inout std_logic;
		hps_usb1_D5 : inout std_logic;
		hps_usb1_D6 : inout std_logic;
		hps_usb1_D7 : inout std_logic;
		hps_usb1_DIR : in std_logic;
		hps_usb1_NXT : in std_logic;
		hps_usb1_STP : out std_logic;
		pcie_npor_pin_perst : in std_logic;
		pcie_refclk_clk : in std_logic;
		pcie_rx_i : in std_logic;
		pcie_tx_o : out std_logic;
		pciex4_inout_pio10 : inout std_logic_vector(1 downto 0);
		pmod1_inout_pio8 : inout std_logic_vector(7 downto 0);
		pmod2_inout_pio9 : inout std_logic_vector(7 downto 0);
		refclk_1C_p : in std_logic;
		refclk_1D_p : in std_logic;
		refclk_1E_p : in std_logic;
		refclk_1F_p : in std_logic;
		sfp_1F_rx_ch0 : in std_logic;
		sfp_1F_tx_ch0 : out std_logic;
		sfp_refclk_1F_p : in std_logic;
		som_config_pio : in std_logic_vector(4 downto 0);
		sys_reset_n_i : in std_logic;
		usb_inout_pio11 : inout std_logic_vector(1 downto 0);
		AD4020_EN : in std_logic;
		AD5791_EN : in std_logic;
		HSA_IN_CLK : in std_logic;
		HSA_IN_EN_N : in std_logic;
		HSA_IN_L_CNV : in std_logic;
		HSA_IN_L_SDI : in std_logic;
		HSA_IN_L_SDO : in std_logic;
		HSA_IN_R_CNV : in std_logic;
		HSA_IN_R_SDI : in std_logic;
		HSA_IN_R_SDO : in std_logic;
		HSA_OUT_CLK : in std_logic;
		HSA_OUT_L_CLR_N : in std_logic;
		HSA_OUT_L_LDAC_N : in std_logic;
		HSA_OUT_L_RESET_N : in std_logic;
		HSA_OUT_L_SDIN : in std_logic;
		HSA_OUT_L_SDO : in std_logic;
		HSA_OUT_L_SYNC_N : in std_logic;
		HSA_OUT_R_CLR_N : in std_logic;
		HSA_OUT_R_LDAC_N : in std_logic;
		HSA_OUT_R_RESET_N : in std_logic;
		HSA_OUT_R_SDI : in std_logic;
		HSA_OUT_R_SDO : in std_logic;
		HSA_OUT_R_SDIN : in std_logic;
		HSA_OUT_R_SYNC_N : in std_logic;
		HDPHN_I2C_SCL : in std_logic;
		HDPHN_I2C_SDA : in std_logic;
		HDPHN_PWR_OFF_N : in std_logic;
		PGA2505_CS_N : in std_logic;
		EEPROM_WP : in std_logic;
		FAN_FAIL_N : in std_logic;
		FPGA_LED : in std_logic;
		FPGA_RESET : in std_logic;
		TEMP_ALERT_N : in std_logic;
		clk_200_n : in std_logic;
		ddr_ref_clk_i_n : in std_logic;
		refclk_1C_n : in std_logic;
		refclk_1D_n : in std_logic;
		refclk_1E_n : in std_logic;
		refclk_1F_n : in std_logic;
		sfp_refclk_1F_n : in std_logic;
		HPS_RST : in std_logic;
		UART1_RX : in std_logic;
		UART1_TX : in std_logic;
		sfp_1F_rx_ch0_n : in std_logic;
		sfp_1F_tx_ch0_n : in std_logic;
		MSATA_A : in std_logic;
		MSATA_A_n : in std_logic;
		MSATA_B : in std_logic;
		MSATA_B_n : in std_logic;
		MSATA_PWR_EN : in std_logic;
		FT232_RST_N : in std_logic;
		fmc_1C_rx_ch0_n : in std_logic;
		fmc_1C_rx_ch1_n : in std_logic;
		fmc_1C_rx_ch2_n : in std_logic;
		fmc_1C_rx_ch3_n : in std_logic;
		fmc_1C_tx_ch0_n : in std_logic;
		fmc_1C_tx_ch1_n : in std_logic;
		fmc_1C_tx_ch2_n : in std_logic;
		fmc_1C_tx_ch3_n : in std_logic;
		fmc_1D_rx_ch0_n : in std_logic;
		fmc_1D_rx_ch1_n : in std_logic;
		fmc_1D_rx_ch2_n : in std_logic;
		fmc_1D_rx_ch3_n : in std_logic;
		fmc_1D_tx_ch0_n : in std_logic;
		fmc_1D_tx_ch1_n : in std_logic;
		fmc_1D_tx_ch2_n : in std_logic;
		fmc_1D_tx_ch3_n : in std_logic;
		fmc_1E_rx_ch0_n : in std_logic;
		fmc_1E_rx_ch1_n : in std_logic;
		fmc_1E_rx_ch2_n : in std_logic;
		fmc_1E_rx_ch3_n : in std_logic;
		fmc_1E_tx_ch0_n : in std_logic;
		fmc_1E_tx_ch1_n : in std_logic;
		fmc_1E_tx_ch2_n : in std_logic;
		fmc_1E_tx_ch3_n : in std_logic;
		fmc_1F_rx_ch0_n : in std_logic;
		fmc_1F_rx_ch1_n : in std_logic;
		fmc_1F_tx_ch0_n : in std_logic;
		fmc_1F_tx_ch1_n : in std_logic;
		AD7768_CS_N : in std_logic;
		AD7768_DCLK : in std_logic;
		AD7768_DRDY_N : in std_logic;
		AD7768_EN : in std_logic;
		AD7768_MCLK : in std_logic;
		AD7768_RESET : in std_logic;
		AD7768_RESET_N : in std_logic;
		AD7768_SDI : in std_logic;
		AD7768_SDO : in std_logic;
		AD7768_SPI_SCK : in std_logic;
		AD7768_SYNC_IN : in std_logic;
		pcie_refclk_clk_n : in std_logic;
		pcie_rx_i_n : in std_logic;
		pcie_tx_o_n : in std_logic;
		FPGA_RX : in std_logic;
		FPGA_TX : in std_logic;
		DB25_PWR_EN : in std_logic;
		GPIO_LED : in std_logic;
		HPS_LED : in std_logic;
		AD1939_ABCLK : in std_logic;
		AD1939_ALRCLK : in std_logic;
		AD1939_CS_N : in std_logic;
		AD1939_DBCLK : in std_logic;
		AD1939_DLRCLK : in std_logic;
		AD1939_HDPHN_OUT_DSDATA : in std_logic;
		AD1939_LINE_IN_DSDATA : in std_logic;
		AD1939_LINE_OUT_DSDATA : in std_logic;
		AD1939_MIC_IN_DSDATA : in std_logic;
		AD1939_PWR_EN : in std_logic;
		AD1939_RST_CODEC_N : in std_logic;
		AD1939_SPI_MISO : in std_logic;
		AD1939_SPI_MOSI : in std_logic;
		AD1939_SPI_SCK : in std_logic;
		FULL_SPEED_n : in std_logic;
		JTAG_TCK : in std_logic;
		JTAG_TDI : in std_logic;
		JTAG_TDO : in std_logic;
		JTAG_TMS : in std_logic;
		JTAG_TRST : in std_logic;
		I2C_SCL : in std_logic;
		I2C_SDA : in std_logic;
		AA_12V0_EN : in std_logic_vector(0 to 3);
		AA_BANK_EN : in std_logic_vector(0 to 1);
		AA_LVDS_EN_N : in std_logic_vector(0 to 15);
		AA_MCLK : in std_logic_vector(0 to 3);
		AA_SDI : in std_logic_vector(0 to 15);
		AA_SDO : in std_logic_vector(0 to 15);
		AD7768_DOUT : in std_logic_vector(0 to 3);
		DB25_GPIO : in std_logic_vector(0 to 17);
		P3_GPIO : in std_logic_vector(0 to 3)
-- {ALTERA_IO_END} DO NOT REMOVE THIS LINE!

	);

-- {ALTERA_ATTRIBUTE_BEGIN} DO NOT REMOVE THIS LINE!
-- {ALTERA_ATTRIBUTE_END} DO NOT REMOVE THIS LINE!
end A10SoM_System_pins;

architecture ppl_type of A10SoM_System_pins is

-- {ALTERA_COMPONENTS_BEGIN} DO NOT REMOVE THIS LINE!
-- {ALTERA_COMPONENTS_END} DO NOT REMOVE THIS LINE!
begin
-- {ALTERA_INSTANTIATION_BEGIN} DO NOT REMOVE THIS LINE!
-- {ALTERA_INSTANTIATION_END} DO NOT REMOVE THIS LINE!

end;
