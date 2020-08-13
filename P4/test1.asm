.text
ori $1, $1, 100
ori $26, $0, 1000
sll $20, $1, 3
lui $15, 0xffff
ori $15, $15, 0xffff
bgez $15, go
slt $25, $1, $0
slt $25, $1, $1
slt $25, $15, $1
slt $25, $1, $20
lui $2, 0xffff
addu $3, $1, $1
sw $2, 0($1)
ori $17, $0, 30000
sb $17, 7($1)
lw $4, 0($1)
lw $5, 0($1)
jal hello
nop
beq $29, $5, go
beq $5, $2, go
ori $30, $30, 200
hello:
sw $ra, 0($26)
jal hello2
lw $28, 0($26)
jr $28
ori $1, $1, 900
lw $5, 0($1)
hello2:
lw $29, 0($1)
jr $ra
go:
beq $0, $1, hello
subu $6, $3, $1
lui $8, 123
bgez $1, end
sw $6, 0($0)
lw $7, 0($6)
end:
nop