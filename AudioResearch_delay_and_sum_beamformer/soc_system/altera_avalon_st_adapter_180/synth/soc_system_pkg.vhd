library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package soc_system_pkg is
	component soc_system_altera_avalon_st_adapter_180_g7t4xhq is
		generic (
			inBitsPerSymbol : integer := 8;
			inUsePackets    : integer := 0;
			inDataWidth     : integer := 8;
			inChannelWidth  : integer := 3;
			inErrorWidth    : integer := 2;
			inUseEmptyPort  : integer := 0;
			inUseValid      : integer := 1;
			inUseReady      : integer := 1;
			inReadyLatency  : integer := 0;
			outDataWidth    : integer := 32;
			outChannelWidth : integer := 3;
			outErrorWidth   : integer := 2;
			outUseEmptyPort : integer := 0;
			outUseValid     : integer := 1;
			outUseReady     : integer := 1;
			outReadyLatency : integer := 0
		);
		port (
			in_clk_0_clk   : in  std_logic                     := 'X';             -- clk
			in_rst_0_reset : in  std_logic                     := 'X';             -- reset
			in_0_data      : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			in_0_valid     : in  std_logic                     := 'X';             -- valid
			in_0_error     : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- error
			in_0_channel   : in  std_logic                     := 'X';             -- channel
			out_0_data     : out std_logic_vector(31 downto 0);                    -- data
			out_0_valid    : out std_logic;                                        -- valid
			out_0_channel  : out std_logic                                         -- channel
		);
	end component soc_system_altera_avalon_st_adapter_180_g7t4xhq;

	component soc_system_altera_avalon_st_adapter_180_gbp22va is
		generic (
			inBitsPerSymbol : integer := 8;
			inUsePackets    : integer := 0;
			inDataWidth     : integer := 8;
			inChannelWidth  : integer := 3;
			inErrorWidth    : integer := 2;
			inUseEmptyPort  : integer := 0;
			inUseValid      : integer := 1;
			inUseReady      : integer := 1;
			inReadyLatency  : integer := 0;
			outDataWidth    : integer := 32;
			outChannelWidth : integer := 3;
			outErrorWidth   : integer := 2;
			outUseEmptyPort : integer := 0;
			outUseValid     : integer := 1;
			outUseReady     : integer := 1;
			outReadyLatency : integer := 0
		);
		port (
			in_clk_0_clk   : in  std_logic                     := 'X';             -- clk
			in_rst_0_reset : in  std_logic                     := 'X';             -- reset
			in_0_data      : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			in_0_valid     : in  std_logic                     := 'X';             -- valid
			in_0_channel   : in  std_logic                     := 'X';             -- channel
			out_0_data     : out std_logic_vector(31 downto 0);                    -- data
			out_0_valid    : out std_logic;                                        -- valid
			out_0_error    : out std_logic_vector(1 downto 0);                     -- error
			out_0_channel  : out std_logic_vector(1 downto 0)                      -- channel
		);
	end component soc_system_altera_avalon_st_adapter_180_gbp22va;

	component soc_system_altera_avalon_st_adapter_180_f2h67ry is
		generic (
			inBitsPerSymbol : integer := 8;
			inUsePackets    : integer := 0;
			inDataWidth     : integer := 8;
			inChannelWidth  : integer := 3;
			inErrorWidth    : integer := 2;
			inUseEmptyPort  : integer := 0;
			inUseValid      : integer := 1;
			inUseReady      : integer := 1;
			inReadyLatency  : integer := 0;
			outDataWidth    : integer := 32;
			outChannelWidth : integer := 3;
			outErrorWidth   : integer := 2;
			outUseEmptyPort : integer := 0;
			outUseValid     : integer := 1;
			outUseReady     : integer := 1;
			outReadyLatency : integer := 0
		);
		port (
			in_clk_0_clk   : in  std_logic                     := 'X';             -- clk
			in_rst_0_reset : in  std_logic                     := 'X';             -- reset
			in_0_data      : in  std_logic_vector(31 downto 0) := (others => 'X'); -- data
			in_0_valid     : in  std_logic                     := 'X';             -- valid
			in_0_channel   : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- channel
			out_0_data     : out std_logic_vector(31 downto 0);                    -- data
			out_0_valid    : out std_logic;                                        -- valid
			out_0_error    : out std_logic_vector(1 downto 0);                     -- error
			out_0_channel  : out std_logic_vector(3 downto 0)                      -- channel
		);
	end component soc_system_altera_avalon_st_adapter_180_f2h67ry;

end soc_system_pkg;
