ori	$1	$0	1
ori	$2	$0	2
sub	$31	$0	$1
addi	$3	$2	1
addiu	$4	$3	1
beq	$4	$0	ccc
nop
sw	$4	0($0)
ccc:
lw	$5	0($0)
addiu	$5	$5	1
addi	$6	$5	1
addi	$7	$6	-1
beq	$5	$7	aaa
nop
sw	$5	4($0)
aaa:
addi	$7	$7	1
andi	$8	$31	0xffff
andi	$9	$31	0x0fff
xori	$10	$9	0xffff
nor		$10	$10	$0
xori	$11	$10	0xf000
beq		$11	$31	qqq
nop
sw		$11	8($0)
qqq:
slti	$12	$5	10
slti	$13	$5	5
slti	$14	$5	-1
lw	$15	8($0)
slti	$16	$15	1
lw	$15	0($0)
sltiu	$17	$15	-1
addi	$17	$17	-1
sltiu	$18	$15	1
bne	$17	$18	ppp
nop
sw	$17	12($0)
ppp:
