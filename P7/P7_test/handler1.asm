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
