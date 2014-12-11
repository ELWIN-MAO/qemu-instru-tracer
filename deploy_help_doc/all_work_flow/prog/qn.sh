#!/bin/bash
#/usr/local/qemu_mym/bin/qemu-system-i386   -hda  ../lubuntu/lubuntu12.04.raw  -boot c  -m 1024   -k en-us 
#/usr/local/qemu_mym/bin/qemu-system-i386   -hda  ../lubuntu/lubuntu12.04.raw   -boot c  -m 1024  -rtc clock=host
#/usr/local/qemu_mym/bin/qemu-system-i386   -hda  ../lubuntu/lubuntu12.04.raw   -boot c  -m 1024  -rtc clock=rt
/usr/local/qemu_mym/bin/qemu-system-i386   -hda  ../lubuntu/lubuntu12.04.raw   -boot c  -m 1024  -rtc clock=vm -icount shift=1,align=off
#/usr/local/qemu_mym/bin/qemu-system-i386   -hda  ../lubuntu/lubuntu12.04.raw   -boot c  -m 1024  -rtc clock=vm -icount shift=4,align=off
#/usr/local/qemu_mym/bin/qemu-system-i386   -hda  ../lubuntu/lubuntu12.04.raw   -boot c  -m 1024  -rtc clock=vm -icount shift=7,align=off
#/usr/local/qemu_mym/bin/qemu-system-i386   -hda  ../lubuntu/lubuntu12.04.raw   -boot c  -m 1024  -rtc clock=vm -icount shift=1,align=off -d in_asm,exec -D /mnt/freenas-intel/log.log

#/usr/local/qemu_mym/bin/qemu-system-i386   -hda  ../lubuntu/lubuntu12.04.raw   -boot c  -m 1024  -rtc clock=vm -icount shift=7,align=off -d in_asm,exec -D /mnt/freenas-intel/log.log

