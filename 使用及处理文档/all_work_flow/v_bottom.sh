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


for m_file in `ls -v  *.hash.thd`
do
./proc_all.py  < $m_file  > v_all.txt
done
