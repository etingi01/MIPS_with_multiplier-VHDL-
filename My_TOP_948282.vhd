----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:20:07 11/19/2013 
-- Design Name: 
-- Module Name:    My_TOP_948282 - Behavioral 
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

entity My_TOP_948282 is
    Port ( Clock : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
			  --eisodoi instruction rom:
			  InstrAddress: out std_logic_vector (9 downto 0);
			  InstructionNum: out  std_logic_vector (31 downto 0);
			  --
			  --eisodoi Register File
			  RFReadRegister1 : out  STD_LOGIC_VECTOR (4 downto 0);
           RFReadRegister2 : out  STD_LOGIC_VECTOR (4 downto 0);
           RFWriteRegister : out  STD_LOGIC_VECTOR (4 downto 0);
           RFWriteData : out  STD_LOGIC_VECTOR (31 downto 0);
			  RFRegWrite : out  STD_LOGIC;
			  --eksodoi register File
           RFReadData1 : out  STD_LOGIC_VECTOR (31 downto 0);
           RFReadData2 : out STD_LOGIC_VECTOR (31 downto 0);
			  RFReadData3 : out STD_LOGIC_VECTOR (31 downto 0);
           --
			  --
			  --eisodoi Control Unit
			  CUOp_Code : out  STD_LOGIC_VECTOR (5 downto 0);
           CUFun_Code : out  STD_LOGIC_VECTOR (5 downto 0);
			  --eksodoi Control Unit
           CUMemToRead : out  STD_LOGIC;
           CURegDist : out  STD_LOGIC;
           CURegWrite : out  STD_LOGIC;
           CUMemWrite : out  STD_LOGIC;
           CUAlu1 : out  STD_LOGIC;
           CUCarryIn : out  STD_LOGIC;
           CUAlu0 : out  STD_LOGIC;
			  CUMemRead : out  STD_LOGIC;
			  --
			  --
			  --eisodoi ALU
			  InAlu0 : out  STD_LOGIC;
           InAlu1 : out  STD_LOGIC;
           InA : out  STD_LOGIC_VECTOR (31 downto 0);
           InB: out  STD_LOGIC_VECTOR (31 downto 0);
           InB_Inv : out  STD_LOGIC;
			  --Eksodos alu
           OutResult_alu : out  STD_LOGIC_VECTOR (31 downto 0);
			  --
			  --
			  --Eisodoi DataRam
			  RAMDataAddress : out  STD_LOGIC_VECTOR (9 downto 0);
           RAMreadData : out  STD_LOGIC;
           RAMwriteData : out  STD_LOGIC;
           RAMDataIn : out  STD_LOGIC_VECTOR (31 downto 0);
			  --Eksodoi DataRam
           RAMDataOut : out  STD_LOGIC_VECTOR (31 downto 0);
			  --
			  --
			  --Eisodoi prwtou mux prin to Register File
			  beforeRF_A : out  STD_LOGIC_VECTOR (4 downto 0);
           beforeRF_B : out  STD_LOGIC_VECTOR (4 downto 0);
           beforeRF_Op : out  STD_LOGIC;
			  --eksodos prwtou mux prin to register File
           beforeRF_result : out  STD_LOGIC_VECTOR (4 downto 0);
			  --
			  --
			  --Eisodoi defterou mux meta to Register File
			  Select1_secMux : out  STD_LOGIC;
           A_secMux : out  STD_LOGIC_VECTOR (31 downto 0);
           B_secMux : out  STD_LOGIC_VECTOR (31 downto 0);
			  --eksodos defterou mux meta to register File
           out_secMux : out  STD_LOGIC_VECTOR (31 downto 0);
			  --
			  --
			  --Eisodoi tritou mux meta to register File
			  Select1_thirdMux : out  STD_LOGIC;
           A_thirdMux : out  STD_LOGIC_VECTOR (31 downto 0);
           B_thirdMux : out  STD_LOGIC_VECTOR (31 downto 0);
			  --eksodos tritou mux meta to register File
           out_thirdMux : out  STD_LOGIC_VECTOR (31 downto 0);
			  --
			  --
			  --Eisodos tetartou mux prin to ALU
			  Select1_fourthMux : out  STD_LOGIC;
           A_fourthMux : out  STD_LOGIC_VECTOR (31 downto 0);
           B_fourthMux : out  STD_LOGIC_VECTOR (31 downto 0);
			  --eksodos tetartou mux prin to alu
           out_fourthMux : out  STD_LOGIC_VECTOR (31 downto 0);
			  --
			  --
			  --Eisodos pemptou mux prin to Register File
			  Select1_lastMux : out  STD_LOGIC;
           Select2_lastMux : out  STD_LOGIC;
           A_lastMux : out  STD_LOGIC_VECTOR (31 downto 0);
           B_lastMux : out  STD_LOGIC_VECTOR (31 downto 0);
           C_lastMux : out  STD_LOGIC_VECTOR (31 downto 0);
           D_lastMux : out  STD_LOGIC_VECTOR (31 downto 0);
			  --Eksodos pemptou mux prin to Register File
           R_lastMux : out  STD_LOGIC_VECTOR (31 downto 0);
			  --
			  --
			  --SecondTimeRegisterFile-eisodoi
			  RF2_ReadRegister1 : out  STD_LOGIC_VECTOR (4 downto 0);
           RF2_ReadRegister2 : out  STD_LOGIC_VECTOR (4 downto 0);
           RF2_WriteRegister : out  STD_LOGIC_VECTOR (4 downto 0);
           RF2_WriteData : out  STD_LOGIC_VECTOR (31 downto 0);
			  RF2_RegWrite : out  STD_LOGIC;

			  --SecondTimeRegisterFile-eksodoi
			  RF2_ReadData1 : out  STD_LOGIC_VECTOR (31 downto 0);
           RF2_ReadData2 : out STD_LOGIC_VECTOR (31 downto 0);
			  RF2_ReadData3 : out STD_LOGIC_VECTOR (31 downto 0);
           --
			  address: out STD_LOGIC_VECTOR(9 downto 0));
end My_TOP_948282;

architecture Behavioral of My_TOP_948282 is

component InstructionsROM is
    Port ( InstructionAddress : in  STD_LOGIC_VECTOR (9 downto 0);
           Instruction : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
component My_PC_Adder_948282 is
    Port ( Address_In : in  STD_LOGIC_VECTOR (9 downto 0);
           Address_Next : out  STD_LOGIC_VECTOR (9 downto 0));
end component;

component My_SignExtend_948282 is
    Port ( Sign_In : in  STD_LOGIC_VECTOR (15 downto 0);
           Sign_Out : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component myPCRegister is
    Port ( PC_INPUT : in  STD_LOGIC_VECTOR (9 downto 0);
           PC_OUTPUT : out  STD_LOGIC_VECTOR (9 downto 0);
           clk : in  STD_LOGIC;
           RESET : in  STD_LOGIC);
end component;


component My_32bit2x1Mux_948282 is
    Port ( B_inv : in  STD_LOGIC;
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           B_comp : in  STD_LOGIC_VECTOR (31 downto 0);
           B_out : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component my32BitRegistersFile is
    Port ( ReadRegister1 : in  STD_LOGIC_VECTOR (4 downto 0);
           ReadRegister2 : in  STD_LOGIC_VECTOR (4 downto 0);
           WriteRegister : in  STD_LOGIC_VECTOR (4 downto 0);
           WriteData : in  STD_LOGIC_VECTOR (31 downto 0);
           ReadData1 : out  STD_LOGIC_VECTOR (31 downto 0);
           ReadData2 : out STD_LOGIC_VECTOR (31 downto 0);
			  ReadData3 : out STD_LOGIC_VECTOR (31 downto 0);
           RegWrite : in  STD_LOGIC;
			  clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC);
end component;

component My_ALU_948282 is
    Port ( Alu0 : in  STD_LOGIC;
           Alu1 : in  STD_LOGIC;
           A_alu : in  STD_LOGIC_VECTOR (31 downto 0);
           B_alu: in  STD_LOGIC_VECTOR (31 downto 0);
           B_Inv : in  STD_LOGIC;
           Result_alu : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component DataRAM is
    Port ( DataAddress : in  STD_LOGIC_VECTOR (9 downto 0);
           clk : in  STD_LOGIC;
           readData : in  STD_LOGIC;
           writeData : in  STD_LOGIC;
           DataIn : in  STD_LOGIC_VECTOR (31 downto 0);
           DataOut : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component My_16bitMult_948282 is
    Port ( A_inputM : in  STD_LOGIC_VECTOR (15 downto 0);
           B_inputM : in  STD_LOGIC_VECTOR (15 downto 0);
           Hi_out : out  STD_LOGIC_VECTOR (15 downto 0);
           Lo_out : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component myMux2X1_948282 is
    Port ( A : in  STD_LOGIC_VECTOR (4 downto 0);
           B : in  STD_LOGIC_VECTOR (4 downto 0);
           Op : in  STD_LOGIC;
           result : out  STD_LOGIC_VECTOR (4 downto 0));
end component;

component Control_Unit_948282 is
    Port ( Op_Code : in  STD_LOGIC_VECTOR (5 downto 0);
           Fun_Code : in  STD_LOGIC_VECTOR (5 downto 0);
           MemToRead : out  STD_LOGIC;
           RegDist : out  STD_LOGIC;
           RegWrite : out  STD_LOGIC;
           MemWrite : out  STD_LOGIC;
           Alu1 : out  STD_LOGIC;
           CarryIn : out  STD_LOGIC;
           Alu0 : out  STD_LOGIC;
			  MemRead : out  STD_LOGIC);
end component;

component My_32bit4x1Mux_948282 is
    Port ( Select1 : in  STD_LOGIC;
           Select2 : in  STD_LOGIC;
           A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           C : in  STD_LOGIC_VECTOR (31 downto 0);
           D : in  STD_LOGIC_VECTOR (31 downto 0);
           R : out  STD_LOGIC_VECTOR (31 downto 0));
end component;


--signal address: std_logic_vector(9 downto 0) :="0000000000";
signal addressTemp: std_logic_vector(9 downto 0):="0000000000";
signal addressS: std_logic_vector(9 downto 0);
signal instruction: std_logic_vector(31 downto 0);
signal firstMux: std_logic_vector(4 downto 0);
signal regDist, memToRead, regWrite, memRead, memWrite, alu0, alu1, bInv: std_logic;
signal Rdata1, Rdata2, Rdata3, SignExtendR: std_logic_vector(31 downto 0);
signal multResult, aluResult, dataRamResult, Mux4Result: std_logic_vector(31 downto 0);
signal hi, lo: std_logic_vector(15 downto 0);
signal MuxSec, MuxThird, MuxFourth: std_logic_vector (31 downto 0);
signal ZERO: std_logic_vector(31 downto 0):="00000000000000000000000000000000";
signal ZERO1: std_logic_vector(31 downto 0):="00000000000000000000000000000000";
signal ZERO2: std_logic_vector(31 downto 0):="00000000000000000000000000000000";
signal ZERO3: std_logic_vector(31 downto 0):="00000000000000000000000000000000";
signal WRITE_DATA: std_logic_vector(31 downto 0):="00000000000000000000000000000000";
signal writeRegister: std_logic_vector(4 downto 0):="00000";
signal WriteReg: std_logic :='0';
begin

instr1: myPCRegister port map (PC_INPUT=>addressTemp, PC_OUTPUT=>addressS, clk=>Clock, RESET=>Reset);
instr2: address<=addressS;
simul1: InstrAddress<=AddressS;
instr3: InstructionsROM port map (InstructionAddress=>addressS, Instruction=>instruction);
simul2: InstructionNum<=instruction;
instr4: Control_Unit_948282 port map (Op_Code=>instruction(31 downto 26), Fun_Code=>instruction(5 downto 0), MemToRead=>memToRead, RegDist=>regDist, RegWrite=>regWrite, MemWrite=>memWrite, Alu1=>alu1, Alu0=>alu0, CarryIn=>bInv, MemRead=>memRead);
simul3: CUOp_Code<=instruction(31 downto 26);
simul4: CUFun_Code<=instruction(5 downto 0);	
simul5: CUMemToRead<=memToRead;
simul6: CURegDist<=regDist;
simul7: CURegWrite<=regWrite;
simul8: CUMemWrite<=memWrite;
simul9: CUAlu1<=alu1;
simul10: CUCarryIn<=bInv;
simul11: CUAlu0<=alu0;
simul12: CUMemRead<=memRead;
instr5: My_PC_Adder_948282 port map (Address_In=>addressS, Address_Next=>addressTemp);


instr7: myMux2X1_948282 port map (Op=>regDist, A=>instruction(15 downto 11), B=>instruction(20 downto 16), result=>firstMux);

simul13:	beforeRF_A<=instruction(15 downto 11);
simul14: beforeRF_B<=instruction(20 downto 16);
simul15: beforeRF_Op<=regDist;
simul16: beforeRF_result<=firstMux;
instr8: my32BitRegistersFile port map (ReadRegister1=>instruction(25 downto 21), ReadRegister2=>instruction(20 downto 16), WriteRegister=>firstMux, WriteData=>Mux4Result, RegWrite=>regWrite, clk=>Clock, Reset=>Reset, ReadData1=>Rdata1, ReadData2=>Rdata2, ReadData3=>Rdata3);


simul17:	RFReadRegister1<=instruction(25 downto 21);
simul18: RFReadRegister2<=instruction (20 downto 16);
simul19: RFWriteRegister<=firstMux;
simul20: RFWriteData<=ZERO;
simul21:	RFRegWrite<='0';
simul24: RFReadData1<=Rdata1;
simul25: RFReadData2<=Rdata2;
simul26: RFReadData3<=Rdata3;

instr9: My_16bitMult_948282 port map (A_inputM=>Rdata1(15 downto 0), B_inputM=>Rdata2(15 downto 0), Hi_out=>hi, Lo_out=>lo);
instr10: multResult(31 downto 16) <= hi;
instr11: multResult(15 downto 0)<= lo;
instr12: My_32bit2x1Mux_948282 port map (B=>Rdata1, B_comp=>multResult, B_inv=>instruction(10), B_out=>MuxSec);--MuxSec in alu


simul27:	Select1_secMux<=instruction(10);
simul28: A_secMux<=Rdata1;
simul29: B_secMux<=multResult;
simul30: out_secMux<=MuxSec;

instr13: My_32bit2x1Mux_948282 port map (B=>Rdata2, B_comp=>Rdata3, B_inv=>instruction(10), B_out=>MuxThird);

simul31:	Select1_thirdMux<=instruction(10);
simul32: A_thirdMux<=Rdata2;
simul33: B_thirdMux<=Rdata3;
simul34: out_thirdMux<=MuxThird;

instr14: My_SignExtend_948282 port map (Sign_In=>instruction(15 downto 0), Sign_Out=>SignExtendR);
instr15: My_32bit2x1Mux_948282 port map (B=>SignExtendR,	B_comp=>MuxSec, B_inv=>regDist, B_out=>MuxFourth);--muxFourth in alu

simul35: Select1_fourthMux<=regDist;
simul36: A_fourthMux<=SignExtendR;
simul37: B_fourthMux<=MuxSec;
simul39: out_fourthMux<=MuxFourth;

instr16: My_ALU_948282 port map (Alu0=>alu0, Alu1=>alu1, A_alu=>MuxThird, B_alu=>MuxFourth, B_Inv=>bInv, Result_alu=>aluResult); --slu result in multiplexer

simul40:	InAlu0<=alu0;
simul41: InAlu1<=alu1;
simul42: InA<=MuxThird;
simul43: InB<=MuxFourth;
simul44: InB_Inv<=bInv ;
simul45: OutResult_alu<=aluResult;

instr17: DataRAM port map (DataAddress=>aluResult(9 downto 0), clk=>Clock, readData=>memRead, writeData=>memWrite, DataIn=>Rdata2, DataOut=>dataRamResult);

simul46: RAMDataAddress<=aluResult(9 downto 0);
simul48: RAMreadData <=memRead;
simul49: RAMwriteData<=memWrite;
simul50: RAMDataIn<=Rdata2;
simul51: RAMDataOut<=dataRamResult;

instr18: My_32bit4x1Mux_948282 port map (Select1=>MemToRead, Select2=>instruction(4), A=>aluResult, B=>multResult, C=>dataRamResult, D=>dataRamResult, R=>Mux4Result);

simul52:	Select1_lastMux<=MemToRead;
simul53: Select2_lastMux<=instruction(4);
simul54: A_lastMux<=aluResult;
simul55: B_lastMux<=multResult;
simul56: C_lastMux <=dataRamResult;
simul57: D_lastMux <=dataRamResult;
simul58: R_lastMux <=Mux4Result;

--instr19: my32BitRegistersFile port map (ReadRegister1=>instruction(25 downto 21), ReadRegister2=>instruction(20 downto 16), WriteRegister=>firstMux, WriteData=>Mux4Result, RegWrite=>regWrite, clk=>Clock, Reset=>Reset, ReadData1=>ZERO1, ReadData2=>ZERO2, ReadData3=>ZERO3); 

simul59: RF2_ReadRegister1<=instruction(25 downto 21);
simul60: RF2_ReadRegister2<=instruction(20 downto 16);
simul61: RF2_WriteRegister<=firstMux;
simul62: RF2_WriteData<=Mux4Result;
simul63: RF2_RegWrite<=regWrite;
simul66: RF2_ReadData1 <=ZERO1;
simul67: RF2_ReadData2<=ZERO2;
simul68: RF2_ReadData3 <=ZERO3;


end Behavioral;
