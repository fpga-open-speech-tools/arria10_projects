------------------------------------------------------------------------------
-- Copyright 2018, iWavesystems Technologies Pvt. Ltd.
-- iWave Confidential Proprietary
------------------------------------------------------------------------------
-- Title       : Top Module for Arria 10 SX
-- Design      : GPIO
-- File        : hps_top.v
------------------------------------------------------------------------------
-- Version     : Ver 1.0
-- Generated   : 18/10/2018
-- Author      : Tushar Sharma, Tyler Davis
------------------------------------------------------------------------------
--  Description :
--      * Top wrapper for SoC system
--      * Added GPIO Controller
--      * Added Transceiver Interfaces
--      * Added SATA Interface
--      * Ported to VHDL from Verilog
------------------------------------------------------------------------------

LIBRARY IEEE ;                      --! Use standard library.
USE     IEEE.STD_LOGIC_1164.ALL;    --! Use standard logic elements.
USE     IEEE.NUMERIC_STD.ALL ;      --! Use numeric standard

LIBRARY altera;
USE altera.altera_primitives_components.all;

ENTITY A10SoM_System IS
  PORT(
    ddr_ref_clk_i             : in std_logic;
    fpga_clk_i                : in std_logic;
    hps_memory_mem_act_n      : in std_logic;
    hps_memory_mem_alert_n    : in std_logic;
    hps_memory_mem_bg         : in std_logic;
    hps_memory_mem_ck         : in std_logic;
    hps_memory_mem_ck_n       : in std_logic;
    hps_memory_mem_cke        : in std_logic;
    hps_memory_mem_cs_n       : in std_logic;
    hps_memory_mem_odt        : in std_logic;
    hps_memory_mem_par        : in std_logic;
    hps_memory_mem_reset_n    : in std_logic;
    hps_memory_oct_rzqin      : in std_logic;
    FPGA_memory_mem1_act_n    : in std_logic;
    FPGA_memory_mem1_alert_n  : in std_logic;
    FPGA_memory_mem1_bg       : in std_logic;
    FPGA_memory_mem1_ck       : in std_logic;
    FPGA_memory_mem1_ck_n     : in std_logic;
    FPGA_memory_oct1_rzqin    : in std_logic;
    FPGA_memory_mem1_cke      : in std_logic;
    FPGA_memory_mem1_cs_n     : in std_logic;
    FPGA_memory_mem1_odt      : in std_logic;
    FPGA_memory_mem1_par      : in std_logic;
    FPGA_memory_mem1_reset_n  : in std_logic;
    clk_200                   : in std_logic;
    refclk_1F_p               : in std_logic;
    refclk_1F_n               : in std_logic;
    refclk_1C_p               : in std_logic;
    refclk_1C_n               : in std_logic;
    refclk_1D_p               : in std_logic;
    refclk_1D_n               : in std_logic;
    refclk_1E_p               : in std_logic;
    refclk_1E_n               : in std_logic;
    fmc_1E_rx_ch0             : in std_logic;
    fmc_1E_tx_ch0             : in std_logic;
    fmc_1E_rx_ch1             : in std_logic;
    fmc_1E_tx_ch1             : in std_logic;
    fmc_1E_rx_ch2             : in std_logic;
    fmc_1E_tx_ch2             : in std_logic;
    fmc_1E_rx_ch3             : in std_logic;
    fmc_1E_tx_ch3             : in std_logic;
    fmc_1C_rx_ch0             : in std_logic;
    fmc_1C_tx_ch0             : in std_logic;
    fmc_1C_rx_ch1             : in std_logic;
    fmc_1C_tx_ch1             : in std_logic;
    fmc_1C_rx_ch2             : in std_logic;
    fmc_1C_tx_ch2             : in std_logic;
    fmc_1C_rx_ch3             : in std_logic;
    fmc_1C_tx_ch3             : in std_logic;
    fmc_1D_rx_ch0             : in std_logic;
    fmc_1D_tx_ch0             : in std_logic;
    fmc_1D_rx_ch1             : in std_logic;
    fmc_1D_tx_ch1             : in std_logic;
    fmc_1F_rx_ch0             : in std_logic;
    fmc_1F_rx_ch1             : in std_logic;
    fmc_1F_tx_ch0             : in std_logic;
    fmc_1F_tx_ch1             : in std_logic;
    fmc_1D_rx_ch2             : in std_logic;
    fmc_1D_tx_ch2             : in std_logic;
    fmc_1D_rx_ch3             : in std_logic;
    fmc_1D_tx_ch3             : in std_logic;
    sfp_1F_rx_ch0             : in std_logic;
    sfp_1F_tx_ch0             : in std_logic;
    sata_tx_o                 : in std_logic;
    sata_rx_i                 : in std_logic;
    sys_reset_n_i             : in std_logic;
    sata_ref_clk_i            : in std_logic;
    pcie_tx_o                 : in std_logic;
    pcie_rx_i                 : in std_logic;
    pcie_npor_pin_perst       : in std_logic;
    pcie_refclk_clk           : in std_logic;
    sfp_refclk_1F_p           : in std_logic;
    som_config_pio            : in std_logic_vector(0 to 4);
    hps_memory_mem_a          : in std_logic_vector(0 to 16);
    hps_memory_mem_ba         : in std_logic_vector(0 to 1);
    hps_memory_mem_dbi_n      : in std_logic_vector(0 to 4);
    hps_memory_mem_dq         : in std_logic_vector(0 to 39);
    hps_memory_mem_dqs        : in std_logic_vector(0 to 4);
    hps_memory_mem_dqs_n      : in std_logic_vector(0 to 4);
    FPGA_memory_mem1_a        : in std_logic_vector(0 to 16);
    FPGA_memory_mem1_ba       : in std_logic_vector(0 to 1);
    FPGA_memory_mem1_dbi_n    : in std_logic_vector(0 to 7);
    FPGA_memory_mem1_dq       : in std_logic_vector(0 to 63);
    FPGA_memory_mem1_dqs      : in std_logic_vector(0 to 7);
    FPGA_memory_mem1_dqs_n    : in std_logic_vector(0 to 7);
    fmc1_inout_pio1           : in std_logic_vector(0 to 19);
    fmc1_inout_pio2           : in std_logic_vector(0 to 19);
    fmc1_inout_pio3           : in std_logic_vector(0 to 19);
    fmc1_inout_pio4           : in std_logic_vector(0 to 19);
    fmc1_inout_pio5           : in std_logic_vector(0 to 19);
    fmc2_inout_pio6           : in std_logic_vector(0 to 19);
    fmc2_inout_pio7           : in std_logic_vector(0 to 19);
    pmod1_inout_pio8          : in std_logic_vector(0 to 7);
    pmod2_inout_pio9          : in std_logic_vector(0 to 7);
    pciex4_inout_pio10        : in std_logic_vector(0 to 1);
    usb_inout_pio11           : in std_logic_vector(0 to 1);
    
    -- HPS peripherals
    hps_emac1_TX_CLK          : out   std_logic;
    hps_emac1_TXD0            : out   std_logic;
    hps_emac1_TXD1            : out   std_logic;
    hps_emac1_TXD2            : out   std_logic;
    hps_emac1_TXD3            : out   std_logic;
    hps_emac1_RXD0            : in    std_logic;
    hps_emac1_MDIO            : inout std_logic;
    hps_emac1_MDC             : out   std_logic;
    hps_emac1_RX_CTL          : in    std_logic;
    hps_emac1_TX_CTL          : out   std_logic;
    hps_emac1_RX_CLK          : in    std_logic;
    hps_emac1_RXD1            : in    std_logic;
    hps_emac1_RXD2            : in    std_logic;
    hps_emac1_RXD3            : in    std_logic;
    hps_usb1_D0               : inout std_logic;
    hps_usb1_D1               : inout std_logic;
    hps_usb1_D2               : inout std_logic;
    hps_usb1_D3               : inout std_logic;
    hps_usb1_D4               : inout std_logic;
    hps_usb1_D5               : inout std_logic;
    hps_usb1_D6               : inout std_logic;
    hps_usb1_D7               : inout std_logic;
    hps_usb1_CLK              : in    std_logic;
    hps_usb1_STP              : out   std_logic;
    hps_usb1_DIR              : in    std_logic;
    hps_usb1_NXT              : in    std_logic;
    hps_uart1_RX              : in    std_logic;
    hps_uart1_TX              : out   std_logic;
    hps_i2c0_SDA              : inout std_logic;
    hps_i2c0_SCL              : inout std_logic;
    hps_sdio_CMD              : inout std_logic;
    hps_sdio_CLK              : out   std_logic;
    hps_sdio_D0               : inout std_logic;
    hps_sdio_D1               : inout std_logic;
    hps_sdio_D2               : inout std_logic;
    hps_sdio_D3               : inout std_logic;
    hps_gpio2_GPIO6           : inout std_logic;
    hps_gpio2_GPIO8           : inout std_logic;
    hps_gpio_GPIO0            : inout std_logic;
    hps_gpio_GPIO1            : inout std_logic;
    hps_gpio_GPIO2            : inout std_logic;
    hps_gpio_GPIO3            : inout std_logic;
    hps_gpio_GPIO6            : inout std_logic;
    hps_gpio_GPIO7            : inout std_logic;
    hps_gpio_GPIO10           : inout std_logic;
    hps_gpio_GPIO11           : inout std_logic;
    hps_gpio_GPIO12           : inout std_logic;
    hps_gpio_GPIO13           : inout std_logic;
    hps_gpio_GPIO14           : inout std_logic;
    hps_gpio_GPIO15           : inout std_logic;
    hps_gpio_GPIO16           : inout std_logic;
    hps_gpio_GPIO17           : inout std_logic;
    hps_gpio_GPIO18           : inout std_logic;
    hps_gpio_GPIO19           : inout std_logic;
    hps_gpio_GPIO20           : inout std_logic;
    hps_gpio_GPIO21           : inout std_logic;
    hps_gpio_GPIO22           : inout std_logic;
    hps_gpio_GPIO23           : inout std_logic
);

end entity;
-- *****************************************************************************
-- *                 Internal signals and signalisters Declarations                 *
-- *****************************************************************************
architecture A10Som_System_Arch of A10SoM_System is

  signal hps_fpga_reset_n : std_logic;
  signal reset_n : std_logic;
  signal Gen_pass : std_logic;
  signal Gen_fail : std_logic;
  signal Gen_timeout : std_logic;
  signal Cal_success : std_logic;
  signal Cal_success_1 : std_logic;  
  signal Cal_success_2 : std_logic;
  signal Cal_fail : std_logic;
  signal Cal_fail_1 : std_logic;
  signal Cal_fail_2 : std_logic;
  signal ddr_pio : std_logic_vector(1 downto 0) := (others =>'0');
  signal count : integer := 0;
  signal count1 : std_logic;
  signal reset1_n : std_logic;
  signal RESETn : std_logic;
  signal user_clk : std_logic;
  signal locked : std_logic;
  signal addr_sel : std_logic;  
  signal fmc_1C_rx_parallel_data_ch0 : std_logic_vector(31 downto 0) := (others => '0');
  signal fmc_1C_rx_parallel_data_ch1 : std_logic_vector(31 downto 0) := (others => '0');
  signal fmc_1C_rx_parallel_data_ch2 : std_logic_vector(31 downto 0) := (others => '0');
  signal fmc_1C_rx_parallel_data_ch3 : std_logic_vector(31 downto 0) := (others => '0');
  signal fmc_1C_tx_parallel_data_ch0 : std_logic_vector(31 downto 0) := (others => '0');
  signal fmc_1C_tx_parallel_data_ch1 : std_logic_vector(31 downto 0) := (others => '0');
  signal fmc_1C_tx_parallel_data_ch2 : std_logic_vector(31 downto 0) := (others => '0');
  signal fmc_1C_tx_parallel_data_ch3 : std_logic_vector(31 downto 0) := (others => '0');
  signal fmc_1C_rx_clkout_ch0_clk : std_logic;
  signal fmc_1C_rx_clkout_ch1_clk : std_logic;
  signal fmc_1C_rx_clkout_ch2_clk : std_logic;
  signal fmc_1C_rx_clkout_ch3_clk : std_logic;
  signal fmc_1C_tx_clkout_ch0_clk : std_logic;
  signal fmc_1C_tx_clkout_ch1_clk : std_logic;
  signal fmc_1C_tx_clkout_ch2_clk : std_logic;
  signal fmc_1C_tx_clkout_ch3_clk : std_logic;
  signal fmc_1D_rx_parallel_data_ch0 : std_logic_vector(31 downto 0) := (others => '0');  
  signal fmc_1D_rx_parallel_data_ch1 : std_logic_vector(31 downto 0) := (others => '0');
  signal fmc_1D_rx_parallel_data_ch2 : std_logic_vector(31 downto 0) := (others => '0');
  signal fmc_1D_rx_parallel_data_ch3 : std_logic_vector(31 downto 0) := (others => '0');
  signal fmc_1D_tx_parallel_data_ch0 : std_logic_vector(31 downto 0) := (others => '0');
  signal fmc_1D_tx_parallel_data_ch1 : std_logic_vector(31 downto 0) := (others => '0');
  signal fmc_1D_tx_parallel_data_ch2 : std_logic_vector(31 downto 0) := (others => '0');
  signal fmc_1D_tx_parallel_data_ch3 : std_logic_vector(31 downto 0) := (others => '0');
  signal fmc_1D_rx_clkout_ch0_clk : std_logic;
  signal fmc_1D_rx_clkout_ch1_clk : std_logic;
  signal fmc_1D_rx_clkout_ch2_clk : std_logic;
  signal fmc_1D_rx_clkout_ch3_clk : std_logic;
  signal fmc_1D_tx_clkout_ch0_clk : std_logic;
  signal fmc_1D_tx_clkout_ch1_clk : std_logic;
  signal fmc_1D_tx_clkout_ch2_clk : std_logic;
  signal fmc_1D_tx_clkout_ch3_clk : std_logic;
  signal fmc_1E_rx_parallel_data_ch0 : std_logic_vector(31 downto 0) := (others => '0');
  signal fmc_1E_rx_parallel_data_ch1 : std_logic_vector(31 downto 0) := (others => '0');
  signal fmc_1E_rx_parallel_data_ch2 : std_logic_vector(31 downto 0) := (others => '0');
  signal fmc_1E_rx_parallel_data_ch3 : std_logic_vector(31 downto 0) := (others => '0');
  signal fmc_1E_tx_parallel_data_ch0 : std_logic_vector(31 downto 0) := (others => '0');
  signal fmc_1E_tx_parallel_data_ch1 : std_logic_vector(31 downto 0) := (others => '0');
  signal fmc_1E_tx_parallel_data_ch2 : std_logic_vector(31 downto 0) := (others => '0');
  signal fmc_1E_tx_parallel_data_ch3 : std_logic_vector(31 downto 0) := (others => '0');
  signal fmc_1E_rx_clkout_ch0_clk : std_logic;
  signal fmc_1E_rx_clkout_ch1_clk : std_logic;
  signal fmc_1E_rx_clkout_ch2_clk : std_logic;
  signal fmc_1E_rx_clkout_ch3_clk : std_logic;
  signal fmc_1E_tx_clkout_ch0_clk : std_logic;
  signal fmc_1E_tx_clkout_ch1_clk : std_logic;
  signal fmc_1E_tx_clkout_ch2_clk : std_logic;
  signal fmc_1E_tx_clkout_ch3_clk : std_logic;
  signal fmc_1F_rx_parallel_data_ch0: std_logic_vector(31 downto 0) := (others => '0');
  signal fmc_1F_rx_parallel_data_ch1: std_logic_vector(31 downto 0) := (others => '0');
  signal fmc_1F_tx_parallel_data_ch0: std_logic_vector(31 downto 0) := (others => '0');
  signal fmc_1F_tx_parallel_data_ch1: std_logic_vector(31 downto 0) := (others => '0');
  signal fmc_1F_tx_clkout_ch0_clk : std_logic;
  signal fmc_1F_tx_clkout_ch1_clk : std_logic;
  signal fmc_1F_rx_clkout_ch0_clk : std_logic;
  signal fmc_1F_rx_clkout_ch1_clk : std_logic;
  signal sfp_1F_rx_parallel_data_ch0 : std_logic_vector(31 downto 0) := (others => '0');
  signal sfp_1F_tx_parallel_data_ch0 : std_logic_vector(31 downto 0) := (others => '0');
  signal sfp_1F_tx_clkout_ch0_clk : std_logic;   
  signal sfp_1F_rx_clkout_ch0_clk : std_logic;     
  
  signal corectl : std_logic;
  signal eoc_d : std_logic;  
  signal eoc : std_logic;  
  signal tempout: std_logic_vector(9 downto 0) := (others => '0');
  signal en_cntr: integer := 0;
  signal temp_out_hps: std_logic_vector(9 downto 0) := (others => '0');
  signal ddr_reset_clk : std_logic;
  signal temp_sens_clk : std_logic;
  signal activity_led_o : std_logic;
  
  signal coreclk_fanout_reset_n : std_logic;
  signal pcie_sim_ltssmstate: std_logic_vector(4 downto 0) := (others => '0'); 
  signal pcie_eidleinfersel0: std_logic_vector(2 downto 0) := (others => '0');
  signal pcie_powerdown0 : std_logic_vector(1 downto 0) := (others => '0');     
  signal pcie_rxpolarity0 : std_logic;
  signal pcie_txcompl0 : std_logic;
  signal pcie_npor_npor : std_logic;  

  signal reset_signal : std_logic;
  -- signal for connecting example_SM and VS WYISWYG
  signal corectl_signal_vs : std_logic;
  signal reconfig_signal_vs : std_logic;
  signal confin_signal_vs : std_logic;
  signal eos_signal_vs : std_logic;
  signal eos_signal_vs_d : std_logic;  
  signal eoc_signal_vs : std_logic;
  signal eoc_signal_vs_d : std_logic;
  signal dataout_signal_vs  : std_logic_vector(11 downto 0) := (others => '0');-- synthesis keep 
  signal dataout_signal_vs1 : std_logic_vector(11 downto 0) := (others => '0');
  signal vcc0: std_logic_vector(5 downto 0) := (others => '0');
  signal vcc1: std_logic_vector(5 downto 0) := (others => '0');
  signal vcc2: std_logic_vector(5 downto 0) := (others => '0');
  signal vcc3: std_logic_vector(5 downto 0) := (others => '0');
  signal vcc4: std_logic_vector(5 downto 0) := (others => '0');
  signal vcc5: std_logic_vector(5 downto 0) := (others => '0');
  signal vcc6: std_logic_vector(5 downto 0) := (others => '0');
  signal vcc7: std_logic_vector(5 downto 0) := (others => '0');
  signal chsel_signal_vs : std_logic_vector(3 downto 0) := (others => '0');
  signal conv : std_logic_vector(2 downto 0) := (others => '0');           
  signal reset_signal_vs : std_logic;         
  signal enable_cntr : integer := 0;   
  signal vs_reset : std_logic;
  
  begin 
-- *****************************************************************************
-- *                            Combinational logic                             *
-- *****************************************************************************

  reset_n             <= hps_fpga_reset_n and sys_reset_n_i;
  reset1_n            <= sys_reset_n_i and RESETn;
  ddr_pio             <= Cal_success_2 & Cal_fail_2;
  RESETn              <= count1;
  reset_signal        <= not vs_reset or not locked;
  pcie_npor_npor      <= hps_fpga_reset_n and pcie_npor_pin_perst and reset1_n;
  dataout_signal_vs1  <= dataout_signal_vs; 
  
-- *****************************************************************************
-- *                              Sequential logic                             *
-- *****************************************************************************

  process(ddr_reset_clk, sys_reset_n_i)
  begin 
    if sys_reset_n_i = '0' then 
      count <= 0;
      count1 <= '0';
    elsif rising_edge(ddr_reset_clk) then 
      if count = 16#1000000# then 
        count <= count;
        count1 <= '1';
      else
        count <= count + 1;
      end if;
    end if;
  end process;
 	
  -- Altera temperature sensor temperature capture logic
  
  process(temp_sens_clk, sys_reset_n_i) 
  begin 
    if sys_reset_n_i = '0' then 
      corectl <= '0';
      temp_out_hps <= (others => '0');
      eoc_d <= '0';
      en_cntr <= 0;
    elsif rising_edge(temp_sens_clk) then 
      eoc_d <= eoc;
      
      if en_cntr = 16#2FAF080# then 
        corectl <= '1';
        en_cntr <= 0;
      elsif eoc = '1' and eoc_d = '0' then 
        corectl <= '0';
        en_cntr <= 0;
        temp_out_hps <= tempout;
      else
        en_cntr <= en_cntr + 1;
      end if;
    end if;
  end process;
 
  -- Altera Voltage sensor voltage capture logic
  process(temp_sens_clk, sys_reset_n_i)
  begin
   if sys_reset_n_i = '0' then 
	  vs_reset            <= '0';
	  eos_signal_vs_d     <= '0';
	  eoc_signal_vs_d     <= '0';
    enable_cntr         <= 0;
	  conv                <= (others => '0');
	  vcc0                <= (others => '0');
	  vcc1                <= (others => '0');
	  vcc2                <= (others => '0');
	  vcc3                <= (others => '0');
	  vcc4                <= (others => '0');
	  vcc5                <= (others => '0');
	  vcc6                <= (others => '0');
	  vcc7                <= (others => '0');

   elsif rising_edge(temp_sens_clk) then 
	  eos_signal_vs_d <= eos_signal_vs;
	  eoc_signal_vs_d <= eoc_signal_vs;
	
   -- enable is generated for every 1sec
   if (enable_cntr = 16#1312D00#) then 
	  vs_reset            <= '1';
	  enable_cntr         <= 0;
    
   -- enable signal is made low when rising edge of eoc is detected
   elsif(eoc_signal_vs = '1' and eoc_signal_vs_d = '0') then 
	  enable_cntr         <= 0;
	    case conv is 
        
        when "000" => 
	        vcc0                <= dataout_signal_vs(11 downto 6);
	        conv                <= "001";
	    	 
        when "001" => 
            vcc1                <= dataout_signal_vs(11 downto 6);
            conv                <= "010";
	    		
        when "010" => 
            vcc2                <= dataout_signal_vs(11 downto 6);
            conv                <= "011";
	    		
        when "010" => 
            vcc3                <= dataout_signal_vs(11 downto 6);
            conv                <= "100";
	    		
        when "100" => 
            vcc4                <= dataout_signal_vs(11 downto 6);
            conv                <= "101";
    
        when "101" => 
            vcc5                <= dataout_signal_vs(11 downto 6);
            conv                <= "110";
    
        when "110" => 
            vcc6                <= dataout_signal_vs(11 downto 6);
            conv                <= "111";
	    	
        when "111" => 
          vcc7                <= dataout_signal_vs(11 downto 6);
          conv                <= "000";
	        vs_reset            <= '0';

	    when others =>
        enable_cntr         <= 0;
	      conv                <= (others => '0');
	      vcc0                <= (others => '0');
	      vcc1                <= (others => '0');
	      vcc2                <= (others => '0');
	      vcc3                <= (others => '0');
	      vcc4                <= (others => '0');
	      vcc5                <= (others => '0');
	      vcc6                <= (others => '0');
	      vcc7                <= (others => '0');
      end case;
    else
	   enable_cntr         <= enable_cntr + 1;
    end if;
   end if;
  end process;
  
  process(user_clk, sys_reset_n_i) 
  begin 
    if sys_reset_n_i = '0' then 
      Cal_success_1 <= '0';
      Cal_success_2 <= '0';
      Cal_fail_1 <= '0';
      Cal_fail_2 <= '0';
    elsif rising_edge(user_clk) then 
      Cal_success_1 <= Cal_success;
      Cal_success_2 <= Cal_success_1;
      Cal_fail_1 <= Cal_fail;
      Cal_fail_2 <= Cal_fail_1;
    end if;  
  end process;
 
  
-- *******************************************************************************
-- *                              Internal Modules                               *
-- *******************************************************************************

 -- Clock Genereation using PLL
  pll_entity : component pll port map 
  ( 
    rst       => not sys_reset_n_i,
    refclk    => fpga_clk_i    ,
    locked    => locked        ,
    outclk_0  => user_clk      , -- 100 Mhz O/P
    outclk_1  => ddr_reset_clk , -- 266.66 Mhz O/P
    outclk_2  => temp_sens_clk   -- 20 Mhz O/P 
  );
  
  
 -- Temperature Sensor   
  temp_sens_entity : component temp_sens_u0 port map
  (
    corectl => corectl,          -- corectl.corectl
    eoc     => eoc,              -- eoc.eoc
    reset   => not sys_reset_n_i,   -- reset.reset
    tempout => tempout           -- tempout.tempout
  ); 

  -- Voltage Sensor Instantiation
  Example_SM: component sm_inst port map 
  (
  	clk        => temp_sens_clk,
  	corectl    => corectl_signal_vs,  
  	reset_in   => reset_signal,
  	reset      => reset_signal_vs,
  	coreconfig => reconfig_signal_vs,
  	confin     => confin_signal_vs
  );
  
  twentynm_vsblock : component vs_inst port map
  (
  	clk        => temp_sens_clk,
  	reset      => reset_signal_vs,
  	corectl    => corectl_signal_vs,
  	coreconfig => reconfig_signal_vs,
  	confin     => confin_signal_vs,
  	chsel      => chsel_signal_vs,
  	eos        => eos_signal_vs,
  	eoc        => eoc_signal_vs,
  	dataout    => dataout_signal_vs 
  );
  
  Data_process : component process_inst port map
  (
  	reset_in    => reset_signal,
  	clk         => temp_sens_clk,
  	eos_mon     => eos_signal_vs,     --to monitor eos from VSblock
  	eoc_mon     => eoc_signal_vs,     --to monitor eoc from VSblock 
  	dataout_mon => dataout_signal_vs1 --to monitor dataout from VSblock 
  );
  
 -- QSYS Design 
  i0: component soc_system
    port map(
    -- Clock
    clk_100_clk                                    => user_clk                ,   
    -- HPS DDR Signals                             
    ddr_ref_clk_clk                                => ddr_ref_clk_i           ,      
    emif_0_global_reset_n_reset_n                  => RESETn                  ,      
    emif_0_mem_mem_ck                              => FPGA_memory_mem1_ck     ,      
    emif_0_mem_mem_ck_n                            => FPGA_memory_mem1_ck_n   ,      
    emif_0_mem_mem_a                               => FPGA_memory_mem1_a      ,      
    emif_0_mem_mem_act_n                           => FPGA_memory_mem1_act_n  ,      
    emif_0_mem_mem_ba                              => FPGA_memory_mem1_ba     ,      
    emif_0_mem_mem_bg                              => FPGA_memory_mem1_bg     ,      
    emif_0_mem_mem_cke                             => FPGA_memory_mem1_cke    ,      
    emif_0_mem_mem_cs_n                            => FPGA_memory_mem1_cs_n   ,      
    emif_0_mem_mem_odt                             => FPGA_memory_mem1_odt    ,      
    emif_0_mem_mem_reset_n                         => FPGA_memory_mem1_reset_n,      
    emif_0_mem_mem_par                             => FPGA_memory_mem1_par    ,      
    emif_0_mem_mem_alert_n                         => FPGA_memory_mem1_alert_n,      
    emif_0_mem_mem_dqs                             => FPGA_memory_mem1_dqs    ,      
    emif_0_mem_mem_dqs_n                           => FPGA_memory_mem1_dqs_n  ,      
    emif_0_mem_mem_dq                              => FPGA_memory_mem1_dq     ,      
    emif_0_mem_mem_dbi_n                           => FPGA_memory_mem1_dbi_n  ,      
    emif_0_oct_oct_rzqin                           => FPGA_memory_oct1_rzqin  ,      
    emif_0_pll_ref_clk_clk                         => clk_200                 ,      
    emif_0_status_local_cal_success                => Cal_success             ,      
    emif_0_status_local_cal_fail                   => Cal_fail                ,      
    emif_a10_hps_0_global_reset_reset_sink_reset_n => reset_n                 ,      
    hps_0_h2f_reset_reset_n                        => hps_fpga_reset_n        ,
    
    --HPS PIN Muxing Signals	
    hps_io_hps_io_phery_emac1_TX_CLK               => hps_emac1_TX_CLK        ,      
    hps_io_hps_io_phery_emac1_TXD0                 => hps_emac1_TXD0          ,     
    hps_io_hps_io_phery_emac1_TXD1                 => hps_emac1_TXD1          ,      
    hps_io_hps_io_phery_emac1_TXD2                 => hps_emac1_TXD2          ,      
    hps_io_hps_io_phery_emac1_TXD3                 => hps_emac1_TXD3          ,      
    hps_io_hps_io_phery_emac1_MDIO                 => hps_emac1_MDIO          ,      
    hps_io_hps_io_phery_emac1_MDC                  => hps_emac1_MDC           ,      
    hps_io_hps_io_phery_emac1_RX_CTL               => hps_emac1_RX_CTL        ,      
    hps_io_hps_io_phery_emac1_TX_CTL               => hps_emac1_TX_CTL        ,      
    hps_io_hps_io_phery_emac1_RX_CLK               => hps_emac1_RX_CLK        ,      
    hps_io_hps_io_phery_emac1_RXD0                 => hps_emac1_RXD0          ,      
    hps_io_hps_io_phery_emac1_RXD1                 => hps_emac1_RXD1          ,      
    hps_io_hps_io_phery_emac1_RXD2                 => hps_emac1_RXD2          ,      
    hps_io_hps_io_phery_emac1_RXD3                 => hps_emac1_RXD3          ,      
    hps_io_hps_io_phery_usb1_DATA0                 => hps_usb1_D0             ,      
    hps_io_hps_io_phery_usb1_DATA1                 => hps_usb1_D1             ,      
    hps_io_hps_io_phery_usb1_DATA2                 => hps_usb1_D2             ,      
    hps_io_hps_io_phery_usb1_DATA3                 => hps_usb1_D3             ,      
    hps_io_hps_io_phery_usb1_DATA4                 => hps_usb1_D4             ,      
    hps_io_hps_io_phery_usb1_DATA5                 => hps_usb1_D5             ,      
    hps_io_hps_io_phery_usb1_DATA6                 => hps_usb1_D6             ,      
    hps_io_hps_io_phery_usb1_DATA7                 => hps_usb1_D7             ,      
    hps_io_hps_io_phery_usb1_CLK                   => hps_usb1_CLK            ,      
    hps_io_hps_io_phery_usb1_STP                   => hps_usb1_STP            ,      
    hps_io_hps_io_phery_usb1_DIR                   => hps_usb1_DIR            ,      
    hps_io_hps_io_phery_usb1_NXT                   => hps_usb1_NXT            ,          
    hps_io_hps_io_phery_uart1_RX                   => hps_uart1_RX            ,      
    hps_io_hps_io_phery_uart1_TX                   => hps_uart1_TX            ,        
    hps_io_hps_io_phery_sdmmc_CMD                  => hps_sdio_CMD            ,      
    hps_io_hps_io_phery_sdmmc_D0                   => hps_sdio_D0             ,      
    hps_io_hps_io_phery_sdmmc_D1                   => hps_sdio_D1             ,      
    hps_io_hps_io_phery_sdmmc_D2                   => hps_sdio_D2             ,      
    hps_io_hps_io_phery_sdmmc_D3                   => hps_sdio_D3             ,      
    hps_io_hps_io_phery_sdmmc_CCLK                 => hps_sdio_CLK            ,      
    hps_io_hps_io_phery_i2c0_SDA                   => hps_i2c0_SDA            ,      
    hps_io_hps_io_phery_i2c0_SCL                   => hps_i2c0_SCL            ,
    hps_io_hps_io_gpio_gpio2_io6                   => hps_gpio2_GPIO6         ,
    hps_io_hps_io_gpio_gpio2_io8                   => hps_gpio2_GPIO8         ,	 
    hps_io_hps_io_gpio_gpio0_io0                   => hps_gpio_GPIO0          ,      
    hps_io_hps_io_gpio_gpio0_io1                   => hps_gpio_GPIO1          ,      
    hps_io_hps_io_gpio_gpio0_io2                   => hps_gpio_GPIO2          ,      
    hps_io_hps_io_gpio_gpio0_io3                   => hps_gpio_GPIO3          ,      
    hps_io_hps_io_gpio_gpio0_io6                   => hps_gpio_GPIO6          ,                                   
    hps_io_hps_io_gpio_gpio0_io7                   => hps_gpio_GPIO7          ,                                   
    hps_io_hps_io_gpio_gpio0_io10                  => hps_gpio_GPIO10         ,      
    hps_io_hps_io_gpio_gpio0_io11                  => hps_gpio_GPIO11         ,      
    hps_io_hps_io_gpio_gpio1_io12                  => hps_gpio_GPIO12         ,      
    hps_io_hps_io_gpio_gpio1_io13                  => hps_gpio_GPIO13         ,      
    hps_io_hps_io_gpio_gpio1_io14                  => hps_gpio_GPIO14         ,      
    hps_io_hps_io_gpio_gpio1_io15                  => hps_gpio_GPIO15         ,      
    hps_io_hps_io_gpio_gpio1_io16                  => hps_gpio_GPIO16         ,      
    hps_io_hps_io_gpio_gpio1_io17                  => hps_gpio_GPIO17         ,      
    hps_io_hps_io_gpio_gpio1_io18                  => hps_gpio_GPIO18         ,      
    hps_io_hps_io_gpio_gpio1_io19                  => hps_gpio_GPIO19         ,      
    hps_io_hps_io_gpio_gpio1_io20                  => hps_gpio_GPIO20         ,                                   
    hps_io_hps_io_gpio_gpio1_io21                  => hps_gpio_GPIO21         ,                                   
    hps_io_hps_io_gpio_gpio1_io22                  => hps_gpio_GPIO22         ,                                   
    hps_io_hps_io_gpio_gpio1_io23                  => hps_gpio_GPIO23         ,

    -- PIO Signals	                               
    fmc1_inout_pio1_export                         => fmc1_inout_pio1         ,                                      
    fmc1_inout_pio2_export                         => fmc1_inout_pio2         ,                                      
    fmc1_inout_pio3_export                         => fmc1_inout_pio3         ,                                      
    fmc1_inout_pio4_export                         => fmc1_inout_pio4         ,                                      
    fmc1_inout_pio5_export                         => fmc1_inout_pio5         ,                                      
    fmc2_inout_pio6_export                         => fmc2_inout_pio6         ,                                      
    fmc2_inout_pio7_export                         => fmc2_inout_pio7         ,                                      
    pciex4_inout_pio10_export                      => pciex4_inout_pio10      ,                                      
    pmod1_inout_pio8_export                        => pmod1_inout_pio8        ,                                   
    pmod2_inout_pio9_export                        => pmod2_inout_pio9        ,                                      
    temp_sens_pio_export                           => temp_out_hps            ,   
    usb_inout_pio11_export                         => usb_inout_pio11         ,
    ddr_pio_export                                 => ddr_pio                 ,
    som_config_pio_export                          => som_config_pio          ,
    vcc0_export                                    => vcc0                    ,
    vcc1_export                                    => vcc1                    ,
    vcc2_export                                    => vcc2                    ,
    vcc3_export                                    => vcc3                    ,
    vcc4_export                                    => vcc4                    ,
    vcc5_export                                    => vcc5                    ,
    vcc6_export                                    => vcc6                    ,
    vcc7_export                                    => vcc7                    ,	 

    -- FPGA DDR Signals  	                         => 
    mem_mem_a                                      => hps_memory_mem_a        ,      
    mem_mem_act_n                                  => hps_memory_mem_act_n    ,      
    mem_mem_par                                    => hps_memory_mem_par      ,      
    mem_mem_alert_n                                => hps_memory_mem_alert_n  ,      
    mem_mem_ba                                     => hps_memory_mem_ba       ,      
    mem_mem_bg                                     => hps_memory_mem_bg       ,      
    mem_mem_ck                                     => hps_memory_mem_ck       ,      
    mem_mem_ck_n                                   => hps_memory_mem_ck_n     ,      
    mem_mem_cke                                    => hps_memory_mem_cke      ,      
    mem_mem_cs_n                                   => hps_memory_mem_cs_n     ,      
    mem_mem_reset_n                                => hps_memory_mem_reset_n  ,      
    mem_mem_dq                                     => hps_memory_mem_dq       ,      
    mem_mem_dqs                                    => hps_memory_mem_dqs      ,      
    mem_mem_dqs_n                                  => hps_memory_mem_dqs_n    ,      
    mem_mem_dbi_n                                  => hps_memory_mem_dbi_n    ,      
    mem_mem_odt                                    => hps_memory_mem_odt      ,      
    oct_oct_rzqin                                  => hps_memory_oct_rzqin    ,      
    reset_reset_n                                  => reset1_n                ,
	
  -- PCIe Signals
    pcie_0_coreclk_fanout_clk_clk                             => open,               
    pcie_0_coreclk_fanout_clk_reset_reset_n                   => coreclk_fanout_reset_n,                              
    pcie_0_pcie_a10_hip_avmm_hip_ctrl_test_in                 => (others => '0'),            
    pcie_0_pcie_a10_hip_avmm_hip_ctrl_simu_mode_pipe          => '0',     
    pcie_0_pcie_a10_hip_avmm_hip_pipe_sim_pipe_pclk_in        => '0',   
    pcie_0_pcie_a10_hip_avmm_hip_pipe_sim_pipe_rate           => open,      
    pcie_0_pcie_a10_hip_avmm_hip_pipe_sim_ltssmstate          => pcie_sim_ltssmstate,     
    pcie_0_pcie_a10_hip_avmm_hip_pipe_eidleinfersel0          => pcie_eidleinfersel0,     
    pcie_0_pcie_a10_hip_avmm_hip_pipe_powerdown0              => pcie_powerdown0,         
    pcie_0_pcie_a10_hip_avmm_hip_pipe_rxpolarity0             => pcie_rxpolarity0,        
    pcie_0_pcie_a10_hip_avmm_hip_pipe_txcompl0                => pcie_txcompl0,           
    pcie_0_pcie_a10_hip_avmm_hip_pipe_txdata0                 => open,            
    pcie_0_pcie_a10_hip_avmm_hip_pipe_txdatak0                => open,           
    pcie_0_pcie_a10_hip_avmm_hip_pipe_txdetectrx0             => open,        
    pcie_0_pcie_a10_hip_avmm_hip_pipe_txelecidle0             => open,        
    pcie_0_pcie_a10_hip_avmm_hip_pipe_txdeemph0               => open,          
    pcie_0_pcie_a10_hip_avmm_hip_pipe_txmargin0               => open,          
    pcie_0_pcie_a10_hip_avmm_hip_pipe_txswing0                => open,           
    pcie_0_pcie_a10_hip_avmm_hip_pipe_phystatus0              => h0,         
    pcie_0_pcie_a10_hip_avmm_hip_pipe_rxdata0                 => (others => '0'),            
    pcie_0_pcie_a10_hip_avmm_hip_pipe_rxdatak0                => (others => '0'),           
    pcie_0_pcie_a10_hip_avmm_hip_pipe_rxelecidle0             => '0',        
    pcie_0_pcie_a10_hip_avmm_hip_pipe_rxstatus0               => (others => '0'),          
    pcie_0_pcie_a10_hip_avmm_hip_pipe_rxvalid0                => '0',           
    pcie_0_pcie_a10_hip_avmm_hip_pipe_rxdataskip0             => '0',        
    pcie_0_pcie_a10_hip_avmm_hip_pipe_rxblkst0                => '0',           
    pcie_0_pcie_a10_hip_avmm_hip_pipe_rxsynchd0               => (others => '0'),          
    pcie_0_pcie_a10_hip_avmm_hip_pipe_currentcoeff0           => open,      
    pcie_0_pcie_a10_hip_avmm_hip_pipe_currentrxpreset0        => open,   
    pcie_0_pcie_a10_hip_avmm_hip_pipe_txsynchd0               => open,          
    pcie_0_pcie_a10_hip_avmm_hip_pipe_txblkst0                => open,           
    pcie_0_pcie_a10_hip_avmm_hip_pipe_txdataskip0             => open,        
    pcie_0_pcie_a10_hip_avmm_hip_pipe_rate0                   => open,              
    pcie_0_pcie_a10_hip_avmm_hip_serial_rx_in0                => pcie_rx_i,           
    pcie_0_pcie_a10_hip_avmm_hip_serial_tx_out0               => pcie_tx_o,          
    pcie_0_pcie_a10_hip_avmm_hip_status_derr_cor_ext_rcv      => open, 
    pcie_0_pcie_a10_hip_avmm_hip_status_derr_cor_ext_rpl      => open, 
    pcie_0_pcie_a10_hip_avmm_hip_status_derr_rpl              => open,         
    pcie_0_pcie_a10_hip_avmm_hip_status_dlup                  => open,             
    pcie_0_pcie_a10_hip_avmm_hip_status_dlup_exit             => open,        
    pcie_0_pcie_a10_hip_avmm_hip_status_ev128ns               => open,          
    pcie_0_pcie_a10_hip_avmm_hip_status_ev1us                 => open,            
    pcie_0_pcie_a10_hip_avmm_hip_status_hotrst_exit           => open,      
    pcie_0_pcie_a10_hip_avmm_hip_status_int_status            => open,       
    pcie_0_pcie_a10_hip_avmm_hip_status_l2_exit               => open,          
    pcie_0_pcie_a10_hip_avmm_hip_status_lane_act              => open,         
    pcie_0_pcie_a10_hip_avmm_hip_status_ltssmstate            => open,       
    pcie_0_pcie_a10_hip_avmm_hip_status_rx_par_err            => open,       
    pcie_0_pcie_a10_hip_avmm_hip_status_tx_par_err            => open,       
    pcie_0_pcie_a10_hip_avmm_hip_status_cfg_par_err           => open,      
    pcie_0_pcie_a10_hip_avmm_hip_status_ko_cpl_spc_header     => open,
    pcie_0_pcie_a10_hip_avmm_hip_status_ko_cpl_spc_data       => open,  
    pcie_0_pcie_a10_hip_avmm_npor_npor                        => pcie_npor_npor,                   
    pcie_0_pcie_a10_hip_avmm_npor_pin_perst                   => pcie_npor_pin_perst,              
    pcie_0_pcie_a10_hip_avmm_refclk_clk                       => pcie_refclk_clk,                  
    
    -- Transceiver Signals	
    xcvr_1c_pattern_in_ch0_export                   => fmc_1C_rx_parallel_data_ch0,      
    xcvr_1c_pattern_in_ch1_export                   => fmc_1C_rx_parallel_data_ch1,      
    xcvr_1c_pattern_in_ch2_export                   => fmc_1C_rx_parallel_data_ch2,      
    xcvr_1c_pattern_in_ch3_export                   => fmc_1C_rx_parallel_data_ch3,      
    xcvr_1c_pattern_in_clk_ch0_export               => fmc_1C_rx_clkout_ch0_clk,   
    xcvr_1c_pattern_in_clk_ch1_export               => fmc_1C_rx_clkout_ch1_clk,   
    xcvr_1c_pattern_in_clk_ch2_export               => fmc_1C_rx_clkout_ch2_clk,   
    xcvr_1c_pattern_in_clk_ch3_export               => fmc_1C_rx_clkout_ch3_clk,   
    xcvr_1c_pattern_out_ch0_export                  => fmc_1C_tx_parallel_data_ch0,   
    xcvr_1c_pattern_out_ch1_export                  => fmc_1C_tx_parallel_data_ch1,   
    xcvr_1c_pattern_out_ch2_export                  => fmc_1C_tx_parallel_data_ch2,   
    xcvr_1c_pattern_out_ch3_export                  => fmc_1C_tx_parallel_data_ch3,   
    xcvr_1c_pattern_out_clk_ch0_export              => fmc_1C_tx_clkout_ch0_clk,   
    xcvr_1c_pattern_out_clk_ch1_export              => fmc_1C_tx_clkout_ch1_clk,       
    xcvr_1c_pattern_out_clk_ch2_export              => fmc_1C_tx_clkout_ch2_clk,   
    xcvr_1c_pattern_out_clk_ch3_export              => fmc_1C_tx_clkout_ch3_clk,     
    xcvr_1c_pll_select_pll_select                   => '0',     
    xcvr_1c_rx_clkout_ch0_clk                       => fmc_1C_rx_clkout_ch0_clk,     
    xcvr_1c_rx_clkout_ch1_clk                       => fmc_1C_rx_clkout_ch1_clk,     
    xcvr_1c_rx_clkout_ch2_clk                       => fmc_1C_rx_clkout_ch2_clk,     
    xcvr_1c_rx_clkout_ch3_clk                       => fmc_1C_rx_clkout_ch3_clk,       
    xcvr_1c_rx_parallel_data_ch0_rx_parallel_data   => fmc_1C_rx_parallel_data_ch0,     
    xcvr_1c_rx_parallel_data_ch1_rx_parallel_data   => fmc_1C_rx_parallel_data_ch1,     
    xcvr_1c_rx_parallel_data_ch2_rx_parallel_data   => fmc_1C_rx_parallel_data_ch2,     
    xcvr_1c_rx_parallel_data_ch3_rx_parallel_data   => fmc_1C_rx_parallel_data_ch3,       
    xcvr_1c_rx_refclk_clk                           => refclk_1C_p,     
    xcvr_1c_rx_serial_data_ch0_rx_serial_data       => fmc_1C_rx_ch0,     
    xcvr_1c_rx_serial_data_ch1_rx_serial_data       => fmc_1C_rx_ch1,     
    xcvr_1c_rx_serial_data_ch2_rx_serial_data       => fmc_1C_rx_ch2,
    xcvr_1c_rx_serial_data_ch3_rx_serial_data       => fmc_1C_rx_ch3,       
    xcvr_1c_tx_clkout_ch0_clk                       => fmc_1C_tx_clkout_ch0_clk,     
    xcvr_1c_tx_clkout_ch1_clk                       => fmc_1C_tx_clkout_ch1_clk,     
    xcvr_1c_tx_clkout_ch2_clk                       => fmc_1C_tx_clkout_ch2_clk,     
    xcvr_1c_tx_clkout_ch3_clk                       => fmc_1C_tx_clkout_ch3_clk,      
    xcvr_1c_tx_data_valid_ch0_tx_enh_data_valid     => '1',     
    xcvr_1c_tx_data_valid_ch1_tx_enh_data_valid     => '1',     
    xcvr_1c_tx_data_valid_ch2_tx_enh_data_valid     => '1',     
    xcvr_1c_tx_data_valid_ch3_tx_enh_data_valid     => '1',     
    xcvr_1c_tx_parallel_data_ch0_tx_parallel_data   => fmc_1C_tx_parallel_data_ch0,     
    xcvr_1c_tx_parallel_data_ch1_tx_parallel_data   => fmc_1C_tx_parallel_data_ch1,     
    xcvr_1c_tx_parallel_data_ch2_tx_parallel_data   => fmc_1C_tx_parallel_data_ch2,     
    xcvr_1c_tx_parallel_data_ch3_tx_parallel_data   => fmc_1C_tx_parallel_data_ch3,        
    xcvr_1c_tx_refclk_clk                           => refclk_1C_p,     
    xcvr_1c_tx_serial_data_ch0_tx_serial_data       => fmc_1C_tx_ch0,     
    xcvr_1c_tx_serial_data_ch1_tx_serial_data       => fmc_1C_tx_ch1,     
    xcvr_1c_tx_serial_data_ch2_tx_serial_data       => fmc_1C_tx_ch2,     
    xcvr_1c_tx_serial_data_ch3_tx_serial_data       => fmc_1C_tx_ch3,      
    xcvr_1d_pattern_in_ch0_export                   => fmc_1D_rx_parallel_data_ch0,     
    xcvr_1d_pattern_in_ch1_export                   => fmc_1D_rx_parallel_data_ch1,   
    xcvr_1d_pattern_in_ch2_export                   => fmc_1D_rx_parallel_data_ch2,                                  
    xcvr_1d_pattern_in_ch3_export	                  => fmc_1D_rx_parallel_data_ch3,                                  
    xcvr_1d_pattern_in_clk_ch0_export               => fmc_1D_rx_clkout_ch0_clk,     
    xcvr_1d_pattern_in_clk_ch1_export               => fmc_1D_rx_clkout_ch1_clk,   
    xcvr_1d_pattern_in_clk_ch2_export               => fmc_1D_rx_clkout_ch2_clk,                                  
    xcvr_1d_pattern_in_clk_ch3_export	              => fmc_1D_rx_clkout_ch3_clk,                                  
    xcvr_1d_pattern_out_ch0_export                  => fmc_1D_tx_parallel_data_ch0,     
    xcvr_1d_pattern_out_ch1_export                  => fmc_1D_tx_parallel_data_ch1,   
    xcvr_1d_pattern_out_ch2_export                  => fmc_1D_tx_parallel_data_ch2,                                  
    xcvr_1d_pattern_out_ch3_export	                => fmc_1D_tx_parallel_data_ch3,                                  
    xcvr_1d_pattern_out_clk_ch0_export              => fmc_1D_tx_clkout_ch0_clk,     
    xcvr_1d_pattern_out_clk_ch1_export              => fmc_1D_tx_clkout_ch1_clk,   
    xcvr_1d_pattern_out_clk_ch2_export              => fmc_1D_tx_clkout_ch2_clk,
    xcvr_1d_pattern_out_clk_ch3_export              => fmc_1D_tx_clkout_ch3_clk,	
    xcvr_1d_pll_select_pll_select                   => '0',     
    xcvr_1d_rx_clkout_ch0_clk                       => fmc_1D_rx_clkout_ch0_clk,     
    xcvr_1d_rx_clkout_ch1_clk                       => fmc_1D_rx_clkout_ch1_clk,   
    xcvr_1d_rx_clkout_ch2_clk                       => fmc_1D_rx_clkout_ch2_clk,                                  
    xcvr_1d_rx_clkout_ch3_clk	                      => fmc_1D_rx_clkout_ch3_clk,                                  
    xcvr_1d_rx_parallel_data_ch0_rx_parallel_data   => fmc_1D_rx_parallel_data_ch0,     
    xcvr_1d_rx_parallel_data_ch1_rx_parallel_data   => fmc_1D_rx_parallel_data_ch1,   
    xcvr_1d_rx_parallel_data_ch2_rx_parallel_data   => fmc_1D_rx_parallel_data_ch2,                                  
    xcvr_1d_rx_parallel_data_ch3_rx_parallel_data	  => fmc_1D_rx_parallel_data_ch3,                                  
    xcvr_1d_rx_refclk_clk                           => refclk_1D_p,     
    xcvr_1d_rx_serial_data_ch0_rx_serial_data       => fmc_1D_rx_ch0,     
    xcvr_1d_rx_serial_data_ch1_rx_serial_data       => fmc_1D_rx_ch1,   
    xcvr_1d_rx_serial_data_ch2_rx_serial_data       => fmc_1D_rx_ch2,                                  
    xcvr_1d_rx_serial_data_ch3_rx_serial_data	      => fmc_1D_rx_ch3,                                  
    xcvr_1d_tx_clkout_ch0_clk                       => fmc_1D_tx_clkout_ch0_clk,     
    xcvr_1d_tx_clkout_ch1_clk                       => fmc_1D_tx_clkout_ch1_clk,   
    xcvr_1d_tx_clkout_ch2_clk                       => fmc_1D_tx_clkout_ch2_clk,                                  
    xcvr_1d_tx_clkout_ch3_clk	                      => fmc_1D_tx_clkout_ch3_clk,                                  
    xcvr_1d_tx_data_valid_ch0_tx_enh_data_valid     => '1',     
    xcvr_1d_tx_data_valid_ch1_tx_enh_data_valid     => '1',   
    xcvr_1d_tx_data_valid_ch2_tx_enh_data_valid     => '1',                                  
    xcvr_1d_tx_data_valid_ch3_tx_enh_data_valid	    => '1',                                  
    xcvr_1d_tx_parallel_data_ch0_tx_parallel_data   => fmc_1D_tx_parallel_data_ch0,     
    xcvr_1d_tx_parallel_data_ch1_tx_parallel_data   => fmc_1D_tx_parallel_data_ch1,   
    xcvr_1d_tx_parallel_data_ch2_tx_parallel_data   => fmc_1D_tx_parallel_data_ch2,
    xcvr_1d_tx_parallel_data_ch3_tx_parallel_data   => fmc_1D_tx_parallel_data_ch3,	
    xcvr_1d_tx_refclk_clk                           => refclk_1D_p,     
    xcvr_1d_tx_serial_data_ch0_tx_serial_data       => fmc_1D_tx_ch0,     
    xcvr_1d_tx_serial_data_ch1_tx_serial_data       => fmc_1D_tx_ch1,   
    xcvr_1d_tx_serial_data_ch2_tx_serial_data       => fmc_1D_tx_ch2,
    xcvr_1d_tx_serial_data_ch3_tx_serial_data       => fmc_1D_tx_ch3,	 
    xcvr_1e_pattern_in_ch0_export                   => fmc_1E_rx_parallel_data_ch0,     
    xcvr_1e_pattern_in_ch1_export                   => fmc_1E_rx_parallel_data_ch1,     
    xcvr_1e_pattern_in_ch2_export                   => fmc_1E_rx_parallel_data_ch2,     
    xcvr_1e_pattern_in_ch3_export                   => fmc_1E_rx_parallel_data_ch3,     
    xcvr_1e_pattern_in_clk_ch0_export               => fmc_1E_rx_clkout_ch0_clk,     
    xcvr_1e_pattern_in_clk_ch1_export               => fmc_1E_rx_clkout_ch1_clk,     
    xcvr_1e_pattern_in_clk_ch2_export               => fmc_1E_rx_clkout_ch2_clk,     
    xcvr_1e_pattern_in_clk_ch3_export               => fmc_1E_rx_clkout_ch3_clk,     
    xcvr_1e_pattern_out_ch0_export                  => fmc_1E_tx_parallel_data_ch0,     
    xcvr_1e_pattern_out_ch1_export                  => fmc_1E_tx_parallel_data_ch1,     
    xcvr_1e_pattern_out_ch2_export                  => fmc_1E_tx_parallel_data_ch2,     
    xcvr_1e_pattern_out_ch3_export                  => fmc_1E_tx_parallel_data_ch3,     
    xcvr_1e_pattern_out_clk_ch0_export              => fmc_1E_tx_clkout_ch0_clk,     
    xcvr_1e_pattern_out_clk_ch1_export              => fmc_1E_tx_clkout_ch1_clk,     
    xcvr_1e_pattern_out_clk_ch2_export              => fmc_1E_tx_clkout_ch2_clk,     
    xcvr_1e_pattern_out_clk_ch3_export              => fmc_1E_tx_clkout_ch3_clk,     
    xcvr_1e_pll_select_pll_select                   => '0',     
    xcvr_1e_rx_clkout_ch0_clk                       => fmc_1E_rx_clkout_ch0_clk,     
    xcvr_1e_rx_clkout_ch1_clk                       => fmc_1E_rx_clkout_ch1_clk,     
    xcvr_1e_rx_clkout_ch2_clk                       => fmc_1E_rx_clkout_ch2_clk,     
    xcvr_1e_rx_clkout_ch3_clk                       => fmc_1E_rx_clkout_ch3_clk,     
    xcvr_1e_rx_parallel_data_ch0_rx_parallel_data   => fmc_1E_rx_parallel_data_ch0,     
    xcvr_1e_rx_parallel_data_ch1_rx_parallel_data   => fmc_1E_rx_parallel_data_ch1,     
    xcvr_1e_rx_parallel_data_ch2_rx_parallel_data   => fmc_1E_rx_parallel_data_ch2,     
    xcvr_1e_rx_parallel_data_ch3_rx_parallel_data   => fmc_1E_rx_parallel_data_ch3,     
    xcvr_1e_rx_refclk_clk                           => refclk_1E_p,     
    xcvr_1e_rx_serial_data_ch0_rx_serial_data       => fmc_1E_rx_ch0,     
    xcvr_1e_rx_serial_data_ch1_rx_serial_data       => fmc_1E_rx_ch1,     
    xcvr_1e_rx_serial_data_ch2_rx_serial_data       => fmc_1E_rx_ch2,     
    xcvr_1e_rx_serial_data_ch3_rx_serial_data       => fmc_1E_rx_ch3,     
    xcvr_1e_tx_clkout_ch0_clk                       => fmc_1E_tx_clkout_ch0_clk,     
    xcvr_1e_tx_clkout_ch1_clk                       => fmc_1E_tx_clkout_ch1_clk,     
    xcvr_1e_tx_clkout_ch2_clk                       => fmc_1E_tx_clkout_ch2_clk,     
    xcvr_1e_tx_clkout_ch3_clk                       => fmc_1E_tx_clkout_ch3_clk,     
    xcvr_1e_tx_data_valid_ch0_tx_enh_data_valid     => '1',     
    xcvr_1e_tx_data_valid_ch1_tx_enh_data_valid     => '1',     
    xcvr_1e_tx_data_valid_ch2_tx_enh_data_valid     => '1',     
    xcvr_1e_tx_data_valid_ch3_tx_enh_data_valid     => '1',     
    xcvr_1e_tx_parallel_data_ch0_tx_parallel_data   => fmc_1E_tx_parallel_data_ch0,     
    xcvr_1e_tx_parallel_data_ch1_tx_parallel_data   => fmc_1E_tx_parallel_data_ch1,     
    xcvr_1e_tx_parallel_data_ch2_tx_parallel_data   => fmc_1E_tx_parallel_data_ch2,     
    xcvr_1e_tx_parallel_data_ch3_tx_parallel_data   => fmc_1E_tx_parallel_data_ch3,     
    xcvr_1e_tx_refclk_clk                           => refclk_1E_p,     
    xcvr_1e_tx_serial_data_ch0_tx_serial_data       => fmc_1E_tx_ch0,     
    xcvr_1e_tx_serial_data_ch1_tx_serial_data       => fmc_1E_tx_ch1,     
    xcvr_1e_tx_serial_data_ch2_tx_serial_data       => fmc_1E_tx_ch2,     
    xcvr_1e_tx_serial_data_ch3_tx_serial_data       => fmc_1E_tx_ch3,     
    xcvr_1f_pattern_in_ch0_export                   => fmc_1F_rx_parallel_data_ch0,     
    xcvr_1f_pattern_in_ch1_export                   => fmc_1F_rx_parallel_data_ch1,             
    xcvr_1f_pattern_in_clk_ch0_export               => fmc_1F_rx_clkout_ch0_clk,     
    xcvr_1f_pattern_in_clk_ch1_export               => fmc_1F_rx_clkout_ch1_clk,             
    xcvr_1f_pattern_out_ch0_export                  => fmc_1F_tx_parallel_data_ch0,     
    xcvr_1f_pattern_out_ch1_export                  => fmc_1F_tx_parallel_data_ch1,          
    xcvr_1f_pattern_out_clk_ch0_export              => fmc_1F_tx_clkout_ch0_clk,     
    xcvr_1f_pattern_out_clk_ch1_export              => fmc_1F_tx_clkout_ch1_clk,        
    xcvr_1f_pll_select_pll_select                   => '0',     
    xcvr_1f_rx_clkout_ch0_clk                       => fmc_1F_rx_clkout_ch0_clk,     
    xcvr_1f_rx_clkout_ch1_clk                       => fmc_1F_rx_clkout_ch1_clk,      
    xcvr_1f_rx_parallel_data_ch0_rx_parallel_data   => fmc_1F_rx_parallel_data_ch0,     
    xcvr_1f_rx_parallel_data_ch1_rx_parallel_data   => fmc_1F_rx_parallel_data_ch1,   
    xcvr_1f_rx_refclk_clk                           => refclk_1F_p,  
    xcvr_1f_rx_serial_data_ch0_rx_serial_data       => fmc_1F_rx_ch0,  
    xcvr_1f_rx_serial_data_ch1_rx_serial_data       => fmc_1F_rx_ch1,	
    xcvr_1f_tx_clkout_ch0_clk                       => fmc_1F_tx_clkout_ch0_clk,  
    xcvr_1f_tx_clkout_ch1_clk                       => fmc_1F_tx_clkout_ch1_clk,    
    xcvr_1f_tx_data_valid_ch0_tx_enh_data_valid     => '1',  
    xcvr_1f_tx_data_valid_ch1_tx_enh_data_valid     => '1',     
    xcvr_1f_tx_parallel_data_ch0_tx_parallel_data   => fmc_1F_tx_parallel_data_ch0,  
    xcvr_1f_tx_parallel_data_ch1_tx_parallel_data   => fmc_1F_tx_parallel_data_ch1,     
    xcvr_1f_tx_refclk_clk                           => refclk_1F_p,  
    xcvr_1f_tx_serial_data_ch0_tx_serial_data       => fmc_1F_tx_ch0,  
    xcvr_1f_tx_serial_data_ch1_tx_serial_data       => fmc_1F_tx_ch1,  
    addr_sel_in_conduit                             => addr_sel,  
    addr_sel_out_export                             => addr_sel,
    
  --SFP Signals
    sfp_1f_pattern_in_ch0_export                    => sfp_1F_rx_parallel_data_ch0,
    sfp_1f_pattern_in_clk_ch0_export                => sfp_1F_rx_clkout_ch0_clk,
    sfp_1f_pattern_out_ch0_export                   => sfp_1F_tx_parallel_data_ch0,
    sfp_1f_pattern_out_clk_ch0_export               => sfp_1F_tx_clkout_ch0_clk,
    sfp_1f_pll_select_pll_select                    => '0',
    sfp_1f_rx_clkout_ch0_clk                        => sfp_1F_rx_clkout_ch0_clk,
    sfp_1f_rx_parallel_data_ch0_rx_parallel_data    => sfp_1F_rx_parallel_data_ch0,
    sfp_1f_rx_refclk_clk                            => sfp_refclk_1F_p,
    sfp_1f_rx_serial_data_ch0_rx_serial_data        => sfp_1F_rx_ch0,
    sfp_1f_tx_clkout_ch0_clk                        => sfp_1F_tx_clkout_ch0_clk,
    sfp_1f_tx_data_valid_ch0_tx_enh_data_valid      => '1',
    sfp_1f_tx_parallel_data_ch0_tx_parallel_data    => sfp_1F_tx_parallel_data_ch0,
    sfp_1f_tx_refclk_clk                            => sfp_refclk_1F_p,
    sfp_1f_tx_serial_data_ch0_tx_serial_data        => sfp_1F_tx_ch0
	
  );                                                                                  
end architecture;
