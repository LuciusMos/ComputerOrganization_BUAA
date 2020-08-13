ori	$1	$0	1
ori	$2	$0	1
beq	$1	$2	ccc
nop
sw	$1	0($0)
ccc:
add	$3	$1	$2
bne	$3	$1	ddd
nop
sw	$3	4($0)
ddd:
add	$2	$2	$1
add	$3	$2	$1
bgtz	$3	eee
nop
sw	$3	0($0)
eee:
sub	$4	$0	$1
blez	$4	fff
nop
sw	$4	8($0)
fff:
ori	$4	$0	4
bgtz	$4	qqq
nop
sw	$4	0($0)
qqq:
bgtz	$0	qqq
nop
bltz	$0	qqq
nop
sub	$5	$0	$3
sw	$5	20($0)
lw	$6	16($0)
bltz	$6	qqq
nop
lw	$6	20($0)
bltz	$6	ggg
nop
sw	$6	16($0)
ggg:
bgez	$0	hhh
nop
sw	$6	16($0)
hhh:
bgez	$6	hhh
nop
