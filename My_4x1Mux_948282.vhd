----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:25:38 11/17/2013 
-- Design Name: 
-- Module Name:    My_4x1Mux_948282 - Behavioral 
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

entity My_4x1Mux_948282 is
    Port ( Sel1 : in  STD_LOGIC;
           Sel2 : in  STD_LOGIC;
           A_mux : in  STD_LOGIC;
           B_mux : in  STD_LOGIC;
           C_mux : in  STD_LOGIC;
           D_mux : in  STD_LOGIC;
           Result : out  STD_LOGIC);
end My_4x1Mux_948282;

architecture Behavioral of My_4x1Mux_948282 is
component My_And_948282 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           R : out  STD_LOGIC);
end component;
component My_Or_948282 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           R : out  STD_LOGIC);
end component;

component myNOT_948282 is
    Port ( i1 : in  STD_LOGIC;
           o1 : out  STD_LOGIC);
end component;


signal sig1: std_logic;
signal  sig2, sig3, sig4, sig5, sig6, sig7, sig8, sig9, sig10, sig11, sig12, sig13: std_logic;
begin
	u0: MyNOT_948282 port map (i1=>Sel1, o1=>sig1);
	u1: MyNOT_948282 port map (i1=>Sel2, o1=>sig2);
	
	u2: My_And_948282 port map (A=>A_mux, B=>sig1, R=>sig3);
	u3: My_And_948282 port map (A=>sig3, B=>sig2, R=>sig4);-- sig4 First in or
	u4: My_And_948282 port map (A=>B_mux, B=>sig1, R=>sig5);
	u5: My_And_948282 port map (A=>sig5, B=>Sel2, R=>sig6);--sig5 in or
	u6: My_And_948282 port map (A=>C_mux, B=>Sel1, R=>sig7);
	u7: My_And_948282 port map (A=>sig7, B=>sig2, R=>sig8);--sig8 in or
	u8: My_And_948282 port map (A=>D_mux, B=>Sel1, R=>sig9);
	u9: My_And_948282 port map (A=>sig9, B=>Sel2, R=>sig10); --sig10 in or
	
	u10: My_Or_948282 port map (A=>sig4, B=>sig6, R=>sig11); --sig11
	u11: My_Or_948282 port map (A=>sig8, B=>sig10, R=>sig12);--sig12
	u12: My_Or_948282 port map (A=>sig11, B=>sig12, R=>Result);
end Behavioral;

