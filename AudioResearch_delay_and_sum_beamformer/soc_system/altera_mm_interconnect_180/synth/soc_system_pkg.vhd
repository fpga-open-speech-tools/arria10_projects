library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package soc_system_pkg is
	component soc_system_altera_mm_interconnect_180_4tjcpzi is
		port (
			hps_h2f_lw_axi_master_awid                        : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- awid
			hps_h2f_lw_axi_master_awaddr                      : in  std_logic_vector(20 downto 0) := (others => 'X'); -- awaddr
			hps_h2f_lw_axi_master_awlen                       : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- awlen
			hps_h2f_lw_axi_master_awsize                      : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- awsize
			hps_h2f_lw_axi_master_awburst                     : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- awburst
			hps_h2f_lw_axi_master_awlock                      : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- awlock
			hps_h2f_lw_axi_master_awcache                     : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- awcache
			hps_h2f_lw_axi_master_awprot                      : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- awprot
			hps_h2f_lw_axi_master_awuser                      : in  std_logic_vector(4 downto 0)  := (others => 'X'); -- awuser
			hps_h2f_lw_axi_master_awvalid                     : in  std_logic                     := 'X';             -- awvalid
			hps_h2f_lw_axi_master_awready                     : out std_logic;                                        -- awready
			hps_h2f_lw_axi_master_wid                         : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- wid
			hps_h2f_lw_axi_master_wdata                       : in  std_logic_vector(31 downto 0) := (others => 'X'); -- wdata
			hps_h2f_lw_axi_master_wstrb                       : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- wstrb
			hps_h2f_lw_axi_master_wlast                       : in  std_logic                     := 'X';             -- wlast
			hps_h2f_lw_axi_master_wvalid                      : in  std_logic                     := 'X';             -- wvalid
			hps_h2f_lw_axi_master_wready                      : out std_logic;                                        -- wready
			hps_h2f_lw_axi_master_bid                         : out std_logic_vector(3 downto 0);                     -- bid
			hps_h2f_lw_axi_master_bresp                       : out std_logic_vector(1 downto 0);                     -- bresp
			hps_h2f_lw_axi_master_bvalid                      : out std_logic;                                        -- bvalid
			hps_h2f_lw_axi_master_bready                      : in  std_logic                     := 'X';             -- bready
			hps_h2f_lw_axi_master_arid                        : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- arid
			hps_h2f_lw_axi_master_araddr                      : in  std_logic_vector(20 downto 0) := (others => 'X'); -- araddr
			hps_h2f_lw_axi_master_arlen                       : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- arlen
			hps_h2f_lw_axi_master_arsize                      : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- arsize
			hps_h2f_lw_axi_master_arburst                     : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- arburst
			hps_h2f_lw_axi_master_arlock                      : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- arlock
			hps_h2f_lw_axi_master_arcache                     : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- arcache
			hps_h2f_lw_axi_master_arprot                      : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- arprot
			hps_h2f_lw_axi_master_aruser                      : in  std_logic_vector(4 downto 0)  := (others => 'X'); -- aruser
			hps_h2f_lw_axi_master_arvalid                     : in  std_logic                     := 'X';             -- arvalid
			hps_h2f_lw_axi_master_arready                     : out std_logic;                                        -- arready
			hps_h2f_lw_axi_master_rid                         : out std_logic_vector(3 downto 0);                     -- rid
			hps_h2f_lw_axi_master_rdata                       : out std_logic_vector(31 downto 0);                    -- rdata
			hps_h2f_lw_axi_master_rresp                       : out std_logic_vector(1 downto 0);                     -- rresp
			hps_h2f_lw_axi_master_rlast                       : out std_logic;                                        -- rlast
			hps_h2f_lw_axi_master_rvalid                      : out std_logic;                                        -- rvalid
			hps_h2f_lw_axi_master_rready                      : in  std_logic                     := 'X';             -- rready
			codec_clocks_sys_clk_clk                          : in  std_logic                     := 'X';             -- clk
			mic_array_clocks_sck_master_clk                   : in  std_logic                     := 'X';             -- clk
			hps_h2f_lw_axi_reset_reset_bridge_in_reset_reset  : in  std_logic                     := 'X';             -- reset
			jtag_master_clk_reset_reset_bridge_in_reset_reset : in  std_logic                     := 'X';             -- reset
			mic_array_0_reset_reset_bridge_in_reset_reset     : in  std_logic                     := 'X';             -- reset
			jtag_master_master_address                        : in  std_logic_vector(31 downto 0) := (others => 'X'); -- address
			jtag_master_master_waitrequest                    : out std_logic;                                        -- waitrequest
			jtag_master_master_byteenable                     : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- byteenable
			jtag_master_master_read                           : in  std_logic                     := 'X';             -- read
			jtag_master_master_readdata                       : out std_logic_vector(31 downto 0);                    -- readdata
			jtag_master_master_readdatavalid                  : out std_logic;                                        -- readdatavalid
			jtag_master_master_write                          : in  std_logic                     := 'X';             -- write
			jtag_master_master_writedata                      : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			delay_and_sum_beamformer_0_avalon_slave_address   : out std_logic_vector(0 downto 0);                     -- address
			delay_and_sum_beamformer_0_avalon_slave_write     : out std_logic;                                        -- write
			delay_and_sum_beamformer_0_avalon_slave_read      : out std_logic;                                        -- read
			delay_and_sum_beamformer_0_avalon_slave_readdata  : in  std_logic_vector(31 downto 0) := (others => 'X'); -- readdata
			delay_and_sum_beamformer_0_avalon_slave_writedata : out std_logic_vector(31 downto 0);                    -- writedata
			mic_array_0_s1_address                            : out std_logic_vector(1 downto 0);                     -- address
			mic_array_0_s1_write                              : out std_logic;                                        -- write
			mic_array_0_s1_read                               : out std_logic;                                        -- read
			mic_array_0_s1_readdata                           : in  std_logic_vector(31 downto 0) := (others => 'X'); -- readdata
			mic_array_0_s1_writedata                          : out std_logic_vector(31 downto 0);                    -- writedata
			sysid_qsys_0_control_slave_address                : out std_logic_vector(0 downto 0);                     -- address
			sysid_qsys_0_control_slave_readdata               : in  std_logic_vector(31 downto 0) := (others => 'X')  -- readdata
		);
	end component soc_system_altera_mm_interconnect_180_4tjcpzi;

end soc_system_pkg;
