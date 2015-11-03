#!/usr/bin/python
Settings.ActionLogs=1
Settings.InfoLogs=1
Settings.DebugLogs=1

import shutil
import os

f=open("/root/Documents/test-music.sikuli/result",'w')
fp=os.popen("date")
dt=fp.read()
f.write(dt)
f.write("start opening\n")
myapp=App.open("/usr/bin/lxmusic /root/Documents/test-music.sikuli/sikuli.mp3")
wait("1410925068881.png",FOREVER)
fp=os.popen("date")
dt=fp.read()
f.write(dt)
f.write("open finished\n")
click("1410932116288.png")
fp=os.popen("date")
dt=fp.read()
f.write(dt)
f.write("start music\n")
wait(5)
img=capture(SCREEN)
fp=os.popen("date")
dt=fp.read()
shutil.move(img,r"/root/Documents/test-music.sikuli/play"+dt+".png")
wait("1410932116288.png",FOREVER)
type(Key.F4,KeyModifier.ALT)
