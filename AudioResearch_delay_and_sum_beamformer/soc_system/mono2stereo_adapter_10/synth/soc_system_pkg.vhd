library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package soc_system_pkg is
	component mono2stereo_adapter is
		generic (
			sample_rate : natural := 48000;
			clk_freq    : natural := 98304000;
			data_width  : natural := 32
		);
		port (
			clk         : in  std_logic                     := 'X';             -- clk
			channel_out : out std_logic;                                        -- channel
			data_out    : out std_logic_vector(31 downto 0);                    -- data
			valid_out   : out std_logic;                                        -- valid
			channel_in  : in  std_logic                     := 'X';             -- channel
			data_in     : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			valid_in    : in  std_logic                     := 'X';             -- valid
			rst         : in  std_logic                     := 'X'              -- reset
		);
	end component mono2stereo_adapter;

end soc_system_pkg;
