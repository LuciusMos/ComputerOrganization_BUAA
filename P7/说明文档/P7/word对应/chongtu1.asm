ori $4, 1
ori $5, 2
addu $4 $4 $5
mtc0 $4 $14
addu $4 $4 $5
nop
mtc0 $4 $14
addu $4 $4 $5
nop
nop
mtc0 $4 $14

ori $4, $0, 4
sw $4, 0($0)
lw $5, 0($0)
mtc0 $5, $14
