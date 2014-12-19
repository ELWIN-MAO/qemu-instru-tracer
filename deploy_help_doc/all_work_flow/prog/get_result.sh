#!/bin/bash
echo "$(date "+%Y.%m.%d.%H.%M") gen_index_page"
./gen_index_page.py < ./v_top_log.txt  > ./index_page.html


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

mv ./qemu_log.txt ./v_top_log.txt ./empty_block.txt ./fa_error_uniq.txt ./fa_error.txt  ./fb_error.txt  ./fb_error_uniq.txt  ./v_all_sort.html  ./v_all_thread.thst.html  ./index_page.html ./test_result/${tstrlt}

#cd ./test_result

#tar zcf ${tstrlt}.tar.gz  ${tstrlt}


#rm -rf ./${tstrlt}

#cd -

echo "$(date "+%Y.%m.%d.%H.%M") get_result  finish"
