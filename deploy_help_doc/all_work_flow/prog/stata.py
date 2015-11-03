#!/usr/bin/python

import sys
import re

log=sys.stdin
m_queue=[]


logb=open(sys.argv[1],'r')

explt=[]

while True:
    line3=logb.readline()
    if not line3 : break
    explt.append(line3.strip())
logb.close()



def expcount(m_queue3,aexplt) : 
    i=0
    for exppt in aexplt :
        i=i+1
        patn = re.compile(exppt)
        expresult=patn.findall(m_queue3)
        print " %s %d" %("expptn"+str(i),len(expresult)),


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
    queue_to_string = "".join(m_queue2)
    expcount(queue_to_string,explt)
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
