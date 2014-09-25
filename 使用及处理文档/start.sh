#!/bin/bash

#./v_top.sh &  #start log process in background  


#/usr/local/qemu_normal/bin/qemu-system-i386   -hda  ./lubuntu12.04_2014.8.18/lubuntu12.04.raw  -boot c  -m 2048   -k en-us 
#/usr/local/qemu_normal/bin/qemu-system-i386   -hda  ./lubuntu12.04_2014.8.18/lubuntu12.04.raw   -boot c  -m 2048  -k en-us  -rtc clock=vm -icount 7    -d exec,in_asm -D ./log-zml.txt


#/usr/local/bin/qemu-system-i386   -hda  ./lubuntu12.04_2014.8.18/lubuntu12.04.raw  -boot c  -m 2048   -k en-us -rtc clock=host
#/usr/local/bin/qemu-system-i386   -hda  ./lubuntu12.04_2014.8.18/lubuntu12.04.raw   -boot c  -m 2048  -k en-us  -rtc clock=vm -icount 7    -d exec,in_asm -D ./$(date "+%Y.%m.%d.%H.%M").log
#/home/myming/qemu-instru-tracer-master/qemu-instru-tracer-master/i386-softmmu/qemu-system-i386   -hda  ./lubuntu12.04_2014.8.18/lubuntu12.04.raw   -boot c  -m 2048  -k en-us
/home/myming/qemu-instru-tracer-master/qemu-instru-tracer-master/i386-softmmu/qemu-system-i386   -hda  ./lubuntu12.04_2014.8.18/lubuntu12.04.raw   -boot c  -m 2048  -k en-us  -rtc clock=vm -icount 7    -d exec,in_asm -D ./$(date "+%Y.%m.%d.%H.%M").log

#/home/myming/qemu-instru-tracer-master/qemu-instru-tracer-master/i386-softmmu/qemu-system-i386   -hda  ./lubuntu12.04_2014.8.18/lubuntu12.04.raw   -boot c  -m 2048  -k en-us  -rtc clock=vm -icount 7    -d exec,in_asm -D  0.log 


#touch end  # the log end flag
