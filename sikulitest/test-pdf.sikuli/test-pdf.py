#!/usr/bin/python
Settings.ActionLogs=1
Settings.InfoLogs=1
Settings.DebugLogs=1

import os
import shutil

f=open("/root/Documents/test-pdf.sikuli/result",'w')
fp=os.popen("date")
dt=fp.read()
f.write(dt)
f.write("start opening!\n")
myapp=App.open("/usr/bin/evince /root/Desktop/sikuli.pdf")
wait("1410772013609.png",FOREVER)
fp=os.popen("date")
dt=fp.read()
f.write(dt)
f.write("open finished!\n")
wait("1410772230301.png",FOREVER)
fp=os.popen("date")
dt=fp.read()
f.write(dt)
f.write("load finished!\n")
img=capture(SCREEN)
fp=os.popen("date")
dt=fp.read()
shutil.move(img,r"/root/Documents/test-pdf.sikuli/view"+dt+".png")
fp=os.popen("date")
dt=fp.read()
f.write(dt)
f.write("take image finished!\n")
type(Key.F4,KeyModifier.ALT)
fp=os.popen("date")
dt=fp.read()
f.write(dt)
f.write("close finished!\n")

