.text
ori $4 $0 0x1234
msub $3 $4
nop

.ktext 0x4180
_main_handler:
	mfc0	$k0, $12
	mfc0	$k0, $13
	mfc0	$k0, $14 #_main_handler
	addi 	$k0 $k0 4
	nop
	mtc0	$k0, $14
	nop
	eret #_restore
