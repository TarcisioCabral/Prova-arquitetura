#2 - Escolha 3 comandos, um de cada tipo (R, I e J), e converta o código para linguagem de máquina. Considere para todos os casos que o OPCODE = 32 e o OPULA(caso exista) = 8.

#(R-type)
add $t4, $s2, $t1
  OP  - RS  -  RT -  RD -SHAMT- FUNCT
10 0000 01100 10010 01001 00000 100000

#(I-type)
lw $t1, $t1, 2
  OP  - RS  -  RT - ADDRESS
10 0011 01001 01001 0000000000000010  
#(J-type)
j next
OP - ADDRESS
10 0000 00000000000000000000000000
