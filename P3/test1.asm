#ori
ori $0, $0, 123
ori $a0, $0, 123 #$4=123
ori $a1, $a0, 456 #$5=507
#lui
lui $a2, 123 #$6=8060928
lui $a3, 0xffff
ori $a3, $a3, 0xffff #$7=0xffffffff=-1
#addu
addu $s0, $a0, $a2 #$16=8061051    ++
addu $s1, $a0, $a3 #$17=122        +-
addu $s2, $a3, $a3 #$18=-2         --
#subu
subu $s3, $a0, $a2 #$19=-8060805     ++
subu $s4, $a0, $a3 #$20=124          +-
subu $s5, $a3, $a3 #$21=0            --
#sw
ori $t0, $0, 0x0000
sw $a0, 0($t0)
sw $a1, 4($t0)
sw $a2, 8($t0)
sw $a3, 12($t0)
sw $s0, 16($t0)
sw $s1, 20($t0)
sw $s2, 24($t0)
#lw
lw $s0, 24($t0) #$16=$18=-2
lw $s2, 16($t0) #$18=$16=8061051
#beq
ori $s6, $0, 123 #$22=123
beq $a0, $a1, loop1 #if($4==$5) 0x0000001c=507 0x00000020=123
beq $a0, $s6, loop2 #if($4==$22) 0x0000001c=0  0x00000020=123
loop1:sw $a1, 28($t0)
loop2:sw $s6, 32($t0)