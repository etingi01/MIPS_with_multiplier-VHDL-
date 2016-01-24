--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:24:20 11/18/2013
-- Design Name:   
-- Module Name:   C:/Users/etingi01/Mips32_948282_18.11.2013/My_32bitAnd_tb_948282.vhd
-- Project Name:  Mips32_948282_18.11.2013
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: My_32bitAnd_948282
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
 
ENTITY My_32bitAnd_tb_948282 IS
END My_32bitAnd_tb_948282;
 
ARCHITECTURE behavior OF My_32bitAnd_tb_948282 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT My_32bitAnd_948282
    PORT(
         A_8282 : IN  std_logic_vector(31 downto 0);
         B_8282 : IN  std_logic_vector(31 downto 0);
         R_8282 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A_8282 : std_logic_vector(31 downto 0) := (others => '0');
   signal B_8282 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal R_8282 : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: My_32bitAnd_948282 PORT MAP (
          A_8282 => A_8282,
          B_8282 => B_8282,
          R_8282 => R_8282
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

		A_8282<="00000000000000000000000000000001";
		B_8282<="00000000000000000000000000000000";
      wait;
   end process;

END;
