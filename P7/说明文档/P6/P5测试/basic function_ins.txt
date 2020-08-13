#-------shunxu--------
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
#-------tiaozhuan--------
lui $8, 0xffff
ori $9, $0, 1
ori $10, $0, 100
ori $11, $0, 1
nop
nop
ori $8, $8, 0xffff
nop
nop
nop
beq $11, $9, bj1
addu $8, $8, $9
nop
nop
nop
nop
bj2:addu $8, $8, $9
jal bj3
ori $12, $0, 50
addu $12, $12, $9
j end
bj1: addu $10, $10, $9
nop
nop
beq $11, $9, bj2
addu $10, $10, $9
bj3:
nop
nop
nop
jr $31
ori $13, $0, 51
end:
