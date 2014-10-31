#!/usr/bin/python
Settings.ActionLogs=1
Settings.InfoLogs=1
Settings.DebugLogs=1

import os
import sys


global f
f=open("/root/Documents/test.sikuli/result",'w')
global fp
def execute(fname,text):
	fp=os.popen("date")
	dt=fp.read()
	f.write(dt)
	f.write("start double click\n")
	App.open("/usr/bin/leafpad "+fname)
	#doubleClick("1409022095636.png")
	fp=os.popen("date")
	dt=fp.read()
	f.write(dt)
	f.write("double click finished!\n")
	wait("1409021561538.png",FOREVER)
	fp=os.popen("date")
	dt=fp.read()
	f.write(dt)
	f.write("wait finished!\n")
	#wait("1408684218113.png")
	#myApp.focus()
	type(text)
	fp=os.popen("date")
	dt=fp.read()
	f.write(dt)
	f.write("type finished!\n")
	type('s',KeyModifier.CTRL)
	fp=os.popen("date")
	dt=fp.read()
	f.write(dt)
	f.write("save finished!\n")
	click("1408954653434.png")
	fp=os.popen("date")
	dt=fp.read()
	f.write(dt)
	f.write("close finished!\n")
	#type("test")
	#click("1408945614073.png")
	#click("1408942642605.png")
	#type("/root/Desktop")
	#myApp.close()

fp=os.popen("date")
date1=fp.read()
execute("/root/Documents/test.sikuli/test",date1)

fp=os.popen("date")
date2=fp.read()
execute("/root/Documents/test.sikuli/test2",date2)
