----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:28:57 11/19/2013 
-- Design Name: 
-- Module Name:    My_XOR_948282 - Behavioral 
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

entity My_XOR_948282 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end My_XOR_948282;

architecture Behavioral of My_XOR_948282 is

component myNanddown_948282 is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           o1 : out  STD_LOGIC);
end component;
signal sig1: std_logic;
signal  sig2, sig3, sig4, sig5, sig6, sig7: std_logic;
begin
	u0: myNanddown_948282 port map (i0=>a, i1=>b, o1=>sig1);
	u1: myNanddown_948282 port map (i0=>sig1, i1=>a, o1=>sig2);
	u2: myNanddown_948282 port map (i0=>sig1, i1=>b, o1=>sig3);
	u3: myNanddown_948282 port map (i0=>sig2, i1=>sig3, o1=>c);

end Behavioral;

