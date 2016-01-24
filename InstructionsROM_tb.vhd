
--------------------------------------------------------------------------------
-- Company: 	University of Cyprus, Department of Computer Science
-- Engineer: 	Dr. Petros Panayi
--
-- Create Date:   13:30:34 03/23/2007
-- Design Name:   InstructionsROM
-- Module Name:   C:/Xilinx91i/PetrosProjects/MIPS32/InstructionsROM_tb.vhd
-- Project Name:  MIPS32
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: InstructionsROM
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
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY InstructionsROM_tb_vhd IS
END InstructionsROM_tb_vhd;

ARCHITECTURE behavior OF InstructionsROM_tb_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT InstructionsROM
	PORT(
		InstructionAddress : IN std_logic_vector(9 downto 0);          
		Instruction : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	--Inputs
	SIGNAL InstructionAddress :  std_logic_vector(9 downto 0) := (others=>'0');

	--Outputs
	SIGNAL Instruction :  std_logic_vector(31 downto 0);

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: InstructionsROM PORT MAP(
		InstructionAddress => InstructionAddress,
		Instruction => Instruction
	);

	tb : PROCESS
	-- Create a new variable
	VARIABLE V: STD_LOGIC_VECTOR(9 downto 0);
	BEGIN
	-- and set it to "0000000000"
		V := B"0000000000";
	-- Use a for loop to read the first 20 words from ROM
		FOR I in 0 to 15 loop
			InstructionAddress <= V;	-- Assigne the value to the port
			V := V + 1;						-- Increase the variable value by one
		-- Wait 100 ns for global reset to finish
		wait for 100 ns;
		end loop;

		wait; -- will wait forever
	END PROCESS;

END;
