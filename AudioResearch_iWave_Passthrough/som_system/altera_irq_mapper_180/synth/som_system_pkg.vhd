library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package som_system_pkg is
	component som_system_altera_irq_mapper_180_vrecy4a is
		port (
			clk        : in  std_logic                     := 'X'; -- clk
			reset      : in  std_logic                     := 'X'; -- reset
			sender_irq : out std_logic_vector(31 downto 0)         -- irq
		);
	end component som_system_altera_irq_mapper_180_vrecy4a;

end som_system_pkg;
