ori $4 $0 0x0123
#1
mtc0 $4 $14
mfc0 $5 $14
nop
nop
ori $6 $0 0x1234
#2
mtc0 $6 $14
nop
mfc0 $7 $14
nop
nop
nop
ori $8 $0 0x2345
#3
mtc0 $8 $14
nop
nop
mfc0 $9 $14
nop
nop
nop
#4
mfc0 $10 $14
mtc0 $10 $12
nop
nop
nop
#5
mfc0 $11 $13
nop
mtc0 $11 $12
nop
nop
nop
#6
mfc0 $12 $15
nop
nop
mtc0 $12 $12
