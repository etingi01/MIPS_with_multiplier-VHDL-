----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:39:23 11/19/2013 
-- Design Name: 
-- Module Name:    My_16bitMult_948282 - Behavioral 
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

entity My_16bitMult_948282 is
    Port ( A_inputM : in  STD_LOGIC_VECTOR (15 downto 0);
           B_inputM : in  STD_LOGIC_VECTOR (15 downto 0);
           Hi_out : out  STD_LOGIC_VECTOR (15 downto 0);
           Lo_out : out  STD_LOGIC_VECTOR (15 downto 0));
end My_16bitMult_948282;

architecture Behavioral of My_16bitMult_948282 is

component My_16bitAdder_948282 is
    Port ( A_input : in  STD_LOGIC_VECTOR (15 downto 0);
           B_input : in  STD_LOGIC_VECTOR (15 downto 0);
           Sum_out : out  STD_LOGIC_VECTOR (15 downto 0);
           Carry_in : in  STD_LOGIC;
           Carry_out : out  STD_LOGIC);
end component;

component My_16bitAnd_948282 is
    Port ( A_in_8282 : in  STD_LOGIC_VECTOR (15 downto 0);
           B_in_8282 : in  STD_LOGIC_VECTOR (15 downto 0);
           R_in_8282 : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component Extend_1to16bits is
    Port ( In_1bit : in  STD_LOGIC;
           Out_16bit : out  STD_LOGIC_VECTOR (15 downto 0));
end component;


component My_shift_948282 is
    Port ( FirstBit : in  STD_LOGIC;
           Rest : in  STD_LOGIC_VECTOR (15 downto 0);
           nextIn : out  STD_LOGIC_VECTOR (15 downto 0));
end component;



signal i0, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15: std_logic_vector (15 downto 0);
signal  sig1, sig2, sig3, sig4, sig5, sig6, sig7, sig8, sig9, sig10, sig11, sig12, sig13, sig14, sig15: std_logic_vector (15 downto 0);
signal  sig16, sig17, sig18, sig19, sig20, sig21, sig22, sig23, sig24, sig25, sig26, sig27, sig28, sig29, sig30: std_logic_vector (15 downto 0);
signal sig31, sig32, sig33, sig34: std_logic_vector (15 downto 0);
signal s1, s2, s3, s4, s5, s6, s7, s8, s9,s10, s11,s12,s13,s14,s15,s16: std_logic;
signal  l1, l2, l3, l4, l5, l6, l7, l8, l9, l10, l11, l12, l13, l14, l15: std_logic_vector (15 downto 0);
signal sig0: std_logic;
begin

	--Sign Extend
	u0: Extend_1to16bits port map (In_1bit=>A_inputM(0), Out_16bit=>i0);
	u1: Extend_1to16bits port map (In_1bit=>A_inputM(1), Out_16bit=>i1);
	u2: Extend_1to16bits port map (In_1bit=>A_inputM(2), Out_16bit=>i2);
	u3: Extend_1to16bits port map (In_1bit=>A_inputM(3), Out_16bit=>i3);
	u4: Extend_1to16bits port map (In_1bit=>A_inputM(4), Out_16bit=>i4);
	u5: Extend_1to16bits port map (In_1bit=>A_inputM(5), Out_16bit=>i5);
	u6: Extend_1to16bits port map (In_1bit=>A_inputM(6), Out_16bit=>i6);
	u7: Extend_1to16bits port map (In_1bit=>A_inputM(7), Out_16bit=>i7);
	u8: Extend_1to16bits port map (In_1bit=>A_inputM(8), Out_16bit=>i8);
	u9: Extend_1to16bits port map (In_1bit=>A_inputM(9), Out_16bit=>i9);
	u10: Extend_1to16bits port map (In_1bit=>A_inputM(10), Out_16bit=>i10);
	u11: Extend_1to16bits port map (In_1bit=>A_inputM(11), Out_16bit=>i11);
	u12: Extend_1to16bits port map (In_1bit=>A_inputM(12), Out_16bit=>i12);
	u13: Extend_1to16bits port map (In_1bit=>A_inputM(13), Out_16bit=>i13);
	u14: Extend_1to16bits port map (In_1bit=>A_inputM(14), Out_16bit=>i14);
	u15: Extend_1to16bits port map (In_1bit=>A_inputM(15), Out_16bit=>i15);
	--p0: sig0<='0';
	
	--Mult i0
	
	u16: My_16bitAnd_948282 port map (A_in_8282=>i0, B_in_8282=>B_inputM, R_in_8282=>sig1); --sig34 in 1st adder
	u17: Lo_out(0)<=sig1(0);
	instr: My_shift_948282 port map (FirstBit=>'0', Rest=>sig1, nextIn=>sig34);--sig3 in 2nd adder
	u18: My_16bitAnd_948282 port map (A_in_8282=>i1, B_in_8282=>B_inputM, R_in_8282=>sig2); --sig2 in 1st adder
	
	--1st Adder
	u19: My_16bitAdder_948282 port map (A_input=>sig34, B_input=>sig2, Carry_in=>'0', Carry_out=>s1, Sum_out=>l1); --l1 in shift + s1 in front of l1
	u20: Lo_out(1)<=l1(0);
	u21: My_shift_948282 port map (FirstBit=>s1, Rest=>l1, nextIn=>sig3);--sig3 in 2nd adder
	u22: My_16bitAnd_948282 port map (A_in_8282=>i2, B_in_8282=>B_inputM, R_in_8282=>sig4); --sig4 in 2nd adder
	
	--2nd Adder
	u23: My_16bitAdder_948282 port map (A_input=>sig3, B_input=>sig4, Carry_in=>'0', Carry_out=>s2, Sum_out=>l2); --l2 in shift + s2 in front of l2
	u24: Lo_out(2)<=l2(0);
	u25: My_shift_948282 port map (FirstBit=>s2, Rest=>l2, nextIn=>sig5);--sig5 in 3rd adder
	u26: My_16bitAnd_948282 port map (A_in_8282=>i3, B_in_8282=>B_inputM, R_in_8282=>sig6); --sig5 in 3rd adder
	
	--3rd Adder
	u27: My_16bitAdder_948282 port map (A_input=>sig4, B_input=>sig5, Carry_in=>'0', Carry_out=>s3, Sum_out=>l3); --l3 in shift + s3 in front of l3
	u28: Lo_out(3)<=l3(0);
	u29: My_shift_948282 port map (FirstBit=>s3, Rest=>l3, nextIn=>sig7);--sig7 in 4th adder
	u30: My_16bitAnd_948282 port map (A_in_8282=>i4, B_in_8282=>B_inputM, R_in_8282=>sig8); --sig8 in 4th adder
	
	--4th Adder
	u31: My_16bitAdder_948282 port map (A_input=>sig7, B_input=>sig8, Carry_in=>'0', Carry_out=>s4, Sum_out=>l4); --l4 in shift + s4 in front of l4
	u32: Lo_out(4)<=l4(0);
	u33: My_shift_948282 port map (FirstBit=>s4, Rest=>l4, nextIn=>sig9);--sig9 in 5th adder
	u34: My_16bitAnd_948282 port map (A_in_8282=>i5, B_in_8282=>B_inputM, R_in_8282=>sig10); --sig10 in 5th adder
	
	--5th Adder
	u35: My_16bitAdder_948282 port map (A_input=>sig9, B_input=>sig10, Carry_in=>'0', Carry_out=>s5, Sum_out=>l5); --l5 in shift + s5 in front of l5
	u36: Lo_out(5)<=l5(0);
	u37: My_shift_948282 port map (FirstBit=>s5, Rest=>l5, nextIn=>sig11);--sig11 in 6th adder
	u38: My_16bitAnd_948282 port map (A_in_8282=>i6, B_in_8282=>B_inputM, R_in_8282=>sig12); --sig12 in 6th adder
	
	--6th Adder
	u39: My_16bitAdder_948282 port map (A_input=>sig11, B_input=>sig12, Carry_in=>'0', Carry_out=>s6, Sum_out=>l6); --l5 in shift + s5 in front of l5
	u40: Lo_out(6)<=l6(0);
	u41: My_shift_948282 port map (FirstBit=>s6, Rest=>l6, nextIn=>sig13);--sig13 in 7th adder
	u42: My_16bitAnd_948282 port map (A_in_8282=>i7, B_in_8282=>B_inputM, R_in_8282=>sig14); --sig14 in 7th adder
	
	--7th Adder
	u43: My_16bitAdder_948282 port map (A_input=>sig13, B_input=>sig14, Carry_in=>'0', Carry_out=>s7, Sum_out=>l7); --l5 in shift + s5 in front of l5
	u44: Lo_out(7)<=l7(0);
	u45: My_shift_948282 port map (FirstBit=>s7, Rest=>l7, nextIn=>sig15);--sig15 in 8th adder
	u46: My_16bitAnd_948282 port map (A_in_8282=>i8, B_in_8282=>B_inputM, R_in_8282=>sig16); --sig16 in 8th adder
	
	--8th Adder
	u47: My_16bitAdder_948282 port map (A_input=>sig15, B_input=>sig16, Carry_in=>'0', Carry_out=>s8, Sum_out=>l8); --l5 in shift + s5 in front of l5
	u48: Lo_out(8)<=l8(0);
	u49: My_shift_948282 port map (FirstBit=>s8, Rest=>l8, nextIn=>sig17);--sig17 in 9th adder
	u50: My_16bitAnd_948282 port map (A_in_8282=>i9, B_in_8282=>B_inputM, R_in_8282=>sig18); --sig18 in 9th adder
	
	--9th Adder
	u51: My_16bitAdder_948282 port map (A_input=>sig17, B_input=>sig18, Carry_in=>'0', Carry_out=>s9, Sum_out=>l9); --l5 in shift + s5 in front of l5
	u52: Lo_out(9)<=l9(0);
	u53: My_shift_948282 port map (FirstBit=>s9, Rest=>l9, nextIn=>sig19);--sig19 in 10th adder
	u54: My_16bitAnd_948282 port map (A_in_8282=>i10, B_in_8282=>B_inputM, R_in_8282=>sig20); --sig20 in 10th adder
	
	--10th Adder
	u55: My_16bitAdder_948282 port map (A_input=>sig19, B_input=>sig20, Carry_in=>'0', Carry_out=>s10, Sum_out=>l10); --l5 in shift + s5 in front of l5
	u56: Lo_out(10)<=l10(0);
	u57: My_shift_948282 port map (FirstBit=>s10, Rest=>l10, nextIn=>sig21);--sig21 in 11th adder
	u58: My_16bitAnd_948282 port map (A_in_8282=>i11, B_in_8282=>B_inputM, R_in_8282=>sig22); --sig22 in 11th adder
	
	--11th Adder
	u59: My_16bitAdder_948282 port map (A_input=>sig21, B_input=>sig22, Carry_in=>'0', Carry_out=>s11, Sum_out=>l11); --l5 in shift + s5 in front of l5
	u60: Lo_out(11)<=l11(0);
	u61: My_shift_948282 port map (FirstBit=>s11, Rest=>l11, nextIn=>sig23);--sig23 in 12th adder
	u62: My_16bitAnd_948282 port map (A_in_8282=>i12, B_in_8282=>B_inputM, R_in_8282=>sig24); --sig24 in 12th adder

	--12th Adder
	u63: My_16bitAdder_948282 port map (A_input=>sig23, B_input=>sig24, Carry_in=>'0', Carry_out=>s12, Sum_out=>l12); --l5 in shift + s5 in front of l5
	u64: Lo_out(12)<=l12(0);
	u65: My_shift_948282 port map (FirstBit=>s12, Rest=>l12, nextIn=>sig25);--sig25 in 13th adder
	u66: My_16bitAnd_948282 port map (A_in_8282=>i13, B_in_8282=>B_inputM, R_in_8282=>sig26); --sig26 in 13th adder
	
	--13th Adder
	u67: My_16bitAdder_948282 port map (A_input=>sig25, B_input=>sig26, Carry_in=>'0', Carry_out=>s13, Sum_out=>l13); --l5 in shift + s5 in front of l5
	u68: Lo_out(13)<=l13(0);
	u69: My_shift_948282 port map (FirstBit=>s13, Rest=>l13, nextIn=>sig27);--sig27 in 14th adder
	u70: My_16bitAnd_948282 port map (A_in_8282=>i14, B_in_8282=>B_inputM, R_in_8282=>sig28); --sig28 in 14th adder
	
	--14th Adder
	u71: My_16bitAdder_948282 port map (A_input=>sig27, B_input=>sig28, Carry_in=>'0', Carry_out=>s14, Sum_out=>l14); --l5 in shift + s5 in front of l5
	u72: Lo_out(14)<=l14(0);
	u73: My_shift_948282 port map (FirstBit=>s14, Rest=>l14, nextIn=>sig29);--sig29 in 15th adder
	u74: My_16bitAnd_948282 port map (A_in_8282=>i15, B_in_8282=>B_inputM, R_in_8282=>sig30); --sig30 in 15th adder
	
	
	--15th Adder
	u75: My_16bitAdder_948282 port map (A_input=>sig29, B_input=>sig30, Carry_in=>'0', Carry_out=>s15, Sum_out=>l15); --l5 in shift + s5 in front of l5
	u76: Lo_out(15)<=l15(0);
	u77: My_shift_948282 port map (FirstBit=>s15, Rest=>l15, nextIn=>sig31);--sig31 in hi
	
	u78: Hi_out<=sig31;
	
end Behavioral;

