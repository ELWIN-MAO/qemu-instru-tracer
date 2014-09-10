#!/bin/bash
qemu_log_chuli.py  < qemu_log3.txt  > qemu_log3_zhankai.txt
grep "^0x"   qemu_log3_zhankai.txt > qemu_log3_zhankai_zhilin.txt
statistics.py  <  qemu_log3_zhankai_zhilin.txt   > qemu_log3_zhankai_zhilin_statistics.txt
sort -n -k3  qemu_log3_zhankai_zhilin_statistics.txt  > qemu_log3_zhankai_zhilin_statistics_sort.txt
