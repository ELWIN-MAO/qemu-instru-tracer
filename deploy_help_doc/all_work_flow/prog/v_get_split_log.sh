#!/bin/bash

rm -rf ../logfifo
mkfifo ../logfifo

./split2.py  < ../logfifo  & 


/usr/local/qemu_mym/bin/qemu-system-x86_64   -hda  ../lubuntu/mint17-xfce.vmdk  -boot c  -m 2048  -rtc clock=vm -icount shift=7,align=off    -d exec,in_asm -D ../logfifo 

touch ../log_qie_kuai/end  # the log end flag
