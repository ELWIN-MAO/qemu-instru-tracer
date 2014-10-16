#!/usr/bin/python

import sys


log=sys.stdin
m_queue=[]



def tongji(m_queue2) :
    dict={}
    for line2 in m_queue2 :
        words2=line2.split()
        index=1
        opcode=words2[index]
        while (opcode=="rep" or opcode=="repnz" or opcode=="repz" or opcode=="addr32" or opcode =="lock"):
            index+=1 
            opcode=words2[index]
        if opcode=="fnsetpm(287":
            opcode="fnsetpm"
        if dict.has_key(opcode):
            dict[opcode]+=1
        else: 
            dict[opcode]=1
    for key in dict.keys():
        print " %s %d" %(key,dict[key]),
    print ''



while True:
    line=log.readline()
    if not line : break
    if line.startswith("T"):  #start with Trace
        words=line.split()
        serial=words[1] #get block serial  number
        line=log.readline()
        while ( cmp(line,"\n") != 0 and  cmp(line,'')!=0 and line.startswith("0x") ) :
            m_queue.append(line)
            line=log.readline()
        print serial,
#        print m_queue
        tongji(m_queue)
        m_queue=[]              #clear queue
