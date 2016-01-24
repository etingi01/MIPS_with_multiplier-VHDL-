--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:48:40 11/19/2013
-- Design Name:   
-- Module Name:   C:/Users/etingi01/Mips32_948282_19.11.2013/Tester_tb.vhd
-- Project Name:  Mips32_948282_19.11.2013
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Tester
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
 
ENTITY Tester_tb IS
END Tester_tb;
 
ARCHITECTURE behavior OF Tester_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Tester
    PORT(
         A : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

 	--Outputs
   signal A : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Tester PORT MAP (
          A => A
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
