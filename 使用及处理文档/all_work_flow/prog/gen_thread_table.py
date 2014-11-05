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
    <th>tid</th>"""


print head


all_inst=[]
dict={}

while True:
    line=ff.readline()
    if not line : break
    line=line.strip()
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
    dict={}
    for i in range(2,len(words),2):
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

