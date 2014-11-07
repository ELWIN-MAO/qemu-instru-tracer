#!/usr/bin/python
import sys
log=sys.stdin
dict={}
while True:
    line=log.readline()
    if not line : break
    words=line.split("=")
    bid_pid_tid_tname =words[0].strip() 
    scount=int(words[1].strip())#get subcount

    if dict.has_key(bid_pid_tid_tname):
    	dict[bid_pid_tid_tname]+=scount
    else:
    	dict[bid_pid_tid_tname]=scount

for key in dict.keys():
    print "%s = %d" %(key,dict[key])

