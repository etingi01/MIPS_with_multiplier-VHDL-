--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:46:33 11/19/2013
-- Design Name:   
-- Module Name:   C:/Users/etingi01/Mips32_948282_19.11.2013/My_4bit4x1Mux_tb_948282.vhd
-- Project Name:  Mips32_948282_19.11.2013
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: My_4bit4x1Mux_948282
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
 
ENTITY My_4bit4x1Mux_tb_948282 IS
END My_4bit4x1Mux_tb_948282;
 
ARCHITECTURE behavior OF My_4bit4x1Mux_tb_948282 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT My_4bit4x1Mux_948282
    PORT(
         S1 : IN  std_logic;
         S2 : IN  std_logic;
         A_in : IN  std_logic_vector(3 downto 0);
         B_in : IN  std_logic_vector(3 downto 0);
         C_in : IN  std_logic_vector(3 downto 0);
         D_in : IN  std_logic_vector(3 downto 0);
         Decision : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal S1 : std_logic := '0';
   signal S2 : std_logic := '0';
   signal A_in : std_logic_vector(3 downto 0) := (others => '0');
   signal B_in : std_logic_vector(3 downto 0) := (others => '0');
   signal C_in : std_logic_vector(3 downto 0) := (others => '0');
   signal D_in : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Decision : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: My_4bit4x1Mux_948282 PORT MAP (
          S1 => S1,
          S2 => S2,
          A_in => A_in,
          B_in => B_in,
          C_in => C_in,
          D_in => D_in,
          Decision => Decision
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      S1<='0';
		S2<='1';
		A_in<="1100";
		B_in<="0011";
		C_in<="1111";
		D_in<="1110";

      wait;
   end process;

END;
