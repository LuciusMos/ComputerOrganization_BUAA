.text
#1
ori $4 $0 0x12345678
ori $5 $0 0x0088
addi $6 $5 1
addi $7 $5 2
addi $8 $5 3
addi $9 $5 4
sw $4 0($5)
lw $10 0($5)
lw $10 0($6)
lw $10 0($7)
lw $10 0($8)
lw $10 0($9)
lh $10 0($5)
lh $10 0($6)
lh $10 0($7)
lh $10 0($8)
lh $10 0($9)
lhu $10 0($5)
lhu $10 0($6)
lhu $10 0($7)
lhu $10 0($8)
lhu $10 0($9)
lb $10 0($5)
lb $10 0($6)
lb $10 0($7)
lb $10 0($8)
lb $10 0($9)
lbu $10 0($5)
lbu $10 0($6)
lbu $10 0($7)
lbu $10 0($8)
lbu $10 0($9)
#2
ori $5 0x4000
lw $11 0($5)
lh $11 0($5)
lhu $11 0($5)
lb $11 0($5)
lbu $11 0($5)

ori $5 $0 0x7f00
lw $12 0($5)
ori $5 $0 0x7f04
lw $12 0($5)
ori $5 $0 0x7f08
lw $12 0($5)
ori $5 $0 0x7f0c
lw $12 0($5)

ori $5 $0 0x7f10
lh $12 0($5)
lhu $12 0($5)
lb $12 0($5)
lbu $12 0($5)


.ktext 0x4180
	
_main_handler:
	mfc0	$k0, $14 #_main_handler
	addi	$k0, $k0, 4
	nop
	mtc0	$k0, $14
	nop
	j	_restore
	nop
	
_restore:
	eret #_restore



