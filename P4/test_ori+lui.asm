#ori
ori $0, $0, 123
ori $a0, $0, 123 #$4=0x0000007b=123
ori $a1, $a0, 456 #$5=0x000001fb=507
#lui
lui $a2, 123 #$6=0x007b0000=8060928
lui $a3, 0xffff
ori $a3, $a3, 0xffff #$7=0xffffffff=-1
nop
#addu
addu $s0, $a0, $a2 #$16=0x007b007b=8061051    ++
addu $s1, $a0, $a3 #$17=0x0000007a=122        +-
addu $s2, $a3, $a3 #$18=0xfffffffe=-2         --
#subu
subu $s3, $a0, $a2 #$19=0xff85007b=-8060805     ++
subu $s4, $a0, $a3 #$20=0x0000007c=124          +-
subu $s5, $a3, $a3 #$21=0x00000000=0            --
#sw
ori $t0, $0, 0x0000
sw $a0, 0($t0) #00000000=0x0000007b
sw $a1, 4($t0)
sw $a2, 8($t0)
sw $a3, 12($t0)
sw $s0, 16($t0)
sw $s1, 20($t0)
sw $s2, 24($t0)
nop
#lw
lw $s0, 24($t0) #$16=$18=-2
lw $s2, 16($t0) #$18=$16=8061051
#beq(up)
ori $s0, $0, 2 #$16=2
ori $s1, $0, 3 #$17=3
ori $t0, $0, 1 #$8=1
up:addu $s0, $s0, $t0 #$16=3  $16=4
beq $s0, $s1, up
#beq(down)
ori $s6, $0, 123 #$22=$4=0x0000007b=123
beq $a0, $a1, loop1 #if($4==$5) 0x0000001c=507 0x00000020=123
beq $a0, $s6, loop2 #if($4==$22) 0x0000001c=0  0x00000020=123
loop1:sw $a1, 28($t0)
loop2:sw $s6, 32($0) #00000020=0x0000007b
