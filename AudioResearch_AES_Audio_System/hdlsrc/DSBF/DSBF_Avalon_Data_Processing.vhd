-- -------------------------------------------------------------
-- 
-- File Name: D:\NIH3Repo\simulink_models\models\delay_and_sum_beamformer\hdlsrc\DSBF\DSBF_Avalon_Data_Processing.vhd
-- 
-- Generated by MATLAB 9.7 and HDL Coder 3.15
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: DSBF_Avalon_Data_Processing
-- Source Path: DSBF/dataplane/Avalon Data Processing
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.DSBF_dataplane_pkg.ALL;

ENTITY DSBF_Avalon_Data_Processing IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        enb_1_128_1                       :   IN    std_logic;
        enb_1_2048_1                      :   IN    std_logic;
        enb_1_2048_0                      :   IN    std_logic;
        enb_1_2048_5                      :   IN    std_logic;
        enb_1_128_0                       :   IN    std_logic;
        valid_in                          :   IN    std_logic;
        Sink_Data                         :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32_En28
        Sink_Channel                      :   IN    std_logic_vector(3 DOWNTO 0);  -- ufix4
        delays                            :   IN    vector_of_std_logic_vector12(0 TO 15);  -- sfix12_En6 [16]
        Source_Data                       :   OUT   std_logic_vector(31 DOWNTO 0);  -- sfix32_En28
        Source_Channel                    :   OUT   std_logic;  -- ufix1
        Source_Valid                      :   OUT   std_logic
        );
END DSBF_Avalon_Data_Processing;


ARCHITECTURE rtl OF DSBF_Avalon_Data_Processing IS

  ATTRIBUTE multstyle : string;

  -- Component Declarations
  COMPONENT DSBF_deserializer
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          data_in                         :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32_En28
          valid_in                        :   IN    std_logic;
          channel_in                      :   IN    std_logic_vector(3 DOWNTO 0);  -- ufix4
          valid_out                       :   OUT   std_logic;
          data_out                        :   OUT   vector_of_std_logic_vector32(0 TO 15)  -- sfix32_En28 [16]
          );
  END COMPONENT;

  COMPONENT DSBF_convert_to_sampling_rate
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          enb_1_2048_1                    :   IN    std_logic;
          enb_1_2048_0                    :   IN    std_logic;
          enb_1_2048_5                    :   IN    std_logic;
          valid_in                        :   IN    std_logic;
          data_in                         :   IN    vector_of_std_logic_vector32(0 TO 15);  -- sfix32_En28 [16]
          delays_in                       :   IN    vector_of_std_logic_vector12(0 TO 15);  -- sfix12_En6 [16]
          data_out                        :   OUT   vector_of_std_logic_vector32(0 TO 15);  -- sfix32_En28 [16]
          delays_out                      :   OUT   vector_of_std_logic_vector12(0 TO 15)  -- sfix12_En6 [16]
          );
  END COMPONENT;

  COMPONENT DSBF_delay_signals
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb_1_128_1                     :   IN    std_logic;
          enb_1_2048_1                    :   IN    std_logic;
          enb_1_2048_0                    :   IN    std_logic;
          enb_1_128_0                     :   IN    std_logic;
          data_in                         :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32_En28
          delays                          :   IN    std_logic_vector(11 DOWNTO 0);  -- sfix12_En6
          Out1                            :   OUT   std_logic_vector(31 DOWNTO 0)  -- sfix32_En28
          );
  END COMPONENT;

  COMPONENT DSBF_normalize
    PORT( input_value                     :   IN    std_logic_vector(35 DOWNTO 0);  -- sfix36_En28
          normalized_value                :   OUT   std_logic_vector(31 DOWNTO 0)  -- sfix32_En28
          );
  END COMPONENT;

  COMPONENT DSBF_Detect_Change
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          U                               :   IN    std_logic_vector(35 DOWNTO 0);  -- sfix36_En28
          Y                               :   OUT   std_logic
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : DSBF_deserializer
    USE ENTITY work.DSBF_deserializer(rtl);

  FOR ALL : DSBF_convert_to_sampling_rate
    USE ENTITY work.DSBF_convert_to_sampling_rate(rtl);

  FOR ALL : DSBF_delay_signals
    USE ENTITY work.DSBF_delay_signals(rtl);

  FOR ALL : DSBF_normalize
    USE ENTITY work.DSBF_normalize(rtl);

  FOR ALL : DSBF_Detect_Change
    USE ENTITY work.DSBF_Detect_Change(rtl);

  -- Signals
  SIGNAL valid_out                        : std_logic;
  SIGNAL data_out                         : vector_of_std_logic_vector32(0 TO 15);  -- ufix32 [16]
  SIGNAL data_out_signed                  : vector_of_signed32(0 TO 15);  -- sfix32_En28 [16]
  SIGNAL Delay1_out1                      : std_logic;
  SIGNAL Delay_out1                       : vector_of_signed32(0 TO 15);  -- sfix32_En28 [16]
  SIGNAL Delay_out1_1                     : vector_of_std_logic_vector32(0 TO 15);  -- ufix32 [16]
  SIGNAL convert_to_sampling_rate_out1    : vector_of_std_logic_vector32(0 TO 15);  -- ufix32 [16]
  SIGNAL convert_to_sampling_rate_out2    : vector_of_std_logic_vector12(0 TO 15);  -- ufix12 [16]
  SIGNAL convert_to_sampling_rate_out1_signed : vector_of_signed32(0 TO 15);  -- sfix32_En28 [16]
  SIGNAL Delay3_out1                      : vector_of_signed32(0 TO 15);  -- sfix32_En28 [16]
  SIGNAL data_in_0                        : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL convert_to_sampling_rate_out2_signed : vector_of_signed12(0 TO 15);  -- sfix12_En6 [16]
  SIGNAL Delay2_out1                      : vector_of_signed12(0 TO 15);  -- sfix12_En6 [16]
  SIGNAL data_in_0_1                      : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL data_in_1                        : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL data_in_1_1                      : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL data_in_2                        : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL data_in_2_1                      : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL data_in_3                        : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL data_in_3_1                      : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL data_in_4                        : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL data_in_4_1                      : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL data_in_5                        : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL data_in_5_1                      : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL data_in_6                        : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL data_in_6_1                      : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL data_in_7                        : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL data_in_7_1                      : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL data_in_8                        : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL data_in_8_1                      : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL data_in_9                        : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL data_in_9_1                      : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL data_in_10                       : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL data_in_10_1                     : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL data_in_11                       : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL data_in_11_1                     : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL data_in_12                       : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL data_in_12_1                     : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL data_in_13                       : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL data_in_13_1                     : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL data_in_14                       : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL data_in_14_1                     : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL data_in_15                       : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL data_in_15_1                     : signed(31 DOWNTO 0);  -- sfix32_En28
  SIGNAL delay_signal_out1_0              : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL delay_signal_out1_1              : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL delay_signal_out1_2              : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL delay_signal_out1_3              : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL delay_signal_out1_4              : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL delay_signal_out1_5              : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL delay_signal_out1_6              : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL delay_signal_out1_7              : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL delay_signal_out1_8              : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL delay_signal_out1_9              : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL delay_signal_out1_10             : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL delay_signal_out1_11             : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL delay_signal_out1_12             : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL delay_signal_out1_13             : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL delay_signal_out1_14             : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL delay_signal_out1_15             : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL delay_signals_out1               : vector_of_signed32(0 TO 15);  -- sfix32_En28 [16]
  SIGNAL Delay4_out1                      : vector_of_signed32(0 TO 15);  -- sfix32_En28 [16]
  SIGNAL Sum_of_Elements_add_cast         : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL Sum_of_Elements_add_cast_1       : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL Sum_of_Elements_add_temp         : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL Sum_of_Elements_add_cast_2       : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL Sum_of_Elements_add_temp_1       : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL Sum_of_Elements_add_cast_3       : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL Sum_of_Elements_add_temp_2       : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL Sum_of_Elements_add_cast_4       : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL Sum_of_Elements_add_temp_3       : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL Sum_of_Elements_add_cast_5       : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL Sum_of_Elements_add_temp_4       : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL Sum_of_Elements_add_cast_6       : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL Sum_of_Elements_add_temp_5       : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL Sum_of_Elements_add_cast_7       : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL Sum_of_Elements_add_temp_6       : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL Sum_of_Elements_add_cast_8       : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL Sum_of_Elements_add_temp_7       : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL Sum_of_Elements_add_cast_9       : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL Sum_of_Elements_add_temp_8       : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL Sum_of_Elements_add_cast_10      : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL Sum_of_Elements_add_temp_9       : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL Sum_of_Elements_add_cast_11      : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL Sum_of_Elements_add_temp_10      : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL Sum_of_Elements_add_cast_12      : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL Sum_of_Elements_add_temp_11      : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL Sum_of_Elements_add_cast_13      : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL Sum_of_Elements_add_temp_12      : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL Sum_of_Elements_add_cast_14      : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL Sum_of_Elements_add_temp_13      : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL Sum_of_Elements_add_cast_15      : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL Sum_of_Elements_out1             : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL normalize_out1                   : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL Constant_out1                    : std_logic;  -- ufix1
  SIGNAL Detect_Change_out1               : std_logic;

BEGIN
  -- assert the valid signal when output data changes
  -- 
  -- the output of the beamformer is mono; for stereo output, use the mono2stereo_adapter component in Platform Designer

  u_deserializer : DSBF_deserializer
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              data_in => Sink_Data,  -- sfix32_En28
              valid_in => valid_in,
              channel_in => Sink_Channel,  -- ufix4
              valid_out => valid_out,
              data_out => data_out  -- sfix32_En28 [16]
              );

  u_convert_to_sampling_rate : DSBF_convert_to_sampling_rate
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              enb_1_2048_1 => enb_1_2048_1,
              enb_1_2048_0 => enb_1_2048_0,
              enb_1_2048_5 => enb_1_2048_5,
              valid_in => Delay1_out1,
              data_in => Delay_out1_1,  -- sfix32_En28 [16]
              delays_in => delays,  -- sfix12_En6 [16]
              data_out => convert_to_sampling_rate_out1,  -- sfix32_En28 [16]
              delays_out => convert_to_sampling_rate_out2  -- sfix12_En6 [16]
              );

  u_delay_signals_instance1 : DSBF_delay_signals
    PORT MAP( clk => clk,
              reset => reset,
              enb_1_128_1 => enb_1_128_1,
              enb_1_2048_1 => enb_1_2048_1,
              enb_1_2048_0 => enb_1_2048_0,
              enb_1_128_0 => enb_1_128_0,
              data_in => std_logic_vector(data_in_0_1),  -- sfix32_En28
              delays => std_logic_vector(Delay2_out1(0)),  -- sfix12_En6
              Out1 => delay_signal_out1_0  -- sfix32_En28
              );

  u_delay_signals_instance2 : DSBF_delay_signals
    PORT MAP( clk => clk,
              reset => reset,
              enb_1_128_1 => enb_1_128_1,
              enb_1_2048_1 => enb_1_2048_1,
              enb_1_2048_0 => enb_1_2048_0,
              enb_1_128_0 => enb_1_128_0,
              data_in => std_logic_vector(data_in_1_1),  -- sfix32_En28
              delays => std_logic_vector(Delay2_out1(1)),  -- sfix12_En6
              Out1 => delay_signal_out1_1  -- sfix32_En28
              );

  u_delay_signals_instance3 : DSBF_delay_signals
    PORT MAP( clk => clk,
              reset => reset,
              enb_1_128_1 => enb_1_128_1,
              enb_1_2048_1 => enb_1_2048_1,
              enb_1_2048_0 => enb_1_2048_0,
              enb_1_128_0 => enb_1_128_0,
              data_in => std_logic_vector(data_in_2_1),  -- sfix32_En28
              delays => std_logic_vector(Delay2_out1(2)),  -- sfix12_En6
              Out1 => delay_signal_out1_2  -- sfix32_En28
              );

  u_delay_signals_instance4 : DSBF_delay_signals
    PORT MAP( clk => clk,
              reset => reset,
              enb_1_128_1 => enb_1_128_1,
              enb_1_2048_1 => enb_1_2048_1,
              enb_1_2048_0 => enb_1_2048_0,
              enb_1_128_0 => enb_1_128_0,
              data_in => std_logic_vector(data_in_3_1),  -- sfix32_En28
              delays => std_logic_vector(Delay2_out1(3)),  -- sfix12_En6
              Out1 => delay_signal_out1_3  -- sfix32_En28
              );

  u_delay_signals_instance5 : DSBF_delay_signals
    PORT MAP( clk => clk,
              reset => reset,
              enb_1_128_1 => enb_1_128_1,
              enb_1_2048_1 => enb_1_2048_1,
              enb_1_2048_0 => enb_1_2048_0,
              enb_1_128_0 => enb_1_128_0,
              data_in => std_logic_vector(data_in_4_1),  -- sfix32_En28
              delays => std_logic_vector(Delay2_out1(4)),  -- sfix12_En6
              Out1 => delay_signal_out1_4  -- sfix32_En28
              );

  u_delay_signals_instance6 : DSBF_delay_signals
    PORT MAP( clk => clk,
              reset => reset,
              enb_1_128_1 => enb_1_128_1,
              enb_1_2048_1 => enb_1_2048_1,
              enb_1_2048_0 => enb_1_2048_0,
              enb_1_128_0 => enb_1_128_0,
              data_in => std_logic_vector(data_in_5_1),  -- sfix32_En28
              delays => std_logic_vector(Delay2_out1(5)),  -- sfix12_En6
              Out1 => delay_signal_out1_5  -- sfix32_En28
              );

  u_delay_signals_instance7 : DSBF_delay_signals
    PORT MAP( clk => clk,
              reset => reset,
              enb_1_128_1 => enb_1_128_1,
              enb_1_2048_1 => enb_1_2048_1,
              enb_1_2048_0 => enb_1_2048_0,
              enb_1_128_0 => enb_1_128_0,
              data_in => std_logic_vector(data_in_6_1),  -- sfix32_En28
              delays => std_logic_vector(Delay2_out1(6)),  -- sfix12_En6
              Out1 => delay_signal_out1_6  -- sfix32_En28
              );

  u_delay_signals_instance8 : DSBF_delay_signals
    PORT MAP( clk => clk,
              reset => reset,
              enb_1_128_1 => enb_1_128_1,
              enb_1_2048_1 => enb_1_2048_1,
              enb_1_2048_0 => enb_1_2048_0,
              enb_1_128_0 => enb_1_128_0,
              data_in => std_logic_vector(data_in_7_1),  -- sfix32_En28
              delays => std_logic_vector(Delay2_out1(7)),  -- sfix12_En6
              Out1 => delay_signal_out1_7  -- sfix32_En28
              );

  u_delay_signals_instance9 : DSBF_delay_signals
    PORT MAP( clk => clk,
              reset => reset,
              enb_1_128_1 => enb_1_128_1,
              enb_1_2048_1 => enb_1_2048_1,
              enb_1_2048_0 => enb_1_2048_0,
              enb_1_128_0 => enb_1_128_0,
              data_in => std_logic_vector(data_in_8_1),  -- sfix32_En28
              delays => std_logic_vector(Delay2_out1(8)),  -- sfix12_En6
              Out1 => delay_signal_out1_8  -- sfix32_En28
              );

  u_delay_signals_instance10 : DSBF_delay_signals
    PORT MAP( clk => clk,
              reset => reset,
              enb_1_128_1 => enb_1_128_1,
              enb_1_2048_1 => enb_1_2048_1,
              enb_1_2048_0 => enb_1_2048_0,
              enb_1_128_0 => enb_1_128_0,
              data_in => std_logic_vector(data_in_9_1),  -- sfix32_En28
              delays => std_logic_vector(Delay2_out1(9)),  -- sfix12_En6
              Out1 => delay_signal_out1_9  -- sfix32_En28
              );

  u_delay_signals_instance11 : DSBF_delay_signals
    PORT MAP( clk => clk,
              reset => reset,
              enb_1_128_1 => enb_1_128_1,
              enb_1_2048_1 => enb_1_2048_1,
              enb_1_2048_0 => enb_1_2048_0,
              enb_1_128_0 => enb_1_128_0,
              data_in => std_logic_vector(data_in_10_1),  -- sfix32_En28
              delays => std_logic_vector(Delay2_out1(10)),  -- sfix12_En6
              Out1 => delay_signal_out1_10  -- sfix32_En28
              );

  u_delay_signals_instance12 : DSBF_delay_signals
    PORT MAP( clk => clk,
              reset => reset,
              enb_1_128_1 => enb_1_128_1,
              enb_1_2048_1 => enb_1_2048_1,
              enb_1_2048_0 => enb_1_2048_0,
              enb_1_128_0 => enb_1_128_0,
              data_in => std_logic_vector(data_in_11_1),  -- sfix32_En28
              delays => std_logic_vector(Delay2_out1(11)),  -- sfix12_En6
              Out1 => delay_signal_out1_11  -- sfix32_En28
              );

  u_delay_signals_instance13 : DSBF_delay_signals
    PORT MAP( clk => clk,
              reset => reset,
              enb_1_128_1 => enb_1_128_1,
              enb_1_2048_1 => enb_1_2048_1,
              enb_1_2048_0 => enb_1_2048_0,
              enb_1_128_0 => enb_1_128_0,
              data_in => std_logic_vector(data_in_12_1),  -- sfix32_En28
              delays => std_logic_vector(Delay2_out1(12)),  -- sfix12_En6
              Out1 => delay_signal_out1_12  -- sfix32_En28
              );

  u_delay_signals_instance14 : DSBF_delay_signals
    PORT MAP( clk => clk,
              reset => reset,
              enb_1_128_1 => enb_1_128_1,
              enb_1_2048_1 => enb_1_2048_1,
              enb_1_2048_0 => enb_1_2048_0,
              enb_1_128_0 => enb_1_128_0,
              data_in => std_logic_vector(data_in_13_1),  -- sfix32_En28
              delays => std_logic_vector(Delay2_out1(13)),  -- sfix12_En6
              Out1 => delay_signal_out1_13  -- sfix32_En28
              );

  u_delay_signals_instance15 : DSBF_delay_signals
    PORT MAP( clk => clk,
              reset => reset,
              enb_1_128_1 => enb_1_128_1,
              enb_1_2048_1 => enb_1_2048_1,
              enb_1_2048_0 => enb_1_2048_0,
              enb_1_128_0 => enb_1_128_0,
              data_in => std_logic_vector(data_in_14_1),  -- sfix32_En28
              delays => std_logic_vector(Delay2_out1(14)),  -- sfix12_En6
              Out1 => delay_signal_out1_14  -- sfix32_En28
              );

  u_delay_signals_instance16 : DSBF_delay_signals
    PORT MAP( clk => clk,
              reset => reset,
              enb_1_128_1 => enb_1_128_1,
              enb_1_2048_1 => enb_1_2048_1,
              enb_1_2048_0 => enb_1_2048_0,
              enb_1_128_0 => enb_1_128_0,
              data_in => std_logic_vector(data_in_15_1),  -- sfix32_En28
              delays => std_logic_vector(Delay2_out1(15)),  -- sfix12_En6
              Out1 => delay_signal_out1_15  -- sfix32_En28
              );

  u_normalize : DSBF_normalize
    PORT MAP( input_value => std_logic_vector(Sum_of_Elements_out1),  -- sfix36_En28
              normalized_value => normalize_out1  -- sfix32_En28
              );

  u_Detect_Change : DSBF_Detect_Change
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              U => std_logic_vector(Sum_of_Elements_out1),  -- sfix36_En28
              Y => Detect_Change_out1
              );

  outputgen3: FOR k IN 0 TO 15 GENERATE
    data_out_signed(k) <= signed(data_out(k));
  END GENERATE;

  Delay1_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay1_out1 <= '0';
    ELSIF rising_edge(clk) THEN
      IF enb = '1' THEN
        Delay1_out1 <= valid_out;
      END IF;
    END IF;
  END PROCESS Delay1_process;


  Delay_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay_out1 <= (OTHERS => to_signed(0, 32));
    ELSIF rising_edge(clk) THEN
      IF enb = '1' THEN
        Delay_out1 <= data_out_signed;
      END IF;
    END IF;
  END PROCESS Delay_process;


  outputgen2: FOR k IN 0 TO 15 GENERATE
    Delay_out1_1(k) <= std_logic_vector(Delay_out1(k));
  END GENERATE;

  outputgen1: FOR k IN 0 TO 15 GENERATE
    convert_to_sampling_rate_out1_signed(k) <= signed(convert_to_sampling_rate_out1(k));
  END GENERATE;

  Delay3_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay3_out1 <= (OTHERS => to_signed(0, 32));
    ELSIF rising_edge(clk) THEN
      IF enb_1_2048_0 = '1' THEN
        Delay3_out1 <= convert_to_sampling_rate_out1_signed;
      END IF;
    END IF;
  END PROCESS Delay3_process;


  data_in_0 <= Delay3_out1(0);

  outputgen: FOR k IN 0 TO 15 GENERATE
    convert_to_sampling_rate_out2_signed(k) <= signed(convert_to_sampling_rate_out2(k));
  END GENERATE;

  Delay2_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay2_out1 <= (OTHERS => to_signed(16#000#, 12));
    ELSIF rising_edge(clk) THEN
      IF enb_1_2048_0 = '1' THEN
        Delay2_out1 <= convert_to_sampling_rate_out2_signed;
      END IF;
    END IF;
  END PROCESS Delay2_process;


  delayMatch_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      data_in_0_1 <= to_signed(0, 32);
    ELSIF rising_edge(clk) THEN
      IF enb_1_2048_0 = '1' THEN
        data_in_0_1 <= data_in_0;
      END IF;
    END IF;
  END PROCESS delayMatch_process;


  data_in_1 <= Delay3_out1(1);

  delayMatch1_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      data_in_1_1 <= to_signed(0, 32);
    ELSIF rising_edge(clk) THEN
      IF enb_1_2048_0 = '1' THEN
        data_in_1_1 <= data_in_1;
      END IF;
    END IF;
  END PROCESS delayMatch1_process;


  data_in_2 <= Delay3_out1(2);

  delayMatch2_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      data_in_2_1 <= to_signed(0, 32);
    ELSIF rising_edge(clk) THEN
      IF enb_1_2048_0 = '1' THEN
        data_in_2_1 <= data_in_2;
      END IF;
    END IF;
  END PROCESS delayMatch2_process;


  data_in_3 <= Delay3_out1(3);

  delayMatch3_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      data_in_3_1 <= to_signed(0, 32);
    ELSIF rising_edge(clk) THEN
      IF enb_1_2048_0 = '1' THEN
        data_in_3_1 <= data_in_3;
      END IF;
    END IF;
  END PROCESS delayMatch3_process;


  data_in_4 <= Delay3_out1(4);

  delayMatch4_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      data_in_4_1 <= to_signed(0, 32);
    ELSIF rising_edge(clk) THEN
      IF enb_1_2048_0 = '1' THEN
        data_in_4_1 <= data_in_4;
      END IF;
    END IF;
  END PROCESS delayMatch4_process;


  data_in_5 <= Delay3_out1(5);

  delayMatch5_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      data_in_5_1 <= to_signed(0, 32);
    ELSIF rising_edge(clk) THEN
      IF enb_1_2048_0 = '1' THEN
        data_in_5_1 <= data_in_5;
      END IF;
    END IF;
  END PROCESS delayMatch5_process;


  data_in_6 <= Delay3_out1(6);

  delayMatch6_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      data_in_6_1 <= to_signed(0, 32);
    ELSIF rising_edge(clk) THEN
      IF enb_1_2048_0 = '1' THEN
        data_in_6_1 <= data_in_6;
      END IF;
    END IF;
  END PROCESS delayMatch6_process;


  data_in_7 <= Delay3_out1(7);

  delayMatch7_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      data_in_7_1 <= to_signed(0, 32);
    ELSIF rising_edge(clk) THEN
      IF enb_1_2048_0 = '1' THEN
        data_in_7_1 <= data_in_7;
      END IF;
    END IF;
  END PROCESS delayMatch7_process;


  data_in_8 <= Delay3_out1(8);

  delayMatch8_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      data_in_8_1 <= to_signed(0, 32);
    ELSIF rising_edge(clk) THEN
      IF enb_1_2048_0 = '1' THEN
        data_in_8_1 <= data_in_8;
      END IF;
    END IF;
  END PROCESS delayMatch8_process;


  data_in_9 <= Delay3_out1(9);

  delayMatch9_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      data_in_9_1 <= to_signed(0, 32);
    ELSIF rising_edge(clk) THEN
      IF enb_1_2048_0 = '1' THEN
        data_in_9_1 <= data_in_9;
      END IF;
    END IF;
  END PROCESS delayMatch9_process;


  data_in_10 <= Delay3_out1(10);

  delayMatch10_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      data_in_10_1 <= to_signed(0, 32);
    ELSIF rising_edge(clk) THEN
      IF enb_1_2048_0 = '1' THEN
        data_in_10_1 <= data_in_10;
      END IF;
    END IF;
  END PROCESS delayMatch10_process;


  data_in_11 <= Delay3_out1(11);

  delayMatch11_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      data_in_11_1 <= to_signed(0, 32);
    ELSIF rising_edge(clk) THEN
      IF enb_1_2048_0 = '1' THEN
        data_in_11_1 <= data_in_11;
      END IF;
    END IF;
  END PROCESS delayMatch11_process;


  data_in_12 <= Delay3_out1(12);

  delayMatch12_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      data_in_12_1 <= to_signed(0, 32);
    ELSIF rising_edge(clk) THEN
      IF enb_1_2048_0 = '1' THEN
        data_in_12_1 <= data_in_12;
      END IF;
    END IF;
  END PROCESS delayMatch12_process;


  data_in_13 <= Delay3_out1(13);

  delayMatch13_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      data_in_13_1 <= to_signed(0, 32);
    ELSIF rising_edge(clk) THEN
      IF enb_1_2048_0 = '1' THEN
        data_in_13_1 <= data_in_13;
      END IF;
    END IF;
  END PROCESS delayMatch13_process;


  data_in_14 <= Delay3_out1(14);

  delayMatch14_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      data_in_14_1 <= to_signed(0, 32);
    ELSIF rising_edge(clk) THEN
      IF enb_1_2048_0 = '1' THEN
        data_in_14_1 <= data_in_14;
      END IF;
    END IF;
  END PROCESS delayMatch14_process;


  data_in_15 <= Delay3_out1(15);

  delayMatch15_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      data_in_15_1 <= to_signed(0, 32);
    ELSIF rising_edge(clk) THEN
      IF enb_1_2048_0 = '1' THEN
        data_in_15_1 <= data_in_15;
      END IF;
    END IF;
  END PROCESS delayMatch15_process;


  delay_signals_out1(0) <= signed(delay_signal_out1_0);
  delay_signals_out1(1) <= signed(delay_signal_out1_1);
  delay_signals_out1(2) <= signed(delay_signal_out1_2);
  delay_signals_out1(3) <= signed(delay_signal_out1_3);
  delay_signals_out1(4) <= signed(delay_signal_out1_4);
  delay_signals_out1(5) <= signed(delay_signal_out1_5);
  delay_signals_out1(6) <= signed(delay_signal_out1_6);
  delay_signals_out1(7) <= signed(delay_signal_out1_7);
  delay_signals_out1(8) <= signed(delay_signal_out1_8);
  delay_signals_out1(9) <= signed(delay_signal_out1_9);
  delay_signals_out1(10) <= signed(delay_signal_out1_10);
  delay_signals_out1(11) <= signed(delay_signal_out1_11);
  delay_signals_out1(12) <= signed(delay_signal_out1_12);
  delay_signals_out1(13) <= signed(delay_signal_out1_13);
  delay_signals_out1(14) <= signed(delay_signal_out1_14);
  delay_signals_out1(15) <= signed(delay_signal_out1_15);

  Delay4_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay4_out1 <= (OTHERS => to_signed(0, 32));
    ELSIF rising_edge(clk) THEN
      IF enb = '1' THEN
        Delay4_out1 <= delay_signals_out1;
      END IF;
    END IF;
  END PROCESS Delay4_process;


  Sum_of_Elements_add_cast <= resize(Delay4_out1(0), 36);
  Sum_of_Elements_add_cast_1 <= resize(Delay4_out1(1), 36);
  Sum_of_Elements_add_temp <= Sum_of_Elements_add_cast + Sum_of_Elements_add_cast_1;
  Sum_of_Elements_add_cast_2 <= resize(Delay4_out1(2), 36);
  Sum_of_Elements_add_temp_1 <= Sum_of_Elements_add_temp + Sum_of_Elements_add_cast_2;
  Sum_of_Elements_add_cast_3 <= resize(Delay4_out1(3), 36);
  Sum_of_Elements_add_temp_2 <= Sum_of_Elements_add_temp_1 + Sum_of_Elements_add_cast_3;
  Sum_of_Elements_add_cast_4 <= resize(Delay4_out1(4), 36);
  Sum_of_Elements_add_temp_3 <= Sum_of_Elements_add_temp_2 + Sum_of_Elements_add_cast_4;
  Sum_of_Elements_add_cast_5 <= resize(Delay4_out1(5), 36);
  Sum_of_Elements_add_temp_4 <= Sum_of_Elements_add_temp_3 + Sum_of_Elements_add_cast_5;
  Sum_of_Elements_add_cast_6 <= resize(Delay4_out1(6), 36);
  Sum_of_Elements_add_temp_5 <= Sum_of_Elements_add_temp_4 + Sum_of_Elements_add_cast_6;
  Sum_of_Elements_add_cast_7 <= resize(Delay4_out1(7), 36);
  Sum_of_Elements_add_temp_6 <= Sum_of_Elements_add_temp_5 + Sum_of_Elements_add_cast_7;
  Sum_of_Elements_add_cast_8 <= resize(Delay4_out1(8), 36);
  Sum_of_Elements_add_temp_7 <= Sum_of_Elements_add_temp_6 + Sum_of_Elements_add_cast_8;
  Sum_of_Elements_add_cast_9 <= resize(Delay4_out1(9), 36);
  Sum_of_Elements_add_temp_8 <= Sum_of_Elements_add_temp_7 + Sum_of_Elements_add_cast_9;
  Sum_of_Elements_add_cast_10 <= resize(Delay4_out1(10), 36);
  Sum_of_Elements_add_temp_9 <= Sum_of_Elements_add_temp_8 + Sum_of_Elements_add_cast_10;
  Sum_of_Elements_add_cast_11 <= resize(Delay4_out1(11), 36);
  Sum_of_Elements_add_temp_10 <= Sum_of_Elements_add_temp_9 + Sum_of_Elements_add_cast_11;
  Sum_of_Elements_add_cast_12 <= resize(Delay4_out1(12), 36);
  Sum_of_Elements_add_temp_11 <= Sum_of_Elements_add_temp_10 + Sum_of_Elements_add_cast_12;
  Sum_of_Elements_add_cast_13 <= resize(Delay4_out1(13), 36);
  Sum_of_Elements_add_temp_12 <= Sum_of_Elements_add_temp_11 + Sum_of_Elements_add_cast_13;
  Sum_of_Elements_add_cast_14 <= resize(Delay4_out1(14), 36);
  Sum_of_Elements_add_temp_13 <= Sum_of_Elements_add_temp_12 + Sum_of_Elements_add_cast_14;
  Sum_of_Elements_add_cast_15 <= resize(Delay4_out1(15), 36);
  Sum_of_Elements_out1 <= Sum_of_Elements_add_temp_13 + Sum_of_Elements_add_cast_15;

  Constant_out1 <= '0';

  Source_Data <= normalize_out1;

  Source_Channel <= Constant_out1;

  Source_Valid <= Detect_Change_out1;

END rtl;
