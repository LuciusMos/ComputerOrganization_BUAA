ori $2 $2 4
ori $3 $3 8
ori $4 $4 12
ori $5 $5 24
ori $6 $6 20
ori $7 $7 32
ori $8 $8 88
ori $9 $9 888

addu $2 $3 $4
addu $5 $2 $2
addu $6 $2 $2
addu $7 $2 $2

addu $3 $6 $7
subu $4 $5 $3
subu $4 $3 $6
subu $4 $7 $3

addu $4 $7 $8
ori $6 $4 484
ori $7 $4 848
ori $8 $4 444

addu $3 $6 $7
lui $4 444
lui $4 36
lui $4 436

addu $5 $7 $8
lw $4 0($3)
lw $9 4($3)
lw $6 8($7)

lui $4 0
ori $4 12
addu $3 $6 $7
addu $4 $4 $4
sw $3 0($4)
sw $6 4($4)
sw $5 8($4)

ori $2 $2 4
ori $3 $3 8
ori $4 $4 12
ori $5 $5 24
ori $6 $6 20
ori $7 $7 32
ori $8 $8 88
ori $9 $9 888

subu $2 $3 $4
addu $5 $2 $2
addu $6 $2 $2
addu $7 $2 $2

subu $3 $6 $7
subu $4 $5 $3
subu $4 $3 $6
subu $4 $7 $3

subu $4 $7 $8
ori $6 $4 484
ori $7 $4 848
ori $8 $4 444

subu $3 $6 $7
lui $4 444
lui $4 36
lui $4 436

subu $5 $7 $8
lw $4 0($5)
lw $9 4($5)
lw $6 8($5)

lui $4 0
ori $4 12
subu $3 $6 $7
subu $4 $4 $4
sw $3 0($4)
sw $6 4($4)
sw $5 8($4)

addu $6 $4 $5
addu $3 $4 $5
beq $6 $3 aa
nop
ori $t7 $t7 111
aa:
addu $7 $4 $4
beq $6 $7 bb
nop
ori $t8 $t8 1111
bb:


lui $4 0
ori $4 0x3000

j end
nop
cc:
jr $31
end:
nop
addu $31 $0 $4
jal cc
nop











