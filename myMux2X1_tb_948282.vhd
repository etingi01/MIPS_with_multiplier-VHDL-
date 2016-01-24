--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:56:28 11/16/2013
-- Design Name:   
-- Module Name:   C:/Users/etingi01/MIPS32_948282/myMux2X1_tb_948282.vhd
-- Project Name:  MIPS32_948282
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: myMux2X1_948282
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
 
ENTITY myMux2X1_tb_948282 IS
END myMux2X1_tb_948282;
 
ARCHITECTURE behavior OF myMux2X1_tb_948282 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT myMux2X1_948282
    PORT(
         A : IN  std_logic_vector(4 downto 0);
         B : IN  std_logic_vector(4 downto 0);
         Op : IN  std_logic;
         result : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(4 downto 0) := (others => '0');
   signal B : std_logic_vector(4 downto 0) := (others => '0');
   signal Op : std_logic := '0';

 	--Outputs
   signal result : std_logic_vector(4 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: myMux2X1_948282 PORT MAP (
          A => A,
          B => B,
          Op => Op,
          result => result
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
				A<="10000";
				B<="00000";
				Op<='1';
				
				wait for 20 ns;
				A<="10000";
				B<="00000";
				Op<='0';
				
				wait for 20 ns;
				A<="10110";
				B<="00010";
				Op<='1';
				wait for 20 ns;
				A<="10110";
				B<="00010";
				Op<='1';
				wait for 20 ns;
				A<="11000";
				B<="01100";
				Op<='1';
      wait;
   end process;

END;
