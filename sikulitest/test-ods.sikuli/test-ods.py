#!/usr/bin/python
Settings.ActionLogs=1
Settings.InfoLogs=1
Settings.Debugs=1

import os

f=open("/root/Documents/test-ods.sikuli/result",'w')
fp=os.popen("date")
dt=fp.read()
f.write(dt)
f.write("start opening!\n")
myapp=App.open("/usr/bin/openoffice4 /root/Documents/test-ods.sikuli/test.ods")
wait("1411546527302.png",FOREVER)
fp=os.popen("date")
dt=fp.read()
f.write(dt)
f.write("open finished!\n")
fp=os.popen("date")
dt=fp.read()
type(dt)
fp=os.popen("date")
dt=fp.read()
f.write(dt)
f.write("write finished!\n")
type('s',KeyModifier.CTRL)
fp=os.popen("date")
dt=fp.read()
f.write(dt)
f.write("save finished!\n")
wait(5)
click("1411546627869.png")
fp=os.popen("date")
dt=fp.read()
f.write(dt)
f.write("close finished!\n")
#type(Key.F4,KeyModifier.ALT)