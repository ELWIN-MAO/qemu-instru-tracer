#!/usr/bin/python
import sys

fa=open(sys.argv[1],'r')
fb=open(sys.argv[2],'r')
fbe=open('fb_error.txt','a')
fae=open('fa_error.txt','a')
tt=sys.argv[1][0:-1]+'join'
f_join=open(tt,'w')

dict={}
ins_count=[]
while True:
    line=fa.readline()
    if not line : break
    words=line.split() 
    block_id=words[0] #get block_id
    for i in range(1,len(words)) :
        ins_count.append(int(words[i]))
    if dict.has_key(block_id):
        fae.write(block_id+'\n') 
    else:
    	dict[block_id]=ins_count
    ins_count=[]

fa.close()
fae.close()

while True:
    line=fb.readline()
    if not line : break
    words=line.split()
    block_id=words[1].strip() #get block_id
    pid   =words[2].strip() #get pid
    tid   =words[3].strip() #get tid
    b_count=int(words[5]) #get b_count
    if dict.has_key(block_id):
        f_join.write(pid+' '+tid)  #only out put pid tid wich has a valid block_id
        ins_count=dict[block_id]
        for i_count in ins_count :
             f_join.write(' '+str(b_count*i_count))
        f_join.write('\n')
    else:
        fbe.write(block_id+'\n') 
fb.close()
fbe.close()
f_join.close()
