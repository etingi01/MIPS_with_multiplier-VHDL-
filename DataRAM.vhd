----------------------------------------------------------------------------------
-- Company: 	University of Cyprus, Department of Computer Science
-- Engineer: 	Dr. Petros Panayi
-- 
-- Create Date:    15:28:22 03/23/2007 
-- Design Name: 
-- Module Name:    DataRAM - Behavioral 
-- Project Name: MIPS32
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DataRAM is
    Port ( DataAddress : in  STD_LOGIC_VECTOR (9 downto 0);
           clk : in  STD_LOGIC;
           readData : in  STD_LOGIC;
           writeData : in  STD_LOGIC;
           DataIn : in  STD_LOGIC_VECTOR (31 downto 0);
           DataOut : out  STD_LOGIC_VECTOR (31 downto 0));
end DataRAM;

architecture Behavioral of DataRAM is

-- Define a new type with the name RAM_Array of 8 bits
type RAM_Array is array (0 to 1023)
	of std_logic_vector(7 downto 0);
-- Set some initial values in RAM for Testing
signal RAMContent: RAM_Array := (
	0 => X"00",   1 => X"01",	2 => X"02",	 3 => X"03",
	4 => X"04",   5 => X"05",	6 => X"06",  7 => X"07",
	8 => X"08",   9 => X"09", 10 => X"0A", 11 => X"0B", 
	12 => X"0C", 13 => X"0D", 14 => X"0E", 15 => X"0F",
	others => X"00");

begin	
	-- This process is called when we READ from RAM
	p1: process (readData, DataAddress)
	begin
		if readData = '1' then
		 DataOut(7 downto 0) <= RAMContent(conv_integer(DataAddress));
		 DataOut(15 downto 8) <= RAMContent(conv_integer(DataAddress+1));
		 DataOut(23 downto 16) <= RAMContent(conv_integer(DataAddress+2));
		 DataOut(31 downto 24) <= RAMContent(conv_integer(DataAddress+3));
		else
			DataOut <= (DataOut'range => 'Z');
		end if;
	end process;
	
	
	-- This process is called when we WRITE into RAM
	p2: process (clk, writeData)
	begin
		if (clk'event and clk = '1') then
			if writeData ='1' then
				RAMContent(conv_integer(DataAddress)) <= DataIn(7 downto 0);
				RAMContent(conv_integer(DataAddress+1)) <= DataIn(15 downto 8);
				RAMContent(conv_integer(DataAddress+2)) <= DataIn(23 downto 16);
				RAMContent(conv_integer(DataAddress+3)) <= DataIn(31 downto 24);
			end if;
		end if;
	end process;
end Behavioral;

