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
lw	$8	20($0)
add	$9	$8	$1
add	$10	$9	$1
sw	$10	5($10)
lw	$11	5($10)
sub	$12	$11	$3
sub	$13	$11	$3
nop
and	$14	$1	$1
or	$15	$1	$14
xor	$16	$2	$14
nor	$17	$3	$16
blez	$17	bbb
nop
sw	$17	0($0)
bbb:
add	$18	$17	$1
and	$18	$17	$18
nor	$19	$18	$6
sub	$19	$19	$11
xor	$20	$19	$12
or	$21	$20	$0
lw	$22	20($0)
and	$22	$1	$22
or	$23	$3	$22
xor	$24	$13	$23
nor	$25	$17	$24
slt	$26	$24	$25
sw	$26	24($0)
sltu	$26	$24	$25
sw	$26	28($0)
slt	$26	$16	$9
sw	$26	32($0)
sltu	$26	$16	$9
sw	$26	36($0)
lw	$2	36($0)
slt	$26	$1	$2
sw	$26	40($0)
lw	$2	40($0)
slt	$26	$2	$1
sw	$26	44($0)
ori	$2	$0	2
sltu	$26	$2	$1
nor	$26	$26	$4
sw	$26	48($0)

