This project implements a part of MIPS32 architect. In addition, the current microprocessor will support one more set of
commands that are used in Digital Signal Processors by name "Muliply and Accumulate".
This microprocessor supports the basic commands add, sub, and, or, lw, sw but it supports the command **mult** too, which is a
multiplication between the first 16 bits of $rs and the first 16 bits of $rt and the result is storing in $rd.

The form of MAC commands is a = a + (b*c). Yet, in this project they are implemented four alternative commands based on this form:

MAC - a = a + (b*c) 

MSUB - a = a - (b*c)

MAND - a = a & (b*c)

MOR - a = a | (b*c)

* The OpCode for these commands is the same with that of MIPS32 architect. 

* The field **shampt** defines in its most  significant bit, if the command is a MAC command or not.

* This project is developed only in structural VHDL using only NAND gates. All the other types of gates were implemented based on 
the NAND gate. 

* There is a testbench for every circuit.



