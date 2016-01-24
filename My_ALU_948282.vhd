----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:07:34 11/19/2013 
-- Design Name: 
-- Module Name:    My_ALU_948282 - Behavioral 
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

entity My_ALU_948282 is
    Port ( Alu0 : in  STD_LOGIC;
           Alu1 : in  STD_LOGIC;
           A_alu : in  STD_LOGIC_VECTOR (31 downto 0);
           B_alu: in  STD_LOGIC_VECTOR (31 downto 0);
           B_Inv : in  STD_LOGIC;
           Result_alu : out  STD_LOGIC_VECTOR (31 downto 0));
end My_ALU_948282;

architecture Behavioral of My_ALU_948282 is

component My_32bit4x1Mux_948282 is
    Port ( Select1 : in  STD_LOGIC;
           Select2 : in  STD_LOGIC;
           A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           C : in  STD_LOGIC_VECTOR (31 downto 0);
           D : in  STD_LOGIC_VECTOR (31 downto 0);
           R : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component My_32bitOr_948282 is
    Port ( inA_8282 : in  STD_LOGIC_VECTOR (31 downto 0);
           inB_8282 : in  STD_LOGIC_VECTOR (31 downto 0);
           outR_8282 : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component My_32bitAnd_948282 is
    Port ( A_8282 : in  STD_LOGIC_VECTOR (31 downto 0);
           B_8282 : in  STD_LOGIC_VECTOR (31 downto 0);
           R_8282 : out  STD_LOGIC_VECTOR (31 downto 0));
end component;


component My_32bitAdder_948282 is
    Port ( A_reg : in  STD_LOGIC_VECTOR (31 downto 0);
           B_reg : in  STD_LOGIC_VECTOR (31 downto 0);
           CarryIn : in  STD_LOGIC;
           CarryOut : out  STD_LOGIC;
           Result : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component myNOT_948282 is
    Port ( i1 : in  STD_LOGIC;
           o1 : out  STD_LOGIC);
end component;


component My_32bit2x1Mux_948282 is
    Port ( B_inv : in  STD_LOGIC;
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           B_comp : in  STD_LOGIC_VECTOR (31 downto 0);
           B_out : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

signal  sigAnd, sigOr, sigAdder, sig5, sigB: std_logic_vector(31 downto 0);
signal  sig3b, sig1b, sig1: std_logic_vector(15 downto 0);
signal  sig3, sig4,  sig6, sig7: std_logic;

begin
  u0: My_32bitAnd_948282 port map (A_8282=>A_alu, B_8282=>B_alu, R_8282=>sigAnd);
  u1: My_32bitOr_948282 port map (inA_8282=>A_alu, inB_8282=>B_alu, outR_8282=>sigOr);
  
  --sig5 = Not(B);
  u2: myNOT_948282 port map (i1=>B_alu(0), o1=>sig5(0));
  u3: myNOT_948282 port map (i1=>B_alu(1), o1=>sig5(1));
  u4: myNOT_948282 port map (i1=>B_alu(2), o1=>sig5(2));
  u5: myNOT_948282 port map (i1=>B_alu(3), o1=>sig5(3));
  u6: myNOT_948282 port map (i1=>B_alu(4), o1=>sig5(4));
  u7: myNOT_948282 port map (i1=>B_alu(5), o1=>sig5(5));
  u8: myNOT_948282 port map (i1=>B_alu(6), o1=>sig5(6));
  u9: myNOT_948282 port map (i1=>B_alu(7), o1=>sig5(7));
  u10: myNOT_948282 port map (i1=>B_alu(8), o1=>sig5(8));
  u11: myNOT_948282 port map (i1=>B_alu(9), o1=>sig5(9));
  u12: myNOT_948282 port map (i1=>B_alu(10), o1=>sig5(10));
  u13: myNOT_948282 port map (i1=>B_alu(11), o1=>sig5(11));
  u14: myNOT_948282 port map (i1=>B_alu(12), o1=>sig5(12));
  u15: myNOT_948282 port map (i1=>B_alu(13), o1=>sig5(13));
  u16: myNOT_948282 port map (i1=>B_alu(14), o1=>sig5(14));
  u17: myNOT_948282 port map (i1=>B_alu(15), o1=>sig5(15));
  u18: myNOT_948282 port map (i1=>B_alu(16), o1=>sig5(16));
  u19: myNOT_948282 port map (i1=>B_alu(17), o1=>sig5(17));
  u20: myNOT_948282 port map (i1=>B_alu(18), o1=>sig5(18));
  u21: myNOT_948282 port map (i1=>B_alu(19), o1=>sig5(19));
  u22: myNOT_948282 port map (i1=>B_alu(20), o1=>sig5(20));
  u23: myNOT_948282 port map (i1=>B_alu(21), o1=>sig5(21));
  u24: myNOT_948282 port map (i1=>B_alu(22), o1=>sig5(22));
  u25: myNOT_948282 port map (i1=>B_alu(23), o1=>sig5(23));
  u26: myNOT_948282 port map (i1=>B_alu(24), o1=>sig5(24));
  u27: myNOT_948282 port map (i1=>B_alu(25), o1=>sig5(25));
  u28: myNOT_948282 port map (i1=>B_alu(26), o1=>sig5(26));
  u29: myNOT_948282 port map (i1=>B_alu(27), o1=>sig5(27));
  u30: myNOT_948282 port map (i1=>B_alu(28), o1=>sig5(28));
  u31: myNOT_948282 port map (i1=>B_alu(29), o1=>sig5(29));
  u32: myNOT_948282 port map (i1=>B_alu(30), o1=>sig5(30));
  u33: myNOT_948282 port map (i1=>B_alu(31), o1=>sig5(31));


	u34: My_32bit2x1Mux_948282 port map (B_inv=>B_Inv, B=>B_alu, B_comp=>sig5, B_out=>sigB); --sigB in Adder
	
	u35: My_32bitAdder_948282 port map (A_reg=>A_alu, B_reg=>sigB, CarryIn=>B_Inv, CarryOut=>sig3, Result=>sigAdder);
	
	u36: My_32bit4x1Mux_948282 port map (Select1=>Alu1, Select2=>Alu0, A=>sigAnd, B=>sigOr, C=>sigAdder, D=>"00000000000000000000000000000000", R=>Result_alu);
	

end Behavioral;

