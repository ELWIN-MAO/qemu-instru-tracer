#!/usr/bin/python

import sys
from instru_set import *
fa=sys.stdin

in_set=[]
in_set=in_set+all_inst


while True:
    line=fa.readline()
    if not line : break
    in_set.append(line.strip())

in_set.sort()

for opcode in in_set :
    print '"'+opcode+'",',
