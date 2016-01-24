--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:04:00 11/18/2013
-- Design Name:   
-- Module Name:   C:/Users/etingi01/Mips32_948282_18.11.2013/My_32bitOr_tb_948282.vhd
-- Project Name:  Mips32_948282_18.11.2013
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: My_32bitOr_948282
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY My_32bitOr_tb_948282 IS
END My_32bitOr_tb_948282;
 
ARCHITECTURE behavior OF My_32bitOr_tb_948282 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT My_32bitOr_948282
    PORT(
         inA_8282 : IN  std_logic_vector(31 downto 0);
         inB_8282 : IN  std_logic_vector(31 downto 0);
         outR_8282 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal inA_8282 : std_logic_vector(31 downto 0) := (others => '0');
   signal inB_8282 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal outR_8282 : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: My_32bitOr_948282 PORT MAP (
          inA_8282 => inA_8282,
          inB_8282 => inB_8282,
          outR_8282 => outR_8282
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

		inA_8282<="01111001011001110001100111110010";
		inB_8282<="00000011111111110000110001111001";
      wait;
   end process;

END;
