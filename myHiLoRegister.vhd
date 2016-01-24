----------------------------------------------------------------------------------
-- Company: 	University of Cyprus, Department of Computer Science
-- Engineer: 	Dr. Petros Panayi
-- 
-- Create Date:    23:20:47 03/23/2007 
-- Design Name: 
-- Module Name:    myHiLoRegister - Behavioral 
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

entity myHiLoRegister is
    Port ( INPUT : in  STD_LOGIC_VECTOR (63 downto 0);
           OUTPUT : out  STD_LOGIC_VECTOR (63 downto 0);
			  writeData : IN std_logic;
           clk : in  STD_LOGIC;
           RESET : in  STD_LOGIC);
end myHiLoRegister;

architecture Behavioral of myHiLoRegister is
signal TEMP: STD_LOGIC_VECTOR (63 downto 0);
begin

process (clk, RESET)
begin
	if RESET = '1' then
		TEMP <= X"0000000000000000";
	else 
   	if RISING_EDGE(clk) and writeData = '1' then
			TEMP <= INPUT;
		end if;
	end if;
end process;

OUTPUT <= TEMP;

end Behavioral;

