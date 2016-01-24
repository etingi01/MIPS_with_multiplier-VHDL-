----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:24:19 11/16/2013 
-- Design Name: 
-- Module Name:    MyMux2_1 - Behavioral 
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

entity MyMux2_1 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Op : in  STD_LOGIC;
           decision : out STD_LOGIC);
end MyMux2_1;

architecture Behavioral of MyMux2_1 is
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
signal  sig2, sig3, sig4, sig5, sig6, sig7: std_logic;
begin
	u0:  myNOT_948282 port map (i1=>Op, o1=>sig1);
	u1:  myNanddown_948282 port map (i0=>sig1, i1=>B, o1=>sig2);
	u2:  myNot_948282 port map (i1=>sig2, o1=>sig3);
	u3:  myNanddown_948282 port map (i0=>sig3, i1=>sig3, o1=>sig4);
	u4:  myNanddown_948282 port map (i0=>Op, i1=>A, o1=>sig5);
   u5:  MyNot_948282 port map (i1=>sig5, o1=>sig6);
   u6:  MyNanddown_948282 port map (i0=>sig6, i1=>sig6, o1=>sig7);
   u7:  MyNanddown_948282 port map (i0=>sig4, i1=>sig7, o1=>decision);

end Behavioral;

