.text
ori $2,$0,566
div $2,$0
ori $5,$0,13
ori $25,$0,0x0401
mtc0 $25,$12
lui $8,0x8fff
li $ra,0x00003027
ori $5,$0,0xffff8119
ori $6,$0,0xfffff028
ori $7,$0,0x00007f00
ori $16,$0,5
sw $16,4($7)
sw $5,3($16)
sw $5,0($7)
addi $20,$20,1
addi $20,$20,1
addi $20,$20,1
mthi $5
mthi $16
mthi $7
mthi $2
mthi $ra
mthi $8
mthi $16
mtc0 $9,$12
mfc0 $15,$12
addi $20,$20,1
addi $20,$20,1
addi $20,$20,1
addi $20,$20,1
jr $20
addi $20,$20,1
add $0,$8,$8
addu $16,$15,$9
end:
add $2,$2,$2
mtc0 $2,$14
mfc0 $17,$14
add $17,$15,$17
mtc0 $17,$12
.ktext 0x00004180
mfhi $6
mfc0 $21,$14
lw $9,0($7)
lw $20,4($0)
ori $2,$0,0x00004180
add $2,$2,$2
mtc0 $2,$12
mfc0 $17,$12
add $17,$15,$17
mtc0 $17,$12
addu $8,$8,0x0fffffff
ori $16,$0,16
li $ra,0x00003044
mtc0 $ra,$14
eret