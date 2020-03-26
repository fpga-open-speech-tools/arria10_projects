library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package soc_system_codec_clocks_10_ns6zpna_pkg is
	component soc_system_altera_iopll_180_nrxle5y is
		port (
			rst      : in  std_logic := 'X'; -- reset
			refclk   : in  std_logic := 'X'; -- clk
			outclk_0 : out std_logic         -- clk
		);
	end component soc_system_altera_iopll_180_nrxle5y;

end soc_system_codec_clocks_10_ns6zpna_pkg;
