#!/usr/bin/python
import sys

#del_mym
#debug_log=open("debug.txt",'w')
#linenb=0
#del_mym



fa=sys.stdin

dict={}
ins_count={}
while True:
    line=fa.readline()
    if not line : break
    words=line.split()
    #del_mym
#    linenb=linenb+1
#    debug_log.write(str(linenb)+'\n') 
    #del_mym
    pid   =words[0].strip() #get pid
    tid   =words[1].strip() #get tid
    tname =words[2].strip() #get tname the awful space has ben fixed by hash_b.py
    pid_tid_tname = pid+' '+tid+' '+tname
    for i in range(3,len(words),2) : #very important for empty block defined
        ins_count[words[i]]=int(words[i+1])
    if dict.has_key(pid_tid_tname):
        xxx=dict[pid_tid_tname]
        for key in ins_count.keys():
            if xxx.has_key(key) :
                xxx[key]+=ins_count[key]
            else:
                xxx[key]=ins_count[key]
        ##dict[pid_tid]=xxx    dict[pid_tid] already changed to xxx
    else:
        dict[pid_tid_tname]=ins_count
    ins_count={}



for key in dict.keys():
    print key,
    for key2 in dict[key].keys():
        print ' '+key2+" "+str(dict[key][key2]),
    print ''
