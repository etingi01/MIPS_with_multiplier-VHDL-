----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:06:28 11/19/2013 
-- Design Name: 
-- Module Name:    My_32bit4x1Mux_948282 - Behavioral 
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

entity My_32bit4x1Mux_948282 is
    Port ( Select1 : in  STD_LOGIC;
           Select2 : in  STD_LOGIC;
           A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           C : in  STD_LOGIC_VECTOR (31 downto 0);
           D : in  STD_LOGIC_VECTOR (31 downto 0);
           R : out  STD_LOGIC_VECTOR (31 downto 0));
end My_32bit4x1Mux_948282;

architecture Behavioral of My_32bit4x1Mux_948282 is

component My_16bit4x1Mux_948282 is
    Port ( S_1 : in  STD_LOGIC;
           S_2 : in  STD_LOGIC;
           A_mux : in  STD_LOGIC_VECTOR (15 downto 0);
           B_mux : in  STD_LOGIC_VECTOR (15 downto 0);
           C_mux : in  STD_LOGIC_VECTOR (15 downto 0);
           D_mux : in  STD_LOGIC_VECTOR (15 downto 0);
           Result : out  STD_LOGIC_VECTOR (15 downto 0));
end component;
begin
	u0: My_16bit4x1Mux_948282 port map (S_1=>Select1, S_2=>Select2, A_mux=>A(15 downto 0), B_mux=>B(15 downto 0), C_mux=>C(15 downto 0), D_mux=>D(15 downto 0), Result=>R(15 downto 0));
	u1: My_16bit4x1Mux_948282 port map (S_1=>Select1, S_2=>Select2, A_mux=>A(31 downto 16), B_mux=>B(31 downto 16), C_mux=>C(31 downto 16), D_mux=>D(31 downto 16), Result=>R(31 downto 16));

end Behavioral;

