#!/usr/bin/python
import sys
log=sys.stdin

dict={}

while True:
    line=log.readline()
    if not line : break
    words=line.split()
    pid=int(words[0],16) #get pid
    pid=pid&0xfff40000
    strpid=('%x.hash' %(pid) )
    if dict.has_key(strpid):
        pass
    else:
        dict[strpid]=open(strpid,'a')
    dict[strpid].write(line)

for key in dict.keys():
    dict[key].close()
