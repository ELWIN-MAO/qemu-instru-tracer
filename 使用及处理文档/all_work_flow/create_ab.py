#!/usr/bin/python

import sys

#log=sys.stdin
log=open(sys.argv[1],'r')


m_queue=""


words=sys.argv[1].split('/')


fa=open('a'+words[-1],'w')
fb=open('b'+words[-1],'w')



while True:
    line=log.readline()
    if not line : break
    if line.startswith("0x"):
    	m_queue+=line   #add line to queue
    if line.startswith("T"):  #start with Trace
        if len(m_queue)>0:      #is a new block 
            fa.write(m_queue)        #print this block to a 
            fa.write(line)           #print this block to a
            fb.write(line)           #record in b
            m_queue=""              #clear queue  
        else:                       #is a old block   
            fb.write(line)
            m_queue=""

fa.close() 
fb.close() 
