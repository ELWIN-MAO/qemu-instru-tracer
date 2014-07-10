#!/bin/bash
/usr/local/qemu_normal/bin/qemu-system-i386  -hda  ./Ubuntu_10.04/Ubuntu.vmdk   -boot d -m 2048 -rtc clock=vm -k en-us -d exec,in_asm -D ./kkk.f
#/usr/local/qemu_normal/bin/qemu-system-i386  -hda  ./Ubuntu_10.04/Ubuntu.vmdk   -boot d -m 2048 -rtc clock=vm -k en-us
logprocess.sh
