#!/usr/bin/python
import sys
from instru_set import *

fa=sys.stdin

all_ins_count=[0]*len(all_inst) #number of insturction set 

while True:
    line=fa.readline()
    if not line : break
    words=line.split()
    for i in range(2,len(words)) :
        all_ins_count[i-2]+=int(words[i])


for nu in all_ins_count:
    print str(nu)+' ',
print ''
