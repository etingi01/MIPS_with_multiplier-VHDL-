--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:10:22 11/17/2013
-- Design Name:   
-- Module Name:   C:/Users/etingi01/Mips32_948282/My_32bitAdder_tb_948282.vhd
-- Project Name:  Mips32_948282
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: My_32bitAdder_948282
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
 
ENTITY My_32bitAdder_tb_948282 IS
END My_32bitAdder_tb_948282;
 
ARCHITECTURE behavior OF My_32bitAdder_tb_948282 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT My_32bitAdder_948282
    PORT(
         A_reg : IN  std_logic_vector(31 downto 0);
         B_reg : IN  std_logic_vector(31 downto 0);
         CarryIn : IN  std_logic;
         CarryOut : OUT  std_logic;
         Result : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A_reg : std_logic_vector(31 downto 0) := (others => '0');
   signal B_reg : std_logic_vector(31 downto 0) := (others => '0');
   signal CarryIn : std_logic := '0';
   signal CarryOut : std_logic := '0';

 	--Outputs
   signal Result : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: My_32bitAdder_948282 PORT MAP (
          A_reg => A_reg,
          B_reg => B_reg,
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
		
		CarryIn<='0';
		A_reg<="00000000000000000000000000000001";
		B_reg<="00000000000000000000000000000100";
      
      wait;
   end process;

END;
