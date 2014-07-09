#!/bin/sh

##./insertintodb.rb $4

KERNEL=$(pwd)
BUSYBOX=/home/frank/busybox-1.22.1
cd $BUSYBOX/_install

cat $3>>etc/init.d/rcS

find . |cpio -o --format=newc > $KERNEL/rootfs.img

cd $KERNEL

/home/frank/qemu-2.0.0/i386-softmmu/qemu-system-$2 -kernel /home/frank/linux-3.5.4/x86_32/bzImage -initrd rootfs.img -append "root=/dev/ram rdinit=sbin/init" -d in_asm -D log1

./parse.rb testcase testresult
