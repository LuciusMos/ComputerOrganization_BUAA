init:
    addu $27,$0,$0
    addu $28,$0,$0
    addu $29,$0,$0
    addu $30,$0,$0
    addu $31,$0,$0
    ori $28,$28,4
    nop
    nop
    nop
block_0:
    lui $8,0x0000
    ori $8,$8,0x258c
    lui $11,0x0000
    ori $11,$11,0x096e
    nop
    nop
    nop
    addu $18,$8,$11
    nop
    nop
    nop
    sw $18,0($29)
    addu $29,$29,$28
    j block_1
    nop

block_1:
    lui $20,0xffff
    ori $20,$20,0x9224
    lui $9,0x0000
    ori $9,$9,0x30c5
    nop
    nop
    nop
    addu $0,$20,$9
    nop
    nop
    nop
    sw $0,0($29)
    addu $29,$29,$28
    j block_2
    nop

block_2:
    lui $11,0x0000
    ori $11,$11,0x092f
    lui $15,0x0000
    ori $15,$15,0x394c
    nop
    nop
    nop
    subu $20,$11,$15
    nop
    nop
    nop
    sw $20,0($29)
    addu $29,$29,$28
    j block_3
    ori $30,$0,4

block_3:
    lui $16,0xffff
    ori $16,$16,0x9081
    lui $26,0xffff
    ori $26,$26,0xa513
    nop
    nop
    nop
    subu $0,$16,$26
    nop
    nop
    nop
    sw $0,0($29)
    addu $29,$29,$28
    j block_4
    ori $30,$0,61

block_4:
    lui $5,0xffff
    ori $5,$5,0x8290
    lui $25,0xffff
    ori $25,$25,0xaf1c
    nop
    nop
    nop
    beq $5,$25,jump_block_0
    nop
    jump_back_0:
        nop
        nop
        nop

    sw $5,0($29)
    addu $29,$29,$28
    sw $25,0($29)
    addu $29,$29,$28
    j block_5
    nop

jump_block_0:
    nop
    nop
    nop
    nop
    j jump_back_0
    nop

block_5:
    lui $25,0xffff
    ori $25,$25,0x903b
    lui $25,0xffff
    ori $25,$25,0xead3
    nop
    nop
    nop
    beq $25,$25,jump_block_1
    nop
    jump_back_1:
        nop
        nop
        nop

    sw $25,0($29)
    addu $29,$29,$28
    sw $25,0($29)
    addu $29,$29,$28
    j block_6
    nop

jump_block_1:
    nop
    nop
    nop
    nop
    j jump_back_1
    nop

block_6:
    j jump_block_2
    nop
    jump_back_2:
        nop
        nop
        nop

    j block_7
    ori $30,$0,20

jump_block_2:
    nop
    nop
    nop
    ori $30,$0,55
    j jump_back_2
    nop

block_7:
    jal jump_block_3
    nop
    jump_back_3:
        nop
        nop
        nop

    j block_8
    ori $30,$0,46

jump_block_3:
    nop
    nop
    nop
    ori $30,$0,59
    j jump_back_3
    nop

block_8:
    j jump_block_4
    nop
    jr_back_4:
        addu $18,$0,$31
        jr $18
        nop
    jump_back_4:
        nop
        nop
        nop

    j block_9
    nop

jump_block_4:
    jal jr_back_4
    nop
    nop
    nop
    nop
    ori $30,$0,46
    j jump_back_4
    nop

block_9:
    lui $11,0x0000
    ori $11,$11,0x210b
    nop
    nop
    nop
    ori $26,$0,26637
    nop
    nop
    nop
    lw $11,-26625($26)
    nop
    nop
    nop
    sw $11,0($29)
    addu $29,$29,$28
    sw $26,0($29)
    addu $29,$29,$28
    j block_10
    nop

block_10:
    lui $10,0x0000
    ori $10,$10,0x1140
    nop
    nop
    nop
    ori $2,$0,28598
    nop
    nop
    nop
    sw $10,-28598($2)
    nop
    nop
    nop
    sw $10,0($29)
    addu $29,$29,$28
    sw $2,0($29)
    addu $29,$29,$28
    j block_11
    ori $30,$0,39

block_11:
    lui $8,0xffff
    ori $8,$8,0xe3c4
    nop
    nop
    nop
    lui $4,0x5e25
    nop
    nop
    nop
    sw $4,0($29)
    addu $29,$29,$28
    j block_12
    nop

block_12:
    lui $10,0xffff
    ori $10,$10,0x8434
    nop
    nop
    nop
    lui $0,0xb543
    nop
    nop
    nop
    sw $0,0($29)
    addu $29,$29,$28
    j block_13
    nop

block_13:
    lui $26,0x0000
    ori $26,$26,0x3f0e
    nop
    nop
    nop
    lui $0,0xaec5
    nop
    nop
    nop
    sw $0,0($29)
    addu $29,$29,$28
    j block_14
    ori $30,$0,67

block_14:
    lui $2,0x0000
    ori $2,$2,0x0472
    nop
    nop
    nop
    ori $24,$2,0x74d3
    nop
    nop
    nop
    sw $24,0($29)
    addu $29,$29,$28
    j block_15
    ori $30,$0,13

block_15:
    lui $13,0xffff
    ori $13,$13,0xf6e1
    nop
    nop
    nop
    ori $7,$13,0x93a3
    nop
    nop
    nop
    sw $7,0($29)
    addu $29,$29,$28
    j block_16
    nop

block_16:
    lui $16,0xffff
    ori $16,$16,0xd1cd
    nop
    nop
    nop
    ori $0,$16,0xf14f
    nop
    nop
    nop
    sw $0,0($29)
    addu $29,$29,$28
    j block_17
    ori $30,$0,42

block_17:
    lui $15,0xffff
    ori $15,$15,0xd21d
    nop
    nop
    nop
    ori $14,$0,9668
    subu $14,$0,$14
    nop
    nop
    nop
    lb $15,9684($14)
    nop
    nop
    nop
    sw $15,0($29)
    addu $29,$29,$28
    sw $14,0($29)
    addu $29,$29,$28
    j block_18
    ori $30,$0,75

block_18:
    lui $7,0x0000
    ori $7,$7,0x3a35
    nop
    nop
    nop
    ori $3,$0,141
    subu $3,$0,$3
    nop
    nop
    nop
    lb $7,206($3)
    nop
    nop
    nop
    sw $7,0($29)
    addu $29,$29,$28
    sw $3,0($29)
    addu $29,$29,$28
    j block_19
    nop

block_19:
    lui $15,0x0000
    ori $15,$15,0x17f9
    nop
    nop
    nop
    ori $13,$0,31726
    subu $13,$0,$13
    nop
    nop
    nop
    lb $15,31736($13)
    nop
    nop
    nop
    sw $15,0($29)
    addu $29,$29,$28
    sw $13,0($29)
    addu $29,$29,$28
    j block_20
    nop

block_20:
    lui $19,0xffff
    ori $19,$19,0xcad6
    nop
    nop
    nop
    ori $3,$0,15909
    nop
    nop
    nop
    lb $19,-15838($3)
    nop
    nop
    nop
    sw $19,0($29)
    addu $29,$29,$28
    sw $3,0($29)
    addu $29,$29,$28
    j block_21
    ori $30,$0,24

block_21:
    lui $6,0xffff
    ori $6,$6,0xd3ac
    nop
    nop
    nop
    ori $16,$0,5475
    subu $16,$0,$16
    nop
    nop
    nop
    lbu $6,5503($16)
    nop
    nop
    nop
    sw $6,0($29)
    addu $29,$29,$28
    sw $16,0($29)
    addu $29,$29,$28
    j block_22
    ori $30,$0,70

block_22:
    lui $6,0xffff
    ori $6,$6,0xcbc1
    nop
    nop
    nop
    ori $22,$0,6878
    subu $22,$0,$22
    nop
    nop
    nop
    lbu $6,6919($22)
    nop
    nop
    nop
    sw $6,0($29)
    addu $29,$29,$28
    sw $22,0($29)
    addu $29,$29,$28
    j block_23
    ori $30,$0,69

block_23:
    lui $23,0x0000
    ori $23,$23,0x6f7d
    nop
    nop
    nop
    ori $20,$0,1214
    subu $20,$0,$20
    nop
    nop
    nop
    lbu $23,1232($20)
    nop
    nop
    nop
    sw $23,0($29)
    addu $29,$29,$28
    sw $20,0($29)
    addu $29,$29,$28
    j block_24
    ori $30,$0,88

block_24:
    lui $2,0x0000
    ori $2,$2,0x5e7c
    nop
    nop
    nop
    ori $1,$0,15522
    nop
    nop
    nop
    lbu $2,-15443($1)
    nop
    nop
    nop
    sw $2,0($29)
    addu $29,$29,$28
    sw $1,0($29)
    addu $29,$29,$28
    j block_25
    ori $30,$0,92

block_25:
    lui $1,0x0000
    ori $1,$1,0x1a0a
    nop
    nop
    nop
    ori $19,$0,1192
    subu $19,$0,$19
    nop
    nop
    nop
    lh $1,1260($19)
    nop
    nop
    nop
    sw $1,0($29)
    addu $29,$29,$28
    sw $19,0($29)
    addu $29,$29,$28
    j block_26
    nop

block_26:
    lui $18,0x0000
    ori $18,$18,0x2f19
    nop
    nop
    nop
    ori $25,$0,25059
    subu $25,$0,$25
    nop
    nop
    nop
    lh $18,25157($25)
    nop
    nop
    nop
    sw $18,0($29)
    addu $29,$29,$28
    sw $25,0($29)
    addu $29,$29,$28
    j block_27
    ori $30,$0,80

block_27:
    lui $6,0xffff
    ori $6,$6,0xa778
    nop
    nop
    nop
    ori $24,$0,9539
    nop
    nop
    nop
    lhu $6,-9395($24)
    nop
    nop
    nop
    sw $6,0($29)
    addu $29,$29,$28
    sw $24,0($29)
    addu $29,$29,$28
    j block_28
    ori $30,$0,21

block_28:
    lui $11,0x0000
    ori $11,$11,0x2468
    nop
    nop
    nop
    ori $1,$0,10157
    nop
    nop
    nop
    lhu $11,-10023($1)
    nop
    nop
    nop
    sw $11,0($29)
    addu $29,$29,$28
    sw $1,0($29)
    addu $29,$29,$28
    j block_29
    nop

block_29:
    lui $6,0xffff
    ori $6,$6,0xd69e
    nop
    nop
    nop
    ori $12,$0,3334
    subu $12,$0,$12
    nop
    nop
    nop
    sb $6,3486($12)
    nop
    nop
    nop
    sw $6,0($29)
    addu $29,$29,$28
    sw $12,0($29)
    addu $29,$29,$28
    j block_30
    ori $30,$0,65

block_30:
    lui $8,0xffff
    ori $8,$8,0xabb7
    nop
    nop
    nop
    ori $1,$0,14699
    nop
    nop
    nop
    sb $8,-14606($1)
    nop
    nop
    nop
    sw $8,0($29)
    addu $29,$29,$28
    sw $1,0($29)
    addu $29,$29,$28
    j block_31
    nop

block_31:
    lui $3,0x0000
    ori $3,$3,0x06c9
    nop
    nop
    nop
    ori $17,$0,28518
    nop
    nop
    nop
    sb $3,-28420($17)
    nop
    nop
    nop
    sw $3,0($29)
    addu $29,$29,$28
    sw $17,0($29)
    addu $29,$29,$28
    j block_32
    nop

block_32:
    lui $24,0xffff
    ori $24,$24,0xaf95
    nop
    nop
    nop
    ori $1,$0,25055
    subu $1,$0,$1
    nop
    nop
    nop
    sb $24,25222($1)
    nop
    nop
    nop
    sw $24,0($29)
    addu $29,$29,$28
    sw $1,0($29)
    addu $29,$29,$28
    j block_33
    nop

block_33:
    lui $15,0x0000
    ori $15,$15,0x6d77
    nop
    nop
    nop
    ori $18,$0,30672
    subu $18,$0,$18
    nop
    nop
    nop
    sh $15,30732($18)
    nop
    nop
    nop
    sw $15,0($29)
    addu $29,$29,$28
    sw $18,0($29)
    addu $29,$29,$28
    j block_34
    ori $30,$0,0

block_34:
    lui $2,0x0000
    ori $2,$2,0x5d36
    nop
    nop
    nop
    ori $25,$0,29949
    subu $25,$0,$25
    nop
    nop
    nop
    sh $2,30123($25)
    nop
    nop
    nop
    sw $2,0($29)
    addu $29,$29,$28
    sw $25,0($29)
    addu $29,$29,$28
    j block_35
    nop

block_35:
    lui $5,0xffff
    ori $5,$5,0x908c
    lui $20,0xffff
    ori $20,$20,0x9bcd
    nop
    nop
    nop
    add $16,$5,$20
    nop
    nop
    nop
    sw $16,0($29)
    addu $29,$29,$28
    j block_36
    ori $30,$0,76

block_36:
    lui $14,0x0000
    ori $14,$14,0x7710
    lui $1,0xffff
    ori $1,$1,0xc471
    nop
    nop
    nop
    add $0,$14,$1
    nop
    nop
    nop
    sw $0,0($29)
    addu $29,$29,$28
    j block_37
    ori $30,$0,19

block_37:
    lui $25,0xffff
    ori $25,$25,0xdfe3
    lui $20,0x0000
    ori $20,$20,0x3dd7
    nop
    nop
    nop
    sub $7,$25,$20
    nop
    nop
    nop
    sw $7,0($29)
    addu $29,$29,$28
    j block_38
    ori $30,$0,49

block_38:
    lui $17,0xffff
    ori $17,$17,0x920b
    lui $12,0xffff
    ori $12,$12,0x95d1
    nop
    nop
    nop
    sub $0,$17,$12
    nop
    nop
    nop
    sw $0,0($29)
    addu $29,$29,$28
    j block_39
    nop

block_39:
    lui $25,0x0000
    ori $25,$25,0x34c3
    lui $2,0x0000
    ori $2,$2,0x36e5
    nop
    nop
    nop
    sll $18,$2,15
    nop
    nop
    nop
    sw $18,0($29)
    addu $29,$29,$28
    j block_40
    ori $30,$0,88

block_40:
    lui $2,0xffff
    ori $2,$2,0xee75
    lui $1,0xffff
    ori $1,$1,0xe784
    nop
    nop
    nop
    sll $0,$1,10
    nop
    nop
    nop
    sw $0,0($29)
    addu $29,$29,$28
    j block_41
    nop

block_41:
    lui $25,0x0000
    ori $25,$25,0x063d
    lui $6,0xffff
    ori $6,$6,0xc378
    nop
    nop
    nop
    srl $5,$6,26
    nop
    nop
    nop
    sw $5,0($29)
    addu $29,$29,$28
    j block_42
    nop

block_42:
    lui $2,0xffff
    ori $2,$2,0x92da
    lui $5,0x0000
    ori $5,$5,0x56b7
    nop
    nop
    nop
    srl $0,$5,27
    nop
    nop
    nop
    sw $0,0($29)
    addu $29,$29,$28
    j block_43
    ori $30,$0,98

block_43:
    lui $23,0x0000
    ori $23,$23,0x2a3f
    lui $11,0xffff
    ori $11,$11,0x81b2
    nop
    nop
    nop
    sra $26,$11,9
    nop
    nop
    nop
    sw $26,0($29)
    addu $29,$29,$28
    j block_44
    nop

block_44:
    lui $4,0xffff
    ori $4,$4,0xba95
    lui $21,0xffff
    ori $21,$21,0xfbe2
    nop
    nop
    nop
    sra $0,$21,23
    nop
    nop
    nop
    sw $0,0($29)
    addu $29,$29,$28
    j block_45
    ori $30,$0,87

block_45:
    lui $2,0x0000
    ori $2,$2,0x66c7
    lui $25,0xffff
    ori $25,$25,0xbde1
    nop
    nop
    nop
    sllv $19,$2,$25
    nop
    nop
    nop
    sw $19,0($29)
    addu $29,$29,$28
    j block_46
    ori $30,$0,26

block_46:
    lui $23,0x0000
    ori $23,$23,0x6e08
    lui $4,0xffff
    ori $4,$4,0xcd70
    nop
    nop
    nop
    sllv $0,$23,$4
    nop
    nop
    nop
    sw $0,0($29)
    addu $29,$29,$28
    j block_47
    ori $30,$0,60

block_47:
    lui $18,0x0000
    ori $18,$18,0x7406
    lui $4,0xffff
    ori $4,$4,0xeda5
    nop
    nop
    nop
    srlv $3,$18,$4
    nop
    nop
    nop
    sw $3,0($29)
    addu $29,$29,$28
    j block_48
    nop

block_48:
    lui $1,0xffff
    ori $1,$1,0x8059
    lui $11,0x0000
    ori $11,$11,0x2e78
    nop
    nop
    nop
    srlv $0,$1,$11
    nop
    nop
    nop
    sw $0,0($29)
    addu $29,$29,$28
    j block_49
    ori $30,$0,14

block_49:
    lui $13,0xffff
    ori $13,$13,0xab02
    lui $0,0xffff
    ori $0,$0,0xccb2
    nop
    nop
    nop
    srav $11,$13,$0
    nop
    nop
    nop
    sw $11,0($29)
    addu $29,$29,$28
    j block_50
    ori $30,$0,70

block_50:
    lui $20,0x0000
    ori $20,$20,0x6181
    lui $26,0x0000
    ori $26,$26,0x1a91
    nop
    nop
    nop
    srav $0,$20,$26
    nop
    nop
    nop
    sw $0,0($29)
    addu $29,$29,$28
    j block_51
    ori $30,$0,96

block_51:
    lui $4,0xffff
    ori $4,$4,0xb53c
    lui $14,0xffff
    ori $14,$14,0xac73
    nop
    nop
    nop
    and $6,$4,$14
    nop
    nop
    nop
    sw $6,0($29)
    addu $29,$29,$28
    j block_52
    nop

block_52:
    lui $22,0x0000
    ori $22,$22,0x719b
    lui $5,0x0000
    ori $5,$5,0x1a17
    nop
    nop
    nop
    and $0,$22,$5
    nop
    nop
    nop
    sw $0,0($29)
    addu $29,$29,$28
    j block_53
    nop

block_53:
    lui $26,0x0000
    ori $26,$26,0x5469
    lui $2,0x0000
    ori $2,$2,0x2268
    nop
    nop
    nop
    or $8,$26,$2
    nop
    nop
    nop
    sw $8,0($29)
    addu $29,$29,$28
    j block_54
    nop

block_54:
    lui $20,0x0000
    ori $20,$20,0x30ba
    lui $26,0xffff
    ori $26,$26,0xf4f9
    nop
    nop
    nop
    or $0,$20,$26
    nop
    nop
    nop
    sw $0,0($29)
    addu $29,$29,$28
    j block_55
    ori $30,$0,74

block_55:
    lui $12,0x0000
    ori $12,$12,0x54f9
    lui $4,0x0000
    ori $4,$4,0x6b46
    nop
    nop
    nop
    xor $24,$12,$4
    nop
    nop
    nop
    sw $24,0($29)
    addu $29,$29,$28
    j block_56
    ori $30,$0,24

block_56:
    lui $13,0x0000
    ori $13,$13,0x4522
    lui $19,0xffff
    ori $19,$19,0xc81e
    nop
    nop
    nop
    xor $0,$13,$19
    nop
    nop
    nop
    sw $0,0($29)
    addu $29,$29,$28
    j block_57
    nop

block_57:
    lui $13,0x0000
    ori $13,$13,0x1c17
    lui $6,0x0000
    ori $6,$6,0x63af
    nop
    nop
    nop
    nor $18,$13,$6
    nop
    nop
    nop
    sw $18,0($29)
    addu $29,$29,$28
    j block_58
    nop

block_58:
    lui $24,0xffff
    ori $24,$24,0x824d
    lui $22,0x0000
    ori $22,$22,0x02ed
    nop
    nop
    nop
    nor $0,$24,$22
    nop
    nop
    nop
    sw $0,0($29)
    addu $29,$29,$28
    j block_59
    ori $30,$0,78

block_59:
    lui $3,0xffff
    ori $3,$3,0xe12c
    nop
    nop
    nop
    addi $26,$3,0x67fb
    nop
    nop
    nop
    sw $26,0($29)
    addu $29,$29,$28
    j block_60
    ori $30,$0,32

block_60:
    lui $24,0x0000
    ori $24,$24,0x446e
    nop
    nop
    nop
    addi $17,$24,-0x7a7e
    nop
    nop
    nop
    sw $17,0($29)
    addu $29,$29,$28
    j block_61
    ori $30,$0,32

block_61:
    lui $22,0x0000
    ori $22,$22,0x7220
    nop
    nop
    nop
    addi $0,$22,-0x37eb
    nop
    nop
    nop
    sw $0,0($29)
    addu $29,$29,$28
    j block_62
    nop

block_62:
    lui $24,0xffff
    ori $24,$24,0xb8c2
    nop
    nop
    nop
    addiu $0,$24,0x2a2f
    nop
    nop
    nop
    sw $0,0($29)
    addu $29,$29,$28
    j block_63
    nop

block_63:
    lui $11,0x0000
    ori $11,$11,0x5fc6
    nop
    nop
    nop
    addiu $21,$11,-0x71ab
    nop
    nop
    nop
    sw $21,0($29)
    addu $29,$29,$28
    j block_64
    nop

block_64:
    lui $10,0x0000
    ori $10,$10,0x3538
    nop
    nop
    nop
    addiu $0,$10,-0x5d65
    nop
    nop
    nop
    sw $0,0($29)
    addu $29,$29,$28
    j block_65
    nop

block_65:
    lui $21,0x0000
    ori $21,$21,0x3b14
    nop
    nop
    nop
    andi $6,$21,0x4dbd
    nop
    nop
    nop
    sw $6,0($29)
    addu $29,$29,$28
    j block_66
    nop

block_66:
    lui $11,0xffff
    ori $11,$11,0xad48
    nop
    nop
    nop
    andi $21,$11,0xfe54
    nop
    nop
    nop
    sw $21,0($29)
    addu $29,$29,$28
    j block_67
    ori $30,$0,67

block_67:
    lui $26,0xffff
    ori $26,$26,0xee2b
    nop
    nop
    nop
    andi $0,$26,0xe874
    nop
    nop
    nop
    sw $0,0($29)
    addu $29,$29,$28
    j block_68
    nop

block_68:
    lui $1,0x0000
    ori $1,$1,0x552e
    nop
    nop
    nop
    xori $10,$1,0x2591
    nop
    nop
    nop
    sw $10,0($29)
    addu $29,$29,$28
    j block_69
    ori $30,$0,62

block_69:
    lui $17,0x0000
    ori $17,$17,0x4044
    nop
    nop
    nop
    xori $1,$17,0xf729
    nop
    nop
    nop
    sw $1,0($29)
    addu $29,$29,$28
    j block_70
    nop

block_70:
    lui $17,0xffff
    ori $17,$17,0xd4cb
    nop
    nop
    nop
    xori $0,$17,0x9234
    nop
    nop
    nop
    sw $0,0($29)
    addu $29,$29,$28
    j block_71
    ori $30,$0,80

block_71:
    lui $22,0x0000
    ori $22,$22,0x6a7b
    lui $7,0xffff
    ori $7,$7,0xb1f4
    nop
    nop
    nop
    slt $14,$22,$7
    nop
    nop
    nop
    sw $14,0($29)
    addu $29,$29,$28
    j block_72
    ori $30,$0,21

block_72:
    lui $14,0x0000
    ori $14,$14,0x10f3
    lui $26,0xffff
    ori $26,$26,0xc78c
    nop
    nop
    nop
    slt $0,$14,$26
    nop
    nop
    nop
    sw $0,0($29)
    addu $29,$29,$28
    j block_73
    ori $30,$0,84

block_73:
    lui $10,0xffff
    ori $10,$10,0x865d
    nop
    nop
    nop
    slti $14,$10,0x7478
    nop
    nop
    nop
    sw $14,0($29)
    addu $29,$29,$28
    j block_74
    ori $30,$0,99

block_74:
    lui $24,0x0000
    ori $24,$24,0x28b4
    nop
    nop
    nop
    slti $23,$24,-0x1fc8
    nop
    nop
    nop
    sw $23,0($29)
    addu $29,$29,$28
    j block_75
    nop

block_75:
    lui $9,0x0000
    ori $9,$9,0x2b36
    nop
    nop
    nop
    slti $0,$9,-0x2970
    nop
    nop
    nop
    sw $0,0($29)
    addu $29,$29,$28
    j block_76
    ori $30,$0,52

block_76:
    lui $1,0x0000
    ori $1,$1,0x3d94
    nop
    nop
    nop
    sltiu $11,$1,0x436f
    nop
    nop
    nop
    sw $11,0($29)
    addu $29,$29,$28
    j block_77
    nop

block_77:
    lui $21,0x0000
    ori $21,$21,0x0c27
    nop
    nop
    nop
    sltiu $4,$21,-0x3144
    nop
    nop
    nop
    sw $4,0($29)
    addu $29,$29,$28
    j block_78
    ori $30,$0,44

block_78:
    lui $18,0xffff
    ori $18,$18,0xe7e7
    nop
    nop
    nop
    sltiu $0,$18,-0x1d6c
    nop
    nop
    nop
    sw $0,0($29)
    addu $29,$29,$28
    j block_79
    ori $30,$0,11

block_79:
    lui $13,0x0000
    ori $13,$13,0x61aa
    lui $20,0xffff
    ori $20,$20,0xcbcb
    nop
    nop
    nop
    sltu $9,$13,$20
    nop
    nop
    nop
    sw $9,0($29)
    addu $29,$29,$28
    j block_80
    ori $30,$0,6

block_80:
    lui $1,0x0000
    ori $1,$1,0x03ad
    lui $18,0x0000
    ori $18,$18,0x209d
    nop
    nop
    nop
    sltu $0,$1,$18
    nop
    nop
    nop
    sw $0,0($29)
    addu $29,$29,$28
    j block_81
    ori $30,$0,57

block_81:
    lui $11,0xffff
    ori $11,$11,0xe1dd
    lui $10,0x0000
    ori $10,$10,0x05e2
    nop
    nop
    nop
    bne $11,$10,jump_block_5
    nop
    jump_back_5:
        nop
        nop
        nop

    sw $11,0($29)
    addu $29,$29,$28
    sw $10,0($29)
    addu $29,$29,$28
    j block_82
    nop

jump_block_5:
    nop
    nop
    nop
    ori $30,$0,45
    j jump_back_5
    nop

block_82:
    lui $5,0x0000
    ori $5,$5,0x6da6
    lui $5,0xffff
    ori $5,$5,0xac54
    nop
    nop
    nop
    bne $5,$5,jump_block_6
    nop
    jump_back_6:
        nop
        nop
        nop

    sw $5,0($29)
    addu $29,$29,$28
    sw $5,0($29)
    addu $29,$29,$28
    j block_83
    ori $30,$0,72

jump_block_6:
    nop
    nop
    nop
    ori $30,$0,87
    j jump_back_6
    nop

block_83:
    lui $9,0x0000
    ori $9,$9,0x11bf
    nop
    nop
    nop
    blez $9,jump_block_7
    nop
    jump_back_7:
        nop
        nop
        nop

    sw $9,0($29)
    addu $29,$29,$28
    j block_84
    nop

jump_block_7:
    nop
    nop
    nop
    ori $30,$0,4
    j jump_back_7
    nop

block_84:
    lui $9,0xffff
    ori $9,$9,0x812e
    nop
    nop
    nop
    blez $9,jump_block_8
    nop
    jump_back_8:
        nop
        nop
        nop

    sw $9,0($29)
    addu $29,$29,$28
    j block_85
    ori $30,$0,45

jump_block_8:
    nop
    nop
    nop
    nop
    j jump_back_8
    nop

block_85:
    lui $0,0x0000
    ori $0,$0,0x666b
    nop
    nop
    nop
    blez $0,jump_block_9
    nop
    jump_back_9:
        nop
        nop
        nop

    sw $0,0($29)
    addu $29,$29,$28
    j block_86
    nop

jump_block_9:
    nop
    nop
    nop
    nop
    j jump_back_9
    nop

block_86:
    lui $26,0x0000
    ori $26,$26,0x6af8
    nop
    nop
    nop
    bgtz $26,jump_block_10
    nop
    jump_back_10:
        nop
        nop
        nop

    sw $26,0($29)
    addu $29,$29,$28
    j block_87
    nop

jump_block_10:
    nop
    nop
    nop
    nop
    j jump_back_10
    nop

block_87:
    lui $26,0xffff
    ori $26,$26,0xb172
    nop
    nop
    nop
    bgtz $26,jump_block_11
    nop
    jump_back_11:
        nop
        nop
        nop

    sw $26,0($29)
    addu $29,$29,$28
    j block_88
    ori $30,$0,93

jump_block_11:
    nop
    nop
    nop
    ori $30,$0,3
    j jump_back_11
    nop

block_88:
    lui $0,0x0000
    ori $0,$0,0x3052
    nop
    nop
    nop
    bgtz $0,jump_block_12
    nop
    jump_back_12:
        nop
        nop
        nop

    sw $0,0($29)
    addu $29,$29,$28
    j block_89
    nop

jump_block_12:
    nop
    nop
    nop
    nop
    j jump_back_12
    nop

block_89:
    lui $13,0x0000
    ori $13,$13,0x2df5
    nop
    nop
    nop
    bltz $13,jump_block_13
    nop
    jump_back_13:
        nop
        nop
        nop

    sw $13,0($29)
    addu $29,$29,$28
    j block_90
    ori $30,$0,54

jump_block_13:
    nop
    nop
    nop
    nop
    j jump_back_13
    nop

block_90:
    lui $13,0xffff
    ori $13,$13,0xeb63
    nop
    nop
    nop
    bltz $13,jump_block_14
    nop
    jump_back_14:
        nop
        nop
        nop

    sw $13,0($29)
    addu $29,$29,$28
    j block_91
    nop

jump_block_14:
    nop
    nop
    nop
    ori $30,$0,42
    j jump_back_14
    nop

block_91:
    lui $0,0x0000
    ori $0,$0,0x453e
    nop
    nop
    nop
    bltz $0,jump_block_15
    nop
    jump_back_15:
        nop
        nop
        nop

    sw $0,0($29)
    addu $29,$29,$28
    j block_92
    ori $30,$0,49

jump_block_15:
    nop
    nop
    nop
    nop
    j jump_back_15
    nop

block_92:
    lui $3,0x0000
    ori $3,$3,0x552c
    nop
    nop
    nop
    bgez $3,jump_block_16
    nop
    jump_back_16:
        nop
        nop
        nop

    sw $3,0($29)
    addu $29,$29,$28
    j block_93
    nop

jump_block_16:
    nop
    nop
    nop
    ori $30,$0,66
    j jump_back_16
    nop

block_93:
    lui $3,0xffff
    ori $3,$3,0xae87
    nop
    nop
    nop
    bgez $3,jump_block_17
    nop
    jump_back_17:
        nop
        nop
        nop

    sw $3,0($29)
    addu $29,$29,$28
    j block_94
    ori $30,$0,7

jump_block_17:
    nop
    nop
    nop
    nop
    j jump_back_17
    nop

block_94:
    lui $0,0x0000
    ori $0,$0,0x61ca
    nop
    nop
    nop
    bgez $0,jump_block_18
    nop
    jump_back_18:
        nop
        nop
        nop

    sw $0,0($29)
    addu $29,$29,$28
    j block_95
    ori $30,$0,23

jump_block_18:
    nop
    nop
    nop
    ori $30,$0,29
    j jump_back_18
    nop

block_95:
    j jump_block_19
    nop
    jr_back_19:
        addu $5,$0,$31
        jalr $18,$5
        nop
    jump_back_19:
        nop
        nop
        nop

    j block_96
    ori $30,$0,98

jump_block_19:
    jal jr_back_19
    nop
    nop
    nop
    nop
    ori $30,$0,56
    j jump_back_19
    nop

block_96:
    lui $8,0x65cb
    ori $8,$8,0xc428
    lui $3,0xa352
    ori $3,$3,0xff9b
    nop
    nop
    nop
    mult $8,$3
    nop
    nop
    nop
    j block_97
    nop

block_97:
    lui $5,0xea24
    ori $5,$5,0xa44f
    lui $11,0xdde6
    ori $11,$11,0x8c9a
    nop
    nop
    nop
    multu $5,$11
    nop
    nop
    nop
    j block_98
    ori $30,$0,85

block_98:
    lui $18,0x6dcc
    ori $18,$18,0xda1c
    lui $6,0x4123
    ori $6,$6,0xcadf
    nop
    nop
    nop
    div $18,$6
    nop
    nop
    nop
    j block_99
    nop

block_99:
    lui $3,0xb9cf
    ori $3,$3,0xf329
    lui $14,0xb7ee
    ori $14,$14,0x9f18
    nop
    nop
    nop
    divu $3,$14
    nop
    nop
    nop
    j block_100
    nop

block_100:
    nop
    nop
    nop
    mfhi $0
    nop
    nop
    nop
    j block_101
    ori $30,$0,67

block_101:
    nop
    nop
    nop
    mflo $0
    nop
    nop
    nop
    j block_102
    ori $30,$0,71

block_102:
    lui $1,0x71ea
    ori $1,$1,0x0109
    lui $0,0x5c99
    ori $0,$0,0x20bc
    nop
    nop
    nop
    mthi $1
    nop
    nop
    nop
    j block_103
    nop

block_103:
    lui $17,0x27c5
    ori $17,$17,0x475b
    lui $0,0xe1bf
    ori $0,$0,0xe7de
    nop
    nop
    nop
    mtlo $17
    nop
    nop
    nop
    j block_104
    nop

block_104:
    lui $14,0xffff
    ori $14,$14,0xd74a
    lui $19,0xffff
    ori $19,$19,0xcd7c
    nop
    nop
    nop
    add $21,$14,$19
    nop
    nop
    nop
    sw $21,0($29)
    addu $29,$29,$28
    j block_105
    nop

block_105:
    lui $19,0xffff
    ori $19,$19,0xc868
    lui $7,0x0000
    ori $7,$7,0x2fb5
    nop
    nop
    nop
    add $0,$19,$7
    nop
    nop
    nop
    sw $0,0($29)
    addu $29,$29,$28
    j block_106
    nop

block_106:
    beq $0,$0,block_106
    nop
