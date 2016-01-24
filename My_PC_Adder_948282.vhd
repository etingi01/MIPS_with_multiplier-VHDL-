----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:00:58 11/19/2013 
-- Design Name: 
-- Module Name:    My_PC_Adder_948282 - Behavioral 
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

entity My_PC_Adder_948282 is
    Port ( Address_In : in  STD_LOGIC_VECTOR (9 downto 0);
           Address_Next : out  STD_LOGIC_VECTOR (9 downto 0));
end My_PC_Adder_948282;

architecture Behavioral of My_PC_Adder_948282 is
component My_Adder_948282 is
    Port ( A_element : in  STD_LOGIC;
           B_element : in  STD_LOGIC;
           CarryIn : in  STD_LOGIC;
           CarryOut : out  STD_LOGIC;
           Result : out  STD_LOGIC);
end component;

signal sig1: std_logic;
signal  sig2, sig3, sig4, sig5, sig6, sig7, sig8, sig9, sig10: std_logic;

begin
u0: My_Adder_948282 port map (A_element=>Address_In(0), B_element=>'1', CarryIn=>'0', Result=>Address_Next(0), CarryOut=>sig1);
u1: My_Adder_948282 port map (A_element=>Address_In(1), B_element=>'0', CarryIn=>sig1, Result=>Address_Next(1), CarryOut=>sig2);
u2: My_Adder_948282 port map (A_element=>Address_In(2), B_element=>'0', CarryIn=>sig2, Result=>Address_Next(2), CarryOut=>sig3);
u3: My_Adder_948282 port map (A_element=>Address_In(3), B_element=>'0', CarryIn=>sig3, Result=>Address_Next(3), CarryOut=>sig4);
u4: My_Adder_948282 port map (A_element=>Address_In(4), B_element=>'0', CarryIn=>sig4, Result=>Address_Next(4), CarryOut=>sig5);
u5: My_Adder_948282 port map (A_element=>Address_In(5), B_element=>'0', CarryIn=>sig5, Result=>Address_Next(5), CarryOut=>sig6);
u6: My_Adder_948282 port map (A_element=>Address_In(6), B_element=>'0', CarryIn=>sig6, Result=>Address_Next(6), CarryOut=>sig7);
u7: My_Adder_948282 port map (A_element=>Address_In(7), B_element=>'0', CarryIn=>sig7, Result=>Address_Next(7), CarryOut=>sig8);
u8: My_Adder_948282 port map (A_element=>Address_In(8), B_element=>'0', CarryIn=>sig8, Result=>Address_Next(8), CarryOut=>sig9);
u9: My_Adder_948282 port map (A_element=>Address_In(9), B_element=>'0', CarryIn=>sig9, Result=>Address_Next(9), CarryOut=>sig10);


end Behavioral;

