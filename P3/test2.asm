#ori + lui
lui $a0, 0xffff
ori $a0, $a0, 0xffff #$4=0xffffffff=-1
#addi
addi $a1, $a0, 1 #$5=0    +1
addi $a2, $a0, -1 #$6=-2  +(-1)
#j
ori $a3, 0
beq $a1, $a3, if_1
beq $a1, $a2, if_2
if_1:ori $s0, 1
j end
if_2:ori $s0, 2
end:
#00001000000000000000000000001010=800000a
