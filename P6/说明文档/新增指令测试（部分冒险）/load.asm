lui	$1			61937
ori	$1	$1	61937
sw	$1	0($0)
lb	$2	0($0)
add	$14	$2	$1
lb	$3	1($0)
subi	$15	$3	12
lb	$4	2($0)
ori	$16	$4	0x1111
lb	$5	3($0)
ori	$17	$0	123
lbu	$6	0($0)
andi	$18	$6	101
lbu	$7	1($0)
andi	$19	$7	101
beq	$18	$19	ccc
nop
sw	$18	4($0)
ccc:
ori	$19	$0	4
lbu	$8	-2($19)
sll	$8	$8	12
lbu	$9	-1($19)
srl	$9	$9	1
lh	$10	-4($19)
sra	$10	$10	2
lh	$11	-2($19)
multu	$11	$10
mfhi	$11
mflo	$10
div	$11	$10
mfhi	$20
mflo	$21
lhu	$12	-4($19)
sra	$12	$12	4
lhu	$13	-2($19)
sltu	$20	$10	$0
sb	$20	1($19)
slt	$20	$10	$0
sb	$20	2($19)
subu	$10	$0	$10
sltu	$20	$10	$0
sb	$20	3($19)
slt	$20	$10	$0
sb	$20	4($19)
ori	$20	$0	0x30c8
sw	$20	8($19)
lhu	$21	8($19)
jr	$21
nop
ori	$20	$0	0x30e0
sh	$20	10($19)
lh	$22	10($19)
jalr	$22
nop
sw	$ra	12($19)
sb	$ra	9($19)
lhu	$23	10($19)
sb	$23	13($19)
lb	$23	11($19)
mthi	$23
mfhi	$24
lb	$25	3($0)
mtlo	$25
mflo	$26
