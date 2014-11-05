#!/usr/bin/python
import sys

fa=sys.stdin
f=open("instru_set.txt",'w')


all_ins_count={} 

while True:
    line=fa.readline()
    if not line : break
    words=line.split()
    for i in range(2,len(words),2) :
        if all_ins_count.has_key(words[i]) :
            all_ins_count[words[i]]+=int(words[i+1])
        else:
            all_ins_count[words[i]]=int(words[i+1])

for key in all_ins_count.keys():
    f.write(key+"\n")
    print key+' '+str(all_ins_count[key])
