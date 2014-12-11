#/bin/bash
cd /home/myming/qemu-instru-tracer/deploy_help_doc/all_work_flow/prog
scp -r  root@124.16.141.184:/usr/local/share/cg-rtl/testcase/testcase2/*  ./test_case
ssh root@124.16.141.184 "rm -rf /usr/local/share/cg-rtl/testcase/testcase2/*"
./start_all.sh
scp -r ./test_result/*  root@124.16.141.184:/usr/local/apache-tomcat-7.0.56/webapps/ROOT/mym_test
rm -rf ./test_result/*
