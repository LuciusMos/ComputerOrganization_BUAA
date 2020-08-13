.text
ori $3,3#$3=3
subu $1,$0,$3#$1=-3
ori $2,2#$2=2
subu $4,$0,$2#$4=-2
sw $1,0($0)
sw $1,4($0)
sw $1,8($0)
sw $1,12($0)
mult $2,$1#-6
mflo $8
mfhi $9
mult $1,$4#6
mflo $8
mfhi $9
mult $2,$3#6
mflo $8
mfhi $9
multu $2,$1
mflo $8
mfhi $9
multu $1,$4
mflo $8
mfhi $9
multu $2,$3
mflo $8
mfhi $9
div $2,$1#-2
mflo $8
mfhi $9
div $1,$4
mflo $8
mfhi $9
div $2,$3
mflo $8
mfhi $9
divu $2,$1
mflo $8
mfhi $9
divu $1,$4
mflo $8
mfhi $9
divu $2,$3
mflo $8
mfhi $9
mthi $2
mtlo $3
#×ª·¢³åÍ»¼ì²â
#cal-mult
subu $4,$4,$2
mult $4,$4
mflo $8
mfhi $9
#cal-x-mult
subu $4,$4,$2
nop
mult $4,$4
mflo $8
mfhi $9
#cal-x-x-mult
subu $4,$4,$2#$4=-4
nop
nop
mult $4,$4
mflo $8
mfhi $9
#lw-mult(stall)
lw $4,4($0)#$4=2
mult $4,$4
mflo $8
mfhi $9
#lw-x-mult
lw $4,0($0)#$4=-3
nop
mult $4,$4
mflo $8
mfhi $9
#lw-x-x-mult
lw $4,12($0)
nop
nop
mult $4,$4
mflo $8
mfhi $9
#jal-x-mult
ori $5,1
jal end1
nop
end1:mult $31,$31
#jal-x-x-mult
jal end2
nop
nop
mult $31,$31
#lw-mt
end2:lw $10,0($0)
mtlo $10
mflo $11
#cal-mt
addu $10,$2,$4
mtlo $10
mflo $11
#cal-x-mt
addu $10,$10,$2
nop
mtlo $10
mflo $11
#cal-x-x-mtlo
addu $10,$10,$2
nop
nop
mtlo $10
mflo $11
#lw-x-mt
lw $10,4($0)
nop
mtlo $10
mflo $11
#lw-x-x-mt
lw $10,8($0)
nop
nop
mtlo $10
mflo $11
#jal -x-mt
jal next3
nop
next3:mthi $ra
mfhi $11
jal next4
nop
nop
next4: mthi $ra
mfhi $11
