----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:40:41 11/18/2013 
-- Design Name: 
-- Module Name:    My_4bitOr_948282 - Behavioral 
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

entity My_4bitOr_948282 is
    Port ( A_el : in  STD_LOGIC_VECTOR (3 downto 0);
           B_el : in  STD_LOGIC_VECTOR (3 downto 0);
           R_el : out  STD_LOGIC_VECTOR (3 downto 0));
end My_4bitOr_948282;

architecture Behavioral of My_4bitOr_948282 is

component My_Or_948282 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           R : out  STD_LOGIC);
end component;

begin
	u0: My_Or_948282 port map (A=>A_el(0), B=>B_el(0), R=>R_el(0));
	u1: My_Or_948282 port map (A=>A_el(1), B=>B_el(1), R=>R_el(1));
	u2: My_Or_948282 port map (A=>A_el(2), B=>B_el(2), R=>R_el(2));
	u3: My_Or_948282 port map (A=>A_el(3), B=>B_el(3), R=>R_el(3));
	
end Behavioral;

