#!/usr/bin/python
import sys
log=sys.stdin
dict={}
while True:
    line=log.readline()
    if not line : break
    words=line.split("=")
    bid_pid_tid =words[0] 
    scount=int(words[1].strip())#get subcount

    if dict.has_key(bid_pid_tid):
    	dict[bid_pid_tid]+=scount
    else:
    	dict[bid_pid_tid]=scount

for key in dict.keys():
    print "%s = %d" %(key,dict[key])

