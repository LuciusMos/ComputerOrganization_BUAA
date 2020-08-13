#ori + lui
ori $a0, $a0, 0x1234 #$4=0x00001234
#jal+jr+sll
sll $a1, $a0, 1
jal label
sll $a3, $a2, 1
slt $t1, $a0, $a1
slt $t2, $a2, $a1
j end
label:
sll $a2, $a1, 1
jalr $t0, $ra
end:
