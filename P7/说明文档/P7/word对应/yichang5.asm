.text
	ori $5 $0 0x2000
	jalr $6 $5
	nop 
	nop 
	nop
	nop
			
.ktext 0x4180
	
_main_handler:
	mfc0	$k0, $12
	mfc0	$k0, $13
	mfc0	$k0, $14 #_main_handler
	ori 	$k0 $0 0x300c
	nop
	mtc0	$k0, $14
	nop
	j	_restore
	nop
	
_restore:
	eret #_restore
