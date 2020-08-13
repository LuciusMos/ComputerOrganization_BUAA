ori $21 1
ori $22 2
ori $23 3
ori $24 4
ori $25 5
ori $26 6
ori $27 31
ori $8, 8
nop
nop
nop
nop
nop
#subu---beq
subu $4, $22, $21
beq $4, $0, back1
nop
subu $5, $22, $21
nop
beq $5, $0, back2
nop
subu $6, $22, $21
nop
nop
beq $6, $0, back3
nop
ori $4, $0, 0
ori $5, $0, 0
ori $6, $0, 0
#ori--addu
ori $4, $4, 1
addu $7, $4, $4
ori $5, $5, 2
nop
addu $7, $5, $5
ori $6, $6, 3
nop
nop
addu $7, $6, $6
###############################################
ori $4, $0, 0
ori $5, $0, 0
ori $6, $0, 0
#ori--subu
ori $4, $4, 1
subu $7, $23, $4
ori $5, $5, 2
nop
subu $7, $23, $5
ori $6, $6, 3
nop
nop
subu $7, $23, $6
##############################
ori $4, $0, 0
ori $5, $0, 0
ori $6, $0, 0
#ori--ori
ori $4, $4, 1
ori $7, $4, 0

ori $5, $5, 2
nop
ori $7, $5, 0

ori $6, $6, 3
nop
nop
ori $7, $6, 0
##########################
ori $4, $0, 0
ori $5, $0, 0
ori $6, $0, 0
#ori--sw1   data
ori $4, $4, 1
sw $4, 0($24)
ori $5, $5, 2
nop
sw $5, 0($24)
ori $6, $6, 3
nop
nop
sw $6, 0($24)
ori $4, $0, 0
ori $5, $0, 0
ori $6, $0, 0
#ori--sw2   address
ori $4, $4, 4
sw $27, 0($4)
ori $5, $5, 4
nop
sw $27, 0($5)
ori $6, $6, 4
nop
nop
sw $27, 0($6)
#######################
#clear-------------
ori $4, $0, 0
ori $5, $0, 0
ori $6, $0, 0
sw $0, 0($24)
#----------------------
#ori--lw2
#prepare--------
sw $21, 0($0)
sw $22, 0($24)
sw $23, 0($8)
ori $4, 8
#--------------
ori $4, $0, 4
lw $7, 0($4)
ori $5, $5, 8
nop
lw $7, 0($5)
ori $6, $6, 4
nop
nop
lw $7, 0($6)
#######################
ori $4, $0, 0
ori $5, $0, 0
ori $6, $0, 0
ori $7, $0, 0
#ori----beq
ori $4, $0, 1
beq $4, $0, back1
nop
ori $5, $0, 1
nop
beq $5, $0, back2
nop
ori $6, $0, 1
nop
nop
beq $6, $0, back3
nop
ori $4, $0, 0
ori $5, $0, 0
ori $6, $0, 0
j end
nop
#######################3


back1:
ori $10, 1
j end
nop
back2:
ori $10, 2
j end
nop
back3:
ori $10, 3
j end
nop
end:











