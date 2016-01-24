
--------------------------------------------------------------------------------
-- Company: 	University of Cyprus, Department of Computer Science
-- Engineer: 	Dr. Petros Panayi
--
-- Create Date:   17:12:06 03/23/2007
-- Design Name:   myNAND2
-- Module Name:   C:/Xilinx91i/PetrosProjects/MIPS32/myNAND2_tb.vhd
-- Project Name:  MIPS32
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: myNAND2
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

ENTITY myNAND2_tb_vhd IS
END myNAND2_tb_vhd;

ARCHITECTURE behavior OF myNAND2_tb_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT myNAND2
	PORT(
		I1 : IN std_logic;
		I2 : IN std_logic;          
		O : OUT std_logic
		);
	END COMPONENT;

	--Inputs
	SIGNAL I1 :  std_logic := '0';
	SIGNAL I2 :  std_logic := '0';

	--Outputs
	SIGNAL O :  std_logic;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: myNAND2 PORT MAP(
		I1 => I1,
		I2 => I2,
		O => O
	);

	tb : PROCESS
	BEGIN
	   -- Wait 100 ns for global reset to finish
		wait for 100 ns;
	   -- Place stimulus here
		 I2 <= '0';I1 <= '0'; 
		wait for 100 ns;
		 I2 <= '0';I1 <= '1';
		wait for 100 ns;
		 I2 <= '1';I1 <= '0';
		wait for 100 ns;
		 I2 <= '1';I1 <= '1';
		wait for 100 ns;
		
		wait; -- will wait forever
	END PROCESS;

END;
