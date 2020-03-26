-- -------------------------------------------------------------
-- 
-- File Name: /mnt/data/trevor/research/NIH_SBIR_R44_DC015443/simulink_models/models/delay_and_sum_beamformer/hdlsrc/DSBF/DSBF_read_address_generator1.vhd
-- 
-- Generated by MATLAB 9.7 and HDL Coder 3.15
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: DSBF_read_address_generator1
-- Source Path: DSBF/dataplane/Avalon Data Processing/delay signals/delay signal/read address generator1
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY DSBF_read_address_generator1 IS
  PORT( write_addr                        :   IN    std_logic_vector(6 DOWNTO 0);  -- ufix7
        delay                             :   IN    std_logic_vector(6 DOWNTO 0);  -- sfix7
        read_addr                         :   OUT   std_logic_vector(6 DOWNTO 0)  -- ufix7
        );
END DSBF_read_address_generator1;


ARCHITECTURE rtl OF DSBF_read_address_generator1 IS

  -- Signals
  SIGNAL delay_signed                     : signed(6 DOWNTO 0);  -- sfix7
  SIGNAL write_addr_unsigned              : unsigned(6 DOWNTO 0);  -- ufix7
  SIGNAL Subtract_stage2_add_cast         : signed(8 DOWNTO 0);  -- sfix9
  SIGNAL Subtract_op_stage2               : signed(8 DOWNTO 0);  -- sfix9
  SIGNAL phase_center_reference_offset_out1 : unsigned(6 DOWNTO 0);  -- ufix7
  SIGNAL Increment_Real_World_out1        : unsigned(6 DOWNTO 0);  -- ufix7
  SIGNAL Subtract_stage3_sub_cast         : signed(8 DOWNTO 0);  -- sfix9
  SIGNAL Subtract_stage3_sub_temp         : signed(8 DOWNTO 0);  -- sfix9
  SIGNAL Subtract_out1                    : unsigned(6 DOWNTO 0);  -- ufix7

BEGIN
  -- wrap on overflow is the desired behavior
  -- 
  -- To accommodate positive and negative delays, the read pointer needs to lag the write pointer by the maximum delay 
  -- + 1. For the maximum positive delay, this puts the read pointer 1 behind the write pointer.
  -- 
  -- this offset is the maximum possible delay from a microphone to the the center of the array

  delay_signed <= signed(delay);

  write_addr_unsigned <= unsigned(write_addr);

  Subtract_stage2_add_cast <= signed(resize(write_addr_unsigned, 9));
  Subtract_op_stage2 <= resize(delay_signed, 9) + Subtract_stage2_add_cast;

  phase_center_reference_offset_out1 <= to_unsigned(16#20#, 7);

  Increment_Real_World_out1 <= phase_center_reference_offset_out1 + to_unsigned(16#01#, 7);

  Subtract_stage3_sub_cast <= signed(resize(Increment_Real_World_out1, 9));
  Subtract_stage3_sub_temp <= Subtract_op_stage2 - Subtract_stage3_sub_cast;
  Subtract_out1 <= unsigned(Subtract_stage3_sub_temp(6 DOWNTO 0));

  read_addr <= std_logic_vector(Subtract_out1);

END rtl;

