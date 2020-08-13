ori	$1	$0	12304
jalr	$2	$1
addu	$3	$2	$0
nop
sw		$3	0($0)
ori		$3	$0	24
lw		$5	0($0)
addu	$4	$3	$5
jalr	$6	$4
nop
ori	 $6	$6	4
ori	 $7	$0	16
addu	$8	$6	$7
jalr	$9	$8
nop
sw	$9	8($0)
sw	$8	12($0)