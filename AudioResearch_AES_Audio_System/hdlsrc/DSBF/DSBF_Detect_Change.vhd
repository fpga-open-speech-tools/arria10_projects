-- -------------------------------------------------------------
-- 
-- File Name: D:\NIH3Repo\simulink_models\models\delay_and_sum_beamformer\hdlsrc\DSBF\DSBF_Detect_Change.vhd
-- 
-- Generated by MATLAB 9.7 and HDL Coder 3.15
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: DSBF_Detect_Change
-- Source Path: DSBF/dataplane/Avalon Data Processing/Detect Change
-- Hierarchy Level: 2
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY DSBF_Detect_Change IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        U                                 :   IN    std_logic_vector(35 DOWNTO 0);  -- sfix36_En28
        Y                                 :   OUT   std_logic
        );
END DSBF_Detect_Change;


ARCHITECTURE rtl OF DSBF_Detect_Change IS

  -- Signals
  SIGNAL U_signed                         : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL U_k_1                            : signed(35 DOWNTO 0);  -- sfix36_En28
  SIGNAL FixPt_Relational_Operator_relop1 : std_logic;

BEGIN
  -- Edge
  -- 
  -- U(k)

  U_signed <= signed(U);

  -- 
  -- Store in Global RAM
  -- 
  Delay_Input1_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      U_k_1 <= to_signed(0, 36);
    ELSIF rising_edge(clk) THEN
      IF enb = '1' THEN
        U_k_1 <= U_signed;
      END IF;
    END IF;
  END PROCESS Delay_Input1_process;


  
  FixPt_Relational_Operator_relop1 <= '1' WHEN U_signed /= U_k_1 ELSE
      '0';

  Y <= FixPt_Relational_Operator_relop1;

END rtl;
