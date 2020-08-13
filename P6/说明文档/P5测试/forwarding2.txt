#jal-sw-lw
sw $31, 0($0)
sw $31, 0($0)
sw $31, 0($0)
sw $31, 0($0)
jal loop
nop
loop:
lw $31, 0($0)
lw $31, 4($0)
lw $31, 8($0)
lw $31, 12($0)
nop
nop
nop

#jal-beq
ori $31, $0, 0x0
jal bb
nop
bb:
beq $31, $0, bb
beq $31, $0, bb
beq $31, $0, bb
nop
ori $31, $0, 0x0
jal bbb
nop
bbb:
beq $31, $31, b1
nop
b1:
beq $31, $31, b2
nop
b2:
beq $31, $0, bb
nop
nop

#jal-jr
jal loop1
loop1:
ori $1, $0, 0x8
addu $31, $31, $1
jr $31
nop
nop 
jal loop0
nop
loop0:
addu $31, $31, $1 #sometimes error
jr $31
nop
nop 
jal loop2
loop2:
nop
jr $31 # trap!!!!!
nop
nop

