.text 
lui $4 0x7fff
beq $4 $4 label
add $5 $4 $4 
nop
nop
nop
label:
lui $9 0xffff #label
jal label2
add $6 $4 $4
nop
nop
nop
label2:
lui $10 0xffff#label2


.ktext 0x4180
_main_handler:
	mfc0	$k0, $12
	mfc0	$k0, $13
	mfc0	$k0, $14 #_main_handler
	addi	$k0, $k0, 8
	nop
	mtc0	$k0, $14
	nop
	j	_restore
	nop
	
_restore:
	eret #_restore
