library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package soc_system_mic_array_clocks_10_hjvfn7a_pkg is
	component soc_system_altera_iopll_180_qn6opli is
		port (
			rst      : in  std_logic := 'X'; -- reset
			refclk   : in  std_logic := 'X'; -- clk
			outclk_0 : out std_logic;        -- clk
			outclk_1 : out std_logic         -- clk
		);
	end component soc_system_altera_iopll_180_qn6opli;

end soc_system_mic_array_clocks_10_hjvfn7a_pkg;
