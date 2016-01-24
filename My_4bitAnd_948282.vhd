----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:37:59 11/18/2013 
-- Design Name: 
-- Module Name:    My_4bitAnd_948282 - Behavioral 
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

entity My_4bitAnd_948282 is
    Port ( A_in : in  STD_LOGIC_VECTOR (3 downto 0);
           B_in : in  STD_LOGIC_VECTOR (3 downto 0);
           R_in : out  STD_LOGIC_VECTOR (3 downto 0));
end My_4bitAnd_948282;

architecture Behavioral of My_4bitAnd_948282 is
component My_And_948282 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           R : out  STD_LOGIC);
end component;

begin
	u0: My_And_948282 port map (A=>A_in(0), B=>B_in(0), R=>R_in(0));
	u1: My_And_948282 port map (A=>A_in(1), B=>B_in(1), R=>R_in(1));
	u2: My_And_948282 port map (A=>A_in(2), B=>B_in(2), R=>R_in(2));
	u4: My_And_948282 port map (A=>A_in(3), B=>B_in(3), R=>R_in(3));
end Behavioral;

