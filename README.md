This project implements a part of MIPS32 architecture. In addition, the current microprocessor will support one more set of
commands that are used in Digital Signal Processors by name "Muliply and Accumulate".
This microprocessor supports the basic commands add, sub, and, or, lw, sw but it supports the command **mult** too, which is a
multiplication between the first 16 bits of $rs and the first 16 bits of $rt and the result is storing in $rd.

The form of MAC commands is a = a + (b*c). Yet, in this project they are implemented four alternative commands based on this form:

MAC: a = a + (b*c) 

MSUB: a = a - (b*c)

MAND: a = a & (b*c)

MOR: a = a | (b*c)

* The OpCode for these commands is the same with that of MIPS32 architecture. 

* The field **shampt** defines in its most  significant bit, if the command is a MAC command or not.

* This project is developed only in structural VHDL using only NAND gates. All the other types of gates were implemented based on 
the NAND gate. 

* There is a testbench for every circuit.

**PC increment**

The pc is incresed by 1 after every command. The address of the command is sent to a 15-bit adder which add to this the value 1, the result is returned to pc.

**Control Unit**

Inputs of Control Unit: OpCode and Function Code. 

**Multiplier**

Multiplies the value1 with the value2. The multiplication is executed in one circle using 15 times the adder and shifting left, and every time the first digit is the CarryOut of the Adder. 

**Multiplexer**

The result of the multiplication is the first input of one 2x1 MUX and the second input is the digit 1.
The control signal is the digit "instruction(10)" which is the shampt digit. If the shampt digit is 1 then we have
a MAC command, so the result of the MUX is the first input.
The data of the 2nd and 3rd register are the inputs of one other 2x1 MUX with control signal the shampt digit again. If we have a MAC command (shampt='1'), then the output of the MUX is the data of the 3rd register.

**Sign Extend**

SignExtend feature takes as input the address (instruction 15-0) and it is used for the load and store commands.
It converts the 15 bit into 35, copying the 15th bit 16 times.
The result of the SignExtend and the output of the first MUX mentioned above  are the inputs of one other 2x1 MUX.
The decision of the MUX is based on the control signal RegDist.

**ALU**

It is used for the calculations: and, or, add, sub.



