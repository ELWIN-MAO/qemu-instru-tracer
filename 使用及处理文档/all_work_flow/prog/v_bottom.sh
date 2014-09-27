#!/bin/bash

for m_file in `ls -v   *.b`
do
./stat_hash_b.py  <  ${m_file} > ${m_file}.stat
done


for m_file in `ls -v  *.a`
do
m=${m_file%.*}
./join.py   ${m_file}    ${m}.b.stat
done


for m_file in `ls -v  *.join`
do
./thread_stat.py  < $m_file   > $m_file.subth
done


for m_file in `ls -v  *.join.subth`
do
./hash_thread.py  < $m_file
done


for m_file in `ls -v  *.hash`
do
./thread_stat.py  < $m_file  > $m_file.thd
done


cat `ls -v *.hash.thd` | sort  -k 1 -k 2  > all_thread.thst 

./proc_all.py < all_thread.thst   > v_all.txt

sort -nr -k 2 v_all.txt  > v_all_sort.txt

echo "bottom finish!"
