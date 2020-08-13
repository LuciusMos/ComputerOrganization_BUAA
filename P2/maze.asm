.macro matrix_offset (%ret, %i, %j) #i=row j=column
    move %ret, %i
    sll %ret, %ret, 3    #8*8 matrix 
    add %ret, %ret, %j
    sll %ret, %ret, 2
.end_macro

.data
	a: .word 0:64
	stack: .space 2000

.text
input:
	li $v0, 5
	syscall
	move $s0, $v0 #$s0=m
	li $v0, 5
	syscall
	move $s1, $v0 #$s1=n
	move $a1, $s0
	move $a2, $s1
	jal read_matrix
	li $v0, 5
	syscall
	move $s2, $v0
	li $v0, 5
	syscall
	move $s3, $v0
	li $v0, 5
	syscall
	move $s4, $v0
	li $v0, 5
	syscall
	move $s5, $v0
	subi $s2, $s2, 1 #$s2=x0
	subi $s3, $s3, 1 #$s3=y0
	subi $s4, $s4, 1 #$s4=x2
	subi $s5, $s5, 1 #$s4=x2
compute:
	li $s6, 0 #$s6=cnt
	la $sp, stack
	addi $sp, $sp, 1996
	move $a1, $s2
	move $a2, $s3
	jal dfs #dfs(x0,y0)
	move $a0, $s6
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall

dfs: #$a1=x $a2=y
	#if(x<0||x>=m||y<0||y>=n||a[x][y]!=0) return;
	if_dfs1_begin:
		slt $t0, $a1, $0
		sge $t1, $a1, $s0
		or $t0, $t0, $t1
		slt $t1, $a2, $0
		or $t0, $t0, $t1
		sge $t1, $a2, $s1
		or $t0, $t0, $t1
		li $t1, 1
		beq $t0, $t1, if_dfs1_statement
		matrix_offset($t1,$a1,$a2)
		lw $t1, a($t1)
		bne $t1, $0, if_dfs1_statement
		j if_dfs1_end
		if_dfs1_statement: jr $ra
	if_dfs1_end:
	
	if_dfs2_begin:
		seq $t0, $a1, $s4
		seq $t1, $a2, $s5
		and $t0, $t0, $t1
		beq $t0, $0, if_dfs2_end
		addi $s6, $s6, 1
		jr $ra
	if_dfs2_end:
	matrix_offset($t0, $a1, $a2)
	li $t1, 1
	sw $t1, a($t0)
	
	sw $a1, 0($sp)
	sw $a2, -4($sp)
	sw $ra, -8($sp)
	subi $sp, $sp, 12
	addi $a1, $a1, -1
	jal dfs
	addi $sp, $sp, 12
	lw $a1, 0($sp)
	lw $a2, -4($sp)
	lw $ra, -8($sp) 
	
	sw $a1, 0($sp)
	sw $a2, -4($sp)
	sw $ra, -8($sp)
	subi $sp, $sp, 12
	addi $a1, $a1, 1
	jal dfs
	addi $sp, $sp, 12
	lw $a1, 0($sp)
	lw $a2, -4($sp)
	lw $ra, -8($sp) 
	
	sw $a1, 0($sp)
	sw $a2, -4($sp)
	sw $ra, -8($sp)
	subi $sp, $sp, 12
	addi $a2, $a2, -1
	jal dfs
	addi $sp, $sp, 12
	lw $a1, 0($sp)
	lw $a2, -4($sp)
	lw $ra, -8($sp) 
	
	sw $a1, 0($sp)
	sw $a2, -4($sp)
	sw $ra, -8($sp)
	subi $sp, $sp, 12
	addi $a2, $a2, 1
	jal dfs
	addi $sp, $sp, 12
	lw $a1, 0($sp)
	lw $a2, -4($sp)
	lw $ra, -8($sp) 
	
	matrix_offset($t0, $a1, $a2)
	sw $0, a($t0)
	jr $ra
	
	
    #matrix_offset $t2 $t0 $t1     # t0 = i, t1 = j
    #lw $t3 matrix_name($t2)       # t3 = matrix[i][j]
read_matrix:  #$a1=row  $a2=column
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
			matrix_offset($t2, $t0, $t1)
			sw $v0, a($t2)
			
			addi $t1, $t1, 1
			j for_rm2_begin
		for_rm2_end:
		addi $t0, $t0, 1
		j for_rm1_begin
	for_rm1_end:
	jr $ra



