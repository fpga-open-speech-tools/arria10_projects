-- -------------------------------------------------------------
-- 
-- File Name: /mnt/data/trevor/research/NIH_SBIR_R44_DC015443/simulink_models/models/delay_and_sum_beamformer/hdlsrc/DSBF/DSBF_dataplane.vhd
-- 
-- Generated by MATLAB 9.7 and HDL Coder 3.15
-- 
-- 
-- -------------------------------------------------------------
-- Rate and Clocking Details
-- -------------------------------------------------------------
-- Model base rate: 1.01725e-08
-- Target subsystem base rate: 1.01725e-08
-- 
-- 
-- Clock Enable  Sample Time
-- -------------------------------------------------------------
-- ce_out        1.01725e-08
-- -------------------------------------------------------------
-- 
-- 
-- Output Signal                 Clock Enable  Sample Time
-- -------------------------------------------------------------
-- avalon_source_valid           ce_out        1.01725e-08
-- avalon_source_data            ce_out        1.01725e-08
-- avalon_source_channel         ce_out        1.01725e-08
-- avalon_source_error           ce_out        1.01725e-08
-- -------------------------------------------------------------
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: DSBF_dataplane
-- Source Path: DSBF/dataplane
-- Hierarchy Level: 0
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.DSBF_dataplane_pkg.ALL;

ENTITY DSBF_dataplane IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        clk_enable                        :   IN    std_logic;
        avalon_sink_valid                 :   IN    std_logic;
        avalon_sink_data                  :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32_En28
        avalon_sink_channel               :   IN    std_logic_vector(3 DOWNTO 0);  -- ufix4
        avalon_sink_error                 :   IN    std_logic_vector(1 DOWNTO 0);  -- ufix2
        register_control_azimuth          :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En8
        register_control_elevation        :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En8
        ce_out                            :   OUT   std_logic;
        avalon_source_valid               :   OUT   std_logic;
        avalon_source_data                :   OUT   std_logic_vector(31 DOWNTO 0);  -- sfix32_En28
        avalon_source_channel             :   OUT   std_logic;  -- ufix1
        avalon_source_error               :   OUT   std_logic_vector(1 DOWNTO 0)  -- ufix2
        );
END DSBF_dataplane;


ARCHITECTURE rtl OF DSBF_dataplane IS

  -- Component Declarations
  COMPONENT DSBF_dataplane_tc
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          clk_enable                      :   IN    std_logic;
          enb                             :   OUT   std_logic;
          enb_1_1_1                       :   OUT   std_logic;
          enb_1_64_0                      :   OUT   std_logic;
          enb_1_64_1                      :   OUT   std_logic;
          enb_1_2048_0                    :   OUT   std_logic;
          enb_1_2048_1                    :   OUT   std_logic;
          enb_1_2048_5                    :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT DSBF_compute_projections
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          azimuth                         :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En8
          elevation                       :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En8
          sin_azimuth                     :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
          cos_elevation                   :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
          sin_elevation                   :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En14
          );
  END COMPONENT;

  COMPONENT DSBF_MATLAB_Function_block1
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          sin_azimuth                     :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
          cos_elevation                   :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
          sin_elevation                   :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
          delays                          :   OUT   vector_of_std_logic_vector13(0 TO 15)  -- sfix13_En7 [16]
          );
  END COMPONENT;

  COMPONENT DSBF_Avalon_Data_Processing
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          enb_1_64_1                      :   IN    std_logic;
          enb_1_2048_1                    :   IN    std_logic;
          enb_1_2048_0                    :   IN    std_logic;
          enb_1_2048_5                    :   IN    std_logic;
          enb_1_64_0                      :   IN    std_logic;
          valid_in                        :   IN    std_logic;
          Sink_Data                       :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32_En28
          Sink_Channel                    :   IN    std_logic_vector(3 DOWNTO 0);  -- ufix4
          delays                          :   IN    vector_of_std_logic_vector13(0 TO 15);  -- sfix13_En7 [16]
          Source_Data                     :   OUT   std_logic_vector(31 DOWNTO 0);  -- sfix32_En28
          Source_Channel                  :   OUT   std_logic;  -- ufix1
          Source_Valid                    :   OUT   std_logic
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : DSBF_dataplane_tc
    USE ENTITY work.DSBF_dataplane_tc(rtl);

  FOR ALL : DSBF_compute_projections
    USE ENTITY work.DSBF_compute_projections(rtl);

  FOR ALL : DSBF_MATLAB_Function_block1
    USE ENTITY work.DSBF_MATLAB_Function_block1(rtl);

  FOR ALL : DSBF_Avalon_Data_Processing
    USE ENTITY work.DSBF_Avalon_Data_Processing(rtl);

  -- Signals
  SIGNAL enb                              : std_logic;
  SIGNAL enb_1_64_1                       : std_logic;
  SIGNAL enb_1_2048_1                     : std_logic;
  SIGNAL enb_1_2048_0                     : std_logic;
  SIGNAL enb_1_2048_5                     : std_logic;
  SIGNAL enb_1_64_0                       : std_logic;
  SIGNAL enb_1_1_1                        : std_logic;
  SIGNAL compute_projections_out1         : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL compute_projections_out2         : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL compute_projections_out3         : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL delays                           : vector_of_std_logic_vector13(0 TO 15);  -- ufix13 [16]
  SIGNAL Avalon_Data_Processing_out1      : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL Avalon_Data_Processing_out2      : std_logic;  -- ufix1
  SIGNAL Avalon_Data_Processing_out3      : std_logic;
  SIGNAL delayMatch_reg                   : std_logic_vector(0 TO 4095);  -- ufix1 [4096]
  SIGNAL Avalon_Data_Processing_out2_1    : std_logic;  -- ufix1
  SIGNAL avalon_sink_error_unsigned       : unsigned(1 DOWNTO 0);  -- ufix2
  SIGNAL delayMatch1_reg                  : vector_of_unsigned2(0 TO 4095);  -- ufix2 [4096]
  SIGNAL avalon_sink_error_1              : unsigned(1 DOWNTO 0);  -- ufix2

BEGIN
  -- Control Signals that will be coming from Linux via
  -- memory mapped registers need to have names 
  -- containing the prefix "register_control_"
  -- (all lower case)
  -- 
  -- Avalon streaming interface signals need to have the
  -- names containing the prefix "avalon_" 
  -- (all lower case)

  u_dataplane_tc : DSBF_dataplane_tc
    PORT MAP( clk => clk,
              reset => reset,
              clk_enable => clk_enable,
              enb => enb,
              enb_1_1_1 => enb_1_1_1,
              enb_1_64_0 => enb_1_64_0,
              enb_1_64_1 => enb_1_64_1,
              enb_1_2048_0 => enb_1_2048_0,
              enb_1_2048_1 => enb_1_2048_1,
              enb_1_2048_5 => enb_1_2048_5
              );

  u_compute_projections : DSBF_compute_projections
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              azimuth => register_control_azimuth,  -- sfix16_En8
              elevation => register_control_elevation,  -- sfix16_En8
              sin_azimuth => compute_projections_out1,  -- sfix16_En14
              cos_elevation => compute_projections_out2,  -- sfix16_En14
              sin_elevation => compute_projections_out3  -- sfix16_En14
              );

  u_MATLAB_Function : DSBF_MATLAB_Function_block1
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              sin_azimuth => compute_projections_out1,  -- sfix16_En14
              cos_elevation => compute_projections_out2,  -- sfix16_En14
              sin_elevation => compute_projections_out3,  -- sfix16_En14
              delays => delays  -- sfix13_En7 [16]
              );

  u_Avalon_Data_Processing : DSBF_Avalon_Data_Processing
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              enb_1_64_1 => enb_1_64_1,
              enb_1_2048_1 => enb_1_2048_1,
              enb_1_2048_0 => enb_1_2048_0,
              enb_1_2048_5 => enb_1_2048_5,
              enb_1_64_0 => enb_1_64_0,
              valid_in => avalon_sink_valid,
              Sink_Data => avalon_sink_data,  -- sfix32_En28
              Sink_Channel => avalon_sink_channel,  -- ufix4
              delays => delays,  -- sfix13_En7 [16]
              Source_Data => Avalon_Data_Processing_out1,  -- sfix32_En28
              Source_Channel => Avalon_Data_Processing_out2,  -- ufix1
              Source_Valid => Avalon_Data_Processing_out3
              );

  delayMatch_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      delayMatch_reg <= (OTHERS => '0');
    ELSIF rising_edge(clk) THEN
      IF enb = '1' THEN
        delayMatch_reg(0) <= Avalon_Data_Processing_out2;
        delayMatch_reg(1 TO 4095) <= delayMatch_reg(0 TO 4094);
      END IF;
    END IF;
  END PROCESS delayMatch_process;

  Avalon_Data_Processing_out2_1 <= delayMatch_reg(4095);

  avalon_sink_error_unsigned <= unsigned(avalon_sink_error);

  delayMatch1_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      delayMatch1_reg <= (OTHERS => to_unsigned(16#0#, 2));
    ELSIF rising_edge(clk) THEN
      IF enb = '1' THEN
        delayMatch1_reg(0) <= avalon_sink_error_unsigned;
        delayMatch1_reg(1 TO 4095) <= delayMatch1_reg(0 TO 4094);
      END IF;
    END IF;
  END PROCESS delayMatch1_process;

  avalon_sink_error_1 <= delayMatch1_reg(4095);

  avalon_source_error <= std_logic_vector(avalon_sink_error_1);

  ce_out <= enb_1_1_1;

  avalon_source_valid <= Avalon_Data_Processing_out3;

  avalon_source_data <= Avalon_Data_Processing_out1;

  avalon_source_channel <= Avalon_Data_Processing_out2_1;

END rtl;

