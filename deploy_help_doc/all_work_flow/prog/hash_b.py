#!/usr/bin/python
import sys
log=sys.stdin

dict={}

while True:
    line=log.readline()
    if not line : break
    words=line.split()
    bid=int(words[1],16) #get block id
    if (len(words) == 6 ): #if there is no tname then use pid instead of tname
#        print "error",
#        print line 
        tt_pid=words[2]
        words.insert(4,tt_pid)
    if (len(words) > 7 ):
        tname =words[4:-2] #get tname
        tname ="_".join(tname)#replace the awful space
    bid=bid/120000
    strbid=('%08x.hshb' %(bid) )
    if dict.has_key(strbid):
        pass
    else:
        dict[strbid]=open(strbid,'a')
    new_line=" ".join(words)    #create the fixed new line
    dict[strbid].write(new_line+"\n") #write new line

for key in dict.keys():
    dict[key].close()




    

