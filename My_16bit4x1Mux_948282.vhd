----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:51:50 11/19/2013 
-- Design Name: 
-- Module Name:    My_16bit4x1Mux_948282 - Behavioral 
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

entity My_16bit4x1Mux_948282 is
    Port ( S_1 : in  STD_LOGIC;
           S_2 : in  STD_LOGIC;
           A_mux : in  STD_LOGIC_VECTOR (15 downto 0);
           B_mux : in  STD_LOGIC_VECTOR (15 downto 0);
           C_mux : in  STD_LOGIC_VECTOR (15 downto 0);
           D_mux : in  STD_LOGIC_VECTOR (15 downto 0);
           Result : out  STD_LOGIC_VECTOR (15 downto 0));
end My_16bit4x1Mux_948282;

architecture Behavioral of My_16bit4x1Mux_948282 is

component My_4bit4x1Mux_948282 is
    Port ( S1 : in  STD_LOGIC;
           S2 : in  STD_LOGIC;
           A_in : in  STD_LOGIC_VECTOR (3 downto 0);
           B_in : in  STD_LOGIC_VECTOR (3 downto 0);
           C_in : in  STD_LOGIC_VECTOR (3 downto 0);
           D_in : in  STD_LOGIC_VECTOR (3 downto 0);
           Decision : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

signal sig1: std_logic;
signal  sig2, sig3: std_logic;
begin
	u0: My_4bit4x1Mux_948282 port map (S1=>S_1, S2=>S_2, A_in=>A_mux(3 downto 0), B_in=>B_mux(3 downto 0), C_in=>C_mux(3 downto 0), D_in=>D_mux(3 downto 0), Decision=>Result(3 downto 0));
	u1: My_4bit4x1Mux_948282 port map (S1=>S_1, S2=>S_2, A_in=>A_mux(7 downto 4), B_in=>B_mux(7 downto 4), C_in=>C_mux(7 downto 4), D_in=>D_mux(7 downto 4), Decision=>Result(7 downto 4));
	u2: My_4bit4x1Mux_948282 port map (S1=>S_1, S2=>S_2, A_in=>A_mux(11 downto 8), B_in=>B_mux(11 downto 8), C_in=>C_mux(11 downto 8), D_in=>D_mux(11 downto 8), Decision=>Result(11 downto 8));
	u3: My_4bit4x1Mux_948282 port map (S1=>S_1, S2=>S_2, A_in=>A_mux(15 downto 12), B_in=>B_mux(15 downto 12), C_in=>C_mux(15 downto 12), D_in=>D_mux(15 downto 12), Decision=>Result(15 downto 12));

end Behavioral;

