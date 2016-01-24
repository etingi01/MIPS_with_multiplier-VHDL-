--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:15:52 11/21/2013
-- Design Name:   
-- Module Name:   C:/Users/etingi01/EPL221_FALL2013_MIPS32DSPprocessorID_948282/My_TOP_outs_tb_948282.vhd
-- Project Name:  EPL221_FALL2013_MIPS32DSPprocessorID_948282
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
 
ENTITY My_TOP_outs_tb_948282 IS
END My_TOP_outs_tb_948282;
 
ARCHITECTURE behavior OF My_TOP_outs_tb_948282 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT My_TOP_948282
    PORT(
         Clock : IN  std_logic;
         Reset : IN  std_logic;
         InstrAddress : OUT  std_logic_vector(9 downto 0);
         InstructionNum : OUT  std_logic_vector(31 downto 0);
         RFReadRegister1 : OUT  std_logic_vector(4 downto 0);
         RFReadRegister2 : OUT  std_logic_vector(4 downto 0);
         RFWriteRegister : OUT  std_logic_vector(4 downto 0);
         RFWriteData : OUT  std_logic_vector(31 downto 0);
         RFRegWrite : OUT  std_logic;
         RFclk : OUT  std_logic;
         RFReset : OUT  std_logic;
         RFReadData1 : OUT  std_logic_vector(31 downto 0);
         RFReadData2 : OUT  std_logic_vector(31 downto 0);
         RFReadData3 : OUT  std_logic_vector(31 downto 0);
         CUOp_Code : OUT  std_logic_vector(5 downto 0);
         CUFun_Code : OUT  std_logic_vector(5 downto 0);
         CUMemToRead : OUT  std_logic;
         CURegDist : OUT  std_logic;
         CURegWrite : OUT  std_logic;
         CUMemWrite : OUT  std_logic;
         CUAlu1 : OUT  std_logic;
         CUCarryIn : OUT  std_logic;
         CUAlu0 : OUT  std_logic;
         CUMemRead : OUT  std_logic;
         InAlu0 : OUT  std_logic;
         InAlu1 : OUT  std_logic;
         InA : OUT  std_logic_vector(31 downto 0);
         InB : OUT  std_logic_vector(31 downto 0);
         InB_Inv : OUT  std_logic;
         OutResult_alu : OUT  std_logic_vector(31 downto 0);
         RAMDataAddress : OUT  std_logic_vector(9 downto 0);
         RAMclk : OUT  std_logic;
         RAMreadData : OUT  std_logic;
         RAMwriteData : OUT  std_logic;
         RAMDataIn : OUT  std_logic_vector(31 downto 0);
         RAMDataOut : OUT  std_logic_vector(31 downto 0);
         beforeRF_A : OUT  std_logic_vector(4 downto 0);
         beforeRF_B : OUT  std_logic_vector(4 downto 0);
         beforeRF_Op : OUT  std_logic;
         beforeRF_result : OUT  std_logic_vector(4 downto 0);
         Select1_secMux : OUT  std_logic;
         A_secMux : OUT  std_logic_vector(31 downto 0);
         B_secMux : OUT  std_logic_vector(31 downto 0);
         out_secMux : OUT  std_logic_vector(31 downto 0);
         Select1_thirdMux : OUT  std_logic;
         A_thirdMux : OUT  std_logic_vector(31 downto 0);
         B_thirdMux : OUT  std_logic_vector(31 downto 0);
         out_thirdMux : OUT  std_logic_vector(31 downto 0);
         Select1_fourthMux : OUT  std_logic;
         A_fourthMux : OUT  std_logic_vector(31 downto 0);
         B_fourthMux : OUT  std_logic_vector(31 downto 0);
         out_fourthMux : OUT  std_logic_vector(31 downto 0);
         Select1_lastMux : OUT  std_logic;
         Select2_lastMux : OUT  std_logic;
         A_lastMux : OUT  std_logic_vector(31 downto 0);
         B_lastMux : OUT  std_logic_vector(31 downto 0);
         C_lastMux : OUT  std_logic_vector(31 downto 0);
         D_lastMux : OUT  std_logic_vector(31 downto 0);
         R_lastMux : OUT  std_logic_vector(31 downto 0);
         RF2_ReadRegister1 : OUT  std_logic_vector(4 downto 0);
         RF2_ReadRegister2 : OUT  std_logic_vector(4 downto 0);
         RF2_WriteRegister : OUT  std_logic_vector(4 downto 0);
         RF2_WriteData : OUT  std_logic_vector(31 downto 0);
         RF2_RegWrite : OUT  std_logic;
         RF2_clk : OUT  std_logic;
         RF2_Reset : OUT  std_logic;
         RF2_ReadData1 : OUT  std_logic_vector(31 downto 0);
         RF2_ReadData2 : OUT  std_logic_vector(31 downto 0);
         RF2_ReadData3 : OUT  std_logic_vector(31 downto 0);
         address : OUT  std_logic_vector(9 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clock : std_logic := '0';
   signal Reset : std_logic := '0';

 	--Outputs
   signal InstrAddress : std_logic_vector(9 downto 0);
   signal InstructionNum : std_logic_vector(31 downto 0);
   signal RFReadRegister1 : std_logic_vector(4 downto 0);
   signal RFReadRegister2 : std_logic_vector(4 downto 0);
   signal RFWriteRegister : std_logic_vector(4 downto 0);
   signal RFWriteData : std_logic_vector(31 downto 0);
   signal RFRegWrite : std_logic;
   signal RFclk : std_logic;
   signal RFReset : std_logic;
   signal RFReadData1 : std_logic_vector(31 downto 0);
   signal RFReadData2 : std_logic_vector(31 downto 0);
   signal RFReadData3 : std_logic_vector(31 downto 0);
   signal CUOp_Code : std_logic_vector(5 downto 0);
   signal CUFun_Code : std_logic_vector(5 downto 0);
   signal CUMemToRead : std_logic;
   signal CURegDist : std_logic;
   signal CURegWrite : std_logic;
   signal CUMemWrite : std_logic;
   signal CUAlu1 : std_logic;
   signal CUCarryIn : std_logic;
   signal CUAlu0 : std_logic;
   signal CUMemRead : std_logic;
   signal InAlu0 : std_logic;
   signal InAlu1 : std_logic;
   signal InA : std_logic_vector(31 downto 0);
   signal InB : std_logic_vector(31 downto 0);
   signal InB_Inv : std_logic;
   signal OutResult_alu : std_logic_vector(31 downto 0);
   signal RAMDataAddress : std_logic_vector(9 downto 0);
   signal RAMclk : std_logic;
   signal RAMreadData : std_logic;
   signal RAMwriteData : std_logic;
   signal RAMDataIn : std_logic_vector(31 downto 0);
   signal RAMDataOut : std_logic_vector(31 downto 0);
   signal beforeRF_A : std_logic_vector(4 downto 0);
   signal beforeRF_B : std_logic_vector(4 downto 0);
   signal beforeRF_Op : std_logic;
   signal beforeRF_result : std_logic_vector(4 downto 0);
   signal Select1_secMux : std_logic;
   signal A_secMux : std_logic_vector(31 downto 0);
   signal B_secMux : std_logic_vector(31 downto 0);
   signal out_secMux : std_logic_vector(31 downto 0);
   signal Select1_thirdMux : std_logic;
   signal A_thirdMux : std_logic_vector(31 downto 0);
   signal B_thirdMux : std_logic_vector(31 downto 0);
   signal out_thirdMux : std_logic_vector(31 downto 0);
   signal Select1_fourthMux : std_logic;
   signal A_fourthMux : std_logic_vector(31 downto 0);
   signal B_fourthMux : std_logic_vector(31 downto 0);
   signal out_fourthMux : std_logic_vector(31 downto 0);
   signal Select1_lastMux : std_logic;
   signal Select2_lastMux : std_logic;
   signal A_lastMux : std_logic_vector(31 downto 0);
   signal B_lastMux : std_logic_vector(31 downto 0);
   signal C_lastMux : std_logic_vector(31 downto 0);
   signal D_lastMux : std_logic_vector(31 downto 0);
   signal R_lastMux : std_logic_vector(31 downto 0);
   signal RF2_ReadRegister1 : std_logic_vector(4 downto 0);
   signal RF2_ReadRegister2 : std_logic_vector(4 downto 0);
   signal RF2_WriteRegister : std_logic_vector(4 downto 0);
   signal RF2_WriteData : std_logic_vector(31 downto 0);
   signal RF2_RegWrite : std_logic;
   signal RF2_clk : std_logic;
   signal RF2_Reset : std_logic;
   signal RF2_ReadData1 : std_logic_vector(31 downto 0);
   signal RF2_ReadData2 : std_logic_vector(31 downto 0);
   signal RF2_ReadData3 : std_logic_vector(31 downto 0);
   signal address : std_logic_vector(9 downto 0);

   -- Clock period definitions
   constant Clock_period : time := 10 ns;
   constant RFclk_period : time := 10 ns;
   constant RAMclk_period : time := 10 ns;
   constant RF2_clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: My_TOP_948282 PORT MAP (
          Clock => Clock,
          Reset => Reset,
          InstrAddress => InstrAddress,
          InstructionNum => InstructionNum,
          RFReadRegister1 => RFReadRegister1,
          RFReadRegister2 => RFReadRegister2,
          RFWriteRegister => RFWriteRegister,
          RFWriteData => RFWriteData,
          RFRegWrite => RFRegWrite,
          RFclk => RFclk,
          RFReset => RFReset,
          RFReadData1 => RFReadData1,
          RFReadData2 => RFReadData2,
          RFReadData3 => RFReadData3,
          CUOp_Code => CUOp_Code,
          CUFun_Code => CUFun_Code,
          CUMemToRead => CUMemToRead,
          CURegDist => CURegDist,
          CURegWrite => CURegWrite,
          CUMemWrite => CUMemWrite,
          CUAlu1 => CUAlu1,
          CUCarryIn => CUCarryIn,
          CUAlu0 => CUAlu0,
          CUMemRead => CUMemRead,
          InAlu0 => InAlu0,
          InAlu1 => InAlu1,
          InA => InA,
          InB => InB,
          InB_Inv => InB_Inv,
          OutResult_alu => OutResult_alu,
          RAMDataAddress => RAMDataAddress,
          RAMclk => RAMclk,
          RAMreadData => RAMreadData,
          RAMwriteData => RAMwriteData,
          RAMDataIn => RAMDataIn,
          RAMDataOut => RAMDataOut,
          beforeRF_A => beforeRF_A,
          beforeRF_B => beforeRF_B,
          beforeRF_Op => beforeRF_Op,
          beforeRF_result => beforeRF_result,
          Select1_secMux => Select1_secMux,
          A_secMux => A_secMux,
          B_secMux => B_secMux,
          out_secMux => out_secMux,
          Select1_thirdMux => Select1_thirdMux,
          A_thirdMux => A_thirdMux,
          B_thirdMux => B_thirdMux,
          out_thirdMux => out_thirdMux,
          Select1_fourthMux => Select1_fourthMux,
          A_fourthMux => A_fourthMux,
          B_fourthMux => B_fourthMux,
          out_fourthMux => out_fourthMux,
          Select1_lastMux => Select1_lastMux,
          Select2_lastMux => Select2_lastMux,
          A_lastMux => A_lastMux,
          B_lastMux => B_lastMux,
          C_lastMux => C_lastMux,
          D_lastMux => D_lastMux,
          R_lastMux => R_lastMux,
          RF2_ReadRegister1 => RF2_ReadRegister1,
          RF2_ReadRegister2 => RF2_ReadRegister2,
          RF2_WriteRegister => RF2_WriteRegister,
          RF2_WriteData => RF2_WriteData,
          RF2_RegWrite => RF2_RegWrite,
          RF2_clk => RF2_clk,
          RF2_Reset => RF2_Reset,
          RF2_ReadData1 => RF2_ReadData1,
          RF2_ReadData2 => RF2_ReadData2,
          RF2_ReadData3 => RF2_ReadData3,
          address => address
        );

--    Clock process definitions
   Clock_process :process
   begin
		Clock <= '0';
	wait for Clock_period/2;
	Clock <= '1';
		wait for Clock_period/2;
   end process;
 
   RFclk_process :process
   begin
		RFclk <= '0';
		wait for RFclk_period/2;
		RFclk <= '1';
		wait for RFclk_period/2;
   end process;
 
   RAMclk_process :process
   begin
		RAMclk <= '0';
		wait for RAMclk_period/2;
		RAMclk <= '1';
		wait for RAMclk_period/2;
   end process;
 
   RF2_clk_process :process
   begin
		RF2_clk <= '0';
		wait for RF2_clk_period/2;
		RF2_clk <= '1';
		wait for RF2_clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clock_period*10;

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
		Clock<='1';
		wait for 100 ns;
		Clock<='0';
		wait for 100 ns;
		Clock<='1';
		wait for 100 ns;
		Clock<='0';
		wait for 100 ns;
		Clock<='1';
		wait for 100 ns;
		Clock<='0';
		wait for 100 ns;
		Clock<='1';
		wait for 100 ns;
		Clock<='0';
		wait for 100 ns;
		Clock<='1';
		wait for 100 ns;
		Clock<='0';
		wait for 100 ns;
		Clock<='1';
		wait for 100 ns;
		Clock<='0';
		wait for 100 ns;
		Clock<='1';
		wait for 100 ns;
		Clock<='0';
		wait for 100 ns;
		Clock<='1';
		wait for 100 ns;
		Clock<='0';
		wait for 100 ns;
		Clock<='1';
		wait for 100 ns;
		Clock<='0';
		wait for 100 ns;
		Clock<='1';
		wait for 100 ns;
		Clock<='0';
		wait for 100 ns;
		Clock<='1';
		wait for 100 ns;
		Clock<='0';
		wait for 100 ns;
		Clock<='1';
		wait for 100 ns;
		Clock<='0';
		wait for 100 ns;
		Clock<='1';
		wait for 100 ns;
		Clock<='0';
		wait for 100 ns;
		Clock<='1';
		wait for 100 ns;
		Clock<='0';
		wait for 100 ns;
		Clock<='1';
		wait for 100 ns;
		Clock<='0';
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
