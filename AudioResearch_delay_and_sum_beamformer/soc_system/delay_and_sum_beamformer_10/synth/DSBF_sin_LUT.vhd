-- -------------------------------------------------------------
-- 
-- File Name: /mnt/data/trevor/research/NIH_SBIR_R44_DC015443/simulink_models/models/delay_and_sum_beamformer/hdlsrc/DSBF/DSBF_sin_LUT.vhd
-- 
-- Generated by MATLAB 9.7 and HDL Coder 3.15
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: DSBF_sin_LUT
-- Source Path: DSBF/dataplane/compute projections/compute sine/sin LUT
-- Hierarchy Level: 3
-- 
-- Simulink subsystem description for DSBF/dataplane/compute projections/compute sine/sin LUT:
-- 
-- This block was created using function approximation.
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.DSBF_dataplane_pkg.ALL;

ENTITY DSBF_sin_LUT IS
  PORT( angle                             :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En8
        sin_angle                         :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En14
        );
END DSBF_sin_LUT;


ARCHITECTURE rtl OF DSBF_sin_LUT IS

  -- Constants
  CONSTANT LUT1_data                      : vector_of_signed16(0 TO 22) := 
    (to_signed(16#0000#, 16), to_signed(16#0477#, 16), to_signed(16#08E8#, 16), to_signed(16#0D4E#, 16),
     to_signed(16#11A4#, 16), to_signed(16#15E4#, 16), to_signed(16#1A08#, 16), to_signed(16#1E0C#, 16),
     to_signed(16#21EA#, 16), to_signed(16#259E#, 16), to_signed(16#2923#, 16), to_signed(16#2C75#, 16),
     to_signed(16#2F90#, 16), to_signed(16#326F#, 16), to_signed(16#350F#, 16), to_signed(16#376D#, 16),
     to_signed(16#3986#, 16), to_signed(16#3B57#, 16), to_signed(16#3CDE#, 16), to_signed(16#3E19#, 16),
     to_signed(16#3F07#, 16), to_signed(16#3FA6#, 16), to_signed(16#3FF6#, 16));  -- sfix16 [23]

  -- Signals
  SIGNAL angle_signed                     : signed(15 DOWNTO 0);  -- sfix16_En8
  SIGNAL LUT1_out1                        : signed(15 DOWNTO 0);  -- sfix16_En14

BEGIN
  -- 
  angle_signed <= signed(angle);

  LUT1_output : PROCESS (angle_signed)
    VARIABLE dout_low : signed(15 DOWNTO 0);
    VARIABLE k : unsigned(4 DOWNTO 0);
    VARIABLE f : unsigned(31 DOWNTO 0);
    VARIABLE cast : signed(15 DOWNTO 0);
    VARIABLE cast_0 : signed(15 DOWNTO 0);
    VARIABLE in0 : signed(15 DOWNTO 0);
    VARIABLE add_cast : signed(48 DOWNTO 0);
    VARIABLE cast_1 : signed(32 DOWNTO 0);
    VARIABLE sub_temp : signed(15 DOWNTO 0);
    VARIABLE mul_temp : signed(48 DOWNTO 0);
    VARIABLE add_cast_0 : signed(47 DOWNTO 0);
    VARIABLE add_cast_1 : signed(48 DOWNTO 0);
    VARIABLE add_temp : signed(48 DOWNTO 0);
  BEGIN
    IF angle_signed <= to_signed(16#0000#, 16) THEN 
      k := to_unsigned(16#00#, 5);
    ELSIF angle_signed >= to_signed(16#5800#, 16) THEN 
      k := to_unsigned(16#16#, 5);
    ELSE 
      cast := resize(angle_signed(15 DOWNTO 8), 16);
      cast_0 := SHIFT_RIGHT(cast, 2);
      k := unsigned(cast_0(4 DOWNTO 0));
    END IF;
    IF (angle_signed <= to_signed(16#0000#, 16)) OR (angle_signed >= to_signed(16#5800#, 16)) THEN 
      f := to_unsigned(0, 32);
    ELSE 
      in0 := angle_signed AND to_signed(16#03FF#, 16);
      f := unsigned(in0(9 DOWNTO 0) & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0');
    END IF;
    dout_low := LUT1_data(to_integer(k));
    IF k = to_unsigned(16#16#, 5) THEN 
      NULL;
    ELSE 
      k := k + to_unsigned(16#01#, 5);
    END IF;
    add_cast := resize(dout_low & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0', 49);
    cast_1 := signed(resize(f, 33));
    sub_temp := LUT1_data(to_integer(k)) - dout_low;
    mul_temp := cast_1 * sub_temp;
    add_cast_0 := mul_temp(47 DOWNTO 0);
    add_cast_1 := resize(add_cast_0, 49);
    add_temp := add_cast + add_cast_1;
    LUT1_out1 <= add_temp(47 DOWNTO 32);
  END PROCESS LUT1_output;


  sin_angle <= std_logic_vector(LUT1_out1);

END rtl;

