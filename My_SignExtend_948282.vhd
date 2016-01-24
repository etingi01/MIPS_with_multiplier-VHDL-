----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:46:37 11/19/2013 
-- Design Name: 
-- Module Name:    My_SignExtend_948282 - Behavioral 
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

entity My_SignExtend_948282 is
    Port ( Sign_In : in  STD_LOGIC_VECTOR (15 downto 0);
           Sign_Out : out  STD_LOGIC_VECTOR (31 downto 0));
end My_SignExtend_948282;

architecture Behavioral of My_SignExtend_948282 is

begin
	u0:Sign_Out(15 downto 0)<=Sign_In;
	u1:Sign_Out(16)<=Sign_In(15);
	u2:Sign_Out(17)<=Sign_In(15);
	u3:Sign_Out(18)<=Sign_In(15);
	u4:Sign_Out(19)<=Sign_In(15);	
	u5:Sign_Out(20)<=Sign_In(15);
	u6:Sign_Out(21)<=Sign_In(15);
	u7:Sign_Out(22)<=Sign_In(15);
	u8:Sign_Out(23)<=Sign_In(15);
	u9:Sign_Out(24)<=Sign_In(15);
	u10:Sign_Out(25)<=Sign_In(15);
	u11:Sign_Out(26)<=Sign_In(15);
	u12:Sign_Out(27)<=Sign_In(15);
	u13:Sign_Out(28)<=Sign_In(15);	
	u14:Sign_Out(29)<=Sign_In(15);	
	u15:Sign_Out(30)<=Sign_In(15);	
	u16:Sign_Out(31)<=Sign_In(15);
	
end Behavioral;

