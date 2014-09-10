#!/usr/bin/python

import sys
import MySQLdb

log=sys.stdin
#log=open("qemu_log3.txt")
m_queue=""

aa=""

conn=MySQLdb.connect(host='localhost',user='root',passwd='',port=3306)
cur=conn.cursor()

conn.select_db('instruction')

cur.execute('delete from stat')

while True:
    line=log.readline()
    if not line : break
    m_queue+=line   #add line to queue
    if line.startswith("T"):  #start with Trace
        words=line.split()
        serial=words[1].strip() #get block serial  number
        if len(m_queue)>19 :      #is a new block #should be care
            print m_queue,        #print this block  
            cur.execute('insert into stat values(%s,%s)',(serial,m_queue)) #insert block into dictionary
            conn.commit()
            m_queue=""              #clear queue
              
        else:                       #is a old block 
            cur.execute('select block from stat where block_id = %s',serial)
            results=cur.fetchall()
            for row in results:
            	aa=row[0]
            	print aa,         #print the old block from dictionary     
            m_queue=""

cur.close()
conn.close()                            
