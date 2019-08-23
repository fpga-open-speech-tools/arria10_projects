library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package soc_system_pkg is
	component soc_system_altera_mm_interconnect_180_h4iigbi is
		port (
			hps_h2f_lw_axi_master_awid                       : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- awid
			hps_h2f_lw_axi_master_awaddr                     : in  std_logic_vector(20 downto 0) := (others => 'X'); -- awaddr
			hps_h2f_lw_axi_master_awlen                      : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- awlen
			hps_h2f_lw_axi_master_awsize                     : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- awsize
			hps_h2f_lw_axi_master_awburst                    : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- awburst
			hps_h2f_lw_axi_master_awlock                     : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- awlock
			hps_h2f_lw_axi_master_awcache                    : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- awcache
			hps_h2f_lw_axi_master_awprot                     : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- awprot
			hps_h2f_lw_axi_master_awuser                     : in  std_logic_vector(4 downto 0)  := (others => 'X'); -- awuser
			hps_h2f_lw_axi_master_awvalid                    : in  std_logic                     := 'X';             -- awvalid
			hps_h2f_lw_axi_master_awready                    : out std_logic;                                        -- awready
			hps_h2f_lw_axi_master_wid                        : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- wid
			hps_h2f_lw_axi_master_wdata                      : in  std_logic_vector(31 downto 0) := (others => 'X'); -- wdata
			hps_h2f_lw_axi_master_wstrb                      : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- wstrb
			hps_h2f_lw_axi_master_wlast                      : in  std_logic                     := 'X';             -- wlast
			hps_h2f_lw_axi_master_wvalid                     : in  std_logic                     := 'X';             -- wvalid
			hps_h2f_lw_axi_master_wready                     : out std_logic;                                        -- wready
			hps_h2f_lw_axi_master_bid                        : out std_logic_vector(3 downto 0);                     -- bid
			hps_h2f_lw_axi_master_bresp                      : out std_logic_vector(1 downto 0);                     -- bresp
			hps_h2f_lw_axi_master_bvalid                     : out std_logic;                                        -- bvalid
			hps_h2f_lw_axi_master_bready                     : in  std_logic                     := 'X';             -- bready
			hps_h2f_lw_axi_master_arid                       : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- arid
			hps_h2f_lw_axi_master_araddr                     : in  std_logic_vector(20 downto 0) := (others => 'X'); -- araddr
			hps_h2f_lw_axi_master_arlen                      : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- arlen
			hps_h2f_lw_axi_master_arsize                     : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- arsize
			hps_h2f_lw_axi_master_arburst                    : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- arburst
			hps_h2f_lw_axi_master_arlock                     : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- arlock
			hps_h2f_lw_axi_master_arcache                    : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- arcache
			hps_h2f_lw_axi_master_arprot                     : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- arprot
			hps_h2f_lw_axi_master_aruser                     : in  std_logic_vector(4 downto 0)  := (others => 'X'); -- aruser
			hps_h2f_lw_axi_master_arvalid                    : in  std_logic                     := 'X';             -- arvalid
			hps_h2f_lw_axi_master_arready                    : out std_logic;                                        -- arready
			hps_h2f_lw_axi_master_rid                        : out std_logic_vector(3 downto 0);                     -- rid
			hps_h2f_lw_axi_master_rdata                      : out std_logic_vector(31 downto 0);                    -- rdata
			hps_h2f_lw_axi_master_rresp                      : out std_logic_vector(1 downto 0);                     -- rresp
			hps_h2f_lw_axi_master_rlast                      : out std_logic;                                        -- rlast
			hps_h2f_lw_axi_master_rvalid                     : out std_logic;                                        -- rvalid
			hps_h2f_lw_axi_master_rready                     : in  std_logic                     := 'X';             -- rready
			clk_hps_clk_clk                                  : in  std_logic                     := 'X';             -- clk
			hps_h2f_lw_axi_reset_reset_bridge_in_reset_reset : in  std_logic                     := 'X';             -- reset
			sysid_qsys_0_control_slave_address               : out std_logic_vector(0 downto 0);                     -- address
			sysid_qsys_0_control_slave_readdata              : in  std_logic_vector(31 downto 0) := (others => 'X')  -- readdata
		);
	end component soc_system_altera_mm_interconnect_180_h4iigbi;

end soc_system_pkg;
