library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package som_system_pkg is
	component altera_avalon_mm_clock_crossing_bridge is
		generic (
			DATA_WIDTH          : integer := 32;
			SYMBOL_WIDTH        : integer := 8;
			HDL_ADDR_WIDTH      : integer := 10;
			BURSTCOUNT_WIDTH    : integer := 1;
			COMMAND_FIFO_DEPTH  : integer := 4;
			RESPONSE_FIFO_DEPTH : integer := 4;
			MASTER_SYNC_DEPTH   : integer := 2;
			SLAVE_SYNC_DEPTH    : integer := 2
		);
		port (
			m0_clk           : in  std_logic                      := 'X';             -- clk
			m0_reset         : in  std_logic                      := 'X';             -- reset
			s0_clk           : in  std_logic                      := 'X';             -- clk
			s0_reset         : in  std_logic                      := 'X';             -- reset
			s0_waitrequest   : out std_logic;                                         -- waitrequest
			s0_readdata      : out std_logic_vector(511 downto 0);                    -- readdata
			s0_readdatavalid : out std_logic;                                         -- readdatavalid
			s0_burstcount    : in  std_logic_vector(6 downto 0)   := (others => 'X'); -- burstcount
			s0_writedata     : in  std_logic_vector(511 downto 0) := (others => 'X'); -- writedata
			s0_address       : in  std_logic_vector(31 downto 0)  := (others => 'X'); -- address
			s0_write         : in  std_logic                      := 'X';             -- write
			s0_read          : in  std_logic                      := 'X';             -- read
			s0_byteenable    : in  std_logic_vector(63 downto 0)  := (others => 'X'); -- byteenable
			s0_debugaccess   : in  std_logic                      := 'X';             -- debugaccess
			m0_waitrequest   : in  std_logic                      := 'X';             -- waitrequest
			m0_readdata      : in  std_logic_vector(511 downto 0) := (others => 'X'); -- readdata
			m0_readdatavalid : in  std_logic                      := 'X';             -- readdatavalid
			m0_burstcount    : out std_logic_vector(6 downto 0);                      -- burstcount
			m0_writedata     : out std_logic_vector(511 downto 0);                    -- writedata
			m0_address       : out std_logic_vector(31 downto 0);                     -- address
			m0_write         : out std_logic;                                         -- write
			m0_read          : out std_logic;                                         -- read
			m0_byteenable    : out std_logic_vector(63 downto 0);                     -- byteenable
			m0_debugaccess   : out std_logic                                          -- debugaccess
		);
	end component altera_avalon_mm_clock_crossing_bridge;

end som_system_pkg;
