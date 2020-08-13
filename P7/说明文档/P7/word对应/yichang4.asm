.text 
ori $7 $0 0x7fffffff
sw $7 1($7)
sw $7 0($0)
lw $8 1($7)
lui $9 0xffff

.ktext 0x4180
	
_main_handler:
	mfc0	$k0, $12
	mfc0	$k0, $13
	mfc0	$k0, $14 #_main_handler
	addi	$k0, $k0, 4
	nop
	mtc0	$k0, $14
	nop
	j	_restore
	nop
	
_restore:
	eret #_restore

