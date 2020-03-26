library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package soc_system_pkg is
	component soc_system_mic_array_clocks_10_hjvfn7a is
		port (
			ad1939_mclk_clk       : in  std_logic := 'X'; -- clk
			reset_reset_n         : in  std_logic := 'X'; -- reset_n
			sck_master_clk        : out std_logic;        -- clk
			sck_master_export_clk : out std_logic;        -- clk
			sck_rcv_ch0_clk       : out std_logic         -- clk
		);
	end component soc_system_mic_array_clocks_10_hjvfn7a;

end soc_system_pkg;
