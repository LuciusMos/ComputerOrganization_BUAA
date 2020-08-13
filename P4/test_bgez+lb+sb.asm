lui $s0, 0xffee
ori $s0, $s0, 0xccdd
sw $s0, 0($0)
ori $t0, $0, 1
ori $t1, $0, 0
bgez $t0, bj1
bj3: lb $s1, 1($0)
j end
bj1: lb $s2, 3($0)

bgez $s0, bj2
sb $s0, 4($0)
bj2: sb $s0, 6($0)

bgez $t1, bj3
end:
#$16
#$16
#*00000000
#$8
#$9
#$18
#*00000006<=00dd000000
#$17
