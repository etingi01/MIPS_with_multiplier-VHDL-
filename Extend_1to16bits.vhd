----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:57:21 11/19/2013 
-- Design Name: 
-- Module Name:    Extend_1to16bits - Behavioral 
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

entity Extend_1to16bits is
    Port ( In_1bit : in  STD_LOGIC;
           Out_16bit : out  STD_LOGIC_VECTOR (15 downto 0));
end Extend_1to16bits;

architecture Behavioral of Extend_1to16bits is

begin
	u0: Out_16bit(0)<=In_1bit;
	u1: Out_16bit(1)<=In_1bit;
	u2: Out_16bit(2)<=In_1bit;
	u3: Out_16bit(3)<=In_1bit;
	u4: Out_16bit(4)<=In_1bit;
	u5: Out_16bit(5)<=In_1bit;
	u6: Out_16bit(6)<=In_1bit;
	u7: Out_16bit(7)<=In_1bit;
	u8: Out_16bit(8)<=In_1bit;
	u9: Out_16bit(9)<=In_1bit;
	u10: Out_16bit(10)<=In_1bit;
	u11: Out_16bit(11)<=In_1bit;
	u12: Out_16bit(12)<=In_1bit;
	u13: Out_16bit(13)<=In_1bit;
	u14: Out_16bit(14)<=In_1bit;
	u15: Out_16bit(15)<=In_1bit;

end Behavioral;

