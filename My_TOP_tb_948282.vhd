--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:00:40 11/20/2013
-- Design Name:   
-- Module Name:   C:/Users/etingi01/Mips32_948282_20.11.2013/My_TOP_tb_948282.vhd
-- Project Name:  Mips32_948282_20.11.2013
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: My_TOP_948282
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY My_TOP_tb_948282 IS
END My_TOP_tb_948282;
 
ARCHITECTURE behavior OF My_TOP_tb_948282 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT My_TOP_948282
    PORT(
         Clock : IN  std_logic;
         Reset : IN  std_logic;
			address: out std_logic_vector (9 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clock : std_logic := '0';
   signal Reset : std_logic := '0';
	signal address: std_logic_vector(9 downto 0);
   -- Clock period definitions
   constant Clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: My_TOP_948282 PORT MAP (
          Clock => Clock,
          Reset => Reset,
			 address=>address
        );

   -- Clock process definitions
   --Clock_process :process
   --begin
		--Clock <= '0';
		--wait for Clock_period/2;
		--Clock <= '1';
		--wait for Clock_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		Reset<='1';
		Clock<='1';
		wait for 100 ns;
		Clock<='0';
		Reset<='0';
		wait for 100 ns;
		--Reset<='1';
		Clock<='1';
		wait for 100 ns;
      Clock<='0';
		--Reset<='0';
		wait for 100 ns;
		Clock<='1';
		wait for 100 ns;
		Clock<='0';
		wait for 100 ns;
		Clock<='1';
		wait for 100 ns;
		Clock<='0';
		wait for 100 ns;

      wait;
   end process;

END;
