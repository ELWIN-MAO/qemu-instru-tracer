#!/usr/bin/python
Settings.ActionLogs=1
Settings.InfoLogs=1
Settings.DebugLogs=1

import shutil
import os

f=open("/root/Documents/test-video.sikuli/result",'w')
fp=os.popen("date")
dt=fp.read()
f.write(dt)
f.write("start opening\n")
myapp=App.open("/usr/bin/gnome-mplayer /root/Documents/test-video.sikuli/sikuli.mp4")
wait("1410775482387.png",FOREVER)
fp=os.popen("date")
dt=fp.read()
f.write(dt)
f.write("open finished\n")
wait("1410775258248.png",FOREVER)
fp=os.popen("date")
dt=fp.read()
f.write(dt)
f.write("loading finished\n")
img=capture(SCREEN)
fp=os.popen("date")
dt=fp.read()
shutil.move(img,r"/root/Documents/test-video.sikuli/play"+dt+".png")
fp=os.popen("date")
dt=fp.read()
f.write(dt)
f.write("save image finished!\n")
wait("1410852445508.png",FOREVER)
fp=os.popen("date")
dt=fp.read()
f.write(dt)
f.write("play finished!\n")
type(Key.F4,KeyModifier.ALT)
fp=os.popen("date")
dt=fp.read()
f.write(dt)
f.write("close finished!\n")
