#!/bin/bash
rm -rf ../log_qie_kuai/*
#rm -rf ../log_processed/*
rm -rf /mnt/freenas/log_processed/*

#rm -rf ./*.hash  ./*.hash.thd  ./*.a   ./*.b  ./*.a.stat  ./*.b.stat ./*.join ./*.join.subth    ./a*.log  ./b*.log  ./a*.log.stat  ./b*.log.stat ./error_opcode.txt ./fa_error.txt  ./fb_error.txt  ./all_thread.thst    ./v_all.txt  ./v_all_sort.txt

rm -rf ./v_top_log.txt ./*.log.a  ./*.log.b  ./*.log.a.stat ./*.log.b.stat ./*.hsha ./*.hshb ./error_opcode.txt ./error_opcode_uniq.txt  ./*.hshb.stat ./*.join   ./fa_error.txt  ./fb_error.txt   ./fa_error_uniq.txt  ./fb_error_uniq.txt   ./*.join.subth  ./*.hshth  ./*.hshth.thd  ./v_all_thread.thst  ./v_all.txt  ./v_all_sort.txt 


rm -rf   ./v_all_thread.thst.html   ./v_all_sort.html