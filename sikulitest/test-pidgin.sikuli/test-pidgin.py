#!/usr/bin/python
Settings.ActionLogs=1
Settings.InfoLogs=1
Settings.DebugLogs=1

import shutil
import os

f=open("/root/Documents/test-pidgin.sikuli/result",'w')
fp=os.popen("date")
dt=fp.read()
f.write(dt)
f.write("start opening!\n")
myapp=App.open("/usr/bin/pidgin")
wait("1411606690104.png",FOREVER)
fp=os.popen("date")
dt=fp.read()
f.write(dt)
f.write("open finished!\n")
doubleClick("1411606764459.png")
wait("1411606993657.png",FOREVER)
fp=os.popen("date")
dt=fp.read()
f.write(dt)
f.write("start chatting!\n")
type("hello!\n")
wait(5)
img=capture(SCREEN)
fp=os.popen("date")
dt=fp.read()
shutil.move(img,r"/root/Documents/test-pidgin.sikuli/chat"+dt+".png")
type(Key.F4,KeyModifier.ALT)
myapp.close()
fp=os.popen("date")
dt=fp.read()
f.write(dt)
f.write("close finished!\n")
