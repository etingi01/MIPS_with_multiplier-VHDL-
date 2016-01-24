----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:37:13 11/17/2013 
-- Design Name: 
-- Module Name:    My_4bitAdder_948282 - Behavioral 
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

entity My_4bitAdder_948282 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
			  R : out	 STD_LOGIC_VECTOR (3 downto 0);
           Carry_In : in  STD_LOGIC;
           Carry_Out : out  STD_LOGIC);
end My_4bitAdder_948282;

architecture Behavioral of My_4bitAdder_948282 is
component My_Adder_948282 is
    Port ( A_element : in  STD_LOGIC;
           B_element : in  STD_LOGIC;
           CarryIn : in  STD_LOGIC;
           CarryOut : out  STD_LOGIC;
           Result : out  STD_LOGIC);
end component;

signal sig1: std_logic;
signal  sig2, sig3, sig4, sig5, sig6, sig7: std_logic;
begin
	u0: My_Adder_948282 port map (CarryIn=>Carry_In, A_element=>A(0), B_element=>B(0), CarryOut=>sig1, Result=>R(0));
	u1: My_Adder_948282 port map (CarryIn=>sig1, A_element=>A(1), B_element=>B(1), CarryOut=>sig2, Result=>R(1));
	u2: My_Adder_948282 port map (CarryIn=>sig2, A_element=>A(2), B_element=>B(2), CarryOut=>sig3, Result=>R(2));
	u3: My_Adder_948282 port map (CarryIn=>sig3, A_element=>A(3), B_element=>B(3), CarryOut=>Carry_Out, Result=>R(3));
end Behavioral;

