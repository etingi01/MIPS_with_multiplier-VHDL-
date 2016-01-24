
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:02:22 11/04/2008
-- Design Name:   myHiLoRegister
-- Module Name:   C:/temp/VHDLFall2008/MIPS32Mult/myHiLoRegister_tb.vhd
-- Project Name:  MIPS32Mult
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: myHiLoRegister
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

ENTITY myHiLoRegister_tb_vhd IS
END myHiLoRegister_tb_vhd;

ARCHITECTURE behavior OF myHiLoRegister_tb_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT myHiLoRegister
	PORT(
		INPUT : IN std_logic_vector(63 downto 0);
		writeData : IN std_logic;
		clk : IN std_logic;
		RESET : IN std_logic;          
		OUTPUT : OUT std_logic_vector(63 downto 0)
		);
	END COMPONENT;

	--Inputs
	SIGNAL writeData :  std_logic := '0';
	SIGNAL clk :  std_logic := '0';
	SIGNAL RESET :  std_logic := '0';
	SIGNAL INPUT :  std_logic_vector(63 downto 0) := (others=>'0');

	--Outputs
	SIGNAL OUTPUT :  std_logic_vector(63 downto 0);

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: myHiLoRegister PORT MAP(
		INPUT => INPUT,
		OUTPUT => OUTPUT,
		writeData => writeData,
		clk => clk,
		RESET => RESET
	);

	tb : PROCESS
	BEGIN

		-- Wait 100 ns for global reset to finish
		wait for 100 ns;

		-- Place stimulus here
		-- Write the data into the HiLo Register
		INPUT <= X"AA55AA55AA55AA55";
		writeData <= '1';
		clk <= '1';
		wait for 100 ns;
		-- The data are still available even after many clock cycles
		INPUT <= X"0000000000000000";
		writeData <= '0';
		clk <= '0';
		wait for 100 ns;
		clk <= '1';
		wait for 100 ns;
		clk <= '0';
		wait for 100 ns;
		clk <= '1';
		wait for 100 ns;
		clk <= '0';
		wait for 100 ns;
		clk <= '1';
		wait for 100 ns;
		wait; -- will wait forever
	END PROCESS;

END;
