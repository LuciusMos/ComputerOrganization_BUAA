.ktext 0x4180
mfc0 $t0,$12
mfc0 $t0,$13
mfc0 $t0,$14
addi $t0,$t0,4
mtc0 $t0,$14
eret
.text
li $s0, -5
li $s1, 2
li $s2, -3
li $s3, -7
li $s4, -2
la $t0, label82
la $t1, label136
la $t2, label196
la $t3, label203
la $t4, label274
la $t5, label317
la $t6, label377
la $t7, label411
la $t8, label493
la $t9, label500
label0: jr $t0
label1: addiu $s3, $0, -8
label2: mthi $s5
label3: mfc0 $s1, $14
label4: addiu $s3, $s5, 7
label5: or $s4, $s3, $0
label6: or $s2, $s3, $s4
label7: divu $s3, $s4
label8: xor $0, $s3, $s1
label9: jalr $s4, $t0
label10: lhu $s2, 3381($0)
label11: div $s5, $s3
label12: or $s2, $s3, $s4
label13: multu $s3, $s4
label14: mult $s1, $s5
label15: mtlo $s1
label16: ori $0, $s3, 1
label17: sllv $s4, $s2, $s2
label18: xor $s2, $s1, $0
label19: andi $s1, $s2, -1
label20: sltiu $s5, $s3, 9
label21: addu $s4, $0, $s2
label22: bgez $s5, label30
label23: ori $s4, $0, -9
label24: slti $s1, $s4, -4
label25: bgtz $s2, label32
label26: srav $s2, $s3, $s4
label27: divu $0, $s1
label28: j label32
label29: divu $s5, $0
label30: lh $0, 482($0)
label31: sw $s5, 3716($0)
label32: lb $0, 735($0)
label33: sw $s2, 2231($0)
label34: sh $s3, 2697($0)
label35: add $s5, $s1, $s3
label36: sw $s3, 1157($0)
label37: sh $0, 1128($0)
label38: bgtz $0, label48
label39: mtc0 $s5, $14
label40: jr $t0
label41: slti $s4, $s5, -4
label42: mtlo $s5
label43: srlv $s3, $s2, $s3
label44: xori $s3, $s5, 2
label45: nor $s1, $s3, $s2
label46: bne $s3, $s5, label53
label47: sllv $s4, $s5, $s5
label48: srav $s5, $s4, $0
label49: addi $s2, $s5, -6
label50: mtc0 $s4, $14
label51: sltu $s1, $0, $0
label52: mtc0 $s1, $14
label53: mfc0 $s3, $14
label54: divu $s5, $s4
label55: slti $s1, $0, 10
label56: sw $s1, 3117($0)
label57: blez $s5, label67
label58: slt $s3, $s1, $s5
label59: slt $0, $s2, $s5
label60: ori $s2, $s5, -1
label61: mthi $0
label62: addu $s4, $s1, $0
label63: bne $s5, $s4, label66
label64: srl $s2, $0, 12
label65: lhu $s5, 513($0)
label66: beq $s1, $s3, label73
label67: or $s3, $s1, $s1
label68: bgez $s4, label77
label69: multu $s4, $s1
label70: mthi $s4
label71: srav $s5, $s5, $0
label72: lw $s1, 161($0)
label73: mtlo $s4
label74: j label83
label75: lbu $s3, 3277($0)
label76: nor $s5, $s2, $s5
label77: ori $s3, $s2, -10
label78: lhu $s3, 627($0)
label79: mflo $s3
label80: bltz $s2, label82
label81: xori $s3, $0, 9
label82: bne $s4, $s4, label89
label83: or $s1, $s2, $0
label84: sltu $s1, $0, $s1
label85: multu $0, $s2
label86: sra $s3, $s1, 27
label87: mfhi $s3
label88: sll $s4, $s4, 13
label89: or $s3, $s2, $0
label90: jalr $s2, $t1
label91: srl $0, $s2, 26
label92: ori $s3, $s5, -3
label93: mflo $s3
label94: addu $0, $s5, $s1
label95: add $s4, $s2, $s4
label96: mfhi $s5
label97: lui $s5, 131
label98: subu $s2, $s4, $s1
label99: mfhi $s3
label100: mfc0 $s3, $14
label101: andi $0, $s1, 10
label102: blez $s5, label107
label103: srlv $s1, $s5, $s2
label104: slti $s1, $s3, -6
label105: sb $s2, 1251($0)
label106: multu $s1, $s4
label107: bne $s3, $s3, label117
label108: subu $s3, $s5, $s2
label109: j label113
label110: mflo $s3
label111: lhu $0, 504($0)
label112: srav $s5, $0, $s3
label113: sltu $s2, $s3, $s2
label114: srav $s5, $0, $s5
label115: mflo $s3
label116: mtlo $0
label117: addi $s2, $s3, -3
label118: lbu $s1, 3089($0)
label119: andi $s4, $s5, -6
label120: srav $s3, $s5, $s4
label121: sb $s3, 2311($0)
label122: srl $0, $s2, 8
label123: addi $s2, $s2, -5
label124: beq $0, $s5, label131
label125: lh $s1, 2711($0)
label126: ori $s5, $s3, 9
label127: addu $s2, $s4, $s3
label128: div $s3, $s1
label129: jal label135
label130: mtc0 $s1, $14
label131: mthi $s4
label132: subu $s1, $s2, $s3
label133: lui $s5, 215
label134: slti $s1, $s2, 4
label135: or $s1, $s1, $s5
label136: sra $s5, $s1, 6
label137: sltiu $s4, $s1, -5
label138: addu $s2, $0, $s2
label139: mfhi $s3
label140: and $s3, $s3, $s2
label141: andi $s3, $s2, 8
label142: addiu $s3, $s2, -4
label143: sub $s5, $s4, $0
label144: mult $s3, $s5
label145: bltz $s5, label146
label146: addi $s2, $s5, -4
label147: slti $s3, $s1, 4
label148: addu $s2, $s3, $0
label149: sra $s1, $s4, 0
label150: lb $s3, 658($0)
label151: andi $s1, $s5, -5
label152: divu $s4, $s4
label153: srl $s1, $s5, 4
label154: divu $s3, $s2
label155: and $s3, $s4, $s1
label156: multu $s1, $s2
label157: xor $s5, $s3, $s4
label158: lbu $s4, 40($0)
label159: lb $s4, 1948($0)
label160: sw $s3, 426($0)
label161: mfhi $s4
label162: mult $s2, $s5
label163: lui $0, 197
label164: andi $s1, $s3, 0
label165: multu $s3, $s1
label166: jr $t3
label167: lui $s3, 174
label168: xori $s4, $s5, 3
label169: sltu $0, $s1, $s2
label170: mtc0 $s3, $14
label171: sw $s4, 1875($0)
label172: jal label173
label173: multu $s2, $0
label174: and $0, $0, $s2
label175: subu $0, $s3, $s4
label176: jr $t3
label177: slti $s3, $s5, -5
label178: bltz $s4, label180
label179: or $s3, $s4, $0
label180: sb $s3, 2007($0)
label181: jal label191
label182: lbu $s5, 3036($0)
label183: sw $s2, 27($0)
label184: sw $s2, 982($0)
label185: blez $s1, label192
label186: add $s1, $s4, $0
label187: multu $s1, $s2
label188: mtlo $s5
label189: multu $0, $0
label190: andi $s1, $s1, -8
label191: j label199
label192: srl $0, $s4, 17
label193: srav $s2, $0, $s1
label194: addu $s4, $0, $s5
label195: sw $s1, 1469($0)
label196: jal label199
label197: sub $s2, $s5, $s1
label198: mfc0 $s1, $14
label199: jalr $s5, $t3
label200: sra $s1, $s3, 15
label201: slt $0, $s1, $s2
label202: mult $s5, $0
label203: sh $0, 2689($0)
label204: lh $s5, 737($0)
label205: addi $s4, $s4, 4
label206: mflo $s1
label207: sll $s5, $s4, 12
label208: sw $s4, 1061($0)
label209: nor $s5, $s2, $s3
label210: lb $s3, 163($0)
label211: jal label219
label212: mfhi $s1
label213: addi $s3, $s5, 4
label214: mtlo $s2
label215: addu $s3, $s1, $s1
label216: mflo $s2
label217: slt $0, $s4, $s2
label218: xori $s2, $s2, 7
label219: lui $0, 156
label220: lh $s2, 2495($0)
label221: lb $s5, 3140($0)
label222: sll $s3, $s4, 15
label223: bgez $s3, label227
label224: sllv $s3, $s3, $s2
label225: sub $0, $0, $s2
label226: sra $s5, $s2, 30
label227: lw $s2, 2461($0)
label228: slt $0, $0, $s2
label229: subu $0, $s4, $s1
label230: sw $s1, 403($0)
label231: lb $s4, 340($0)
label232: bltz $0, label238
label233: xori $s2, $s3, 2
label234: lhu $s5, 3727($0)
label235: blez $0, label239
label236: mtlo $s1
label237: sub $s4, $s4, $s3
label238: lbu $s5, 379($0)
label239: slt $s3, $s4, $0
label240: jal label248
label241: sb $s4, 1678($0)
label242: mflo $s1
label243: subu $s5, $s1, $s1
label244: mtlo $0
label245: mfc0 $s2, $14
label246: sra $s3, $s4, 5
label247: srav $s2, $s2, $s1
label248: sltu $s1, $s3, $s1
label249: slt $s1, $s1, $s3
label250: div $s4, $0
label251: multu $s1, $s3
label252: mtlo $s5
label253: xor $0, $s3, $0
label254: bltz $s1, label255
label255: addiu $s4, $0, 5
label256: blez $s3, label259
label257: sub $s1, $s5, $s1
label258: multu $0, $s2
label259: mfhi $s2
label260: j label267
label261: subu $s5, $s2, $s1
label262: slti $0, $s5, -5
label263: addi $s5, $s4, 6
label264: and $s2, $s5, $s1
label265: jal label269
label266: divu $0, $s2
label267: blez $s5, label273
label268: sltu $s1, $s4, $s3
label269: mfhi $s5
label270: addi $s3, $s3, -10
label271: addiu $s4, $s5, -9
label272: beq $s4, $s5, label281
label273: ori $s2, $0, -10
label274: multu $s1, $0
label275: nor $s4, $s4, $s1
label276: lhu $s4, 3087($0)
label277: sw $s5, 1845($0)
label278: j label286
label279: divu $0, $s1
label280: xori $s2, $0, 6
label281: sra $s2, $s3, 13
label282: mfc0 $s5, $14
label283: lbu $0, 487($0)
label284: addu $s5, $s1, $s3
label285: mflo $s3
label286: sh $s4, 2910($0)
label287: add $s3, $s3, $0
label288: xor $s3, $0, $0
label289: addiu $s4, $s5, -7
label290: multu $s4, $s3
label291: mult $s5, $s5
label292: mflo $0
label293: addu $s1, $s1, $s5
label294: sb $s5, 3641($0)
label295: andi $s3, $s2, 4
label296: bgez $s5, label306
label297: divu $s3, $s2
label298: xori $s1, $s4, 6
label299: lui $s4, 201
label300: add $s3, $s2, $s1
label301: slt $s5, $s4, $s2
label302: addiu $s5, $s1, 2
label303: sw $s2, 3886($0)
label304: beq $s3, $0, label314
label305: sltiu $s4, $0, -10
label306: lw $s4, 2632($0)
label307: mthi $s2
label308: jal label310
label309: mtc0 $s5, $14
label310: srav $s2, $0, $s4
label311: and $s3, $0, $s3
label312: mfc0 $s5, $14
label313: mflo $s1
label314: sltiu $s4, $0, 7
label315: lb $s5, 2673($0)
label316: ori $s2, $s4, 2
label317: bgtz $s3, label326
label318: sllv $s3, $s2, $s3
label319: bne $s5, $s5, label327
label320: sll $s3, $s1, 3
label321: sra $s5, $s4, 22
label322: lhu $0, 3707($0)
label323: nor $s5, $s4, $s5
label324: jalr $s5, $t6
label325: andi $0, $s3, -1
label326: srav $s3, $s5, $0
label327: mult $s5, $s1
label328: slti $s3, $s2, 10
label329: xori $0, $s3, -7
label330: jr $t6
label331: addiu $s4, $s3, -7
label332: lhu $s3, 3590($0)
label333: mflo $s4
label334: mtlo $s1
label335: nor $0, $s5, $s3
label336: or $s1, $s2, $s4
label337: sll $0, $s3, 10
label338: nor $s3, $s2, $0
label339: srl $s5, $s2, 29
label340: andi $0, $s4, 0
label341: div $s1, $s5
label342: mtc0 $s5, $14
label343: mfhi $0
label344: sb $s3, 1790($0)
label345: sra $0, $s3, 17
label346: srlv $s1, $s4, $s5
label347: bgez $s2, label357
label348: subu $s4, $s3, $0
label349: and $s2, $s4, $s1
label350: and $s2, $s1, $s2
label351: addi $s5, $0, 10
label352: andi $0, $s2, 2
label353: andi $s2, $s5, -3
label354: add $s1, $s1, $s1
label355: sllv $s1, $s1, $s4
label356: div $s2, $s2
label357: slti $0, $0, 3
label358: mfhi $0
label359: bltz $s5, label367
label360: andi $0, $s3, -10
label361: subu $0, $s4, $s4
label362: add $s3, $s3, $s3
label363: lh $0, 2515($0)
label364: and $0, $s1, $s4
label365: andi $s2, $s2, 9
label366: j label367
label367: sb $s3, 32($0)
label368: jal label376
label369: lw $s2, 1111($0)
label370: mfc0 $s5, $14
label371: add $s1, $s2, $s2
label372: lui $s3, 35
label373: slt $s4, $s4, $s2
label374: mtc0 $s4, $14
label375: and $s1, $0, $s2
label376: sb $s4, 2502($0)
label377: and $s4, $s1, $0
label378: bltz $s4, label387
label379: sw $s4, 674($0)
label380: bltz $0, label383
label381: lh $s3, 176($0)
label382: jal label385
label383: sub $s2, $s2, $0
label384: mult $s3, $s1
label385: srlv $s1, $s3, $s4
label386: lw $s1, 2282($0)
label387: sltu $s4, $s3, $s4
label388: and $0, $s2, $s5
label389: mtlo $s3
label390: slti $s4, $s3, 0
label391: sltu $s5, $s4, $s3
label392: xor $s5, $s2, $0
label393: subu $s3, $0, $s2
label394: lbu $s5, 3941($0)
label395: sltiu $s3, $0, 9
label396: andi $s2, $s1, 6
label397: mflo $s2
label398: mthi $s5
label399: beq $s3, $s3, label400
label400: sra $s4, $s3, 15
label401: slt $s1, $s2, $s1
label402: bne $0, $0, label405
label403: slti $s4, $0, 8
label404: div $s2, $s1
label405: sltiu $s3, $s4, 10
label406: srlv $s5, $s1, $0
label407: add $s4, $s4, $s5
label408: xori $s1, $s3, -10
label409: lh $s1, 3195($0)
label410: sll $s5, $s3, 8
label411: sb $s5, 2484($0)
label412: sh $s2, 3388($0)
label413: mflo $s1
label414: add $0, $s5, $s2
label415: andi $s2, $s3, 4
label416: divu $s1, $s2
label417: mtlo $0
label418: lh $s3, 3031($0)
label419: xor $s4, $s5, $s4
label420: bne $s5, $s1, label427
label421: slt $0, $0, $s4
label422: nor $s5, $s2, $s5
label423: mfhi $s1
label424: lh $s4, 3185($0)
label425: bltz $s4, label431
label426: addu $s4, $0, $s2
label427: mfhi $s4
label428: sltu $s3, $s3, $s4
label429: sh $s2, 3149($0)
label430: addiu $s5, $s1, -5
label431: lb $s3, 3388($0)
label432: lh $s5, 1402($0)
label433: sll $s1, $s3, 21
label434: slt $s2, $s5, $s4
label435: sllv $s3, $s3, $s1
label436: nor $s2, $s2, $s2
label437: mfhi $0
label438: mthi $s1
label439: jr $t8
label440: mtc0 $s4, $14
label441: sll $s5, $s2, 5
label442: sltu $s5, $s2, $0
label443: mfhi $s5
label444: bne $s1, $s3, label454
label445: div $s4, $s4
label446: srav $s4, $s5, $s2
label447: jr $t8
label448: addiu $s1, $s5, -2
label449: slti $s5, $s5, 3
label450: srl $s1, $s4, 7
label451: srlv $s3, $0, $s4
label452: xor $0, $s1, $s5
label453: bgtz $s4, label456
label454: mfhi $s2
label455: divu $0, $s1
label456: sll $s1, $s1, 10
label457: nor $s2, $s5, $s5
label458: addi $s1, $s1, -4
label459: add $s2, $s4, $s1
label460: srlv $s2, $s2, $s5
label461: lw $s4, 1796($0)
label462: mflo $s2
label463: jalr $s1, $t9
label464: mfc0 $s4, $14
label465: lb $s5, 1546($0)
label466: addi $s3, $s3, -10
label467: j label471
label468: divu $s1, $0
label469: xori $s1, $s4, -3
label470: mtc0 $s2, $14
label471: bne $s2, $0, label478
label472: addi $s4, $0, -2
label473: lw $s3, 2822($0)
label474: slti $0, $s2, 10
label475: mthi $s2
label476: srav $s5, $s3, $s3
label477: srl $s4, $s2, 13
label478: multu $s1, $s2
label479: subu $s1, $s5, $s2
label480: sllv $s4, $s4, $s1
label481: multu $s3, $s1
label482: mfhi $s4
label483: sltu $s1, $s5, $s2
label484: or $0, $s2, $s4
label485: mfc0 $s5, $14
label486: xori $0, $s1, -2
label487: mtc0 $s5, $14
label488: nor $s1, $s2, $s5
label489: mfc0 $s5, $14
label490: lb $s3, 3302($0)
label491: bltz $s4, label500
label492: lh $s5, 3634($0)
label493: xor $s2, $s5, $s1
label494: mtc0 $s3, $14
label495: mflo $s5
label496: mfc0 $0, $14
label497: srl $0, $s4, 18
label498: bgez $s3, label500
label499: xori $s4, $s3, -1
label500:ori $v0, $zero, 10
wocao: beq $0,$0,wocao
