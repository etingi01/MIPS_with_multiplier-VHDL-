--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:11:21 11/19/2013
-- Design Name:   
-- Module Name:   C:/Users/etingi01/Mips32_948282_19.11.2013/My_32bit4x1Mux_tb_948282.vhd
-- Project Name:  Mips32_948282_19.11.2013
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: My_32bit4x1Mux_948282
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
 
ENTITY My_32bit4x1Mux_tb_948282 IS
END My_32bit4x1Mux_tb_948282;
 
ARCHITECTURE behavior OF My_32bit4x1Mux_tb_948282 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT My_32bit4x1Mux_948282
    PORT(
         Select1 : IN  std_logic;
         Select2 : IN  std_logic;
         A : IN  std_logic_vector(31 downto 0);
         B : IN  std_logic_vector(31 downto 0);
         C : IN  std_logic_vector(31 downto 0);
         D : IN  std_logic_vector(31 downto 0);
         R : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Select1 : std_logic := '0';
   signal Select2 : std_logic := '0';
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');
   signal C : std_logic_vector(31 downto 0) := (others => '0');
   signal D : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal R : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: My_32bit4x1Mux_948282 PORT MAP (
          Select1 => Select1,
          Select2 => Select2,
          A => A,
          B => B,
          C => C,
          D => D,
          R => R
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;
		Select1<='0';
		Select2<='1';
		A<="11111111111111111110000111111111";
		B<="11111111110000000000000000000000";
		C<="00000000000000000000000000000000";
		D<="11111111111111111111111111111111";
		
      wait;
   end process;

END;
