config som_system_altera_mm_interconnect_180_g5k2ojy_cfg;
		design som_system_altera_mm_interconnect_180_g5k2ojy;
		instance som_system_altera_mm_interconnect_180_g5k2ojy.som_config_s1_translator use som_system_altera_merlin_slave_translator_180.altera_merlin_slave_translator;
		instance som_system_altera_mm_interconnect_180_g5k2ojy.arria10_hps_0_h2f_lw_axi_master_agent use som_system_altera_merlin_axi_master_ni_180.altera_merlin_axi_master_ni;
		instance som_system_altera_mm_interconnect_180_g5k2ojy.som_config_s1_agent use som_system_altera_merlin_slave_agent_180.altera_merlin_slave_agent;
		instance som_system_altera_mm_interconnect_180_g5k2ojy.som_config_s1_agent_rsp_fifo use som_system_altera_avalon_sc_fifo_180.altera_avalon_sc_fifo;
		instance som_system_altera_mm_interconnect_180_g5k2ojy.som_config_s1_agent_rdata_fifo use som_system_altera_avalon_sc_fifo_180.altera_avalon_sc_fifo;
		instance som_system_altera_mm_interconnect_180_g5k2ojy.router use som_system_altera_merlin_router_180.som_system_altera_merlin_router_180_7q6ljiq;
		instance som_system_altera_mm_interconnect_180_g5k2ojy.router_001 use som_system_altera_merlin_router_180.som_system_altera_merlin_router_180_7q6ljiq;
		instance som_system_altera_mm_interconnect_180_g5k2ojy.router_002 use som_system_altera_merlin_router_180.som_system_altera_merlin_router_180_6yqffvy;
		instance som_system_altera_mm_interconnect_180_g5k2ojy.som_config_s1_burst_adapter use som_system_altera_merlin_burst_adapter_180.altera_merlin_burst_adapter;
		instance som_system_altera_mm_interconnect_180_g5k2ojy.cmd_demux use som_system_altera_merlin_demultiplexer_180.som_system_altera_merlin_demultiplexer_180_bobv3li;
		instance som_system_altera_mm_interconnect_180_g5k2ojy.cmd_demux_001 use som_system_altera_merlin_demultiplexer_180.som_system_altera_merlin_demultiplexer_180_bobv3li;
		instance som_system_altera_mm_interconnect_180_g5k2ojy.cmd_mux use som_system_altera_merlin_multiplexer_180.som_system_altera_merlin_multiplexer_180_aogbhry;
		instance som_system_altera_mm_interconnect_180_g5k2ojy.rsp_demux use som_system_altera_merlin_demultiplexer_180.som_system_altera_merlin_demultiplexer_180_uoxykti;
		instance som_system_altera_mm_interconnect_180_g5k2ojy.rsp_mux use som_system_altera_merlin_multiplexer_180.som_system_altera_merlin_multiplexer_180_27h65fa;
		instance som_system_altera_mm_interconnect_180_g5k2ojy.rsp_mux_001 use som_system_altera_merlin_multiplexer_180.som_system_altera_merlin_multiplexer_180_27h65fa;
		instance som_system_altera_mm_interconnect_180_g5k2ojy.avalon_st_adapter use som_system_altera_avalon_st_adapter_180.som_system_altera_avalon_st_adapter_180_caevfly;
endconfig

