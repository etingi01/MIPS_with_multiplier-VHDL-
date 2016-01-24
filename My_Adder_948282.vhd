----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:56:33 11/17/2013 
-- Design Name: 
-- Module Name:    My_Adder_948282 - Behavioral 
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

entity My_Adder_948282 is
    Port ( A_element : in  STD_LOGIC;
           B_element : in  STD_LOGIC;
           CarryIn : in  STD_LOGIC;
           CarryOut : out  STD_LOGIC;
           Result : out  STD_LOGIC);
end My_Adder_948282;

architecture Behavioral of My_Adder_948282 is
component My_And_948282 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           R : out  STD_LOGIC);
end component;
component My_XOR_948282 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end component;

component My_Or_948282 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           R : out  STD_LOGIC);
end component;

signal sig1: std_logic;
signal  sig2, sig3, sig4, sig5, sig6, sig7: std_logic;
begin
	u0: my_And_948282 port map (A=>A_element, B=>B_element, R=>sig1);
	u1: my_And_948282 port map (A=>A_element, B=>CarryIn, R=>sig2);
	u2: my_And_948282 port map (A=>B_element, B=>CarryIn, R=>sig3);
	
	u3: My_Or_948282 port map (A=>sig1, B=>sig2, R=>sig4);
	u4: My_Or_948282 port map (A=>sig4, B=>sig3, R=>CarryOut);
	
	u5: My_XOR_948282 port map (a=>A_element, b=>B_element, c=>sig5);
	u6: My_XOR_948282 port map (a=>sig5, b=>CarryIn, c=>Result);
end Behavioral;

