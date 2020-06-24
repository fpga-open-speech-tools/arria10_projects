library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package soc_system_pkg is
	component soc_system_altera_emif_a10_hps_180_oqueytq is
		port (
			global_reset_n : in    std_logic                       := 'X';             -- reset_n
			pll_ref_clk    : in    std_logic                       := 'X';             -- clk
			oct_rzqin      : in    std_logic                       := 'X';             -- oct_rzqin
			mem_ck         : out   std_logic_vector(0 downto 0);                       -- mem_ck
			mem_ck_n       : out   std_logic_vector(0 downto 0);                       -- mem_ck_n
			mem_a          : out   std_logic_vector(16 downto 0);                      -- mem_a
			mem_act_n      : out   std_logic_vector(0 downto 0);                       -- mem_act_n
			mem_ba         : out   std_logic_vector(1 downto 0);                       -- mem_ba
			mem_bg         : out   std_logic_vector(1 downto 0);                       -- mem_bg
			mem_cke        : out   std_logic_vector(0 downto 0);                       -- mem_cke
			mem_cs_n       : out   std_logic_vector(0 downto 0);                       -- mem_cs_n
			mem_odt        : out   std_logic_vector(0 downto 0);                       -- mem_odt
			mem_reset_n    : out   std_logic_vector(0 downto 0);                       -- mem_reset_n
			mem_par        : out   std_logic_vector(0 downto 0);                       -- mem_par
			mem_alert_n    : in    std_logic_vector(0 downto 0)    := (others => 'X'); -- mem_alert_n
			mem_dqs        : inout std_logic_vector(3 downto 0)    := (others => 'X'); -- mem_dqs
			mem_dqs_n      : inout std_logic_vector(3 downto 0)    := (others => 'X'); -- mem_dqs_n
			mem_dq         : inout std_logic_vector(31 downto 0)   := (others => 'X'); -- mem_dq
			mem_dbi_n      : inout std_logic_vector(3 downto 0)    := (others => 'X'); -- mem_dbi_n
			hps_to_emif    : in    std_logic_vector(4095 downto 0) := (others => 'X'); -- hps_to_emif
			emif_to_hps    : out   std_logic_vector(4095 downto 0);                    -- emif_to_hps
			hps_to_emif_gp : in    std_logic_vector(1 downto 0)    := (others => 'X'); -- gp_to_emif
			emif_to_hps_gp : out   std_logic_vector(0 downto 0)                        -- emif_to_gp
		);
	end component soc_system_altera_emif_a10_hps_180_oqueytq;

end soc_system_pkg;
