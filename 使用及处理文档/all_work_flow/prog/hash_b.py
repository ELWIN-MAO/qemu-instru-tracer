#!/usr/bin/python
import sys
log=sys.stdin

dict={}

while True:
    line=log.readline()
    if not line : break
    words=line.split()
    bid=int(words[1],16) #get
    bid=bid/120000
    strbid=('%x.b' %(bid) )
    if dict.has_key(strbid):
        pass
    else:
        dict[strbid]=open(strbid,'a')
    dict[strbid].write(line)

for key in dict.keys():
    dict[key].close()




    

