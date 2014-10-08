#!/bin/bash
rm -rf /root/new/bbb.txt
echo "start" > /root/new/bbb.txt
date >> /root/new/bbb.txt
/usr/local/runScript -r /root/Documents/test-ods.sikuli
date >> /root/new/bbb.txt
echo "stop" >> /root/new/bbb.txt
lxterminal &
#shutdown -h now