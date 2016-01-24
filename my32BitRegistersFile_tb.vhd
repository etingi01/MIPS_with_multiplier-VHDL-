
--------------------------------------------------------------------------------
-- Company: 	University of Cyprus, Department of Computer Science
-- Engineer: 	Dr. Petros Panayi
--
-- Create Date:   16:56:40 03/25/2007
-- Design Name:   my32BitRegistersFile
-- Module Name:   C:/Xilinx91i/PetrosProjects/MIPS32/my32BitRegistersFile_tb.vhd
-- Project Name:  MIPS32
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: my32BitRegistersFile
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

ENTITY my32BitRegistersFile_tb_vhd IS
END my32BitRegistersFile_tb_vhd;

ARCHITECTURE behavior OF my32BitRegistersFile_tb_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT my32BitRegistersFile
	PORT(
		ReadRegister1 : IN std_logic_vector(4 downto 0);
		ReadRegister2 : IN std_logic_vector(4 downto 0);
		WriteRegister : IN std_logic_vector(4 downto 0);
		WriteData : IN std_logic_vector(31 downto 0);
		RegWrite : IN std_logic;
		clk : IN std_logic;
		Reset : IN std_logic;          
		ReadData1 : OUT std_logic_vector(31 downto 0);
		ReadData2 : OUT std_logic_vector(31 downto 0);
		ReadData3 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	--Inputs
	SIGNAL RegWrite :  std_logic := '0';
	SIGNAL clk :  std_logic := '0';
	SIGNAL Reset :  std_logic := '0';
	SIGNAL ReadRegister1 :  std_logic_vector(4 downto 0) := (others=>'0');
	SIGNAL ReadRegister2 :  std_logic_vector(4 downto 0) := (others=>'0');
	SIGNAL WriteRegister :  std_logic_vector(4 downto 0) := (others=>'0');
	SIGNAL WriteData :  std_logic_vector(31 downto 0) := (others=>'0');

	--Outputs
	SIGNAL ReadData1 :  std_logic_vector(31 downto 0);
	SIGNAL ReadData2 :  std_logic_vector(31 downto 0);
	SIGNAL ReadData3 :  std_logic_vector(31 downto 0);

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: my32BitRegistersFile PORT MAP(
		ReadRegister1 => ReadRegister1,
		ReadRegister2 => ReadRegister2,
		WriteRegister => WriteRegister,
		WriteData => WriteData,
		ReadData1 => ReadData1,
		ReadData2 => ReadData2,
		ReadData3 => ReadData3,
		RegWrite => RegWrite,
		clk => clk,
		Reset => Reset
	);

	tb : PROCESS
	BEGIN

		-- Wait 100 ns for global reset to finish
		wait for 10 ns;
		-- Reset the values in the Registers File
		wait for 10 ns;Reset <='1';wait for 20 ns;Reset <='0';
		-- CLOCK IS TICKING EVERY 20nSec
		-- ON THE RISING EDGE YOU GET THE READ REGISTERS ON THE OUTPUT
		-- ON THE FALLING EDGE YOU GET THE REGISTER WRITTEN IF RegWrite = 1
		-- Write some Data into Register zero and then read them
		RegWrite<='1';WriteRegister <= "00001"; WriteData<=X"AAAAAAAA";
		--clk<='1';wait for 10 ns;clk<='0';wait for 10 ns;
		wait for 20 ns;
		RegWrite<='1';WriteRegister <= "00010"; WriteData<=X"BBBBBBBB";
		--clk<='1';wait for 10 ns;clk<='0';wait for 10 ns;
		wait for 20 ns;
		RegWrite<='1';WriteRegister <= "00011"; WriteData<=X"55555555";
		--clk<='1';wait for 10 ns;clk<='0';wait for 10 ns;
		wait for 20 ns;
		RegWrite<='0';
		ReadRegister1<= "00001";ReadRegister2<= "00010";
		--clk<='1';wait for 10 ns;clk<='0';wait for 10 ns;
		wait for 20 ns;
		-- FOR DSP COMMANDS
		-- REGISTER 1= X"AAAAAAAA"
		-- REGISTER 2= X"BBBBBBBB"
		-- REGISTER 3= X"55555555"
		RegWrite<='1';
		ReadRegister1<= "00001";ReadRegister2<= "00010";WriteRegister <= "00011";WriteData<=X"FAFAFAFA";
		--clk<='1';wait for 10 ns;clk<='0';wait for 10 ns;
		wait for 20 ns;
		RegWrite<='0';
		ReadRegister1<= "00011";ReadRegister2<= "00011";WriteRegister <= "00001";
		--clk<='1';wait for 10 ns;clk<='0';wait for 10 ns;
		wait for 20 ns;
		-- AFTER THE FALLING EDGE THE WriteRegister IS MODIFED SO 
		-- THE ReadData3 IS CHANGED TOO
		
		-- Reset the Register File
		wait for 50 ns;Reset <='1';wait for 10 ns;Reset <='0';
		wait; -- will wait forever
	END PROCESS;



clock : PROCESS
	BEGIN
		clk<='1';wait for 10 ns;clk<='0';wait for 10 ns;
	END PROCESS;
	END;