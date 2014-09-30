#!/usr/bin/python

import sys
from instru_set import *


fa=sys.stdin


head ="""<html>

<body>

<h4>all thread statistics:</h4>
<table border="1">

<tr>
    <th>pid</th>
    <th>tid</th>"""


print head


for opcode in all_inst:
    print "<th>"+opcode+"</th>"

print "</tr>"





while True:
    line=fa.readline()
    if not line : break
    words=line.split()
    print "<tr>"
    for item in words :
        print "<td>"+item+"</td>"
    print "</tr>"

tail='''</table>

</body>
</html>'''

print tail

