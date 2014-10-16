#!/bin/bash

echo "$(date "+%Y.%m.%d.%H.%M") get_result"

tstrlt=`ls  ./test_result`  #get the result name

rm -rf ./test_result/*

umount ./rawmount
##mount  ./cesh.img ./rawmount   #should be run as root
mount ../lubuntu/lubuntu12.04.raw  -o loop,offset=1048576 ./rawmount/

sleep 5

mv ./rawmount/root/Documents/${tstrlt}  ./test_result/  

sleep 5

umount ./rawmount

cp ./v_all_sort.html ./v_all_sort.txt ./v_all_thread.thst ./v_all_thread.thst.html ./test_result/${tstrlt}

cd ./test_result

tar zcf ${tstrlt}.tar.gz  ${tstrlt}


rm -rf ./${tstrlt}

cd -

echo "$(date "+%Y.%m.%d.%H.%M") get_result  finish"
