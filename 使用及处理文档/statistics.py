#!/usr/bin/python
import sys
log=sys.stdin
#log=open("qemu_log3_zhankai_zhilin.txt")
dict={}
while True:
    line=log.readline()
    if not line : break
    words=line.split()
    opcode=words[1]
    if dict.has_key(opcode):
    	dict[opcode]+=1
    else:
    	dict[opcode]=1

for key in dict.keys():
    print "%s = %d" %(key,dict[key])

