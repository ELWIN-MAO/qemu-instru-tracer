#!/bin/bash

./v_clean.sh

rm ../logfifo
mkfifo ../logfifo

./split2.py  < ../logfifo  & 


./v_top.sh | tee v_top_log.txt  &  #start log process in background  



#/usr/local/qemu_normal/bin/qemu-system-i386   -hda  ./lubuntu12.04_2014.8.18/lubuntu12.04.raw  -boot c  -m 2048   -k en-us 
#/usr/local/qemu_normal/bin/qemu-system-i386   -hda  ./lubuntu12.04_2014.8.18/lubuntu12.04.raw   -boot c  -m 2048  -k en-us  -rtc clock=vm -icount 7    -d exec,in_asm -D ./log-zml.txt


#/usr/local/bin/qemu-system-i386   -hda  ./lubuntu12.04_2014.8.18/lubuntu12.04.raw  -boot c  -m 2048   -k en-us -rtc clock=host
#/usr/local/bin/qemu-system-i386   -hda  ./lubuntu12.04_2014.8.18/lubuntu12.04.raw   -boot c  -m 2048  -k en-us  -rtc clock=vm -icount 7    -d exec,in_asm -D ./$(date "+%Y.%m.%d.%H.%M").log
#/home/myming/qemu-instru-tracer-master/qemu-instru-tracer-master/i386-softmmu/qemu-system-i386   -hda  ./lubuntu12.04_2014.8.18/lubuntu12.04.raw   -boot c  -m 2048  -k en-us
#/home/myming/qemu-instru-tracer-master/qemu-instru-tracer-master/i386-softmmu/qemu-system-i386   -hda  ./lubuntu12.04_2014.8.18/lubuntu12.04.raw   -boot c  -m 2048  -k en-us  -rtc clock=vm -icount 7    -d exec,in_asm -D ./$(date "+%Y.%m.%d.%H.%M").log

#/home/myming/nnn/qemu-instru-tracer/i386-softmmu/qemu-system-i386   -hda  ../lubuntu12.04_2014.8.18/lubuntu12.04.raw   -boot c  -m 2048  -k en-us  -rtc clock=vm -icount 7    -d exec,in_asm -D ../logfifo 
/home/myming/nnn/qemu-instru-tracer/i386-softmmu/qemu-system-i386   -hda  ../lubuntu12.04_2014.8.18/lubuntu12.04.raw   -boot c  -m 2048  -rtc clock=vm -icount shift=7,align=off    -d exec,in_asm -D ../logfifo 
#/home/myming/qemu-instru-tracer-master/qemu-instru-tracer-master/i386-softmmu/qemu-system-i386   -hda  ../lubuntu12.04_2014.8.18/lubuntu12.04.raw   -boot c  -m 2048  -k en-us  -rtc clock=vm -icount 7    -d exec,in_asm -D ../logfifo 

###cat ../xxxx.ww  >  ../logfifo


touch ../log_qie_kuai/end  # the log end flag

wait 
