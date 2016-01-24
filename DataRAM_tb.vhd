
--------------------------------------------------------------------------------
-- Company: 	University of Cyprus, Department of Computer Science
-- Engineer: 	Dr. Petros Panayi
--
-- Create Date:   15:57:45 03/23/2007
-- Design Name:   DataRAM
-- Module Name:   C:/Xilinx91i/PetrosProjects/MIPS32/DataRAM_tb.vhd
-- Project Name:  MIPS32
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DataRAM
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

ENTITY DataRAM_tb_vhd IS
END DataRAM_tb_vhd;

ARCHITECTURE behavior OF DataRAM_tb_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT DataRAM
	PORT(
		DataAddress : IN std_logic_vector(9 downto 0);
		clk : IN std_logic;
		readData : IN std_logic;
		writeData : IN std_logic;
		DataIn : IN std_logic_vector(31 downto 0);          
		DataOut : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	--Inputs
	SIGNAL clk :  std_logic := '0';
	SIGNAL readData :  std_logic := '0';
	SIGNAL writeData :  std_logic := '0';
	SIGNAL DataAddress :  std_logic_vector(9 downto 0) := (others=>'0');
	SIGNAL DataIn :  std_logic_vector(31 downto 0) := (others=>'0');

	--Outputs
	SIGNAL DataOut :  std_logic_vector(31 downto 0);

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: DataRAM PORT MAP(
		DataAddress => DataAddress,
		clk => clk,
		readData => readData,
		writeData => writeData,
		DataIn => DataIn,
		DataOut => DataOut
	);

	tb : PROCESS

	VARIABLE V: STD_LOGIC_VECTOR(9 downto 0);
	VARIABLE D: STD_LOGIC_VECTOR(31 downto 0);
	BEGIN
	-- Write some NEW values into RAM
   -- set V to "0000000000"
		V := B"0000000000";
		D := X"00000000";
	-- Use a for loop to write into the first 20 words of RAM
		FOR I in 0 to 15 loop
		   readData <= '0';			-- Clear the readData input
			writeData <= '1';			-- Set the writeData input
			DataAddress <= V;	   	-- Assigne the value to the port
			DataIn <= D;				-- Set the data for the RAM		
			V := V + 4;					-- Increase V value by 4
			D := D + 10;				-- Increase D value by ten
			clk <= '1';					-- Once the data are ready we set the clock to 1
		-- Wait 100 ns for global reset to finish
		wait for 50 ns;
		clk <= '0';					-- We set the clock to 1
		wait for 50 ns;
		end loop;
		wait for 100 ns;					-- Wait for another 100 nSec
	--  set V to "0000000000"
		V := B"0000000000";
	-- Use a for loop to read the first 20 words from RAM
		FOR I in 0 to 15 loop
			writeData <= '0';				-- Clear the writeData input
			readData <= '1';				-- Set the readData input
			DataAddress <= V;	   		-- Assigne the value to the port
			V := V + 4;						-- Increase the variable value by 4
		-- Wait 100 ns for global reset to finish
		wait for 100 ns;
		end loop;
	-- will wait forever
		wait; 								
	END PROCESS;
	END behavior;
