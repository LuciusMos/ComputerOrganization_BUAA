.data
	m1: .word 0:100
	m2: .word 0:100
	space: .asciiz " "
	enter: .asciiz "\n"

.text
input:
	li $v0, 5
	syscall
	move $s0, $v0  #$s0=m1
	li $v0, 5
	syscall
	move $s1, $v0  #$s1=n1
	li $v0, 5
	syscall
	move $s2, $v0  #$s2=m2
	li $v0, 5
	syscall
	move $s3, $v0  #$s3=n2
	la $a0, m1
	move $a1, $s0
	move $a2, $s1
	jal read_matrix
	la $a0, m2
	move $a1, $s2
	move $a2, $s3
	jal read_matrix

compute:
	sub $s4, $s0, $s2
	addi $s4, $s4, 1 #$s4=mm
	sub $s5, $s1, $s3
	addi $s5, $s5, 1 #$s5=nn

	li $t0, 0 #$t0=i
	for_compute1_begin:
		slt $t4, $t0, $s4
		beq $t4, $0, for_compute1_end
		li $t1, 0 #$t1=j
		for_compute2_begin:
			slt $t4, $t1, $s5
			beq $t4, $0, for_compute2_end
			
			li $t9, 0 #$t9=sum
			li $t2, 0 #$t2=p
			for_compute3_begin:
				slt $t4, $t2, $s2
				beq $t4, $0, for_compute3_end
				li $t3, 0 #$t3=q
				for_compute4_begin:
					slt $t4, $t3, $s3
					beq $t4, $0, for_compute4_end
					
					add $t4, $t0, $t2
					mult $t4, $s1
					mflo $t4
					add $t4, $t4, $t1
					add $t4, $t4, $t3
					sll $t4, $t4, 2
					lw $t4, m1($t4)
					mult $t2, $s3
					mflo $t5
					add $t5, $t5, $t3
					sll $t5, $t5, 2
					lw $t5, m2($t5)
					mult $t4, $t5
					mflo $t4
					add $t9, $t9, $t4
					
					addi $t3, $t3, 1
					j for_compute4_begin
				for_compute4_end:
				addi $t2, $t2, 1
				j for_compute3_begin
			for_compute3_end:
			
			move $a0, $t9
			li $v0, 1
			syscall
			la $a0, space
			li $v0, 4
			syscall
			
			addi $t1, $t1, 1
			j for_compute2_begin
		for_compute2_end:
		
		la $a0, enter
		li $v0, 4
		syscall
		
		addi $t0, $t0, 1
		j for_compute1_begin
	for_compute1_end:
	
	li $v0, 10
	syscall
	
read_matrix:  #$a0=address  $a1=row  $a2=column
	li $t0, 0 #$t0=i
	for_rm1_begin:
		slt $t2, $t0, $a1
		beq $t2, $0, for_rm1_end
		li $t1, 0 #$t1=j
		for_rm2_begin:
			slt $t2, $t1, $a2
			beq $t2, $0, for_rm2_end
			li $v0, 5
			syscall
			move $t2, $a0
			mult $a2, $t0
			mflo $t3
			add $t3, $t3, $t1
			sll $t3, $t3, 2
			add $t2, $t2, $t3
			sw $v0, 0($t2)
			addi $t1, $t1, 1
			j for_rm2_begin
		for_rm2_end:
		addi $t0, $t0, 1
		j for_rm1_begin
	for_rm1_end:
	jr $ra