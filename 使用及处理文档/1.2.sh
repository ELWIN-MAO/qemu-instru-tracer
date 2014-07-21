#!/bin/bash
logger "start /root/new/xdot_tool/xdottool_test/1.2.sh"
sleep 120
#cd /root/new/xdot_tool/xdotool_test 
#rm -rf ./web_test.sh
#wget http://124.16.141.130/lxr/scripts/web_test.sh
#chmod +x  ./web_test.sh
#./web_test.sh
cd /root/new
gedit aaaa.txt &
sleep 50
WID=`xdotool search "gedit" | head -1 `
xdotool windowactivate --sync $WID
#xdotool key --clearmodifiers ctrl+l
xdotool type  "www.baidu.com,auto test!!"
#xdotool key Return
xdotool key  ctrl+s
xdotool key  ctrl+s
sleep 30
logger "finish /root/new/xdot_tool/xdottool_test/1.2.sh"
shutdown -h now
