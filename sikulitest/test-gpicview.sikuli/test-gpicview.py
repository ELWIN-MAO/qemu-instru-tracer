#!/usr/bin/python
Settings.ActionLogs=1
Settings.InfoLogs=1
Settings.DebugLogs=1

import os
import shutil

f=open("/root/Documents/test-gpicview.sikuli/result",'w')
fp=os.popen("date")
dt=fp.read()
f.write(dt)
f.write("start opening!\n")
myapp=App.open("/usr/bin/gpicview /root/Documents/test-gpicview.sikuli/sikuli.png")
fp=os.popen("date")
dt=fp.read()
f.write(dt)
f.write("open finished!\n")
wait("1410837809022.png",FOREVER)
img=capture(SCREEN)
fp=os.popen("date")
dt=fp.read()
shutil.move(img,r"/root/Documents/test-gpicview.sikuli/view"+dt+".png")
fp=os.popen("date")
dt=fp.read()
f.write(dt)
f.write("save image finished!\n")
wait(3)
type(Key.F4,KeyModifier.ALT)
fp=os.popen("date")
dt=fp.read()
f.write(dt)
f.write("close finished!\n")
