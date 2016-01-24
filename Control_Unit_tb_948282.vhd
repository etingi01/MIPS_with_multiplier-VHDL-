--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:48:07 11/22/2013
-- Design Name:   
-- Module Name:   C:/Users/etingi01/Downloads/EPL221_FALL2013_MIPS32DSPprocessorID_948282/EPL221_FALL2013_MIPS32DSPprocessorID_948282/Control_Unit_tb_948282.vhd
-- Project Name:  EPL221_FALL2013_MIPS32DSPprocessorID_948282
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Control_Unit_948282
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
 
ENTITY Control_Unit_tb_948282 IS
END Control_Unit_tb_948282;
 
ARCHITECTURE behavior OF Control_Unit_tb_948282 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Control_Unit_948282
    PORT(
         Op_Code : IN  std_logic_vector(5 downto 0);
         Fun_Code : IN  std_logic_vector(5 downto 0);
         MemToRead : OUT  std_logic;
         RegDist : OUT  std_logic;
         RegWrite : OUT  std_logic;
         MemRead : OUT  std_logic;
         MemWrite : OUT  std_logic;
         Alu1 : OUT  std_logic;
         CarryIn : OUT  std_logic;
         Alu0 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Op_Code : std_logic_vector(5 downto 0) := (others => '0');
   signal Fun_Code : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal MemToRead : std_logic;
   signal RegDist : std_logic;
   signal RegWrite : std_logic;
   signal MemRead : std_logic;
   signal MemWrite : std_logic;
   signal Alu1 : std_logic;
   signal CarryIn : std_logic;
   signal Alu0 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Control_Unit_948282 PORT MAP (
          Op_Code => Op_Code,
          Fun_Code => Fun_Code,
          MemToRead => MemToRead,
          RegDist => RegDist,
          RegWrite => RegWrite,
          MemRead => MemRead,
          MemWrite => MemWrite,
          Alu1 => Alu1,
          CarryIn => CarryIn,
          Alu0 => Alu0
        );



   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;
		Op_Code<="000000";
		Fun_Code<="100010";
      

      wait;
   end process;

END;
