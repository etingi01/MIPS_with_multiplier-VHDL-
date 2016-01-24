--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:43:51 11/18/2013
-- Design Name:   
-- Module Name:   C:/Users/etingi01/Mips32_948282_18.11.2013/My_4bitAnd_tb_94828.vhd
-- Project Name:  Mips32_948282_18.11.2013
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: My_4bitAnd_948282
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
 
ENTITY My_4bitAnd_tb_94828 IS
END My_4bitAnd_tb_94828;
 
ARCHITECTURE behavior OF My_4bitAnd_tb_94828 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT My_4bitAnd_948282
    PORT(
         A_in : IN  std_logic_vector(3 downto 0);
         B_in : IN  std_logic_vector(3 downto 0);
         R_in : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A_in : std_logic_vector(3 downto 0) := (others => '0');
   signal B_in : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal R_in : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: My_4bitAnd_948282 PORT MAP (
          A_in => A_in,
          B_in => B_in,
          R_in => R_in
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
      wait for clk_period*10;
		
		A_in<="0110";
		B_in<="0111";
      wait;
   end process;

END;
