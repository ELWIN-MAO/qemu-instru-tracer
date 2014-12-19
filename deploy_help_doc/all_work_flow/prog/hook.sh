#/bin/bash
cd /mnt/freenas-intel/qemu-instru-tracer/deploy_help_doc/all_work_flow/prog
scp -r  root@192.168.1.37:/usr/local/share/cg-rtl/testcase/testcase2/*  ./test_case
ssh root@192.168.1.37 "rm -rf /usr/local/share/cg-rtl/testcase/testcase2/*"
./start_all.sh
scp -r ./test_result/*  root@192.168.1.37:/usr/local/apache-tomcat-7.0.57/webapps/ROOT/mym_test
rm -rf ./test_result/*
