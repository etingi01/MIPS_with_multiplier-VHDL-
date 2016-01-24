--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:31:20 11/17/2013
-- Design Name:   
-- Module Name:   C:/Users/etingi01/Mips32_948282/My_Adder_tb_948282.vhd
-- Project Name:  Mips32_948282
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: My_Adder_948282
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
 
ENTITY My_Adder_tb_948282 IS
END My_Adder_tb_948282;
 
ARCHITECTURE behavior OF My_Adder_tb_948282 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT My_Adder_948282
    PORT(
         A_element : IN  std_logic;
         B_element : IN  std_logic;
         CarryIn : IN  std_logic;
         CarryOut : OUT  std_logic;
         Result : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A_element : std_logic := '0';
   signal B_element : std_logic := '0';
   signal CarryIn : std_logic := '0';

 	--Outputs
   signal CarryOut : std_logic;
   signal Result : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: My_Adder_948282 PORT MAP (
          A_element => A_element,
          B_element => B_element,
          CarryIn => CarryIn,
          CarryOut => CarryOut,
          Result => Result
        );

    

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      A_element<='1';
		B_element<='0';
		CarryIn<='0';
		wait for 100 ns;
		A_element<='1';
		B_element<='1';
		CarryIn<='1';
		wait for 100 ns;
		
		

      wait;
   end process;

END;
