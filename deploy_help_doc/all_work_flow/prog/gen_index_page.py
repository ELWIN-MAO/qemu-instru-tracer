#!/usr/bin/python

import sys,time,datetime


def Caltime(date1,date2):
    date_1=time.strptime(date1,"%Y.%m.%d.%H.%M")
    date_2=time.strptime(date2,"%Y.%m.%d.%H.%M")
    datetime_1=datetime.datetime(date_1[0],date_1[1],date_1[2],date_1[3],date_1[4])
    datetime_2=datetime.datetime(date_2[0],date_2[1],date_2[2],date_2[3],date_2[4])
    return datetime_2-datetime_1

fa=sys.stdin

line=fa.readline()
words=line.split()
time1=words[0]

while True:
    line=fa.readline()
    if not line : break
    words=line.split()
    time2=words[0]

delta_time=Caltime(time1,time2)


head ="""<html>
<body>

<h3>test result index:</h3>

<ol>
  <li><a href="v_all_sort.html">all intstruction statistics</a> </li>
  <li><a href="v_all_thread.thst.html">all thread statistics</a> </li>"""

print head



print "<li>time used:"+str(delta_time)+"</li>"

print """<li><a href="./">details</a> </li>"""

print """</ol>

</body>
</html>"""
