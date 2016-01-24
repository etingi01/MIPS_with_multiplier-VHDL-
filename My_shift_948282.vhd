----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:35:28 11/19/2013 
-- Design Name: 
-- Module Name:    My_shift_948282 - Behavioral 
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

entity My_shift_948282 is
    Port ( FirstBit : in  STD_LOGIC;
           Rest : in  STD_LOGIC_VECTOR (15 downto 0);
           nextIn : out  STD_LOGIC_VECTOR (15 downto 0));
end My_shift_948282;

architecture Behavioral of My_shift_948282 is
signal  sig1, sig2, sig3, sig4, sig5, sig6, sig7: std_logic_vector (15 downto 0);
signal s1, s2, s3, s4, s5, s6, s7, s8, s9: std_logic;
begin
	u0: NextIn(0)<=Rest(1);
	u1: NextIn(1)<=Rest(2);
	u2: NextIn(2)<=Rest(3);
	u3: NextIn(3)<=Rest(4);
	u4: NextIn(4)<=Rest(5);
	u5: NextIn(5)<=Rest(6);
	u6: NextIn(6)<=Rest(7);
	u7: NextIn(7)<=Rest(8);
	u8: NextIn(8)<=Rest(9);
	u9: NextIn(9)<=Rest(10);
	u10: NextIn(10)<=Rest(11);
	u11: NextIn(11)<=Rest(12);
	u12: NextIn(12)<=Rest(13);
	u13: NextIn(13)<=Rest(14);
	u14: NextIn(14)<=Rest(15);
	u15: NextIn(15)<=FirstBit;


end Behavioral;

