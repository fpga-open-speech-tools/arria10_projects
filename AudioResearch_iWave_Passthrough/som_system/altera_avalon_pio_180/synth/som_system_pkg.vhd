library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package som_system_pkg is
	component som_system_altera_avalon_pio_180_z5a3aci is
		port (
			clk        : in    std_logic                     := 'X';             -- clk
			reset_n    : in    std_logic                     := 'X';             -- reset_n
			address    : in    std_logic_vector(2 downto 0)  := (others => 'X'); -- address
			write_n    : in    std_logic                     := 'X';             -- write_n
			writedata  : in    std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			chipselect : in    std_logic                     := 'X';             -- chipselect
			readdata   : out   std_logic_vector(31 downto 0);                    -- readdata
			bidir_port : inout std_logic_vector(1 downto 0)  := (others => 'X')  -- export
		);
	end component som_system_altera_avalon_pio_180_z5a3aci;

end som_system_pkg;
