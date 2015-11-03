#!/bin/bash
./configure --target-list=i386-softmmu,x86_64-softmmu   --prefix=/usr/local/qemu_mym  && make && make install
#./configure --target-list=i386-softmmu,x86_64-softmmu   --prefix=/usr/local/qemu_mym  && make
