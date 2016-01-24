----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:07:01 11/16/2013 
-- Design Name: 
-- Module Name:    myMux2X1_948282 - Structural 
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

entity myMux2X1_948282 is
    Port ( A : in  STD_LOGIC_VECTOR (4 downto 0);
           B : in  STD_LOGIC_VECTOR (4 downto 0);
           Op : in  STD_LOGIC;
           result : out  STD_LOGIC_VECTOR (4 downto 0));
end myMux2X1_948282;

architecture Behavorial of myMux2X1_948282 is
component myNanddown_948282 is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           o1 : out  STD_LOGIC);
end component;

component myNOT_948282 is
    Port ( i1 : in  STD_LOGIC;
           o1 : out  STD_LOGIC);
end component;

signal  sig2, sig3, sig4, sig5, sig6, sig7: std_logic;
signal  sig1i,sig2i, sig3i, sig4i, sig5i, sig6i, sig7i: std_logic;
signal  sig2j,sig1j, sig3j, sig4j, sig5j, sig6j, sig7j: std_logic;
signal  sig2k, sig3k,sig1k, sig4k, sig5k, sig6k, sig7k: std_logic;
signal  sig1l, sig2l, sig3l, sig4l, sig5l, sig6l, sig7l: std_logic;


signal sig1: std_logic;
begin
	
	u0:  myNOT_948282 port map (i1=>Op, o1=>sig1);
	u1:  myNanddown_948282 port map (i0=>sig1, i1=>B(0), o1=>sig2);
	u2:  myNot_948282 port map (i1=>sig2, o1=>sig3);
	u3:  myNanddown_948282 port map (i0=>sig3, i1=>sig3, o1=>sig4);
	u4:  myNanddown_948282 port map (i0=>Op, i1=>A(0), o1=>sig5);
   u5:  MyNot_948282 port map (i1=>sig5, o1=>sig6);
   u6:  MyNanddown_948282 port map (i0=>sig6, i1=>sig6, o1=>sig7);
   u7:  MyNanddown_948282 port map (i0=>sig4, i1=>sig7, o1=>result(0));	
	
	u8:  myNOT_948282 port map (i1=>Op, o1=>sig1i);
	u9:  myNanddown_948282 port map (i0=>sig1i, i1=>B(1), o1=>sig2i);
	u10:  myNot_948282 port map (i1=>sig2i, o1=>sig3i);
	u11:  myNanddown_948282 port map (i0=>sig3i, i1=>sig3i, o1=>sig4i);
	u12:  myNanddown_948282 port map (i0=>Op, i1=>A(1), o1=>sig5i);
   u13:  MyNot_948282 port map (i1=>sig5i, o1=>sig6i);
   u14:  MyNanddown_948282 port map (i0=>sig6i, i1=>sig6i, o1=>sig7i);
   u15:  MyNanddown_948282 port map (i0=>sig4i, i1=>sig7i, o1=>result(1));	
	
	u16:  myNOT_948282 port map (i1=>Op, o1=>sig1j);
	u17:  myNanddown_948282 port map (i0=>sig1j, i1=>B(2), o1=>sig2j);
	u18:  myNot_948282 port map (i1=>sig2j, o1=>sig3j);
	u19:  myNanddown_948282 port map (i0=>sig3j, i1=>sig3j, o1=>sig4j);
	u20:  myNanddown_948282 port map (i0=>Op, i1=>A(2), o1=>sig5j);
   u21:  MyNot_948282 port map (i1=>sig5j, o1=>sig6j);
   u22:  MyNanddown_948282 port map (i0=>sig6j, i1=>sig6j, o1=>sig7j);
   u23:  MyNanddown_948282 port map (i0=>sig4j, i1=>sig7j, o1=>result(2));	
	
	u24:  myNOT_948282 port map (i1=>Op, o1=>sig1k);
	u25:  myNanddown_948282 port map (i0=>sig1k, i1=>B(3), o1=>sig2k);
	u26:  myNot_948282 port map (i1=>sig2k, o1=>sig3k);
	u27:  myNanddown_948282 port map (i0=>sig3k, i1=>sig3k, o1=>sig4k);
	u28:  myNanddown_948282 port map (i0=>Op, i1=>A(3), o1=>sig5k);
   u29:  MyNot_948282 port map (i1=>sig5k, o1=>sig6k);
   u30:  MyNanddown_948282 port map (i0=>sig6k, i1=>sig6k, o1=>sig7k);
   u31:  MyNanddown_948282 port map (i0=>sig4k, i1=>sig7k, o1=>result(3));	
	
	u32:  myNOT_948282 port map (i1=>Op, o1=>sig1l);
	u33:  myNanddown_948282 port map (i0=>sig1l, i1=>B(4), o1=>sig2l);
	u34:  myNot_948282 port map (i1=>sig2l, o1=>sig3l);
	u35:  myNanddown_948282 port map (i0=>sig3l, i1=>sig3l, o1=>sig4l);
	u36:  myNanddown_948282 port map (i0=>Op, i1=>A(4), o1=>sig5l);
   u37:  MyNot_948282 port map (i1=>sig5l, o1=>sig6l);
   u38:  MyNanddown_948282 port map (i0=>sig6l, i1=>sig6l, o1=>sig7l);
   u39:  MyNanddown_948282 port map (i0=>sig4l, i1=>sig7l, o1=>result(4));	
	
	
end Behavorial;

