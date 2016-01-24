----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:47:27 11/19/2013 
-- Design Name: 
-- Module Name:    Tester - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Tester is
    Port ( A : out  STD_LOGIC_VECTOR (15 downto 0));
end Tester;

architecture Behavioral of Tester is

signal sig1: std_logic;
begin
	u0: sig1<='1';
	u1: A(15 downto 0)<=sig1;

end Behavioral;

