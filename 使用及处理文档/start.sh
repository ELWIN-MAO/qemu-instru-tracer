#!/bin/bash

#./log.sh &

#/usr/local/qemu_normal/bin/qemu-system-i386  -hda  ./Ubuntu_10.04/Ubuntu.vmdk   -boot d -m 2048 -rtc clock=rt -k en-us -d exec,in_asm -D ./log.txt
#/usr/local/qemu_normal/bin/qemu-system-i386  -hda  ./Ubuntu_10.04/Ubuntu.vmdk   -boot d -m 2048 -rtc clock=rt -k en-us


#/usr/local/bin/qemu-system-i386  -hda  ./Ubuntu_10.04/Ubuntu.vmdk   -boot d -m 2048 -rtc clock=rt -k en-us -d exec,in_asm -D ./log.txt
/usr/local/bin/qemu-system-i386  -hda  ./Ubuntu_10.04/Ubuntu.vmdk   -boot d -m 2048 -rtc clock=rt -k en-us

#logprocess.sh
