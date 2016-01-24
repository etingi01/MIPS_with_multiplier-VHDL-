--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:28:55 11/19/2013
-- Design Name:   
-- Module Name:   C:/Users/etingi01/Mips32_948282_19.11.2013/My_16bitAdder_tb_948282.vhd
-- Project Name:  Mips32_948282_19.11.2013
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: My_16bitAdder_948282
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
 
ENTITY My_16bitAdder_tb_948282 IS
END My_16bitAdder_tb_948282;
 
ARCHITECTURE behavior OF My_16bitAdder_tb_948282 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT My_16bitAdder_948282
    PORT(
         A_input : IN  std_logic_vector(15 downto 0);
         B_input : IN  std_logic_vector(15 downto 0);
         Sum_out : OUT  std_logic_vector(15 downto 0);
         Carry_in : IN  std_logic;
         Carry_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A_input : std_logic_vector(15 downto 0) := (others => '0');
   signal B_input : std_logic_vector(15 downto 0) := (others => '0');
   signal Carry_in : std_logic := '0';

 	--Outputs
   signal Sum_out : std_logic_vector(15 downto 0);
   signal Carry_out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: My_16bitAdder_948282 PORT MAP (
          A_input => A_input,
          B_input => B_input,
          Sum_out => Sum_out,
          Carry_in => Carry_in,
          Carry_out => Carry_out
        );



   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;
		A_input<="0111011101101100";
		Carry_in<='1';
		B_input<="0000001111100001";
		
      wait;
   end process;

END;
