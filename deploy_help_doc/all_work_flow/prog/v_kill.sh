kill `ps aux | grep v_top.sh | grep  -v grep  | awk '{print $2}'`
kill `ps aux | grep start_all.sh | grep  -v grep  | awk '{print $2}'`
