#!/bin/bash
rm -rf ../log_qie_kuai
rm -rf ../log_processed
mkdir  ../log_qie_kuai
mkdir  ../log_processed


rm -rf ./qemu_log.txt  ./v_top_log.txt  ./empty_block.txt  ./*.log.a  ./*.log.b  ./*.log.a.stat ./*.log.b.stat ./*.hsha ./*.hshb   ./*.hshb.stat ./*.join   ./fa_error.txt  ./fb_error.txt   ./fa_error_uniq.txt  ./fb_error_uniq.txt   ./*.join.subth  ./*.hshth  ./*.hshth.thd  ./v_all_thread.thst  ./v_all.txt ./instru_set.txt  ./v_all_sort.txt 


rm -rf   ./v_all_thread.thst.html   ./v_all_sort.html ./index_page.html
rm -rf   ./v_exp_all_thread.thst.html  ./v_exp_all_sort.html 
