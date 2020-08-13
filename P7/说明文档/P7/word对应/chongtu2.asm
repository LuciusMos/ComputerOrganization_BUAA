ori $4 $0 0x3020
ori $5 $0 0x0008
#1
addu $6 $5 $4
mtc0 $6 $14
nop
nop
#2
addu $7 $6 $5
nop
mtc0 $7 $14

nop
mtc0 $17 $12
nop
#3
addu $8 $7 $5
nop
nop
mtc0 $8 $14

nop
nop
nop
#4
ori $9 $0 0x304c
mtc0 $9 $14

nop
nop
nop

#5
ori $9 $0 0x3048
nop
mtc0 $9 $14

nop
nop
nop
#6
ori $9 $0 0x3044
nop
nop
mtc0 $9 $14

ori $9 $0 0x3040
ori $10 $0 0x0088
sw $9 0($10)
#7
lw $11 0($10)
mtc0 $11 $14

ori $12 $0 0x3050
sw $12 4($10)
nop
nop

#8
lw $13 4($10)
nop
mtc0 $13 $14

ori $15 $0 0x3054
sw $15 8($10)
nop
nop
#9
lw $16 8($10)
nop
nop
mtc0 $16 $14

#10
jalr $17 $6
mtc0 $17 $14
