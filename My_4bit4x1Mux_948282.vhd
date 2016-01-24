----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:37:04 11/19/2013 
-- Design Name: 
-- Module Name:    My_4bit4x1Mux_948282 - Behavioral 
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

entity My_4bit4x1Mux_948282 is
    Port ( S1 : in  STD_LOGIC;
           S2 : in  STD_LOGIC;
           A_in : in  STD_LOGIC_VECTOR (3 downto 0);
           B_in : in  STD_LOGIC_VECTOR (3 downto 0);
           C_in : in  STD_LOGIC_VECTOR (3 downto 0);
           D_in : in  STD_LOGIC_VECTOR (3 downto 0);
           Decision : out  STD_LOGIC_VECTOR (3 downto 0));
end My_4bit4x1Mux_948282;

architecture Behavioral of My_4bit4x1Mux_948282 is

component My_4x1Mux_948282 is
    Port ( Sel1 : in  STD_LOGIC;
           Sel2 : in  STD_LOGIC;
           A_mux : in  STD_LOGIC;
           B_mux : in  STD_LOGIC;
           C_mux : in  STD_LOGIC;
           D_mux : in  STD_LOGIC;
           Result : out  STD_LOGIC);
end component;

signal sig1: std_logic;
signal  sig2, sig3: std_logic;

begin
 u0: My_4x1Mux_948282 port map (Sel1=>S1, Sel2=>S2, A_mux=>A_in(0), B_mux=>B_in(0), C_mux=>C_in(0), D_mux=>D_in(0), Result=>Decision(0));
 u1: My_4x1Mux_948282 port map (Sel1=>S1, Sel2=>S2, A_mux=>A_in(1), B_mux=>B_in(1), C_mux=>C_in(1), D_mux=>D_in(1), Result=>Decision(1));
 u2: My_4x1Mux_948282 port map (Sel1=>S1, Sel2=>S2, A_mux=>A_in(2), B_mux=>B_in(2), C_mux=>C_in(2), D_mux=>D_in(2), Result=>Decision(2));
 u3: My_4x1Mux_948282 port map (Sel1=>S1, Sel2=>S2, A_mux=>A_in(3), B_mux=>B_in(3), C_mux=>C_in(3), D_mux=>D_in(3), Result=>Decision(3));

end Behavioral;

