ori $4 $4 4
ori $5 $5 5
ori $6 $6 6
sw $5 -4($4)
sw $4 4($0)
sw $6 8($0)
lw $5 0($0)
addu $5 $5 $5

lw $5 0($0)
ori $7 $7 1
addu $5 $5 $5

lw $5 0($0)
ori $7 $7 2
ori $8 $8 3
addu $5 $5 $5

lw $5 0($0)
addu $5 $5 $5
addu $5 $5 $5
addu $5 $5 $5

lw $10 4($0)
subu $10 $10 $5

lw $10 4($0)
ori $11 $11 11
subu $10 $10 $10

lw $10 4($0)
ori $11 $11 12
ori $11 $11 13
subu $10 $10 $10

lw $10 4($0)
subu $11 $11 $11
subu $11 $11 $11
subu $11 $11 $1

lw $12 0($0)
ori $12 $12 0

lw $12 4($0)
ori $13 $13 13
ori $12 $12 0

lw $12 8($0)
ori $13 $13 13
ori $13 $13 14
ori $12 $12 0

lw $12 8($0)
ori $12 $12 0
ori $12 $12 0
ori $12 $12 0

lw $14 0($0)
sw $14 0($0)

lw $14 4($0)
ori $15 $15 5
sw $14 4($0)

lw $14 8($0)
ori $15 $15 6
ori $15 $15 7
sw $14 8($0)
 
lw $16 4($0)
lw $17 -4($16)
lw $18 4($16)
lw $19 0($16)

 lw $16 4($0)
 lw $16 0($16)
 lw $16 0($16)
 lw $16 0($16)
 
  jal bb
  ori $25 $25 25
  ori $26 $26 26
  ori $27 $27 27
  j l
  nop
  bb:
  	nop
  	nop
  	subu $31 $31 $4
  	sw $31 12($0)
  	lw $31 12($0)
  	jr $ra
    nop
 l:
 jal cc
  ori $25 $25 25
  ori $26 $26 26
  ori $27 $27 27
 j ll
  cc:
  	nop
  	nop
  	subu $31 $31 $4
  	sw $31 12($0)
  	lw $31 12($0)
  	nop
  	jr $ra
    nop
 ll:
 jal dd
  ori $25 $25 25
  ori $26 $26 26
  ori $27 $27 27
 j lll
  dd:
  	nop
  	nop
  	subu $31 $31 $4
  	sw $31 12($0)
  	lw $31 12($0)
  	nop
  	nop
  	jr $ra
    nop
 lll:
 lw $20 0($0)
 lw $21 4($0)
 beq $20 $21 ee
 		ori $23 23
 		ori $24 24
 		ori $25 25
 ee:
 
 lw $20 0($0)
 lw $21 4($0)
 nop
 beq $20 $21 ww
 		ori $23 23
 		ori $24 24
 		ori $25 25
 ww:
 
 
  	
  	 

