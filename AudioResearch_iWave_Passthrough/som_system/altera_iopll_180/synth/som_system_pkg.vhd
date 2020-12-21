library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package som_system_pkg is
	component som_system_altera_iopll_180_bgd33sq is
		port (
			rst      : in  std_logic := 'X'; -- reset
			refclk   : in  std_logic := 'X'; -- clk
			locked   : out std_logic;        -- export
			outclk_0 : out std_logic;        -- clk
			outclk_1 : out std_logic;        -- clk
			outclk_2 : out std_logic;        -- clk
			outclk_3 : out std_logic;        -- clk
			outclk_4 : out std_logic         -- clk
		);
	end component som_system_altera_iopll_180_bgd33sq;

end som_system_pkg;
