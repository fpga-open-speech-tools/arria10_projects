-- -------------------------------------------------------------
-- 
-- File Name: D:\NIH3Repo\simulink_models\models\delay_and_sum_beamformer\hdlsrc\DSBF\DSBF_CIC_interpolation_compensator.vhd
-- 
-- Generated by MATLAB 9.7 and HDL Coder 3.15
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: DSBF_CIC_interpolation_compensator
-- Source Path: DSBF/dataplane/Avalon Data Processing/delay signals/delay signal/CIC interpolation compensator
-- Hierarchy Level: 4
-- 
-- Discrete FIR Filter HDL Optimized
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY DSBF_CIC_interpolation_compensator IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb_1_2048_0                      :   IN    std_logic;
        dataIn                            :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32_En28
        validIn                           :   IN    std_logic;
        dataOut                           :   OUT   std_logic_vector(31 DOWNTO 0);  -- sfix32_En26
        validOut                          :   OUT   std_logic
        );
END DSBF_CIC_interpolation_compensator;


ARCHITECTURE rtl OF DSBF_CIC_interpolation_compensator IS

  -- Component Declarations
  COMPONENT DSBF_FilterBank
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb_1_2048_0                    :   IN    std_logic;
          dataIn                          :   IN    std_logic_vector(31 DOWNTO 0);  -- sfix32_En28
          validIn                         :   IN    std_logic;
          syncReset                       :   IN    std_logic;
          dataOut                         :   OUT   std_logic_vector(31 DOWNTO 0);  -- sfix32_En26
          validOut                        :   OUT   std_logic
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : DSBF_FilterBank
    USE ENTITY work.DSBF_FilterBank(rtl);

  -- Signals
  SIGNAL syncReset                        : std_logic;
  SIGNAL dataOut_tmp                      : std_logic_vector(31 DOWNTO 0);  -- ufix32

BEGIN
  u_FilterBank : DSBF_FilterBank
    PORT MAP( clk => clk,
              reset => reset,
              enb_1_2048_0 => enb_1_2048_0,
              dataIn => dataIn,  -- sfix32_En28
              validIn => validIn,
              syncReset => syncReset,
              dataOut => dataOut_tmp,  -- sfix32_En26
              validOut => validOut
              );

  syncReset <= '0';

  dataOut <= dataOut_tmp;

END rtl;

