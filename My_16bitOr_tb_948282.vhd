--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:55:00 11/18/2013
-- Design Name:   
-- Module Name:   C:/Users/etingi01/Mips32_948282_18.11.2013/My_16bitOr_tb_948282.vhd
-- Project Name:  Mips32_948282_18.11.2013
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: My_16bitOr_948282
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
 
ENTITY My_16bitOr_tb_948282 IS
END My_16bitOr_tb_948282;
 
ARCHITECTURE behavior OF My_16bitOr_tb_948282 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT My_16bitOr_948282
    PORT(
         A_el_8282 : IN  std_logic_vector(15 downto 0);
         B_el_8282 : IN  std_logic_vector(15 downto 0);
         R_el_8282 : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A_el_8282 : std_logic_vector(15 downto 0) := (others => '0');
   signal B_el_8282 : std_logic_vector(15 downto 0) := (others => '0');


 	--Outputs
   signal R_el_8282 : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: My_16bitOr_948282 PORT MAP (
          A_el_8282 => A_el_8282,
          B_el_8282 => B_el_8282,
          R_el_8282 => R_el_8282
        );



   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;
		A_el_8282<="0011001111001101";
		B_el_8282<="0100100010001100";
      wait;
   end process;

END;
