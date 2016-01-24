----------------------------------------------------------------------------------
-- Company: 	University of Cyprus, Department of Computer Science
-- Engineer: 	Dr. Petros Panayi
-- 
-- Create Date:    23:20:47 03/23/2007 
-- Design Name: 
-- Module Name:    myPCRegister - Behavioral 
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

entity myPCRegister is
    Port ( PC_INPUT : in  STD_LOGIC_VECTOR (9 downto 0);
           PC_OUTPUT : out  STD_LOGIC_VECTOR (9 downto 0);
           clk : in  STD_LOGIC;
           RESET : in  STD_LOGIC);
end myPCRegister;

architecture Behavioral of myPCRegister is
signal TEMP_PC: STD_LOGIC_VECTOR (9 downto 0);
begin

process (clk, RESET)
begin
	if RESET = '1' then
		TEMP_PC <= B"0000000000";
	else 
   	if RISING_EDGE(clk) then
			TEMP_PC <= PC_INPUT;
		end if;
	end if;
end process;

PC_OUTPUT <= TEMP_PC;

end Behavioral;

