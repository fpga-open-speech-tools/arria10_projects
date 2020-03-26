library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package soc_system_pkg is
	component soc_system_codec_clocks_10_ns6zpna is
		port (
			ad1939_abclk_in_clk   : in  std_logic := 'X'; -- clk
			ad1939_abclk_out_clk  : out std_logic;        -- clk
			ad1939_alrclk_in_clk  : in  std_logic := 'X'; -- clk
			ad1939_alrclk_out_clk : out std_logic;        -- clk
			ad1939_mclk_in_clk    : in  std_logic := 'X'; -- clk
			ad1939_mclk_out_clk   : out std_logic;        -- clk
			reset_in_reset        : in  std_logic := 'X'; -- reset
			reset_out_reset       : out std_logic;        -- reset
			sys_clk_clk           : out std_logic         -- clk
		);
	end component soc_system_codec_clocks_10_ns6zpna;

end soc_system_pkg;
