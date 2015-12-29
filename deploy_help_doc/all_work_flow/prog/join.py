#!/usr/bin/python
import sys

fa=open(sys.argv[1],'r')
fb=open(sys.argv[2],'r')
fbe=open('fb_error.txt','a')
fae=open('fa_error.txt','a')
words=sys.argv[1].split('.')
tt=words[0]+".join"

f_join=open(tt,'w')

dict={}
ins_count={}
while True:
    line=fa.readline()
    if not line : break
    words=line.split() 
    block_id=words[0] #get block_id
    for i in range(1,len(words),2) :  #is very important for process empty block define
        ins_count[words[i]]=int(words[i+1])
    if dict.has_key(block_id):
        fae.write(block_id+'\n') 
    else:
    	dict[block_id]=ins_count
    ins_count={}

fa.close()
fae.close()

while True:
    line=fb.readline()
    if not line : break
    words=line.split()
    block_id=words[1] #get block_id
    pid   =words[2] #get pid
    tid   =words[3] #get tid
    tname =words[4] #get tname the awful space has ben fixed by hash_b.py
    b_count=int(words[-1]) #get b_count
    if dict.has_key(block_id):
        f_join.write(pid+' '+tid+' '+tname)  #only out put pid tid wich has a valid block_id
        ins_count=dict[block_id]
        for key in ins_count.keys():
             f_join.write(' '+key+" "+str(b_count*ins_count[key]))
        f_join.write('\n')
    else:
        fbe.write(block_id+'\n') 
fb.close()
fbe.close()
f_join.close()
