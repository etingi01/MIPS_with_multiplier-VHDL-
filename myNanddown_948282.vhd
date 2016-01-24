----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:25:50 11/16/2013 
-- Design Name: 
-- Module Name:    myNanddown_948282 - Behavioral 
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

entity myNanddown_948282 is
    Port ( i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           o1 : out  STD_LOGIC);
end myNanddown_948282;

architecture Behavioral of myNanddown_948282 is

begin
 
 o1 <= i0 NAND i1;

end Behavioral;


