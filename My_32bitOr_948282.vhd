----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:00:32 11/18/2013 
-- Design Name: 
-- Module Name:    My_32bitOr_948282 - Behavioral 
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

entity My_32bitOr_948282 is
    Port ( inA_8282 : in  STD_LOGIC_VECTOR (31 downto 0);
           inB_8282 : in  STD_LOGIC_VECTOR (31 downto 0);
           outR_8282 : out  STD_LOGIC_VECTOR (31 downto 0));
end My_32bitOr_948282;

architecture Behavioral of My_32bitOr_948282 is

component My_16bitOr_948282 is
    Port ( A_el_8282 : in  STD_LOGIC_VECTOR (15 downto 0);
           B_el_8282 : in  STD_LOGIC_VECTOR (15 downto 0);
           R_el_8282 : out  STD_LOGIC_VECTOR (15 downto 0));
end component;
begin
	u0: My_16bitOr_948282 port map (A_el_8282=>inA_8282(15 downto 0), B_el_8282=>inB_8282(15 downto 0), R_el_8282=>outR_8282(15 downto 0));
	u1: My_16bitOr_948282 port map (A_el_8282=>inA_8282(31 downto 16), B_el_8282=>inB_8282(31 downto 16), R_el_8282=>outR_8282(31 downto 16));
end Behavioral;

