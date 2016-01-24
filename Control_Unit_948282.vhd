----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:10:51 11/17/2013 
-- Design Name: 
-- Module Name:    Control_Unit_948282 - Behavioral 
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

entity Control_Unit_948282 is
    Port ( Op_Code : in  STD_LOGIC_VECTOR (5 downto 0);
           Fun_Code : in  STD_LOGIC_VECTOR (5 downto 0);
           MemToRead : out  STD_LOGIC;
           RegDist : out  STD_LOGIC;
           RegWrite : out  STD_LOGIC;
			  MemRead:out STD_LOGIC;
           MemWrite : out  STD_LOGIC;
           Alu1 : out  STD_LOGIC;
           CarryIn : out  STD_LOGIC;
           Alu0 : out  STD_LOGIC);
end Control_Unit_948282;

architecture Behavioral of Control_Unit_948282 is
component myNAND2 is
    Port ( I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           O : out  STD_LOGIC);
end component;

component myNOT_948282 is
    Port ( i1 : in  STD_LOGIC;
           o1 : out  STD_LOGIC);
end component;

component My_Or_948282 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           R : out  STD_LOGIC);
end component;

signal sig1: std_logic;
signal  sig2, sig3, sig4, sig5, sig6, sig7, sigCarryIn, sigCarry: std_logic;
begin
	
	u0: 	myNOT_948282 port map  (i1=>Op_Code(0), o1=>RegDist);
	u1:	myNOT_948282 port map  (i1=>Op_Code(0), o1=>sig1);
	u2:   myNOT_948282 port map  (i1=>sig1, o1=>MemToRead);
	u3:   myNOT_948282 port map  (i1=>Op_Code(3), o1=>RegWrite);
	u4:   myNOT_948282 port map  (i1=>Op_Code(3), o1=>sig2);
	u5:   myNOT_948282 port map  (i1=>sig2, o1=>MemWrite);
   u6: 	myNOT_948282 port map  (i1=>Fun_Code(2), o1=>sig5);--sig5
	alu001: my_Or_948282 port map  (A=>sig5, B=>Op_Code(5), R=>Alu1);
	Carry01: myNOT_948282 port map (i1=>Op_Code(1), o1=>sigCarryIn);
	Carry02: myNAND2 port map (I1=>sigCarryIn, I2=>Fun_Code(1), O=>sigCarry);
	Carry03: myNOT_948282 port map (i1=>sigCarry, o1=>CarryIn);
	alu01:myNOT_948282 port map  (i1=>Op_Code(5), o1=>sig4);
	alu02:myNAND2 port map (I1=>Fun_Code(0), I2=>sig4, O=>sig7);
	alu03:myNOT_948282 port map  (i1=>sig7, o1=>Alu0); 
	--u8:  Alu0<=Fun_Code(0);
	u9: 	myNOT_948282 port map (i1=>Op_Code(3), o1=>MemRead);
end Behavioral;

