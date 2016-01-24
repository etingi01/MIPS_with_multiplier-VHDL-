----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:20:14 11/19/2013 
-- Design Name: 
-- Module Name:    My_16bitAdder_948282 - Behavioral 
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

entity My_16bitAdder_948282 is
    Port ( A_input : in  STD_LOGIC_VECTOR (15 downto 0);
           B_input : in  STD_LOGIC_VECTOR (15 downto 0);
           Sum_out : out  STD_LOGIC_VECTOR (15 downto 0);
           Carry_in : in  STD_LOGIC;
           Carry_out : out  STD_LOGIC);
end My_16bitAdder_948282;

architecture Behavioral of My_16bitAdder_948282 is
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
	
	u0: My_4bitAdder_948282 port map (A=>A_input(3 downto 0), B=>B_input(3 downto 0), Carry_In=>Carry_in, R=>Sum_out(3 downto 0), Carry_Out=>sig1);
	u1: My_4bitAdder_948282 port map (A=>A_input(7 downto 4), B=>B_input(7 downto 4), Carry_In=>sig1, R=>Sum_out(7 downto 4), Carry_Out=>sig2);
	u2: My_4bitAdder_948282 port map (A=>A_input(11 downto 8), B=>B_input(11 downto 8), Carry_In=>sig2, R=>Sum_out(11 downto 8), Carry_Out=>sig3);
	u3: My_4bitAdder_948282 port map (A=>A_input(15 downto 12), B=>B_input(15 downto 12), Carry_In=>sig3, R=>Sum_out(15 downto 12), Carry_Out=>Carry_out);
	

end Behavioral;

