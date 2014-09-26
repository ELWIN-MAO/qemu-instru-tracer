#!/usr/bin/python

import sys
from instru_set import *

error_opf=open('error_opcode.txt','a')

log=sys.stdin
m_queue=[]



def tongji(m_queue2) :
    dict={}
    for opcode in all_inst :
	dict[opcode]=0   
    for line2 in m_queue2 :
        words2=line2.split()
        index=1
        opcode=words2[index].strip()
        while (opcode=="rep" or opcode=="repnz" or opcode=="repz" or opcode=="addr32" or opcode =="lock"):
            index+=1 
            opcode=words2[index].strip()
        if opcode=="fnsetpm(287":
            opcode="fnsetpm"
        if dict.has_key(opcode):
            dict[opcode]+=1
        else: 
            error_opf.write(opcode+'\n')
    for opcode in all_inst :
        print " "+str(dict[opcode]),      
    print ''






while True:
    line=log.readline()
    if not line : break
    if line.startswith("0x"):
        m_queue.append(line)   #add line to queue
    if line.startswith("T"):  #start with Trace
        words=line.split()
        serial=words[1].strip() #get block serial  number
#        print m_queue
        print serial,
        tongji(m_queue)
        m_queue=[]              #clear queue

