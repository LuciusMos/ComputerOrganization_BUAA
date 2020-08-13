lui $8, 0xffff
ori $9, $0, 1
ori $10, $0, 100
nop
nop
nop
ori $8, $8, 0xffff
nop
nop
nop
addu $11, $8, $9
addu $12, $8, $8
addu $13, $9, $10
subu $14, $8, $9
subu $15, $8, $8
subu $16, $10, $9
sw $11, 0($0)
sw $12, 4($0)
nop
nop
nop
nop
lw $17, 0($0)
lw $18, 4($0)
#beq $11, $17, bj1
#addu $18, $9, $9
#addu $19, $8, $8
#bj1: addu $20, $10, $10