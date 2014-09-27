#!/usr/bin/python

import sys

fa=sys.stdin


head ="""<html>

<body>

<h4>all insturction statistics:</h4>
<table border="1">
<tr>
  <td>instruction</td>
  <td>i_count</td>
</tr>"""



print  head


while True:
    line=fa.readline()
    if not line : break
    words=line.split()
    print "<tr>"
    print "<td>"+words[0]+"</td>"
    print "<td>"+words[1]+"</td>"
    print "</tr>"

tail='''</table>

</body>
</html>'''

print tail

