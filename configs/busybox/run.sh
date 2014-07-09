#!/bin/sh

/home/frank/qemu-2.0.0/i386-softmmu/qemu-system-i386 -kernel /home/frank/linux-3.5.4/x86_32/bzImage -initrd rootfs.img -append "root=/dev/ram rdinit=sbin/init" -d func -D log
