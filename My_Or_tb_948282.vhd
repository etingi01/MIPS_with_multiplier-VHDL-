--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:17:10 11/17/2013
-- Design Name:   
-- Module Name:   C:/Users/etingi01/Mips32_948282/My_Or_tb_948282.vhd
-- Project Name:  Mips32_948282
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: My_Or_948282
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
 
ENTITY My_Or_tb_948282 IS
END My_Or_tb_948282;
 
ARCHITECTURE behavior OF My_Or_tb_948282 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT My_Or_948282
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         R : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal R : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: My_Or_948282 PORT MAP (
          A => A,
          B => B,
          R => R
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;
		
		A<='0';
		B<='0';
		wait for 20 ns;
		A<='1';
		B<='0';
		wait for 20 ns;
		A<='1';
		B<='1';
		wait for 20 ns;
      wait;
   end process;

END;
