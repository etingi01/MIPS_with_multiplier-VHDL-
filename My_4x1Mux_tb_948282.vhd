--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:41:05 11/17/2013
-- Design Name:   
-- Module Name:   C:/Users/etingi01/Mips32_948282/My_4x1Mux_tb_948282.vhd
-- Project Name:  Mips32_948282
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: My_4x1Mux_948282
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
 
ENTITY My_4x1Mux_tb_948282 IS
END My_4x1Mux_tb_948282;
 
ARCHITECTURE behavior OF My_4x1Mux_tb_948282 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT My_4x1Mux_948282
    PORT(
         Sel1 : IN  std_logic;
         Sel2 : IN  std_logic;
         A_mux : IN  std_logic;
         B_mux : IN  std_logic;
         C_mux : IN  std_logic;
         D_mux : IN  std_logic;
         Result : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Sel1 : std_logic := '0';
   signal Sel2 : std_logic := '0';
   signal A_mux : std_logic := '0';
   signal B_mux : std_logic := '0';
   signal C_mux : std_logic := '0';
   signal D_mux : std_logic := '0';

 	--Outputs
   signal Result : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: My_4x1Mux_948282 PORT MAP (
          Sel1 => Sel1,
          Sel2 => Sel2,
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
	
	Sel1<='0';
	Sel2<='1';
	
	A_mux<='1';
	B_mux<='0';
	C_mux<='1';
	D_mux<='0';
	
     
      wait;
   end process;

END;
