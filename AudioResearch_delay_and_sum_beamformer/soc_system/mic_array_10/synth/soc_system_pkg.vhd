library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package soc_system_pkg is
	component mic_array_avalon is
		port (
			avs_s1_address   : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- address
			avs_s1_write     : in  std_logic                     := 'X';             -- write
			avs_s1_writedata : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			avs_s1_read      : in  std_logic                     := 'X';             -- read
			avs_s1_readdata  : out std_logic_vector(31 downto 0);                    -- readdata
			ast_data         : out std_logic_vector(31 downto 0);                    -- data
			ast_channel      : out std_logic_vector(3 downto 0);                     -- channel
			ast_valid        : out std_logic;                                        -- valid
			led_sd           : out std_logic;                                        -- led_sd
			led_ws           : out std_logic;                                        -- led_ws
			sd               : in  std_logic                     := 'X';             -- sd
			ws               : out std_logic;                                        -- ws
			rst              : in  std_logic                     := 'X';             -- reset
			sys_clk          : in  std_logic                     := 'X';             -- clk
			sck_master       : in  std_logic                     := 'X';             -- clk
			sck_rcv          : in  std_logic                     := 'X'              -- clk
		);
	end component mic_array_avalon;

end soc_system_pkg;
