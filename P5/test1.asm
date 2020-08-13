lui $2 1
ori $2 2

lui $3 1
lui $4 1
ori $3 3

lui $3 1
lui $4 1
lui $5 5
ori $3 3

lui $3 1
ori $3 3


lui $3 3
sw $3 0($0)

lui $3 3
ori $4 4
sw $3 0($0)

lui $3 3
sw $3 0($0)

lui $3 3
sw $3 0($0)
######################################################
ori $6 6

lui $20 7
ori $20 0x0000fffc
lui $3 8
subu $3 $3 $20
sw $6 0($3)

lui $20 7
ori $20 0x0000fffc
lui $3 8
subu $3 $3 $20
sw $6 0($3)

lui $20 7
ori $20 0x0000fffc
lui $3 8
subu $3 $3 $20
sw $6 0($3)

lui $20 7
ori $20 0x0000fffc
lui $3 8
subu $3 $3 $20
sw $6 0($3)

lui $20 7
ori $20 0x0000fffc
lui $3 8
subu $3 $3 $20
lw $6 0($3)

lui $20 7
ori $20 0x0000fffc
lui $3 8
subu $3 $3 $20
lw $6 0($3)

lui $20 7
ori $20 0x0000fffc
lui $3 8
subu $3 $3 $20
lw $6 0($3)

lui $20 7
ori $20 0x0000fffc
lui $3 8
subu $3 $3 $20
lw $6 0($3)

lui $3 3
lui $4 4
beq $3 $4 haha
ori $18 18
haha:

lui $3 3
lui $4 4
beq $3 $4 haha1
ori $18 18
haha1:

lui $3 3
lui $4 4
beq $3 $4 haha2
ori $18 18
haha2:




















