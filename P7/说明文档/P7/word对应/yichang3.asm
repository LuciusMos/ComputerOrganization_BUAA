.text
ori $5 $0 0x12345678
ori $6 $0 0x0088
#1
sw $5 0($6)
sw $5 1($6)
sw $5 2($6)
sw $5 3($6)
sw $5 4($6)

sh $5 0($6)
sh $5 1($6)
sh $5 2($6)
sh $5 3($6)
sh $5 4($6)

sb $5 0($6)
sb $5 1($6)
sb $5 2($6)
sb $5 3($6)
sb $5 4($6)

#2
ori $6 $0 0x2fff
sw $5 0($6)
sh $5 0($6)
sb $5 0($6)

#3
ori $6 $0 0x7f00
sw $5 0($6)
sh $5 0($6)
sb $5 0($6)

#4
addi $6 $6 4
sw $5 0($6)
addi $6 $6 4
sw $5 0($6)
addi $6 $6 4
sw $5 0($6)
addi $6 $6 4
sw $5 0($6)
addi $6 $6 4
sw $5 0($6)
addi $6 $6 4
sw $5 0($6)
addi $6 $6 4
sw $5 0($6)

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

