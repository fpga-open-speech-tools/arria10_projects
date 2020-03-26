-------------------------------------------------------------------------------------
--
--! @file       a10som_system.vhd
--! @brief      AD1939 using the Audio Research Board on the Arria 10.
--! @details    Top Level Design for a pass through system using the
--!             Audio Research Board, developed by Flat Earth Inc.
--! @author     Connor Dack, Trevor Vannoy
--! @date       Aug 2019
--! @copyright  Copyright (C) 2019 Flat Earth Inc
--!
--! Software Released Under the MIT License
--
--  Permission is hereby granted, free of charge, to any person obtaining a copy
--  of this software and associated documentation files (the "Software"), to deal
--  IN the Software without restriction, including without limitation the rights
--  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
--  copies of the Software, and to permit persons to whom the Software is furnished
--  to do so, subject to the following conditions:
--
--  The above copyright notice and this permission notice shall be included IN all
--  copies or substantial portions of the Software.
--
--  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
--  INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
--  PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
--  HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
--  OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
--  SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--
--  Connor Dack, Trevor Vannoy
--  Flat Earth Inc
--  985 Technology Blvd,
--  Bozeman, MT 59718
--
------------------------------------------------------------------------------------------

library ieee ;                      --! use standard library.
use     ieee.std_logic_1164.all;    --! use standard logic elements.
use     ieee.numeric_std.all ;      --! use numeric standard.

library work;                       --! use work library.
use     work.pkg_std.all;           --! use package standard.
use     work.pkg_std_unsigned.all;  --! use package standard unsigned.

library pll_sys;                    --! use pll_sys library.
library hps;                        --! use hps library.

library altera;
use altera.altera_primitives_components.all;

------------------------------------------------------------------------------------------
--
--! @brief      A10 AD1939 Pass Through
--! @details    Top Level of the Arria 10 AD1939 Pass Through System using
--!             the Audio Research Daughter Card connect to the LPC FMC.
--!
--! @param      clk_25mhz_fpga : In - 25MHz Clock
--! @param
--! @param      fmc_std_scl    : INOUT - I2C Bus is common for both FMC Connectors
--! @param      fmc_std_sda    : INOUT - I2C Bus is common for both FMC Connectors
--!
--
------------------------------------------------------------------------------------------

entity a10som_system is
  port(
    ----------------------------------------
    --  clock inputs
    ----------------------------------------
    clk_25mhz_fpga : in std_logic;

    ----------------------------------------
    -- AD1939 codec
    ----------------------------------------
    ad1939_adc_alrclk     : in std_logic;
    ad1939_adc_abclk      : in std_logic;
    ad1939_adc_asdata1    : in std_logic;
    ad1939_adc_asdata2    : in std_logic;
    ad1939_dac_dlrclk     : out std_logic;
    ad1939_dac_dbclk      : out std_logic;
    ad1939_dac_dsdata1    : out std_logic;
    ad1939_dac_dsdata2    : out std_logic;
    ad1939_dac_dsdata3    : out std_logic;
    ad1939_dac_dsdata4    : out std_logic;
    ad1939_reset_n        : out std_logic;
    ad1939_spi_cclk       : out std_logic;
    ad1939_spi_cin        : out std_logic;
    ad1939_spi_clatch_n   : out std_logic;
    ad1939_spi_cout       : in std_logic;
    ad1939_mclk           : in std_logic;

    ----------------------------------------
    -- microphone
    ----------------------------------------
    inmp621_mic_clk       : in std_logic;
    inmp621_mic_data      : in std_logic;

    ----------------------------------------
    -- headphone amplifier
    ----------------------------------------
    tpa6130_power_off     : out std_logic;
    tpa6130_i2c_scl       : inout std_logic;
    tpa6130_i2c_sda       : inout std_logic;

    ----------------------------------------
    -- microphone preamp
    ----------------------------------------
    preamp_cs             : out std_logic;

    ----------------------------------------
    -- microphone array
    ----------------------------------------
    mic_array_led_ws      : out std_logic;
    mic_array_led_sd      : out std_logic;
    mic_array_sd          : in  std_logic;
    mic_array_ws          : out std_logic;
    mic_array_sck         : out std_logic;

    ----------------------------------------
    -- fmc top/bot (hpc)
    ----------------------------------------
    hpc_clk0_m2c                 : in    std_logic                     := 'X';             -- hpc_clk0_m2c
    hpc_clk1_m2c                 : in    std_logic                     := 'X';             -- hpc_clk1_m2c
    hpc_clk2_bidir               : out   std_logic;                                        -- hpc_clk2_bidir
    hpc_clk3_bidir               : out   std_logic;                                        -- hpc_clk3_bidir
    fmc_std_scl                  : inout std_logic                     := 'X';             -- fmc_std_scl
    fmc_std_sda                  : inout std_logic                     := 'X';             -- fmc_std_sda

    ----------------------------------------
    -- fpga <=> max
    ----------------------------------------
    lnk_m2f_dat                  : in    std_logic                     := 'X';             -- lnk_m2f_dat
    lnk_f2m_dat                  : out   std_logic;
    hps_good                     : out   std_logic;
    lnk_m2f_rst                  : in    std_logic                     := 'X';             -- lnk_m2f_rst
    hps_rst                      : in    std_logic                     := 'X';             -- hps_rst

    ----------------------------------------
    -- hps
    ----------------------------------------
    hps_ddr4_ck                  : out   std_logic_vector(0 downto 0);                     -- mem_ck
    hps_ddr4_ck_n                : out   std_logic_vector(0 downto 0);                     -- mem_ck_n
    hps_ddr4_a                   : out   std_logic_vector(16 downto 0);                    -- mem_a
    hps_ddr4_act_n               : out   std_logic_vector(0 downto 0);                     -- mem_act_n
    hps_ddr4_ba                  : out   std_logic_vector(1 downto 0);                     -- mem_ba
    hps_ddr4_bg                  : out   std_logic_vector(1 downto 0);                     -- mem_bg
    hps_ddr4_cke                 : out   std_logic_vector(0 downto 0);                     -- mem_cke
    hps_ddr4_cs_n                : out   std_logic_vector(0 downto 0);                     -- mem_cs_n
    hps_ddr4_odt                 : out   std_logic_vector(0 downto 0);                     -- mem_odt
    hps_ddr4_reset_n             : out   std_logic_vector(0 downto 0);                     -- mem_reset_n
    hps_ddr4_par                 : out   std_logic_vector(0 downto 0);                     -- mem_par
    hps_ddr4_alert_n             : in    std_logic_vector(0 downto 0)  := (others => 'X'); -- mem_alert_n
    hps_ddr4_dqs                 : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs<generate_label>:
    hps_ddr4_dqs_n               : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs_n
    hps_ddr4_dq                  : inout std_logic_vector(31 downto 0) := (others => 'X'); -- mem_dq
    hps_ddr4_dbi_n               : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dbi_n
    hps_ddr4_oct_rzqin           : in    std_logic                     := 'X';             -- oct_rzqin
    hps_ddr4_pll_ref_clk         : in    std_logic                     := 'X';             -- clk

    hps_io_phery_sdmmc_cmd       : inout std_logic                     := 'X';             -- hps_io_phery_sdmmc_cmd
    hps_io_phery_sdmmc_d0        : inout std_logic                     := 'X';             -- hps_io_phery_sdmmc_d0
    hps_io_phery_sdmmc_d1        : inout std_logic                     := 'X';             -- hps_io_phery_sdmmc_d1
    hps_io_phery_sdmmc_d2        : inout std_logic                     := 'X';             -- hps_io_phery_sdmmc_d2
    hps_io_phery_sdmmc_d3        : inout std_logic                     := 'X';             -- hps_io_phery_sdmmc_d3
    hps_io_phery_sdmmc_d4        : inout std_logic                     := 'X';             -- hps_io_phery_sdmmc_d4
    hps_io_phery_sdmmc_d5        : inout std_logic                     := 'X';             -- hps_io_phery_sdmmc_d5
    hps_io_phery_sdmmc_d6        : inout std_logic                     := 'X';             -- hps_io_phery_sdmmc_d6
    hps_io_phery_sdmmc_d7        : inout std_logic                     := 'X';             -- hps_io_phery_sdmmc_d7
    hps_io_phery_sdmmc_cclk      : out   std_logic;                                        -- hps_io_phery_sdmmc_cclk

   hps_io_phery_emac1_tx_clk         : out   std_logic;                                        -- hps_io_phery_emac1_tx_clk
    hps_io_phery_emac1_txd0           : out   std_logic;                                        -- hps_io_phery_emac1_txd0
    hps_io_phery_emac1_txd1           : out   std_logic;                                        -- hps_io_phery_emac1_txd1
    hps_io_phery_emac1_txd2           : out   std_logic;                                        -- hps_io_phery_emac1_txd2
    hps_io_phery_emac1_txd3           : out   std_logic;                                        -- hps_io_phery_emac1_txd3
    hps_io_phery_emac1_rx_ctl         : in    std_logic                     := 'X';             -- hps_io_phery_emac1_rx_ctl
    hps_io_phery_emac1_tx_ctl         : out   std_logic;                                        -- hps_io_phery_emac1_tx_ctl
    hps_io_phery_emac1_rx_clk         : in    std_logic                     := 'X';             -- hps_io_phery_emac1_rx_clk
    hps_io_phery_emac1_rxd0           : in    std_logic                     := 'X';             -- hps_io_phery_emac1_rxd0
    hps_io_phery_emac1_rxd1           : in    std_logic                     := 'X';             -- hps_io_phery_emac1_rxd1
    hps_io_phery_emac1_rxd2           : in    std_logic                     := 'X';             -- hps_io_phery_emac1_rxd2
    hps_io_phery_emac1_rxd3           : in    std_logic                     := 'X';             -- hps_io_phery_emac1_rxd3
    hps_io_phery_emac1_mdio           : inout std_logic                     := 'X';             -- hps_io_phery_emac1_mdio
    hps_io_phery_emac1_mdc            : out   std_logic;                                        -- hps_io_phery_emac1_mdc

    hps_io_phery_emac2_tx_clk         : out   std_logic;                                        -- hps_io_phery_emac2_tx_clk
    hps_io_phery_emac2_txd0           : out   std_logic;                                        -- hps_io_phery_emac2_txd0
    hps_io_phery_emac2_txd1           : out   std_logic;                                        -- hps_io_phery_emac2_txd1
    hps_io_phery_emac2_txd2           : out   std_logic;                                        -- hps_io_phery_emac2_txd2
    hps_io_phery_emac2_txd3           : out   std_logic;                                        -- hps_io_phery_emac2_txd3
    hps_io_phery_emac2_rx_ctl         : in    std_logic                     := 'X';             -- hps_io_phery_emac2_rx_ctl
    hps_io_phery_emac2_tx_ctl         : out   std_logic;                                        -- hps_io_phery_emac2_tx_ctl
    hps_io_phery_emac2_rx_clk         : in    std_logic                     := 'X';             -- hps_io_phery_emac2_rx_clk
    hps_io_phery_emac2_rxd0           : in    std_logic                     := 'X';             -- hps_io_phery_emac2_rxd0
    hps_io_phery_emac2_rxd1           : in    std_logic                     := 'X';             -- hps_io_phery_emac2_rxd1
    hps_io_phery_emac2_rxd2           : in    std_logic                     := 'X';             -- hps_io_phery_emac2_rxd2
    hps_io_phery_emac2_rxd3           : in    std_logic                     := 'X';             -- hps_io_phery_emac2_rxd3
    hps_io_phery_emac2_mdio           : inout std_logic                     := 'X';             -- hps_io_phery_emac2_mdio
    hps_io_phery_emac2_mdc            : out   std_logic;                                        -- hps_io_phery_emac2_mdc

    hps_io_phery_usb1_data0      : inout std_logic                     := 'X';             -- hps_io_phery_usb1_data0
    hps_io_phery_usb1_data1      : inout std_logic                     := 'X';             -- hps_io_phery_usb1_data1
    hps_io_phery_usb1_data2      : inout std_logic                     := 'X';             -- hps_io_phery_usb1_data2
    hps_io_phery_usb1_data3      : inout std_logic                     := 'X';             -- hps_io_phery_usb1_data3
    hps_io_phery_usb1_data4      : inout std_logic                     := 'X';             -- hps_io_phery_usb1_data4
    hps_io_phery_usb1_data5      : inout std_logic                     := 'X';             -- hps_io_phery_usb1_data5
    hps_io_phery_usb1_data6      : inout std_logic                     := 'X';             -- hps_io_phery_usb1_data6
    hps_io_phery_usb1_data7      : inout std_logic                     := 'X';             -- hps_io_phery_usb1_data7
    hps_io_phery_usb1_clk        : in    std_logic                     := 'X';             -- hps_io_phery_usb1_clk
    hps_io_phery_usb1_stp        : out   std_logic;                                        -- hps_io_phery_usb1_stp
    hps_io_phery_usb1_dir        : in    std_logic                     := 'X';             -- hps_io_phery_usb1_dir
    hps_io_phery_usb1_nxt        : in    std_logic                     := 'X';             -- hps_io_phery_usb1_nxt

    hps_io_phery_uart0_rx        : in    std_logic                     := 'X';             -- hps_io_phery_uart0_rx
    hps_io_phery_uart0_tx        : out   std_logic;                                        -- hps_io_phery_uart0_tx
    hps_io_phery_uart0_cts_n     : in    std_logic                     := 'X';             -- hps_io_phery_uart0_cts_n
    hps_io_phery_uart0_rts_n     : out   std_logic;                                        -- hps_io_phery_uart0_rts_n

    ------------------------------------------------------------------------------------------
    -- misc.
    ------------------------------------------------------------------------------------------
    led_usr_g_n                  : out   std_logic;                                        -- led_usr_g_n
    led_usr_r_n                  : out   std_logic                                         -- led_usr_r_n

  );
end entity a10som_system;

architecture a10som_system_arch of a10som_system is

  ------------------------------------------------------------------------------------------
  -- Component Declerations
  ------------------------------------------------------------------------------------------

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
      reset_reset                        : in    std_logic                     := 'X';             -- reset_n
      mic_array_0_led_sd                   : out   std_logic;                                        -- led_sd
      mic_array_0_led_ws                   : out   std_logic;                                        -- led_ws
      mic_array_0_sd                       : in    std_logic                     := 'X';             -- sd
      mic_array_0_ws                       : out   std_logic;                                         -- ws
      mic_array_sck_clk                    : out   std_logic                                         -- clk
    );
  end component soc_system;


  ------------------------------------------------------------------------------------------
  -- Constant and Type Declarations
  ------------------------------------------------------------------------------------------
  attribute keep               : boolean;
  attribute noprune            : boolean;
  attribute preserve           : boolean;
  constant c_sys_clk_period    : time      := 10 ns;
  constant c_sys_clk_frequency : integer   := 100000000;
  constant c_rst_delay_nb_bits : integer   := 3;

  ------------------------------------------------------------------------------------------
  -- Signal Declarations
  ------------------------------------------------------------------------------------------
  signal s_sys_clk     : std_logic;
  signal s_sys_rst     : std_logic;
  signal s_sys_rstn    : std_logic;
  signal s_tick_1s     : std_logic;
  signal s_tick_8hz    : std_logic;

  signal sb_pll_locked : std_logic;
  signal sb_rst        : std_logic        := '1';
  signal sb_rst_dly    : std_logic;
  signal sb_hps_rst_n  : std_logic;
  signal sb_ddr_rst_n  : std_logic;
  signal sb_reset_dly  : std_logic_vector(1 downto 0);

  signal ad1939_adc_bclk   : std_logic;
  signal ad1939_adc_lrclk  : std_logic;
  signal ad1939_adc_sdata1 : std_logic;
  signal ad1939_adc_sdata2 : std_logic;
  signal ad1939_dac_bclk   : std_logic;
  signal ad1939_dac_lrclk  : std_logic;
  signal ad1939_dac_sdata1 : std_logic;
  signal ad1939_dac_sdata2 : std_logic;
  signal ad1939_dac_sdata3 : std_logic;
  signal ad1939_dac_sdata4 : std_logic;

  --! ad1939 spi signal = ss_n: slave select (active low)
  signal ad1939_spi_clatch_counter    : std_logic_vector(16 downto 0) := (others => '0');  							
  signal i2c_0_i2c_serial_sda_in		: std_logic;
  signal i2c_serial_scl_in				: std_logic;
  signal i2c_serial_sda_oe				: std_logic;
  signal serial_scl_oe						: std_logic;
  
begin

  ------------------------------------------------------------------------------------------
  -- PLL reset
  ------------------------------------------------------------------------------------------
  process(clk_25mhz_fpga)
    begin
      if(rising_edge(clk_25mhz_fpga)) then
          sb_rst <=  '0';
      end if;
  end process;

  ------------------------------------------------------------------------------------------
  -- PLL (inclock=25MHz)
  --  c0 : 100.0MHz (must be consistent with C_SYS_CLK_PERIOD)
  ------------------------------------------------------------------------------------------
  i_pll_sys : entity pll_sys.pll_sys 
    port map (
      locked   => sb_pll_locked,    
      outclk_0 => s_sys_clk,        
      refclk   => clk_25mhz_fpga,  
      rst      => sb_rst         
    );

  ------------------------------------------------------------------------------------------
  -- Delayed reset.
  ------------------------------------------------------------------------------------------
  i_delayed_rst : entity WORK.delayed_rst 
    generic map (
      NB_BITS   => C_RST_DELAY_NB_BITS          --     integer   := 2   -- number of bits for the internal counter. Ex. 2 will generate a 2**NB_BITS+3 cycles reset
    ) 
    port map (
      in_rst    => lnk_m2f_rst,                  -- in  std_logic := '0' -- asynchronous active high reset (choose only one between active low or high reset).
      out_clk   => clk_25mhz_fpga,               -- in  std_logic        -- clock used to synchronize reset and for counter
      out_rst   => sb_rst_dly                   -- out std_logic        -- synchronous de-asserted active high reset
    );

  ------------------------------------------------------------------------------------------
  -- Generate reset
  ------------------------------------------------------------------------------------------
  i_sync_rst : entity WORK.sync_rst 
    generic map (
      NB_RESET      => 1                --     integer                               := 1             -- number of reset to synchronize
    ) 
    port map (
      in_com_rst    => sb_rst_dly,       -- in  std_logic                             := '0'           -- asynchronous active high reset  common to all clock domains /!\ choose only one reset source for each output /!\
      in_rst   (0)  => '0',              -- in  std_logic_vector(NB_RESET-1 downto 0) := (others=>'0') -- asynchronous active high resets                            /!\ choose only one reset source for each output /!\
      out_clk  (0)  => s_sys_clk,        -- in  std_logic_vector(NB_RESET-1 downto 0)                  -- clocks used to synchronize resets
      out_rst_n(0)  => s_sys_rstn,       -- out std_logic_vector(NB_RESET-1 downto 0)                  -- synchronous de-asserted active low resets
      out_rst  (0)  => s_sys_rst        -- out std_logic_vector(NB_RESET-1 downto 0)                  -- synchronous de-asserted active high resets
    );

  ------------------------------------------------------------------------------------------
  -- Tick generators and timestamp
  ------------------------------------------------------------------------------------------
  -- 8Hz
  i_tick_gen_8hz : entity WORK.tick_gen 
    generic map (
      NB_CYCLE    => C_SYS_CLK_FREQUENCY/8      --     integer   := 160000000 -- generate one 'tick' every NB_CYCLE clock periodes
    ) 
    port map (
      rst         => s_sys_rst,                  -- in  std_logic := '0'       -- asynchronous active high reset
      clk         => s_sys_clk,                  -- in  std_logic              -- module and base clock
      tick        => s_tick_8hz,                 -- out std_logic              -- '1' for one cycle
      tick_toggle => open                       -- out std_logic              -- inverted each time
  );

  process (s_sys_rst, s_sys_clk)
    begin
      if(s_sys_rst='1') then
        sb_reset_dly    <= (others=>'1');
      elsif(rising_edge(s_sys_clk)) then
        if s_tick_8hz='1' then
          sb_reset_dly <= sb_reset_dly(sb_reset_dly'high-1 downto 0) & '0';
        end if;
      end if;
  end process;


  sb_ddr_rst_n <= not(sb_reset_dly(0)); -- de-assert hps ddr reset 125ms after reset from m10 (which is de-assert after si5341 cnfiguration)
  sb_hps_rst_n <= not(sb_reset_dly(1)); -- de-assert hps     reset 125ms after hps ddr reset


  u0 : component soc_system
    port map (

      -- clock and data connections to AD1939
      ad1939_abclk_clk                          =>  ad1939_adc_abclk,
      ad1939_alrclk_clk                         =>  ad1939_adc_alrclk,
      ad1939_mclk_clk                           =>  ad1939_mclk,
      ad1939_physical_ad1939_adc_asdata1        =>  ad1939_adc_asdata1,
      ad1939_physical_ad1939_adc_asdata2        =>  ad1939_adc_asdata2,
      ad1939_physical_ad1939_dac_dbclk          =>  ad1939_dac_dbclk,
      ad1939_physical_ad1939_dac_dlrclk         =>  ad1939_dac_dlrclk,
      ad1939_physical_ad1939_dac_dsdata1        =>  ad1939_dac_dsdata1,
      ad1939_physical_ad1939_dac_dsdata2        =>  ad1939_dac_dsdata2,
      ad1939_physical_ad1939_dac_dsdata3        =>  ad1939_dac_dsdata3,
      ad1939_physical_ad1939_dac_dsdata4        =>  ad1939_dac_dsdata4,

      ddr4_global_reset_reset_sink_reset_n    => sb_ddr_rst_n,                  -- ddr4_global_reset_reset_sink.reset_n
      ddr4_mem_conduit_end_mem_ck             => hps_ddr4_ck,                   --         ddr4_mem_conduit_end.mem_ck
      ddr4_mem_conduit_end_mem_ck_n           => hps_ddr4_ck_n,                 --                             .mem_ck_n
      ddr4_mem_conduit_end_mem_a              => hps_ddr4_a,                    --                             .mem_a
      ddr4_mem_conduit_end_mem_act_n          => hps_ddr4_act_n,                --                             .mem_act_n
      ddr4_mem_conduit_end_mem_ba             => hps_ddr4_ba,                   --                             .mem_ba
      ddr4_mem_conduit_end_mem_bg             => hps_ddr4_bg,                   --                             .mem_bg
      ddr4_mem_conduit_end_mem_cke            => hps_ddr4_cke,                  --                             .mem_cke
      ddr4_mem_conduit_end_mem_cs_n           => hps_ddr4_cs_n,                 --                             .mem_cs_n
      ddr4_mem_conduit_end_mem_odt            => hps_ddr4_odt,                  --                             .mem_odt
      ddr4_mem_conduit_end_mem_reset_n        => hps_ddr4_reset_n,              --                             .mem_reset_n
      ddr4_mem_conduit_end_mem_par            => hps_ddr4_par,                  --                             .mem_par
      ddr4_mem_conduit_end_mem_alert_n        => hps_ddr4_alert_n,              --                             .mem_alert_n
      ddr4_mem_conduit_end_mem_dqs            => hps_ddr4_dqs,                  --                             .mem_dqs
      ddr4_mem_conduit_end_mem_dqs_n          => hps_ddr4_dqs_n,                --                             .mem_dqs_n
      ddr4_mem_conduit_end_mem_dq             => hps_ddr4_dq,                   --                             .mem_dq
      ddr4_mem_conduit_end_mem_dbi_n          => hps_ddr4_dbi_n,                --                             .mem_dbi_n
      ddr4_oct_conduit_end_oct_rzqin          => hps_ddr4_oct_rzqin,            --         ddr4_oct_conduit_end.oct_rzqin
      ddr4_pll_ref_clk_clock_sink_clk         => hps_ddr4_pll_ref_clk,          --  ddr4_pll_ref_clk_clock_sink.clk
      reset_reset                           => s_sys_rst,                    --                        reset.reset_n
      hps_f2h_cold_reset_req_reset_n          => sb_hps_rst_n and not(hps_rst), --       hps_f2h_cold_reset_req.reset_n
      hps_f2h_irq0_irq                        => (OTHERS => '0'),               --                 hps_f2h_irq0.irq
      hps_f2h_irq1_irq                        => (OTHERS => '0'),               --                 hps_f2h_irq1.irq
      hps_f2h_warm_reset_req_reset_n          => sb_hps_rst_n and not(hps_rst), --       hps_f2h_warm_reset_req.reset_n
      hps_io_hps_io_phery_sdmmc_CMD           => hps_io_phery_sdmmc_CMD,        --                             .hps_io_phery_sdmmc_CMD
      hps_io_hps_io_phery_sdmmc_D0            => hps_io_phery_sdmmc_D0,         --                             .hps_io_phery_sdmmc_D0
      hps_io_hps_io_phery_sdmmc_D1            => hps_io_phery_sdmmc_D1,         --                             .hps_io_phery_sdmmc_D1
      hps_io_hps_io_phery_sdmmc_D2            => hps_io_phery_sdmmc_D2,         --                             .hps_io_phery_sdmmc_D2
      hps_io_hps_io_phery_sdmmc_D3            => hps_io_phery_sdmmc_D3,         --                             .hps_io_phery_sdmmc_D3
      hps_io_hps_io_phery_sdmmc_D4            => hps_io_phery_sdmmc_D4,         --                             .hps_io_phery_sdmmc_D4
      hps_io_hps_io_phery_sdmmc_D5            => hps_io_phery_sdmmc_D5,         --                             .hps_io_phery_sdmmc_D5
      hps_io_hps_io_phery_sdmmc_D6            => hps_io_phery_sdmmc_D6,         --                             .hps_io_phery_sdmmc_D6
      hps_io_hps_io_phery_sdmmc_D7            => hps_io_phery_sdmmc_D7,         --                             .hps_io_phery_sdmmc_D7
      hps_io_hps_io_phery_sdmmc_CCLK          => hps_io_phery_sdmmc_CCLK,       --                             .hps_io_phery_sdmmc_CCLK
      hps_io_hps_io_phery_emac1_TX_CLK     => hps_io_phery_emac1_TX_CLK,         -- out   std_logic                                        -- hps_io.hps_io_phery_emac1_TX_CLK
      hps_io_hps_io_phery_emac1_TXD0       => hps_io_phery_emac1_TXD0,           -- out   std_logic                                        -- .hps_io_phery_emac1_TXD0
      hps_io_hps_io_phery_emac1_TXD1       => hps_io_phery_emac1_TXD1,           -- out   std_logic                                        -- .hps_io_phery_emac1_TXD1
      hps_io_hps_io_phery_emac1_TXD2       => hps_io_phery_emac1_TXD2,           -- out   std_logic                                        -- .hps_io_phery_emac1_TXD2
      hps_io_hps_io_phery_emac1_TXD3       => hps_io_phery_emac1_TXD3,           -- out   std_logic                                        -- .hps_io_phery_emac1_TXD3
      hps_io_hps_io_phery_emac1_RX_CTL     => hps_io_phery_emac1_RX_CTL,         -- in    std_logic                     := '0'             -- .hps_io_phery_emac1_RX_CTL
      hps_io_hps_io_phery_emac1_TX_CTL     => hps_io_phery_emac1_TX_CTL,         -- out   std_logic                                        -- .hps_io_phery_emac1_TX_CTL
      hps_io_hps_io_phery_emac1_RX_CLK     => hps_io_phery_emac1_RX_CLK,         -- in    std_logic                     := '0'             -- .hps_io_phery_emac1_RX_CLK
      hps_io_hps_io_phery_emac1_RXD0       => hps_io_phery_emac1_RXD0,           -- in    std_logic                     := '0'             -- .hps_io_phery_emac1_RXD0
      hps_io_hps_io_phery_emac1_RXD1       => hps_io_phery_emac1_RXD1,           -- in    std_logic                     := '0'             -- .hps_io_phery_emac1_RXD1
      hps_io_hps_io_phery_emac1_RXD2       => hps_io_phery_emac1_RXD2,           -- in    std_logic                     := '0'             -- .hps_io_phery_emac1_RXD2
      hps_io_hps_io_phery_emac1_RXD3       => hps_io_phery_emac1_RXD3,           -- in    std_logic                     := '0'             -- .hps_io_phery_emac1_RXD3
      hps_io_hps_io_phery_emac1_MDIO       => hps_io_phery_emac1_MDIO,           -- inout std_logic                     := '0'             -- .hps_io_phery_emac1_MDIO
      hps_io_hps_io_phery_emac1_MDC        => hps_io_phery_emac1_MDC,            -- out   std_logic                                        -- .hps_io_phery_emac1_MDC
      hps_io_hps_io_phery_emac2_TX_CLK     => hps_io_phery_emac2_TX_CLK,         -- out   std_logic                                        -- .hps_io_phery_emac2_TX_CLK
      hps_io_hps_io_phery_emac2_TXD0       => hps_io_phery_emac2_TXD0,           -- out   std_logic                                        -- .hps_io_phery_emac2_TXD0
      hps_io_hps_io_phery_emac2_TXD1       => hps_io_phery_emac2_TXD1,           -- out   std_logic                                        -- .hps_io_phery_emac2_TXD1
      hps_io_hps_io_phery_emac2_TXD2       => hps_io_phery_emac2_TXD2,           -- out   std_logic                                        -- .hps_io_phery_emac2_TXD2
      hps_io_hps_io_phery_emac2_TXD3       => hps_io_phery_emac2_TXD3,           -- out   std_logic                                        -- .hps_io_phery_emac2_TXD3
      hps_io_hps_io_phery_emac2_RX_CTL     => hps_io_phery_emac2_RX_CTL,         -- in    std_logic                     := '0'             -- .hps_io_phery_emac2_RX_CTL
      hps_io_hps_io_phery_emac2_TX_CTL     => hps_io_phery_emac2_TX_CTL,         -- out   std_logic                                        -- .hps_io_phery_emac2_TX_CTL
      hps_io_hps_io_phery_emac2_RX_CLK     => hps_io_phery_emac2_RX_CLK,         -- in    std_logic                     := '0'             -- .hps_io_phery_emac2_RX_CLK
      hps_io_hps_io_phery_emac2_RXD0       => hps_io_phery_emac2_RXD0,           -- in    std_logic                     := '0'             -- .hps_io_phery_emac2_RXD0
      hps_io_hps_io_phery_emac2_RXD1       => hps_io_phery_emac2_RXD1,           -- in    std_logic                     := '0'             -- .hps_io_phery_emac2_RXD1
      hps_io_hps_io_phery_emac2_RXD2       => hps_io_phery_emac2_RXD2,           -- in    std_logic                     := '0'             -- .hps_io_phery_emac2_RXD2
      hps_io_hps_io_phery_emac2_RXD3       => hps_io_phery_emac2_RXD3,           -- in    std_logic                     := '0'             -- .hps_io_phery_emac2_RXD3
      hps_io_hps_io_phery_emac2_MDIO       => hps_io_phery_emac2_MDIO,           -- inout std_logic                     := '0'             -- .hps_io_phery_emac2_MDIO
      hps_io_hps_io_phery_emac2_MDC        => hps_io_phery_emac2_MDC,            -- out   std_logic                                        -- .hps_io_phery_emac2_MDC
      hps_io_hps_io_phery_usb1_DATA0       => hps_io_phery_usb1_DATA0,           -- inout std_logic                     := '0'             -- .hps_io_phery_usb1_DATA0
      hps_io_hps_io_phery_usb1_DATA1       => hps_io_phery_usb1_DATA1,           -- inout std_logic                     := '0'             -- .hps_io_phery_usb1_DATA1
      hps_io_hps_io_phery_usb1_DATA2       => hps_io_phery_usb1_DATA2,           -- inout std_logic                     := '0'             -- .hps_io_phery_usb1_DATA2
      hps_io_hps_io_phery_usb1_DATA3       => hps_io_phery_usb1_DATA3,           -- inout std_logic                     := '0'             -- .hps_io_phery_usb1_DATA3
      hps_io_hps_io_phery_usb1_DATA4       => hps_io_phery_usb1_DATA4,           -- inout std_logic                     := '0'             -- .hps_io_phery_usb1_DATA4
      hps_io_hps_io_phery_usb1_DATA5       => hps_io_phery_usb1_DATA5,           -- inout std_logic                     := '0'             -- .hps_io_phery_usb1_DATA5
      hps_io_hps_io_phery_usb1_DATA6       => hps_io_phery_usb1_DATA6,           -- inout std_logic                     := '0'             -- .hps_io_phery_usb1_DATA6
      hps_io_hps_io_phery_usb1_DATA7       => hps_io_phery_usb1_DATA7,           -- inout std_logic                     := '0'             -- .hps_io_phery_usb1_DATA7
      hps_io_hps_io_phery_usb1_CLK         => hps_io_phery_usb1_CLK,             -- in    std_logic                     := '0'             -- .hps_io_phery_usb1_CLK
      hps_io_hps_io_phery_usb1_STP         => hps_io_phery_usb1_STP,             -- out   std_logic                                        -- .hps_io_phery_usb1_STP
      hps_io_hps_io_phery_usb1_DIR         => hps_io_phery_usb1_DIR,             -- in    std_logic                     := '0'             -- .hps_io_phery_usb1_DIR
      hps_io_hps_io_phery_usb1_NXT         => hps_io_phery_usb1_NXT,             -- in    std_logic                     := '0'             -- .hps_io_phery_usb1_NXT
      hps_io_hps_io_phery_uart0_RX         => hps_io_phery_uart0_RX,             -- in    std_logic                     := '0'             -- .hps_io_phery_uart0_RX
      hps_io_hps_io_phery_uart0_TX         => hps_io_phery_uart0_TX,             -- out   std_logic                                        -- .hps_io_phery_uart0_TX
      hps_io_hps_io_phery_uart0_CTS_N      => hps_io_phery_uart0_CTS_N,          -- in    std_logic                     := '0'             -- .hps_io_phery_uart0_CTS_N
      hps_io_hps_io_phery_uart0_RTS_N      => hps_io_phery_uart0_RTS_N,          -- out   std_logic
      hps_spim1_mosi_o                     => ad1939_spi_cin,
      hps_spim1_miso_i                     => ad1939_spi_cout,
      hps_spim1_ss_in_n                    => '1',
      hps_spim1_mosi_oe                    => open,
      hps_spim1_sclk_out_clk               => ad1939_spi_cclk,
      hps_spim1_ss0_n_o                    => ad1939_spi_clatch_n,                    --                             .ss0_n_o
      hps_spim1_ss1_n_o                    => preamp_cs,                    --                             .ss1_n_o
      hps_spim1_ss2_n_o                    => open,                    --                             .ss2_n_o
      hps_spim1_ss3_n_o                    => open,                    --                             .ss3_n_o
      hps_i2c0_scl_in_clk                     => i2c_serial_scl_in,
      hps_i2c0_clk_clk                        => serial_scl_oe,
      hps_i2c0_sda_i                          => i2c_0_i2c_serial_sda_in,
      hps_i2c0_sda_oe                         => i2c_serial_sda_oe,
      mic_array_0_led_sd                      => mic_array_led_sd,
      mic_array_0_led_ws                      => mic_array_led_ws,
      mic_array_0_sd                          => mic_array_sd,
      mic_array_0_ws                          => mic_array_ws,
      mic_array_sck_clk                       => mic_array_sck
    );


  heartbeat_led : process(clk_25mhz_fpga)
  variable i : integer := 0;
  begin
    if rising_edge(clk_25mhz_fpga) then
      if i < 25000000/2 then
        led_usr_g_n <= '1';
        led_usr_r_n <= '0';
        i := i+1;
      elsif i < 25000000 then
        led_usr_g_n <= '0';
        led_usr_r_n <= '1';
        i := i+1;
      else
        i := 0;
      end if;
    end if;
  end process;


  -------------------------------------------------------
  -- AD1939
  -------------------------------------------------------
  AD1939_RESET_n <= '1'; -- hold AD1939 out of reset

  -------------------------------------------------------
  -- TPA6130
  -------------------------------------------------------
  TPA6130_power_off <= '1';  --! Enable the headphone amplifier output

  ---------------------------------------------------------------------------------------------
  -- Tri-state buffer the I2C signals
  ---------------------------------------------------------------------------------------------
  ubuf1 : component alt_iobuf
    port map(
      i   => '0',
      oe  => i2c_serial_sda_oe,
      io  => TPA6130_i2c_SDA,
      o   => i2c_0_i2c_serial_sda_in
    );

  ubuf2 : component alt_iobuf
    port map(
      i   => '0',
      oe  => serial_scl_oe,
      io  => TPA6130_i2c_SCL,
      o   => i2c_serial_scl_in
    );


  

end architecture;
