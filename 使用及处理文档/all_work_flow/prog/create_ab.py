#!/usr/bin/python

import sys

#log=sys.stdin
log=open(sys.argv[1],'r')


m_queue=""


words=sys.argv[1].split('/')


fa=open(words[-1]+'.a','w')
fb=open(words[-1]+'.b','w')



while True:
    line=log.readline()
    if not line : break
    if line.startswith("0x"):
    	m_queue+=line   #add line to queue
    if line.startswith("T"):  #start with Trace
        if len(m_queue)>0:      #is a new block 
            pass
        else:                       #is a blank block   
            print "error "+line
        fa.write(m_queue)        #print this block to a 
        fa.write(line)           #print this block to a
        m_queue=""              #clear queue  
    if line.startswith("E"):
        fb.write(line)
fa.close() 
fb.close() 
