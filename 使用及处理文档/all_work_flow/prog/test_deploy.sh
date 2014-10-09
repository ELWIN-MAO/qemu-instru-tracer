#!/bin/bash

echo "$(date "+%Y.%m.%d.%H.%M") test_deploy start"

tstcs=`ls  ./test_case`  #get test case name
tar -zxf ./test_case/${tstcs} -C ./test_case  #decompress test case
rm -rf ./test_case/*.tar.gz                   #delete .tar.gz
tstcs=`ls  ./test_case`                       #get test case dir name
#generate aaa.sh
cat ./aaa.sh_top   >aaa.sh
cat ./test_case/${tstcs}/testrun.txt >>aaa.sh
cat ./aaa.sh_botm >>aaa.sh

chmod +x ./aaa.sh

umount ./rawmount
##mount  ./cesh.img ./rawmount   #should be run as root
mount ../lubuntu/lubuntu12.04.raw  -o loop,offset=1048576 ./rawmount/

#mov aaa.sh to lubuntu 
mv ./aaa.sh ./rawmount/root/new/

#mov test case to lubuntu
rm -rf ./test_result/*
mkdir  ./test_result/${tstcs}  #show which result to get
rm -rf ./rawmount/root/Documents/${tstcs}  #clear the dir which has the same name 
mv ./test_case/${tstcs}  ./rawmount/root/Documents

sleep 5
umount  ./rawmount


echo "$(date "+%Y.%m.%d.%H.%M") test_deploy finish"
