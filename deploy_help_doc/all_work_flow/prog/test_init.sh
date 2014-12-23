#!/bin/bash
rm -rf ./test_case/
rm -rf ./test_result/

mkdir ./test_case
mkdir ./test_result

umount ./rawmount
sleep  10
rmdir ./rawmount
mkdir ./rawmount
