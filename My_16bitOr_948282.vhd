----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:48:29 11/18/2013 
-- Design Name: 
-- Module Name:    My_16bitOr_948282 - Behavioral 
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

entity My_16bitOr_948282 is
    Port ( A_el_8282 : in  STD_LOGIC_VECTOR (15 downto 0);
           B_el_8282 : in  STD_LOGIC_VECTOR (15 downto 0);
           R_el_8282 : out  STD_LOGIC_VECTOR (15 downto 0));
end My_16bitOr_948282;

architecture Behavioral of My_16bitOr_948282 is

component My_4bitOr_948282 is
    Port ( A_el : in  STD_LOGIC_VECTOR (3 downto 0);
           B_el : in  STD_LOGIC_VECTOR (3 downto 0);
           R_el : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

begin
	u0: My_4bitOr_948282 port map (A_el=>A_el_8282(3 downto 0), B_el=>B_el_8282(3 downto 0), R_el=>R_el_8282(3 downto 0));
	u1: My_4bitOr_948282 port map (A_el=>A_el_8282(7 downto 4), B_el=>B_el_8282(7 downto 4), R_el=>R_el_8282(7 downto 4));
	u2: My_4bitOr_948282 port map (A_el=>A_el_8282(11 downto 8), B_el=>B_el_8282(11 downto 8), R_el=>R_el_8282(11 downto 8));
	u3: My_4bitOr_948282 port map (A_el=>A_el_8282(15 downto 12), B_el=>B_el_8282(15 downto 12), R_el=>R_el_8282(15 downto 12));


end Behavioral;

