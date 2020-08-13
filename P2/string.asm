.data
	string: .space 100
	
.text
input:
	li $v0, 5
	syscall
	move $s0, $v0 #$s0=n
	li $t0, 0 #$t0=i
	for_input_begin:
		slt $t1, $t0, $s0
		beq $t1, $0, for_input_end
		li $v0, 12
		syscall
		move $t1, $v0
		la $t2, string
		move $t3, $t0
		sll $t3, $t3, 2
		add $t2, $t2, $t3
		sw $t1, 0($t2)
		addi $t0, $t0, 1
		j for_input_begin
	for_input_end:
	
judge:
	subi $t0, $s0, 1
	li $t9, 2
	div $t0, $t9
	mflo $t0 #$t0=i
	div $s0, $t9
	mflo $t1 #$t1=j
	div $s0, $t9
	mflo $s1 #$s1=nn=n/2
	li $s2, 1 #$s2=bj=1
	li $t2, 0 #$t2=k
	for_judge_begin:
		slt $t3, $t2, $s1
		beq $t3, $0, for_judge_end
		la $t9, string
		sll $t3, $t0, 2
		add $t3, $t3, $t9
		lw $t3, 0($t3)
		sll $t4, $t1, 2
		add $t4, $t4, $t9
		lw $t4, 0($t4)
		if_judge_begin:
			beq $t3, $t4, if_judge_end
			li $s2, 0
			j output
		if_judge_end:
		subi $t0, $t0, 1
		addi $t1, $t1, 1
		addi $t2, $t2, 1
		j for_judge_begin
	for_judge_end:

output:
	move $a0, $s2
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall
