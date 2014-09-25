#!/usr/bin/python
import sys

fa=sys.stdin

dict={}
ins_count=[]
while True:
    line=fa.readline()
    if not line : break
    words=line.split()
#    if (len(words) <=4) : continue
    pid   =words[0].strip() #get pid
    tid   =words[1].strip() #get tid
    pid_tid = pid+' '+tid
    for i in range(2,len(words)) :
        ins_count.append(int(words[i]))
    if dict.has_key(pid_tid):
        for i in range(0,len(words)-2) :
            dict[pid_tid][i]+=ins_count[i]
    else:
    	dict[pid_tid]=ins_count
    ins_count=[]


for key in dict.keys():
    print key,
    for nu in dict[key]:
        print ' '+str(nu),
    print ''
