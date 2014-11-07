#!/usr/bin/python

import sys

#log=sys.stdin
log=open(sys.argv[1],'r')


words=sys.argv[1].split('/')


fa=open(words[-1]+'.a','w')
fb=open(words[-1]+'.b','w')
f_error=open("empty_block.txt",'a')



while True:
    line=log.readline()
    if not line : break
    if line.startswith("Servicing") :
       pass
    if line.startswith("E") :
       fb.write(line)
    if line.startswith("T") :
#      words=line.split()
#      block_id=words[1]
       fa.write(line)  #write T xxxx
       line=log.readline() #read first instrutction in block
       if line.startswith("T") :
           f_error.write(line)  
           exit(1)
       while ( cmp(line,"\n") != 0 and  cmp(line,'')!=0 and line.startswith("0x") ) :
           fa.write(line)
           line=log.readline()
       fa.write(line)  #line=='\n'
fa.close()
fb.close()
f_error.close()
