#!/usr/bin/python
import sys
log=sys.stdin
dict={}
while True:
    line=log.readline()
    if not line : break
    line=line.strip()
    if dict.has_key(line):
    	dict[line]+=1
    else:
    	dict[line]=1

#for key in dict.keys():
#    print "%s = %d" %(key.strip(),dict[key])

ls=sorted(dict.iteritems(),key=lambda dict:dict[0],reverse=False)

for item in ls:
    print "%s = %d" %(item[0],item[1]) 

