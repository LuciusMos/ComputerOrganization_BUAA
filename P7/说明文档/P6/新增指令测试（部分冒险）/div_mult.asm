ori	$1	$0	1
ori	$2	$0	2
add	$3	$2	$1
add	$4	$3	$2
add	$5	$4	$3
link:
sub	$6	$0	$5
sub	$7	$0	$4
sub	$8	$0	$3
sub	$9	$0	$2
sub	$10	$0	$1
mult	$1	$2
nop
mfhi	$11
sh	$11	0($11)
nop
mflo	$11
sb	$11	3($11)
mult	$4	$5
nop
mfhi	$11
sh	$11	2($11)
nop
mflo	$11
sh	$11	-2($11)
ori	$12	$11	0
mult	$5	$6
nop
mfhi	$11
sw	$11	-8($12)
nop
mflo	$11
sw	$11	8($12)
addi	$12	$12	24
multu	$5	$6
nop
mfhi	$11
sw	$11	-12($12)
nop
mflo	$11
sw	$11	-8($12)
mult	$1	$2
nop
mflo	$11
beq	$11	$2	bbb
nop
sw	$11	0($0)
bbb:
add	$13	$5	$2
multu	$5	$6
nop
mfhi	$11
beq	$11	$13 ccc
nop
sw	$11	0($0)
ccc:
nop
mfhi	$11
addi	$14	$11	13
nop
mflo	$11
subu	$15	$0	$11
lw	$11	-8($12)
mtlo	$11
nop
mthi	$11
nop
mfhi	$11
nop
addi	$11	$11	1020
sw	$11	4($12)
nop
mflo	$11
subi	$11	$11	-2010
sh	$11	6($12)
sb	$11	5($12)
lb	$15	38($0)
div	$15	$3
mfhi	$11
sh	$11	2($12)
mflo	$11
sb	$11	3($12)
div	$11	$5
mflo	$11
sb	$11	11($12)
mfhi	$11
beq	$11	$5	ooo
nop
sw	$11	0($0)
ooo:
div	$7	$11
mflo	$11
sh	$11	14($12)
mfhi	$11
sb	$11	13($12)
divu $8	$3
mfhi	$11
sh	$11	22($12)
mflo	$11
sw	$11	16($12)
mflo	$11
blez	$11	ttt
nop
sw	$11	0($0)
ttt:
lw	$11	68($0)
divu	$11	$8
mfhi	$11
sh	$11	16($0)
addi	$11	$11	1024
mtlo	$11
mfhi	$18
lhu	$11	38($0)
divu	$11	$5
mfhi	$11
sh	$11	60($0)