.ktext 0x00004180
mfc0 $t0,$12
mfc0 $t0,$13
mfc0 $t0,$14
addi $t0,$t0,4
mtc0 $t0,$14
eret

.text 
li $s0, 5
li $s1, 4
li $s2, 5
li $s3, -3
li $s4, 9
la $t0, label100
la $t1, label119
la $t2, label156
la $t3, label215
la $t4, label292
la $t5, label319
la $t6, label367
la $t7, label447
la $t8, label457
la $t9, label500
label0: mflo $s1
label1: sw $s2, 1783($0)
label2: bltz $s1, label11
label3: div $s1, $0
label4: mthi $s2
label5: sub $s4, $s1, $s3
label6: and $s2, $s3, $s2
label7: blez $s4, label9
label8: sw $s2, 2920($0)
label9: lbu $s1, 2780($0)
label10: lhu $0, 3580($0)
label11: sh $s2, 2205($0)
label12: srav $s3, $s2, $0
label13: nor $s2, $s5, $s2
label14: and $s4, $s2, $s3
label15: sra $s4, $s3, 30
label16: multu $s5, $s3
label17: bgtz $s1, label18
label18: slt $s5, $s4, $s3
label19: divu $0, $0
label20: mult $s5, $s5
label21: sb $s5, 2463($0)
label22: srl $s2, $s4, 15
label23: beq $s5, $s3, label24
label24: sra $s1, $s4, 6
label25: lhu $s2, 1775($0)
label26: sltiu $0, $s1, 8
label27: mtc0 $s4, $14
label28: beq $s2, $s4, label36
label29: lw $s4, 2331($0)
label30: lhu $s3, 109($0)
label31: slti $s4, $s3, 3
label32: sltiu $s2, $s3, 5
label33: bgez $s2, label39
label34: mult $s1, $s3
label35: ori $s4, $s5, 4
label36: mflo $s5
label37: lhu $s3, 1632($0)
label38: sltu $s1, $s4, $s5
label39: or $s5, $s4, $s4
label40: blez $s2, label41
label41: mfhi $0
label42: beq $s3, $0, label44
label43: sllv $s4, $s3, $s3
label44: mfhi $s4
label45: mtc0 $s5, $14
label46: sub $s5, $s3, $s1
label47: bltz $0, label49
label48: lw $s1, 2356($0)
label49: mflo $s3
label50: sll $s2, $s2, 24
label51: mflo $s5
label52: sb $0, 3782($0)
label53: xori $s5, $s2, -8
label54: j label56
label55: sh $0, 2597($0)
label56: mult $s3, $s5
label57: sltu $s1, $s5, $s2
label58: sh $0, 3943($0)
label59: srlv $s2, $s2, $s5
label60: sll $s5, $s2, 1
label61: srl $s3, $s1, 30
label62: lhu $s2, 720($0)
label63: sllv $s4, $s3, $s5
label64: add $s3, $s4, $s2
label65: ori $s2, $s2, 6
label66: srav $s1, $s1, $0
label67: add $s4, $s3, $0
label68: add $s2, $s2, $s3
label69: andi $s2, $0, 6
label70: sll $s4, $s1, 21
label71: ori $0, $s2, -10
label72: lui $s2, 133
label73: bne $s5, $0, label74
label74: addu $s2, $s5, $s5
label75: slti $s4, $s3, 2
label76: lh $s1, 1910($0)
label77: slt $s5, $s3, $s5
label78: addu $s4, $s1, $s2
label79: lbu $0, 2262($0)
label80: sll $s1, $0, 7
label81: lui $0, 83
label82: or $s1, $s3, $s3
label83: lb $0, 1300($0)
label84: mthi $s5
label85: multu $s4, $0
label86: lui $s5, 147
label87: add $s5, $s3, $s5
label88: jr $t1
label89: sb $s3, 2391($0)
label90: addiu $s5, $s2, 7
label91: bltz $s2, label99
label92: slti $s3, $s1, -4
label93: srav $0, $s1, $s5
label94: jal label100
label95: divu $s1, $s1
label96: multu $s3, $s3
label97: divu $0, $s4
label98: div $s1, $0
label99: xor $s2, $s5, $s4
label100: divu $s4, $s5
label101: slt $s2, $s2, $s1
label102: sllv $s4, $s1, $s3
label103: jr $t2
label104: mfc0 $s3, $14
label105: andi $s3, $s4, -8
label106: beq $s5, $s1, label107
label107: subu $s2, $s4, $s3
label108: or $s4, $s3, $s2
label109: lhu $0, 2648($0)
label110: divu $s4, $0
label111: lui $s3, 37
label112: sltu $s3, $s2, $0
label113: jalr $s2, $t2
label114: sub $s4, $s3, $s2
label115: sra $s4, $s3, 20
label116: addiu $s4, $s5, 1
label117: sllv $s1, $0, $0
label118: add $s4, $s4, $s1
label119: beq $s3, $0, label124
label120: lui $s3, 36
label121: lbu $0, 3495($0)
label122: mflo $0
label123: sra $s4, $0, 15
label124: lb $0, 2206($0)
label125: jal label133
label126: mflo $s3
label127: slt $s5, $s4, $s3
label128: and $s3, $s5, $s3
label129: mtlo $s3
label130: slti $s4, $0, -3
label131: sb $s5, 3562($0)
label132: sra $s3, $s4, 26
label133: blez $0, label138
label134: lbu $0, 2295($0)
label135: sh $0, 1774($0)
label136: and $s4, $0, $s3
label137: sub $0, $s2, $s5
label138: nor $s2, $s1, $s2
label139: xor $s5, $s2, $s1
label140: sw $s5, 2178($0)
label141: div $0, $s2
label142: slt $s3, $s4, $0
label143: mtc0 $0, $14
label144: slt $s5, $s3, $s4
label145: srav $s5, $s5, $s4
label146: mfc0 $s3, $14
label147: xor $s2, $0, $0
label148: mflo $s2
label149: sra $s5, $s3, 6
label150: multu $s1, $s1
label151: jal label156
label152: slt $s3, $s1, $s2
label153: div $s5, $s4
label154: lw $s1, 1096($0)
label155: sh $s3, 1262($0)
label156: addu $s2, $s5, $s2
label157: jalr $s5, $t3
label158: divu $s3, $s4
label159: ori $s4, $0, -10
label160: xori $s2, $s4, 8
label161: jal label171
label162: mfc0 $s3, $14
label163: xori $0, $s2, 1
label164: lb $0, 1518($0)
label165: bgtz $s5, label172
label166: add $s5, $0, $0
label167: jal label169
label168: addu $s1, $s3, $s5
label169: xori $0, $s1, 10
label170: lhu $0, 3690($0)
label171: mflo $s5
label172: srav $s1, $s4, $s3
label173: lbu $s1, 2182($0)
label174: xori $s3, $s4, -5
label175: divu $s5, $s5
label176: sltu $s1, $s4, $0
label177: sra $s5, $s2, 30
label178: jalr $s1, $t3
label179: lw $s2, 1273($0)
label180: mult $s5, $s2
label181: ori $s5, $s2, 6
label182: srl $0, $s4, 9
label183: lbu $s3, 1401($0)
label184: j label190
label185: xor $s5, $s3, $s1
label186: subu $0, $s5, $s5
label187: subu $0, $s5, $s4
label188: add $s5, $s3, $s4
label189: sra $0, $s2, 30
label190: bgtz $s5, label198
label191: mfc0 $s4, $14
label192: xor $s3, $0, $s5
label193: ori $s1, $s5, 9
label194: div $s2, $s2
label195: bgez $0, label202
label196: mtlo $s4
label197: srlv $s5, $s1, $s4
label198: and $s4, $s4, $s2
label199: jalr $0, $t3
label200: nor $s3, $s3, $s2
label201: sltiu $s5, $s4, -2
label202: div $s1, $0
label203: jal label205
label204: srlv $s5, $0, $s3
label205: sb $s3, 2865($0)
label206: lb $s2, 3484($0)
label207: sb $s1, 2345($0)
label208: addiu $s3, $s3, 5
label209: or $s5, $s2, $s2
label210: and $s2, $s1, $s5
label211: mflo $s5
label212: srl $s4, $s4, 22
label213: sb $s3, 2387($0)
label214: add $s2, $0, $s5
label215: ori $s5, $s5, 0
label216: srl $s5, $s3, 19
label217: andi $s3, $s5, -10
label218: mtc0 $s3, $14
label219: sllv $0, $s4, $s4
label220: addiu $s2, $s5, -4
label221: sltu $s2, $0, $s3
label222: sb $s4, 3812($0)
label223: mthi $s4
label224: mtlo $s2
label225: mflo $s1
label226: nor $s2, $s5, $s1
label227: sllv $0, $s5, $s4
label228: sb $s5, 1748($0)
label229: slt $s4, $s5, $s3
label230: sltiu $s3, $s5, 2
label231: sltiu $s2, $s3, -7
label232: divu $s3, $s5
label233: bgez $s2, label239
label234: sh $s4, 856($0)
label235: mthi $s1
label236: blez $s5, label237
label237: andi $s4, $s3, -2
label238: srav $s5, $s5, $s2
label239: slt $s2, $s5, $s5
label240: addi $s5, $s3, 5
label241: div $0, $s1
label242: lbu $s3, 2318($0)
label243: addu $s1, $0, $s4
label244: beq $s5, $s1, label253
label245: mult $s2, $s2
label246: lhu $s2, 2281($0)
label247: bgez $s1, label255
label248: subu $s1, $0, $s4
label249: bne $s5, $s1, label259
label250: srl $s2, $s1, 31
label251: mtlo $s4
label252: xor $s2, $s4, $s3
label253: blez $0, label260
label254: sltu $s4, $s1, $s1
label255: mflo $s2
label256: jal label264
label257: mtlo $s5
label258: subu $s4, $s1, $s2
label259: and $s2, $s5, $s4
label260: divu $s3, $s2
label261: mfhi $s5
label262: sllv $0, $s2, $s1
label263: lbu $s5, 3750($0)
label264: and $s1, $s2, $s3
label265: or $0, $s4, $s4
label266: slt $s4, $s1, $s5
label267: addu $s4, $s4, $s4
label268: slti $0, $s4, 8
label269: addiu $s3, $s5, 10
label270: lui $s5, 88
label271: addiu $s4, $s5, 5
label272: andi $s4, $s1, 5
label273: multu $s1, $s2
label274: mthi $s1
label275: sltu $0, $s4, $s3
label276: srl $s4, $s5, 30
label277: lhu $s4, 1010($0)
label278: jal label279
label279: addiu $s4, $0, 0
label280: bne $s5, $s4, label287
label281: mult $s3, $s2
label282: srav $s3, $s3, $s1
label283: sltu $0, $0, $s3
label284: addiu $s4, $s5, -7
label285: lui $s3, 248
label286: lh $s3, 1980($0)
label287: mult $s5, $s4
label288: sh $s5, 1925($0)
label289: div $s5, $0
label290: mfc0 $s5, $14
label291: mthi $s1
label292: mthi $s4
label293: multu $s2, $0
label294: slti $s4, $s4, 4
label295: mult $s4, $s4
label296: lhu $s1, 2589($0)
label297: bne $s2, $s5, label298
label298: andi $s5, $0, -2
label299: srlv $s1, $0, $0
label300: sltiu $s5, $0, -1
label301: sllv $s2, $s2, $s3
label302: mtlo $s1
label303: jr $t6
label304: mtlo $s2
label305: mthi $s1
label306: slt $0, $s3, $s5
label307: jalr $s5, $t6
label308: mult $s4, $0
label309: bne $s3, $s5, label315
label310: sub $s2, $s2, $s3
label311: addu $s3, $s4, $s2
label312: lw $s1, 2336($0)
label313: sllv $s5, $s1, $0
label314: bne $s5, $s1, label319
label315: sltiu $s2, $s3, -1
label316: ori $s4, $s2, -10
label317: j label324
label318: multu $s3, $s1
label319: add $s5, $0, $s5
label320: mfhi $s1
label321: jr $t6
label322: lh $s3, 838($0)
label323: jal label324
label324: and $s2, $s4, $0
label325: add $s1, $s2, $s5
label326: beq $s5, $s4, label327
label327: div $s1, $s5
label328: subu $s3, $s1, $0
label329: bne $s3, $s1, label338
label330: mult $s3, $s5
label331: xor $s2, $s3, $s2
label332: multu $s5, $s3
label333: multu $0, $s4
label334: mtlo $0
label335: jal label345
label336: or $s4, $s5, $s3
label337: lb $s3, 571($0)
label338: div $0, $s5
label339: jr $t6
label340: sltiu $s2, $s4, 1
label341: mthi $0
label342: andi $s2, $s1, -5
label343: sub $s5, $s4, $s2
label344: sub $s5, $s1, $s3
label345: srav $s5, $s2, $s1
label346: xor $s4, $s3, $s1
label347: andi $s4, $s5, 5
label348: sw $s2, 261($0)
label349: mthi $0
label350: addiu $s1, $s3, -10
label351: xor $s2, $s5, $0
label352: add $0, $s2, $s5
label353: srlv $0, $0, $s1
label354: srav $s5, $s2, $s4
label355: mtc0 $s3, $14
label356: nor $s3, $s4, $s4
label357: sh $0, 1050($0)
label358: lbu $s3, 1852($0)
label359: srl $0, $s2, 4
label360: bltz $s3, label365
label361: srlv $s3, $s5, $s1
label362: sub $s4, $s2, $0
label363: mflo $s3
label364: jal label373
label365: srav $s2, $s2, $0
label366: subu $s4, $0, $0
label367: add $0, $0, $s2
label368: divu $s1, $0
label369: jalr $s5, $t7
label370: xor $s1, $s2, $s5
label371: xor $s1, $s5, $0
label372: mfc0 $s5, $14
label373: sll $0, $0, 22
label374: div $s3, $s4
label375: jr $t7
label376: subu $s1, $s4, $s2
label377: bne $s4, $s2, label379
label378: sll $s1, $s4, 16
label379: lh $s4, 2130($0)
label380: mfc0 $s4, $14
label381: j label385
label382: nor $s1, $s4, $s4
label383: mfhi $s4
label384: sra $s1, $s3, 2
label385: j label391
label386: addu $0, $s5, $s3
label387: lb $s3, 3861($0)
label388: beq $s5, $s5, label396
label389: addi $0, $s2, 8
label390: sw $0, 315($0)
label391: lh $s5, 867($0)
label392: jal label396
label393: mthi $s3
label394: sw $s4, 2659($0)
label395: and $s3, $0, $s4
label396: lui $s5, 197
label397: srlv $0, $s5, $s5
label398: mtlo $s4
label399: jal label403
label400: sra $s3, $s5, 22
label401: srav $s4, $s2, $s2
label402: addi $s2, $s2, -7
label403: mthi $s2
label404: subu $s3, $s1, $s1
label405: lh $s3, 551($0)
label406: sll $s1, $s3, 4
label407: addi $s3, $s5, 6
label408: j label413
label409: mfc0 $s5, $14
label410: mtc0 $0, $14
label411: divu $s2, $s3
label412: mult $s1, $s4
label413: lbu $s1, 96($0)
label414: lb $s2, 2090($0)
label415: sub $s1, $s2, $0
label416: addiu $s4, $s3, -7
label417: sw $s3, 2069($0)
label418: slti $s1, $s1, -3
label419: divu $s2, $s4
label420: mtlo $0
label421: mflo $s5
label422: bltz $s1, label432
label423: mult $s3, $s3
label424: lhu $s1, 2761($0)
label425: addiu $s3, $s2, 1
label426: mtc0 $s1, $14
label427: lbu $s4, 283($0)
label428: add $s5, $s4, $s3
label429: xor $0, $s4, $s2
label430: add $s5, $s2, $s4
label431: bgtz $s4, label441
label432: lui $s5, 107
label433: srlv $s1, $s1, $s1
label434: lh $0, 1202($0)
label435: jalr $s2, $t8
label436: sw $s2, 2540($0)
label437: nor $s3, $s5, $s3
label438: divu $0, $s1
label439: addi $s5, $s5, 2
label440: addiu $0, $s2, -10
label441: mtlo $s3
label442: addiu $s4, $s4, -10
label443: xori $s5, $s4, -2
label444: addi $s2, $s5, 9
label445: srl $s3, $s4, 19
label446: sh $s5, 2878($0)
label447: srlv $s3, $s1, $s5
label448: addiu $s5, $s5, -9
label449: sll $s5, $s5, 30
label450: mfc0 $s3, $14
label451: j label452
label452: sub $0, $s1, $s2
label453: div $s1, $s1
label454: srav $s1, $s5, $0
label455: addu $s5, $s1, $s5
label456: multu $s2, $s4
label457: or $s2, $s3, $0
label458: and $s5, $s2, $s2
label459: mtlo $s4
label460: mult $s3, $s4
label461: lui $s1, 167
label462: add $s3, $s2, $s4
label463: xori $0, $s2, -4
label464: jal label467
label465: srlv $s2, $s5, $s4
label466: sw $0, 855($0)
label467: lui $s3, 100
label468: xor $s1, $s3, $s3
label469: sub $s3, $0, $s1
label470: ori $0, $s4, 7
label471: sltu $s4, $s5, $s2
label472: bltz $s2, label476
label473: ori $0, $s4, -2
label474: multu $s2, $s5
label475: bgtz $s2, label483
label476: lhu $s1, 1790($0)
label477: blez $s2, label481
label478: lh $0, 769($0)
label479: slti $s5, $0, -3
label480: lb $s5, 2226($0)
label481: lui $s2, 105
label482: blez $s5, label483
label483: lhu $0, 1240($0)
label484: sllv $s3, $s1, $s1
label485: subu $0, $s5, $s1
label486: subu $s1, $s3, $s1
label487: lh $s5, 2532($0)
label488: mult $s2, $0
label489: div $s4, $s1
label490: mfc0 $s1, $14
label491: mtlo $s4
label492: bne $s5, $s3, label499
label493: and $0, $s3, $s3
label494: mfhi $s2
label495: mthi $s1
label496: mult $s2, $s3
label497: srlv $s3, $s4, $s4
label498: bgez $s2, label500
label499: mthi $s4
label500:ori $v0, $zero, 10
wocao: beq $0,$0,wocao
