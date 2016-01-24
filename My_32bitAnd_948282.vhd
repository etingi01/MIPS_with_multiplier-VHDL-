----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:00:07 11/18/2013 
-- Design Name: 
-- Module Name:    My_32bitAnd_948282 - Behavioral 
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

entity My_32bitAnd_948282 is
    Port ( A_8282 : in  STD_LOGIC_VECTOR (31 downto 0);
           B_8282 : in  STD_LOGIC_VECTOR (31 downto 0);
           R_8282 : out  STD_LOGIC_VECTOR (31 downto 0));
end My_32bitAnd_948282;

architecture Behavioral of My_32bitAnd_948282 is

component My_16bitAnd_948282 is
    Port ( A_in_8282 : in  STD_LOGIC_VECTOR (15 downto 0);
           B_in_8282 : in  STD_LOGIC_VECTOR (15 downto 0);
           R_in_8282 : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

begin
	u0: My_16bitAnd_948282 port map (A_in_8282=>A_8282(15 downto 0), B_in_8282=>B_8282(15 downto 0), R_in_8282=>R_8282(15 downto 0));
	u1: My_16bitAnd_948282 port map (A_in_8282=>A_8282(31 downto 16), B_in_8282=>B_8282(31 downto 16), R_in_8282=>R_8282(31 downto 16));

end Behavioral;

