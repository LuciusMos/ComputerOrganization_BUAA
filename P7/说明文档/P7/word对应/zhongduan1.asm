.text
ori $4 $0 0x4c01
mtc0 $4 $12


ori $4 $0 0xc
ori $20 $0 0x7f00
sw $4 4($20)
ori $4 $0 9 #1001 im=1,mode=00,enable=1
sw $4 0($20)

ori $4 $0 0xc
ori $21 $0 0x7f10
sw $4 4($21)
ori $4 $0 10 #1010 im=1,mode=01,enable=0  x
sw $4 0($21)

lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd

ori $4 $0 0xc
ori $20 $0 0x7f00
sw $4 4($20)

ori $4 $0 0xc
ori $21 $0 0x7f10
sw $4 4($21)

lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd
lui $5 0xabcd



.ktext 0x4180
_main_handler:
	mfc0	$k0, $12
	mfc0	$k0, $13
	mfc0	$k0, $14 #_main_handler
	addi 	$k0 $k0 4
	nop
	mtc0	$k0, $14
	nop
	
	ori $4 $0 0xe
	ori $20 $0 0x7f00
	sw $4 4($20)
	ori $4 $0 9 #1001 im=1,mode=00,enable=1
	sw $4 0($20)
	
	ori $4 $0 0xe
	ori $21 $0 0x7f10
	sw $4 4($21)
	ori $4 $0 10 #1010 im=1,mode==01,enable=x
	sw $4 0($21)

	
	j	_restore
	nop
	
_restore:
	eret #_restore
