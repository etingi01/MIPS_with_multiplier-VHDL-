----------------------------------------------------------------------------------
-- Company: 	University of Cyprus, Department of Computer Science
-- Engineer: 	Dr. Petros Panayi
-- 
-- Create Date:    13:17:29 03/23/2007 
-- Design Name: 
-- Module Name:    InstructionsROM - Behavioral 
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

entity InstructionsROM is
    Port ( InstructionAddress : in  STD_LOGIC_VECTOR (9 downto 0);
           Instruction : out  STD_LOGIC_VECTOR (31 downto 0));
end InstructionsROM;

architecture Behavioral of InstructionsROM is
-- Define a new type with the name ROM_Array of 32 bits
type ROM_Array is array (0 to 1024)
	of std_logic_vector(31 downto 0);
	
-- The data here should be replaced with the intructions in HEX
constant ROMContent: ROM_Array := (
					--X"012A5820",
					X"8E090000",
					X"012A5820",
					X"8E0A0000",
					--
					X"AE090048",
					X"AE0A0010",
					X"012A5C20",
					X"8E090020",
					X"8E0A0018",
					X"012A6422",
					X"AE0C0038",
					X"8E090048",
					X"8E0A0050",
					X"01AA5818",
					X"AE0D0058",
					X"014C4C24",
					X"AE090060",
					X"8E090058",
					X"8E0A0048",
					X"012A6020",
					X"012A6425",
					X"AE0C0068",
	others =>   X"00000000");
begin

	Instruction <= ROMContent(conv_integer(InstructionAddress));

end Behavioral;

