----------------------------------------------------------------------------------
-- Company: 	University of Cyprus, Department of Computer Science
-- Engineer: 	Dr. Petros Panayi 
-- 
-- Create Date:    16:40:29 03/25/2007 
-- Design Name: 
-- Module Name:    my32BitRegistersFile - Behavioral 
-- Project Name: 
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

entity my32BitRegistersFile is
    Port ( ReadRegister1 : in  STD_LOGIC_VECTOR (4 downto 0);
           ReadRegister2 : in  STD_LOGIC_VECTOR (4 downto 0);
           WriteRegister : in  STD_LOGIC_VECTOR (4 downto 0);
           WriteData : in  STD_LOGIC_VECTOR (31 downto 0);
           ReadData1 : out  STD_LOGIC_VECTOR (31 downto 0);
           ReadData2 : out STD_LOGIC_VECTOR (31 downto 0);
			  ReadData3 : out STD_LOGIC_VECTOR (31 downto 0);
           RegWrite : in  STD_LOGIC;
			  clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC);
end my32BitRegistersFile;

architecture Behavioral of my32BitRegistersFile is
-- The Internal Registers are Decleared as Signals
	signal REG00: STD_LOGIC_VECTOR(31 downto 0);
	signal REG01: STD_LOGIC_VECTOR(31 downto 0);
	signal REG02: STD_LOGIC_VECTOR(31 downto 0);
	signal REG03: STD_LOGIC_VECTOR(31 downto 0);
	signal REG04: STD_LOGIC_VECTOR(31 downto 0);
	signal REG05: STD_LOGIC_VECTOR(31 downto 0);
	signal REG06: STD_LOGIC_VECTOR(31 downto 0);
	signal REG07: STD_LOGIC_VECTOR(31 downto 0);
	signal REG08: STD_LOGIC_VECTOR(31 downto 0);
	signal REG09: STD_LOGIC_VECTOR(31 downto 0);
	signal REG10: STD_LOGIC_VECTOR(31 downto 0);
	signal REG11: STD_LOGIC_VECTOR(31 downto 0);
	signal REG12: STD_LOGIC_VECTOR(31 downto 0);
	signal REG13: STD_LOGIC_VECTOR(31 downto 0);
	signal REG14: STD_LOGIC_VECTOR(31 downto 0);
	signal REG15: STD_LOGIC_VECTOR(31 downto 0);
	signal REG16: STD_LOGIC_VECTOR(31 downto 0);
	signal REG17: STD_LOGIC_VECTOR(31 downto 0);
	signal REG18: STD_LOGIC_VECTOR(31 downto 0);
	signal REG19: STD_LOGIC_VECTOR(31 downto 0);
	signal REG20: STD_LOGIC_VECTOR(31 downto 0);
	signal REG21: STD_LOGIC_VECTOR(31 downto 0);
	signal REG22: STD_LOGIC_VECTOR(31 downto 0);
	signal REG23: STD_LOGIC_VECTOR(31 downto 0);
	signal REG24: STD_LOGIC_VECTOR(31 downto 0);
	signal REG25: STD_LOGIC_VECTOR(31 downto 0);
	signal REG26: STD_LOGIC_VECTOR(31 downto 0);
	signal REG27: STD_LOGIC_VECTOR(31 downto 0);
	signal REG28: STD_LOGIC_VECTOR(31 downto 0);
	signal REG29: STD_LOGIC_VECTOR(31 downto 0);
	signal REG30: STD_LOGIC_VECTOR(31 downto 0);
	signal REG31: STD_LOGIC_VECTOR(31 downto 0);

begin
core_reg:PROCESS(clk, Reset)
	begin
	-- When the Reset is set to High all the values are set to Zero
		if RESET = '1' then
			case RESET is
				when '1' =>
				REG00 <= X"00000000";
				REG01 <= X"00000000";
				REG02 <= X"00000000";
				REG03 <= X"00000000";
				REG04 <= X"00000000";
				REG05 <= X"00000000";
				REG06 <= X"00000000";
				REG07 <= X"00000000";
				REG08 <= X"00000000";
				REG09 <= X"00000022";
				REG10 <= X"00000024";
				REG11 <= X"00000800";
				REG12 <= X"00000900";
				REG13 <= X"00000000";
				REG14 <= X"00001000";
				REG15 <= X"00000000";
				REG16 <= X"0000A100";
				REG17 <= X"00000000";
				REG18 <= X"00000000";
				REG19 <= X"00008900";
				REG20 <= X"00000000";
				REG21 <= X"00000000";
				REG22 <= X"00000000";
				REG23 <= X"00000000";
				REG24 <= X"00000000";
				REG25 <= X"00000000";
				REG26 <= X"00000000";
				REG27 <= X"00000000";
				REG28 <= X"00000000";
				REG29 <= X"00000000";
				REG30 <= X"00000000";
				REG31 <= X"00000000";
			when others => NULL;
			end case;
		elsif RegWrite = '1' and FALLING_EDGE(clk) then
			case WriteRegister is
				when "00000" => REG00 <= WriteData;
				when "00001" => REG01 <= WriteData;
				when "00010" => REG02 <= WriteData;
				when "00011" => REG03 <= WriteData;
				when "00100" => REG04 <= WriteData;
				when "00101" => REG05 <= WriteData;
				when "00110" => REG06 <= WriteData;
				when "00111" => REG07 <= WriteData;
				when "01000" => REG08 <= WriteData;
				when "01001" => REG09 <= WriteData;
				when "01010" => REG10 <= WriteData;
				when "01011" => REG11 <= WriteData;
				when "01100" => REG12 <= WriteData;
				when "01101" => REG13 <= WriteData;
				when "01110" => REG14 <= WriteData;
				when "01111" => REG15 <= WriteData;
				when "10000" => REG16 <= WriteData;
				when "10001" => REG17 <= WriteData;
				when "10010" => REG18 <= WriteData;
				when "10011" => REG19 <= WriteData;
				when "10100" => REG20 <= WriteData;
				when "10101" => REG21 <= WriteData;
				when "10110" => REG22 <= WriteData;
				when "10111" => REG23 <= WriteData;
				when "11000" => REG24 <= WriteData;
				when "11001" => REG25 <= WriteData;
				when "11010" => REG26 <= WriteData;
				when "11011" => REG27 <= WriteData;
				when "11100" => REG28 <= WriteData;
				when "11101" => REG29 <= WriteData;
				when "11110" => REG30 <= WriteData;
				when "11111" => REG31 <= WriteData;
				when others => NULL;
				end case;
		end if;
	end process;

-----------------------------------------
-- Reading Data From the Registers File
-- We allow two inputs and two outputs
-----------------------------------------
-- REG_SS_SEL
	ReadData1 <= REG00 when ReadRegister1 = "00000" else
					 REG01 when ReadRegister1 = "00001" else
					 REG02 when ReadRegister1 = "00010" else
					 REG03 when ReadRegister1 = "00011" else
					 REG04 when ReadRegister1 = "00100" else
	 				 REG05 when ReadRegister1 = "00101" else
					 REG06 when ReadRegister1 = "00110" else
					 REG07 when ReadRegister1 = "00111" else
					 REG08 when ReadRegister1 = "01000" else
					 REG09 when ReadRegister1 = "01001" else
					 REG10 when ReadRegister1 = "01010" else
					 REG11 when ReadRegister1 = "01111" else
					 REG12 when ReadRegister1 = "01100" else
					 REG13 when ReadRegister1 = "01101" else
					 REG14 when ReadRegister1 = "01110" else
					 REG15 when ReadRegister1 = "01111" else
					 REG16 when ReadRegister1 = "10000" else
					 REG17 when ReadRegister1 = "10001" else
					 REG18 when ReadRegister1 = "10010" else
					 REG19 when ReadRegister1 = "10011" else
					 REG20 when ReadRegister1 = "10100" else
					 REG21 when ReadRegister1 = "10101" else
					 REG22 when ReadRegister1 = "10110" else
					 REG23 when ReadRegister1 = "10111" else
					 REG24 when ReadRegister1 = "11000" else
					 REG25 when ReadRegister1 = "11001" else
					 REG26 when ReadRegister1 = "11010" else
					 REG27 when ReadRegister1 = "11011" else
					 REG28 when ReadRegister1 = "11100" else
					 REG29 when ReadRegister1 = "11101" else
					 REG30 when ReadRegister1 = "11110" else
					 REG31 when ReadRegister1 = "11111" else REG00;
					 
	ReadData2 <= REG00 when ReadRegister2 = "00000" else
					 REG01 when ReadRegister2 = "00001" else
					 REG02 when ReadRegister2 = "00010" else
					 REG03 when ReadRegister2 = "00011" else
					 REG04 when ReadRegister2 = "00100" else
	 				 REG05 when ReadRegister2 = "00101" else
					 REG06 when ReadRegister2 = "00110" else
					 REG07 when ReadRegister2 = "00111" else
					 REG08 when ReadRegister2 = "01000" else
					 REG09 when ReadRegister2 = "01001" else
					 REG10 when ReadRegister2 = "01010" else
					 REG11 when ReadRegister2 = "01011" else
					 REG12 when ReadRegister2 = "01100" else
					 REG13 when ReadRegister2 = "01101" else
					 REG14 when ReadRegister2 = "01110" else
					 REG15 when ReadRegister2 = "01111" else
					 REG16 when ReadRegister2 = "10000" else
					 REG17 when ReadRegister2 = "10001" else
					 REG18 when ReadRegister2 = "10010" else
					 REG19 when ReadRegister2 = "10011" else
					 REG20 when ReadRegister2 = "10100" else
					 REG21 when ReadRegister2 = "10101" else
					 REG22 when ReadRegister2 = "10110" else
					 REG23 when ReadRegister2 = "10111" else
					 REG24 when ReadRegister2 = "11000" else
					 REG25 when ReadRegister2 = "11001" else
					 REG26 when ReadRegister2 = "11010" else
					 REG27 when ReadRegister2 = "11011" else
					 REG28 when ReadRegister2 = "11100" else
					 REG29 when ReadRegister2 = "11101" else
					 REG30 when ReadRegister2 = "11110" else
					 REG31 when ReadRegister2 = "11111" else REG00;
					 
	ReadData3 <= REG00 when WriteRegister = "00000" else
					 REG01 when WriteRegister = "00001" else
					 REG02 when WriteRegister = "00010" else
					 REG03 when WriteRegister = "00011" else
					 REG04 when WriteRegister = "00100" else
	 				 REG05 when WriteRegister = "00101" else
					 REG06 when WriteRegister = "00110" else
					 REG07 when WriteRegister = "00111" else
					 REG08 when WriteRegister = "01000" else
					 REG09 when WriteRegister = "01001" else
					 REG10 when WriteRegister = "01010" else
					 REG11 when WriteRegister = "01011" else
					 REG12 when WriteRegister = "01100" else
					 REG13 when WriteRegister = "01101" else
					 REG14 when WriteRegister = "01110" else
					 REG15 when WriteRegister = "01111" else
					 REG16 when WriteRegister = "10000" else
					 REG17 when WriteRegister = "10001" else
					 REG18 when WriteRegister = "10010" else
					 REG19 when WriteRegister = "10011" else
					 REG20 when WriteRegister = "10100" else
					 REG21 when WriteRegister = "10101" else
					 REG22 when WriteRegister = "10110" else
					 REG23 when WriteRegister = "10111" else
					 REG24 when WriteRegister = "11000" else
					 REG25 when WriteRegister = "11001" else
					 REG26 when WriteRegister = "11010" else
					 REG27 when WriteRegister = "11011" else
					 REG28 when WriteRegister = "11100" else
					 REG29 when WriteRegister = "11101" else
					 REG30 when WriteRegister = "11110" else
					 REG31 when WriteRegister = "11111" else REG00;
end Behavioral;

