library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package soc_system_pkg is
	component dummy_beamformer_ch_sum is
		port (
			clk    : in  std_logic                     := 'X';             -- clk
			areset : in  std_logic                     := 'X';             -- reset
			d      : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			v      : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- valid
			c      : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- channel
			dout   : out std_logic_vector(31 downto 0);                    -- data
			vout   : out std_logic_vector(0 downto 0);                     -- valid
			cout   : out std_logic_vector(7 downto 0)                      -- channel
		);
	end component dummy_beamformer_ch_sum;

end soc_system_pkg;
