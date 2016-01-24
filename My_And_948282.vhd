----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:05:13 11/17/2013 
-- Design Name: 
-- Module Name:    My_And_948282 - Behavioral 
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

entity My_And_948282 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           R : out  STD_LOGIC);
end My_And_948282;

architecture Behavioral of My_And_948282 is
component myNanddown_948282 is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           o1 : out  STD_LOGIC);
end component;

component myNOT_948282 is
    Port ( i1 : in  STD_LOGIC;
           o1 : out  STD_LOGIC);
end component;

signal sig1: std_logic;

begin
	u0: myNanddown_948282 port map (i0=>A, i1=>B, o1=>sig1);
	u1: myNOT_948282 port map (i1=>sig1, o1=>R);

end Behavioral;

