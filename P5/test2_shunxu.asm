lui $8, 0xffff
ori $8, $8, 0xffff
beq $8, $0, bj1
ori $1, $0, 1
ori $3, $0, 3
bj1:ori $2, $0, 2