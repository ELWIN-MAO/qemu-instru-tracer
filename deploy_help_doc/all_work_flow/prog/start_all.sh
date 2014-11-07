#!/bin/bash
./v_clean.sh
./test_deploy.sh 
# if no test case will return 1

#if no test case will exit 
if [ "$?" != "0" ]
then
exit 1
fi


rm -rf ../logfifo
mkfifo ../logfifo

./split2.py  < ../logfifo  & 


./v_top.sh | tee v_top_log.txt  &  #start log process in background  

echo "$(date "+%Y.%m.%d.%H.%M") qemu start" | tee -a qemu_log.txt

/usr/local/qemu_mym/bin/qemu-system-i386   -hda  ../lubuntu/lubuntu12.04.raw   -boot c  -m 2048  -rtc clock=vm -icount shift=7,align=off    -d exec,in_asm -D ../logfifo 

##cat ../xxxx.ww  >  ../logfifo


touch ../log_qie_kuai/end  # the log end flag
echo "$(date "+%Y.%m.%d.%H.%M") qemu stop" | tee -a qemu_log.txt

wait 
