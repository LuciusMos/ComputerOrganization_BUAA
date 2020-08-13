.macro matrix_offset(%ret, %i, %j)
	move %ret, %i
	sll %ret, %ret, 3
	add %ret, %ret, %j
	sll %ret, %ret, 2
.end_macro

.data
	m1: .word 0:64
	m2: .word 0:64
	m3: .word 0:64
	space: .asciiz " "
	enter: .asciiz "\n"
#$s0=n
.text
input:
	li $v0, 5
	syscall
	move $s0, $v0  #$s0=n
	la $v1, m1
	jal read_matrix
	la $v1, m2
	jal read_matrix

compute:
	li $t0, 0 #$t0=i
	for_compute1_begin:
		slt $t3, $t0, $s0
		beq $t3, $0, for_compute1_end
		li $t1, 0 #$t1=j
		for_compute2_begin:
			slt $t3, $t1, $s0
			beq $t3, $0, for_compute2_end
			
			li $t9, 0 #$t9=sum
			li $t2, 0 #$t2=k
			for_compute3_begin:
				slt $t3, $t2, $s0
				beq $t3, $0, for_compute3_end
				la $t7, m1
				mult $t0, $s0
				mflo $t8
				add $t8, $t8, $t2
				sll $t8, $t8, 2
				add $t7, $t7, $t8
				lw $t6, 0($t7)
				la $t7, m2
				mult $t2, $s0
				mflo $t8
				add $t8, $t8, $t1
				sll $t8, $t8, 2
				add $t7, $t7, $t8
				lw $t7, 0($t7)
				mult $t7, $t6
				mflo $t8
				add $t9, $t9, $t8
				addi $t2, $t2, 1
				j for_compute3_begin
			for_compute3_end:
			la $t7, m3
			mult $t0, $s0
			mflo $t8
			add $t8, $t8, $t1
			sll $t8, $t8, 2
			add $t7, $t7, $t8
			sw $t9, 0($t7)

			addi $t1, $t1, 1
			j for_compute2_begin
		for_compute2_end:
		addi $t0, $t0, 1
		j for_compute1_begin
	for_compute1_end:

output:
	la $v1, m3
	jal print_matrix
	
	li $v0, 10
	syscall
	
read_matrix:
	li $t0, 0 #$t0=i
	for_rm1_begin:
		slt $t2, $t0, $s0
		beq $t2, $0, for_rm1_end
		li $t1, 0 #$t1=j
		for_rm2_begin:
			slt $t2, $t1, $s0
			beq $t2, $0, for_rm2_end
			li $v0, 5
			syscall
			move $t2, $v1
			mult $s0,$t0
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

print_matrix:
	li $t0, 0 #$t0=i
	for_pm1_begin:
		slt $t2, $t0, $s0
		beq $t2, $0, for_pm1_end
		li $t1, 0 #$t1=j
		for_pm2_begin:
			slt $t2, $t1, $s0
			beq $t2, $0, for_pm2_end

			move $t2, $v1
			mult $s0,$t0
			mflo $t3
			add $t3, $t3, $t1
			sll $t3, $t3, 2
			add $t2, $t2, $t3
			lw $a0, 0($t2)
			li $v0, 1
			syscall
			la $a0, space
			li $v0, 4
			syscall
			
			addi $t1, $t1, 1
			j for_pm2_begin
		for_pm2_end:
		la $a0, enter
		li $v0, 4
		syscall
		addi $t0, $t0, 1
		j for_pm1_begin
	for_pm1_end:
	jr $ra	
	
