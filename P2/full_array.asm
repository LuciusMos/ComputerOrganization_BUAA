.data
	array: .space 40
	symbol: .word 0:10
	stack: .space 200
	space: .asciiz " "
	enter: .asciiz "\n"
	
.text
	li $v0, 5
	syscall
	move $s0, $v0 #$s0=n
	
	la $sp, stack
	addi $sp, $sp, 196
	li $a0, 0
	jal full_array #fullarray(0)
	
	li $v0, 10
	syscall

full_array:
	move $t0, $a0 #$t0=index
	if_fa1_begin:
		blt $t0, $s0, if_fa1_end
		li $t1, 0 #$t1=i
		for_fa1_begin:
			slt $t2, $t1, $s0
			beq $t2, $0, for_fa1_end
			move $t2, $t1
			sll $t2, $t2, 2
			lw $a0, array($t2)
			li $v0, 1
			syscall
			la $a0, space
			li $v0, 4
			syscall
			
			addi $t1, $t1, 1
			j for_fa1_begin
		for_fa1_end:
		la $a0, enter
		li $v0, 4
		syscall
		jr $ra
	if_fa1_end:
	li $t1, 0 #$t1=i
	for_fa2_begin:
		slt $t2, $t1, $s0
		beq $t2, $0, for_fa2_end
		if_fa2_begin:
			move $t2, $t1
			sll $t2, $t2, 2
			lw $t2, symbol($t2) 
			bne $t2, $0, if_fa2_end
			
			move $t2, $t0
			sll $t2, $t2, 2
			addi $t3, $t1, 1
			sw $t3, array($t2)
			move $t2, $t1
			sll $t2, $t2, 2
			li $t3, 1
			sw $t3, symbol($t2)
			
			sw $ra, 0($sp)
			sw $t1, -4($sp) #$t1=i
			sw $t0, -8($sp) #$t0=index
			subi $sp, $sp, 12
			addi $a0, $t0, 1
			jal full_array #fullarray(index+1)
			addi $sp, $sp, 12
			lw $ra, 0($sp)
			lw $t1, -4($sp)
			lw $t0, -8($sp)
			
			move $t2, $t1
			sll $t2, $t2, 2
			sw $0, symbol($t2)	
		if_fa2_end:
		addi $t1, $t1, 1
		j for_fa2_begin
	for_fa2_end:
	jr $ra