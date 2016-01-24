--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:59:49 11/19/2013
-- Design Name:   
-- Module Name:   C:/Users/etingi01/Mips32_948282_19.11.2013/My_16bit4x1Mux_tb_948282.vhd
-- Project Name:  Mips32_948282_19.11.2013
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: My_16bit4x1Mux_948282
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
 
ENTITY My_16bit4x1Mux_tb_948282 IS
END My_16bit4x1Mux_tb_948282;
 
ARCHITECTURE behavior OF My_16bit4x1Mux_tb_948282 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT My_16bit4x1Mux_948282
    PORT(
         S_1 : IN  std_logic;
         S_2 : IN  std_logic;
         A_mux : IN  std_logic_vector(15 downto 0);
         B_mux : IN  std_logic_vector(15 downto 0);
         C_mux : IN  std_logic_vector(15 downto 0);
         D_mux : IN  std_logic_vector(15 downto 0);
         Result : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal S_1 : std_logic := '0';
   signal S_2 : std_logic := '0';
   signal A_mux : std_logic_vector(15 downto 0) := (others => '0');
   signal B_mux : std_logic_vector(15 downto 0) := (others => '0');
   signal C_mux : std_logic_vector(15 downto 0) := (others => '0');
   signal D_mux : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal Result : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: My_16bit4x1Mux_948282 PORT MAP (
          S_1 => S_1,
          S_2 => S_2,
          A_mux => A_mux,
          B_mux => B_mux,
          C_mux => C_mux,
          D_mux => D_mux,
          Result => Result
        );

   

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

		S_1<='1';
		S_2<='0';
		A_mux<="0001110011111101";
		B_mux<="0111000000000000";
		C_mux<="1111111111111111";
		D_mux<="0000000011111111";
      wait;
   end process;

END;
