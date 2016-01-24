--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:11:55 11/19/2013
-- Design Name:   
-- Module Name:   C:/Users/etingi01/Mips32_948282_19.11.2013/My_16bitMult_tb_948282.vhd
-- Project Name:  Mips32_948282_19.11.2013
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: My_16bitMult_948282
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
 
ENTITY My_16bitMult_tb_948282 IS
END My_16bitMult_tb_948282;
 
ARCHITECTURE behavior OF My_16bitMult_tb_948282 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT My_16bitMult_948282
    PORT(
         A_inputM : IN  std_logic_vector(15 downto 0);
         B_inputM : IN  std_logic_vector(15 downto 0);
         Hi_out : OUT  std_logic_vector(15 downto 0);
         Lo_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A_inputM : std_logic_vector(15 downto 0) := (others => '0');
   signal B_inputM : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal Hi_out : std_logic_vector(15 downto 0);
   signal Lo_out : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: My_16bitMult_948282 PORT MAP (
          A_inputM => A_inputM,
          B_inputM => B_inputM,
          Hi_out => Hi_out,
          Lo_out => Lo_out
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

     A_inputM<="0000000000000001";
	  B_inputM<="0000000000000100";
      wait;
   end process;

END;
