ori $a0, 0x00000004
lui $t0, 0x1234
ori $t0, $t0, 0x5678
sw $t0, 0($a0)
ori $t1, 0xccdd
sb $t1, 1($a0)
lb $a1, 1($a0)
lb $a2, 2($a0)