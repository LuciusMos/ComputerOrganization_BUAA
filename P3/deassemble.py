#在本文件相同路径下存放十六进制机器码文件hex.txt，每条语句一行。
#直接运行python deassemble.py即可，目前只支持P3课下的8条指令。
def hex2bin(hexfile): 
    f=open(hexfile,"r")
    lines = f.readlines()
    binlines=[]
    binstrs=[]
    for line in lines:
        line = line.split("\n")[0]
        num="0x"+line
        #print(num)
        #print(bin(int(num,16)))
        binlines.append(str(bin(int(num,16))))
    for binstr in binlines:
        binstr=binstr.split("b")[-1];
        i=len(binstr)
        while (i<32):
            binstr = "0" + binstr
            i = len(binstr)
        binstrs.append(binstr)
    for binstr in binstrs:
        print(binstr)
    return binstrs
def bin2signdec(string): #16为有符号二进制数转换成十进制
    udec = int(string,2)
    strdec = str(udec)
    if(string[0]=="1"):
        dec = (~(udec)+1)%65536
        strdec = "-" + str(dec)
    return strdec
#__main__
binstrs = hex2bin("hex.txt")
instructions = []
for binstr in binstrs:
    fields = [];
    fields.append(binstr[0:6])
    fields.append(binstr[6:11])
    fields.append(binstr[11:16])
    fields.append(binstr[16:21])
    fields.append(binstr[21:26])
    fields.append(binstr[26:32])
    if(fields[0]=="000000"):
        if(fields[5]=="100001"): #ADDU
            instruction = "addu"
            rs = str(int(fields[1],2))
            rt = str(int(fields[2],2))
            rd = str(int(fields[3],2))
            instruction = instruction + " $" + rd + " $" + rs + " $" + rt
            instructions.append(instruction)
        elif(fields[5]=="100011"): #SUBU
            instruction = "subu"
            rs = str(int(fields[1],2))
            rt = str(int(fields[2],2))
            rd = str(int(fields[3],2))
            instruction = instruction + " $" + rd + " $" + rs + " $" + rt
            instructions.append(instruction)
        elif(fields[5]=="000000"): #nop
            instructions.append("nop")
        else:
            instructions.append(binstr)
    elif(fields[0]=="001101"):  #ORI
        instruction = "ori"
        rs = str(int(fields[1],2))
        rt = str(int(fields[2],2))
        immediate = str(int(fields[3]+fields[4]+fields[5],2))
        instruction = instruction + " $" + rt + " $" + rs + " " + immediate
        instructions.append(instruction)
    elif(fields[0]=="100011"): #lw
        instruction = "lw"
        base = str(int(fields[1],2))
        rt = str(int(fields[2],2))
        offset = bin2signdec(fields[3]+fields[4]+fields[5])
        instruction = instruction + " $" + rt + " " + offset + "($" + base + ")"
        instructions.append(instruction)
    elif(fields[0]=="101011"): #sw
        instruction = "sw"
        base = str(int(fields[1],2))
        rt = str(int(fields[2],2))
        offset = bin2signdec(fields[3]+fields[4]+fields[5])
        instruction = instruction + " $" + rt + " " + offset + "($" + base + ")"
        instructions.append(instruction)
    elif(fields[0]=="001111"): #lui
        instruction = "lui"
        rt = str(int(fields[2],2))
        immediate = str(int(fields[3]+fields[4]+fields[5],2))
        instruction = instruction + " $" + rt + " " + immediate
        instructions.append(instruction)
    elif(fields[0]=="000100"): #beq
        instruction = "beq"
        rs = str(int(fields[1],2))
        rt = str(int(fields[2],2))
        offset = bin2signdec(fields[3]+fields[4]+fields[5])
        instruction = instruction + " $" + rs + " $" + rt + " " + offset
        instructions.append(instruction)
    else:
        instructions.append(binstr)

for instruction in instructions:
    print(instruction)
    

        
