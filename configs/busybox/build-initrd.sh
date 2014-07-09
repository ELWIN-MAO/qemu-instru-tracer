#!/bin/sh
               KERNEL=$(pwd)
               BUSYBOX=/home/frank/busybox-1.22.1
               #LINUX=$(find linux* -maxdepth 0)
               cd $BUSYBOX/_install
               find . |cpio -o --format=newc > $KERNEL/rootfs.img
               cd $KERNEL
               gzip -c rootfs.img >rootfs.img.gz
