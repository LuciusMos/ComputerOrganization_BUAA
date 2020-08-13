#jal+jr
ori $t0, $0, 1 #$8=1
ori $t1, $0, 1 #$9=1
ori $t2, $0, 1 #$10=1
jal dd #$31=0x0000
addu $t1, $t1, $t2
jal end
dd:addu $t0, $t0, $t2
jr $ra
end:
#$8=1
#$9=1
#$10=1
#$31=0x00003010
#$8=2
#$9=2
#$31=0x00003018