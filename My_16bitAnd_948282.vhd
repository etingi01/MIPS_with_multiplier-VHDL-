----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:46:38 11/18/2013 
-- Design Name: 
-- Module Name:    My_16bitAnd_948282 - Behavioral 
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

entity My_16bitAnd_948282 is
    Port ( A_in_8282 : in  STD_LOGIC_VECTOR (15 downto 0);
           B_in_8282 : in  STD_LOGIC_VECTOR (15 downto 0);
           R_in_8282 : out  STD_LOGIC_VECTOR (15 downto 0));
end My_16bitAnd_948282;

architecture Behavioral of My_16bitAnd_948282 is

component My_4bitAnd_948282 is
    Port ( A_in : in  STD_LOGIC_VECTOR (3 downto 0);
           B_in : in  STD_LOGIC_VECTOR (3 downto 0);
           R_in : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

begin
	u0: My_4bitAnd_948282 port map (A_in=>A_in_8282(3 downto 0), B_in=>B_in_8282(3 downto 0), R_in=>R_in_8282(3 downto 0));
	u1: My_4bitAnd_948282 port map (A_in=>A_in_8282(7 downto 4), B_in=>B_in_8282(7 downto 4), R_in=>R_in_8282(7 downto 4));
	u2: My_4bitAnd_948282 port map (A_in=>A_in_8282(11 downto 8), B_in=>B_in_8282(11 downto 8), R_in=>R_in_8282(11 downto 8));
	u3: My_4bitAnd_948282 port map (A_in=>A_in_8282(15 downto 12), B_in=>B_in_8282(15 downto 12), R_in=>R_in_8282(15 downto 12));
	
end Behavioral;

