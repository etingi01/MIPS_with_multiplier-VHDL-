
--------------------------------------------------------------------------------
-- Company: 	University of Cyprus, Department of Computer Science
-- Engineer: 	Dr. Petros Panayi
--
-- Create Date:   23:49:58 03/23/2007
-- Design Name:   myPCRegister
-- Module Name:   C:/Xilinx91i/PetrosProjects/MIPS32/myPCRegister_tb.vhd
-- Project Name:  MIPS32
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: myPCRegister
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

ENTITY myPCRegister_tb_vhd IS
END myPCRegister_tb_vhd;

ARCHITECTURE behavior OF myPCRegister_tb_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT myPCRegister
	PORT(
		PC_INPUT : IN std_logic_vector(9 downto 0);
		clk : IN std_logic;
		RESET : IN std_logic;          
		PC_OUTPUT : OUT std_logic_vector(9 downto 0)
		);
	END COMPONENT;

	--Inputs
	SIGNAL clk :  std_logic := '0';
	SIGNAL RESET :  std_logic := '0';
	SIGNAL PC_INPUT :  std_logic_vector(9 downto 0) := (others=>'0');

	--Outputs
	SIGNAL PC_OUTPUT :  std_logic_vector(9 downto 0);

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: myPCRegister PORT MAP(
		PC_INPUT => PC_INPUT,
		PC_OUTPUT => PC_OUTPUT,
		clk => clk,
		RESET => RESET
	);

	tb : PROCESS
	BEGIN

		-- Wait 100 ns for global reset to finish
		PC_INPUT <= "0000000001";
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
		clk <= '0';
		PC_INPUT <= "1000000001";
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
		clk <= '0';
		wait for 10 ns;
		

		-- Place stimulus here

		wait; -- will wait forever
	END PROCESS;

END;
