#!/usr/bin/python

import sys
ff=open("instru_set.txt",'r')

fa=sys.stdin


head ="""<html>

<body>

<h4>all thread statistics:</h4>
<table border="1">

<tr>
    <th>pid</th>
    <th>tid</th>
    <th>tname</th>"""


print head


all_inst=[]
dict={}

nmflg=True

if( cmp(sys.argv[1],"normal")==0  ):
    nmflg=True
else:
    nmflg=False

while True:
    line=ff.readline()
    if not line : break
    line=line.strip()
    if ((not nmflg)  and line.startswith("expptn")):
        all_inst.append(line)
    if (nmflg and  (not line.startswith("expptn") )):
        all_inst.append(line)
all_inst.sort()

for opcode in all_inst:
    print "<th>"+opcode+"</th>"

print "</tr>"





while True:
    line=fa.readline()
    if not line : break
    words=line.split()
    print "<tr>"
    print "<td>"+words[0]+"</td>"
    print "<td>"+words[1]+"</td>"
    print "<td>"+words[2]+"</td>"
    dict={}
    for i in range(3,len(words),2):
        dict[words[i]]=words[i+1]
    for opcode in all_inst:
        if dict.has_key(opcode):
            print "<td>"+str(dict[opcode])+"</td>"
        else:
            print "<td> 0 </td>"
    print "</tr>"

tail='''</table>

</body>
</html>'''

print tail

