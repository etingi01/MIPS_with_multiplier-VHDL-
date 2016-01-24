----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:53:44 11/17/2013 
-- Design Name: 
-- Module Name:    My_32bitAdder_948282 - Behavioral 
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

entity My_32bitAdder_948282 is
    Port ( A_reg : in  STD_LOGIC_VECTOR (31 downto 0);
           B_reg : in  STD_LOGIC_VECTOR (31 downto 0);
           CarryIn : in  STD_LOGIC;
           CarryOut : out  STD_LOGIC;
           Result : out  STD_LOGIC_VECTOR (31 downto 0));
end My_32bitAdder_948282;

architecture Behavioral of My_32bitAdder_948282 is
component My_4bitAdder_948282 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
			  R : out	 STD_LOGIC_VECTOR (3 downto 0);
           Carry_In : in  STD_LOGIC;
           Carry_Out : out  STD_LOGIC);
end component;

signal sig1: std_logic;
signal  sig2, sig3, sig4, sig5, sig6, sig7: std_logic;

begin
	u0: My_4bitAdder_948282 port map (A=>A_reg(3 downto 0), B=>B_reg(3 downto 0), Carry_In=>CarryIn, Carry_Out=>sig1, R=>Result(3 downto 0));
	u1: My_4bitAdder_948282 port map (A=>A_reg(7 downto 4), B=>B_reg(7 downto 4), Carry_In=>sig1, Carry_Out=>sig2, R=>Result(7 downto 4));
	u2: My_4bitAdder_948282 port map (A=>A_reg(11 downto 8), B=>B_reg(11 downto 8), Carry_In=>sig2, Carry_Out=>sig3, R=>Result(11 downto 8));
   u3: My_4bitAdder_948282 port map (A=>A_reg(15 downto 12), B=>B_reg(15 downto 12), Carry_In=>sig3, Carry_Out=>sig4, R=>Result(15 downto 12));
   u4: My_4bitAdder_948282 port map (A=>A_reg(19 downto 16), B=>B_reg(19 downto 16), Carry_In=>sig4, Carry_Out=>sig5, R=>Result(19 downto 16));
	u5: My_4bitAdder_948282 port map (A=>A_reg(23 downto 20), B=>B_reg(23 downto 20), Carry_In=>sig5, Carry_Out=>sig6, R=>Result(23 downto 20));
	u6: My_4bitAdder_948282 port map (A=>A_reg(27 downto 24), B=>B_reg(27 downto 24), Carry_In=>sig6, Carry_Out=>sig7, R=>Result(27 downto 24));
	u7: My_4bitAdder_948282 port map (A=>A_reg(31 downto 28), B=>B_reg(31 downto 28), Carry_In=>sig7, Carry_Out=>CarryOut, R=>Result(31 downto 28));	
end Behavioral;

