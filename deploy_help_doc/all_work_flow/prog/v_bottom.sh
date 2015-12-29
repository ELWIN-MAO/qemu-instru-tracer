#!/bin/bash

echo "$(date "+%Y.%m.%d.%H.%M") bottom start"

for m_file in `ls -v   *.hshb`
do
echo "$(date "+%Y.%m.%d.%H.%M") stat_hash_b  ${m_file}   ${m_file}.stat"
./stat_hash_b.py  <  ${m_file} > ${m_file}.stat
#del_mym
rm -rf ${m_file}
done


for m_file in `ls -v  *.hsha`
do
m=${m_file%.*}
echo "$(date "+%Y.%m.%d.%H.%M") join ${m_file} ${m}.hshb.stat"
./join.py   ${m_file}    ${m}.hshb.stat
done



sort fa_error.txt |uniq > fa_error_uniq.txt
sort fb_error.txt |uniq > fb_error_uniq.txt


for m_file in `ls -v  *.join`
do
echo "$(date "+%Y.%m.%d.%H.%M") thread_stat   $m_file  $m_file.subth"
./thread_stat.py  < $m_file   > $m_file.subth
rm -rf $m_file
done


for m_file in `ls -v  *.join.subth`
do
echo "$(date "+%Y.%m.%d.%H.%M") hash_thread $m_file"
./hash_thread.py  < $m_file
rm -rf $m_file
done


for m_file in `ls -v  *.hshth`
do
echo "$(date "+%Y.%m.%d.%H.%M") thread_stat     $m_file   $m_file.thd"
./thread_stat.py  < $m_file  > $m_file.thd
rm -rf $m_file
done


cat `ls -v *.hshth.thd` | sort  -k 1 -k 2 -k 3 > v_all_thread.thst 

rm -rf *.hshth.thd


echo "$(date "+%Y.%m.%d.%H.%M") proc_all  v_all_thread.thst v_all.txt"
./proc_all.py < v_all_thread.thst   > v_all.txt


sort -k 2nr -k 1 v_all.txt  > v_all_sort.txt

rm -rf ./v_all.txt

echo "$(date "+%Y.%m.%d.%H.%M") gen_thread_table"
./gen_thread_table.py  < v_all_thread.thst  > v_all_thread.thst.html normal


echo "$(date "+%Y.%m.%d.%H.%M") gen_exp_thread_table"
./gen_thread_table.py  < v_all_thread.thst  > v_exp_all_thread.thst.html exp

rm -rf ./v_all_thread.thst

echo "$(date "+%Y.%m.%d.%H.%M") gen_all_table"
./gen_all_table.py  < v_all_sort.txt  > v_all_sort.html normal

echo "$(date "+%Y.%m.%d.%H.%M") gen_exp_all_table"
./gen_all_table.py  < v_all_sort.txt  > v_exp_all_sort.html exp



rm -rf ./v_all_sort.txt
rm -rf ./instru_set.txt

echo "$(date "+%Y.%m.%d.%H.%M") bottom finish"
