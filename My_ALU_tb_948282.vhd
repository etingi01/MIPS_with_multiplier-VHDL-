--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:46:09 11/19/2013
-- Design Name:   
-- Module Name:   C:/Users/etingi01/Mips32_948282_19.11.2013/My_ALU_tb_948282.vhd
-- Project Name:  Mips32_948282_19.11.2013
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: My_ALU_948282
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
 
ENTITY My_ALU_tb_948282 IS
END My_ALU_tb_948282;
 
ARCHITECTURE behavior OF My_ALU_tb_948282 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT My_ALU_948282
    PORT(
         Alu0 : IN  std_logic;
         Alu1 : IN  std_logic;
         A_alu : IN  std_logic_vector(31 downto 0);
         B_alu : IN  std_logic_vector(31 downto 0);
         B_Inv : IN  std_logic;
         Result_alu : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Alu0 : std_logic := '0';
   signal Alu1 : std_logic := '0';
	signal B_Inv : std_logic := '0';
   signal A_alu : std_logic_vector(31 downto 0) := (others => '0');
   signal B_alu : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   
   signal Result_alu : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: My_ALU_948282 PORT MAP (
          Alu0 => Alu0,
          Alu1 => Alu1,
          A_alu => A_alu,
          B_alu => B_alu,
          B_Inv => B_Inv,
          Result_alu => Result_alu
        );

   

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;
		Alu0<='0';
		Alu1<='1';
		A_alu<="00000000000000000000000000001000";
		B_alu<="00000000000000000000000000000011";
		B_Inv<='1';
      wait;
   end process;

END;
