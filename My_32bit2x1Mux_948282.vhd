----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:20:30 11/19/2013 
-- Design Name: 
-- Module Name:    My_32bit2x1Mux_948282 - Behavioral 
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

entity My_32bit2x1Mux_948282 is
    Port ( B_inv : in  STD_LOGIC;
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           B_comp : in  STD_LOGIC_VECTOR (31 downto 0);
           B_out : out  STD_LOGIC_VECTOR (31 downto 0));
end My_32bit2x1Mux_948282;

architecture Behavioral of My_32bit2x1Mux_948282 is

component My_32bitOr_948282 is
    Port ( inA_8282 : in  STD_LOGIC_VECTOR (31 downto 0);
           inB_8282 : in  STD_LOGIC_VECTOR (31 downto 0);
           outR_8282 : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component My_32bitAnd_948282 is
    Port ( A_8282 : in  STD_LOGIC_VECTOR (31 downto 0);
           B_8282 : in  STD_LOGIC_VECTOR (31 downto 0);
           R_8282 : out  STD_LOGIC_VECTOR (31 downto 0));
end component;


component myNOT_948282 is
    Port ( i1 : in  STD_LOGIC;
           o1 : out  STD_LOGIC);
end component;

component Extend_1to16bits is
    Port ( In_1bit : in  STD_LOGIC;
           Out_16bit : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

signal  sig11, sig22, sig2, sig5: std_logic_vector(31 downto 0);
signal sig3, sig3b, sig1b, sig1: std_logic_vector(15 downto 0);
signal   sig4,  sig6, sig7: std_logic;
begin
	u0: Extend_1to16bits port map (In_1bit=>B_inv, Out_16bit=>sig1);
	u2: sig11(15 downto 0)<=sig1;
	u3: sig11(31 downto 16)<=sig1;
	u4: My_32bitAnd_948282 port map (A_8282=>B_comp, B_8282=>sig11, R_8282=>sig2);--sig2 in or
	u5: myNot_948282 port map (i1=>B_inv, o1=>sig4);
	u6: Extend_1to16bits port map (In_1bit=>sig4, Out_16bit=>sig3b);
	u7: sig22(15 downto 0)<=sig3b;
	u8: sig22(31 downto 16)<=sig3b;
	u9: My_32bitAnd_948282 port map (A_8282=>B, B_8282=>sig22, R_8282=>sig5);--sig5 in or
	u10: My_32bitOr_948282 port map (inA_8282=>sig2, inB_8282=>sig5, outR_8282=>B_out);
	
end Behavioral;

