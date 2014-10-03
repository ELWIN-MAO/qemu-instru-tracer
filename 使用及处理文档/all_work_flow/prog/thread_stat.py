#!/usr/bin/python
import sys

fa=sys.stdin

dict={}
ins_count={}
while True:
    line=fa.readline()
    if not line : break
    words=line.split()
    pid   =words[0].strip() #get pid
    tid   =words[1].strip() #get tid
    pid_tid = pid+' '+tid
    for i in range(2,len(words),2) : #very important for empty block defined
        ins_count[words[i]]=int(words[i+1])
    if dict.has_key(pid_tid):
        xxx=dict[pid_tid]
        for key in ins_count.keys():
            if xxx.has_key(key) :
                xxx[key]+=ins_count[key]
            else:
                xxx[key]=ins_count[key]
        ##dict[pid_tid]=xxx    dict[pid_tid] already changed to xxx
    else:
        dict[pid_tid]=ins_count
    ins_count={}



for key in dict.keys():
    print key,
    for key2 in dict[key].keys():
        print ' '+key2+" "+str(dict[key][key2]),
    print ''
