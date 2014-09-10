#!/bin/bash
#head -n 90000 log-2014.9.4.txt | ./qemu_log_chuli.py   | grep "^0x" | ./statistics.py  > qemu_log3_zhankai_zhilin_statistics.txt 
./qemu_log_chuli.py < log-2014.9.4.txt  | grep "^0x" | ./statistics.py  > qemu_log3_zhankai_zhilin_statistics.txt
#sort -n -k3  qemu_log3_zhankai_zhilin_statistics.txt  > qemu_log3_zhankai_zhilin_statistics_sort.txt
