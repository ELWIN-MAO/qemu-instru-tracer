#!/usr/bin/python
import sys
log=sys.stdin
#log=open("qemu_log3.txt")
m_queue=""
dict={}
while True:
    line=log.readline()
    if not line : break
    m_queue+=line   #add line to queue
    if line.startswith("Trace"):
        words=line.split() 
        serial=words[1].strip() #get block serial  number
        if len(m_queue)>42 :      #is a new block #should be care
            print m_queue        #print this block
            dict[serial]=m_queue    #insert block into dictionary
            m_queue=""              #clear queue  
        else:                       #is a old block   
            print dict[serial]      #print the old block from dictionary
            m_queue=""
