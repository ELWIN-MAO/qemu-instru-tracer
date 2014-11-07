#!/usr/bin/python

import sys

log=sys.stdin



line_count=0
file_number=0

f=open("../log_qie_kuai/"+str(file_number)+".log",'w')
while True:
    line=log.readline()
    if not line : break
    line_count+=1
    f.write(line) 
    if (line_count > 45000000 and line.startswith("E") ):
        line_count=0
        file_number+=1
        f.close() 
        f=open("../log_qie_kuai/"+str(file_number)+".log",'w')
