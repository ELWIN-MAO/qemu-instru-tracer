## sikuli自动测试脚本 ##
**sikuli** 是一种自动化测试的软件，此文件夹中包含测试脚本以及脚本运行时调用的文件等。
### 一.sikuli软件的安装###
请以root账号登录lubuntu进行以下操作
在安装sikuli软件之前，首先要安装opencv、tesseract和java。

 1. 安装opencv
  - 参考网址：http://blog.csdn.net/xiaoxiong345064855/article/details/7585422
  - 若安装过程中报错，根据报错内容考虑安装gcc、python-dev、libgtk2.0-dev、libavcodec-dev、libavformat-dev、libjpeg62-dev、libtiff4-dev、cmake、libswscale-dev、libjasper-dev等。（也不需要全部安装，不再报错即可） 

 2. 安装tesseract
  - 参考网址：http://miphol.com/muse/2013/05/install-tesseract-ocr-on-ubunt.html
 3. 安装java6
 4. 安装Sikuli
  - 下载网址：https://launchpad.net/sikuli/+download
   - cp sikuli-setup.jar /usr/local
   - cd  /usr/local
   - java -jar sikuli-setop.jar
    
	注：安装完成后查看当前文件夹下的SikuliX-1.0.1-SetupLog.txt文件中是否有报错。若有报错，则将/usr/lib下的libopencv_core.so.2.4.9 libopencv_highgui.so.2.4.9 libopencv_imgproc.so.2.4.9拷贝到/usr/local/lib文件夹下，并建立软链接，libopencv_core.so.2.4 libopencv_higugui.so.2.4 libopencv_imgproc.so.2.4。若/usr/lib文件夹下也没有这三个文件，则在/usr/local/opencv-2.4.9文件夹下查找，找到此三个文件后分别复制到/usr/lib和/usr/local/lib文件夹下，并建立软链接。然后在命令行中输入
    - export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
    
	如果安装过程中出现其他问题，下载https://launchpad.net/sikuli/+download页面中的 Sikuli-1.0.1-Supplemental-LinuxVisionProxy.zip文件，解压后运行其中的可执行文件进行检查。
### 二. 软件录制脚本 ###
此文件夹内包含多种软件的录制脚本，主要有Firefox浏览器、thunderbird邮件客户端、OpenOffice中文本编辑、幻灯片编辑以及表格编辑、leafpad文本编辑、lxmuisc音乐播放、gpicview图片浏览、Pidgin实时会话、pdf文本查看以及视频播放等软件的脚本。
### 三. 各软件包含的文件 ###
**Firefox浏览器**

1. test-firefox.sikuli/
	1.  运行脚本test-firefox.py、test-firefox.html
	2.  运行脚本时需要用到的图片*********.png
	3.  运行脚本时生成的截图open*********.png
	4.  运行脚本时生成的截图finish*********.png
	5.  运行时生成的中间结果result
	6.  运行此用例时执行的文件testrun.txt
2. 用到的软件
	1. Firefox浏览器
		- http://www.firefox.com.cn/download/官网下载，选择合适的版本
		- 解压后可通过执行其脚本直接运行
	
**thunderbird邮件客户端**

1. test-mail.sikuli/
  	1.  运行脚本test-mail.py、test-mail.html
	2.  运行脚本时需要用到的图片*********.png
	3.  运行脚本时生成的截图open*********.png
	4.  运行脚本时生成的截图write*********.png
	5.  运行时生成的中间结果result
	6.  运行此用例时执行的文件testrun.txt
2. 用到的软件
	1. thunderbird邮件客户端
		- https://www.mozilla.org/en-US/thunderbird/all.html官网下载，选择合适的版本
		- 解压后可通过执行其脚本直接运行

**OpenOffice文本编辑**

1. test-odt.sikuli/
	1.  运行脚本test-odt.py、test-odt.html
	2.  运行脚本时需要用到的图片*********.png
	3.  运行时生成的中间结果result
	4.  运行此用例时执行的文件testrun.txt
2. test.odt（运行脚本时修改的文件，默认放在/root/Desktop文件夹下）
3. 用到的软件
	1. OpenOffice办公软件
		- http://www.openoffice.org/download/index.html官网下载，选择合适的版本
		- 解压后进入文件夹en-US/DEBS/
		- # dpkg -i *.deb
		- # cd desktop-integration/
		- # ls
		- openoffice.org3.3-debian-menus_3.3-9556_all.deb
		- # dpkg -i openoffice.org3.3-debian-menus_3.3-9556_all.deb
		- 执行/usr/bin/openoffice4脚本即可直接运行 

**OpenOffice表格编辑**

1. test-ods.sikuli/
 	1.  运行脚本test-ods.py、test-ods.html
	2.  运行脚本时需要用到的图片*********.png
	3.  运行时生成的中间结果result
	4.  运行此用例时执行的文件testrun.txt
2. test.ods（运行脚本时修改的文件，默认放在/root/Desktop文件夹下）
3. 用到的软件
	1. OpenOffice办公软件
		- http://www.openoffice.org/download/index.html官网下载，选择合适的版本
		- 解压后进入文件夹en-US/DEBS/
		- # dpkg -i *.deb
		- # cd desktop-integration/
		- # ls
		- openoffice.org3.3-debian-menus_3.3-9556_all.deb
		- # dpkg -i openoffice.org3.3-debian-menus_3.3-9556_all.deb
		- 执行/usr/bin/openoffice4脚本即可直接运行 

**OpenOffice幻灯片编辑**

1. test-odp.sikuli/
  	1.  运行脚本test-odp.py、test-odp.html
	2.  运行脚本时需要用到的图片*********.png
	3.  运行时生成的中间结果result
	4.  运行此用例时执行的文件testrun.txt
2. test.odp（运行脚本时修改的文件，默认放在/root/Desktop文件夹下）
3. 用到的软件
	1. OpenOffice办公软件
		- http://www.openoffice.org/download/index.html官网下载，选择合适的版本
		- 解压后进入文件夹en-US/DEBS/
		- # dpkg -i *.deb
		- # cd desktop-integration/
		- # ls
		- openoffice.org3.3-debian-menus_3.3-9556_all.deb
		- # dpkg -i openoffice.org3.3-debian-menus_3.3-9556_all.deb
		- 执行/usr/bin/openoffice4脚本即可直接运行 

**leafpad文本编辑**

1. test-leafpad.sikuli/
 	1. 运行脚本test.py、test.html
	2.  运行脚本时需要用到的图片*********.png
	3.  运行时生成的中间结果result
	4.  运行此用例时执行的文件testrun.txt
2. test（运行脚本时修改的文件，默认放在/root/Desktop文件夹下）
3. test2（运行脚本时修改的文件，默认放在/root/Desktop文件夹下）
注：此测试脚本中添加了函数调用功能，将对文本的编辑保存操作写在一个函数中。第一次调用此函数时对test文件进行操作，第二次调用此函数时对test2文件进行操作。
4. 用到的软件
	1. leafpad软件
		- 系统自带，无需安装

**lxmusic音乐播放器**

1. tes-music.sikuli/
 	1. 运行脚本test-music.py、test-music.html
	2.  运行脚本时需要用到的图片*********.png
	3.  运行脚本时生成的截图play*********.png
	4.  运行时生成的中间结果result
	5.  运行此用例时执行的文件testrun.txt
2. sikuli.mp3（运行脚本时播放的音乐文件，默认放在/root/Desktop文件夹下）
3. 用到的软件
	1. lxmusic音乐播放器
		- # apt-get install lxmusic-dbg
		- 执行/usr/bin/lxmusic脚本即可直接运行

**GNOME Mplayer视频播放器**

1. tes-video.sikuli/
 	1. 运行脚本test-video.py、test-video.html
	2.  运行脚本时需要用到的图片*********.png
	3.  运行脚本时生成的截图play*********.png
	4.  运行时生成的中间结果result
	5.  运行此用例时执行的文件testrun.txt
2. sikuli.mp4（运行脚本时播放的音乐文件，默认放在/root/Desktop文件夹下）
3. 用到的软件
	1. GNOME Mplayer视频播放器
		- 系统自带，无需安装

**gpicview图片浏览**

1. tes-gpicview.sikuli/
 	1. 运行脚本test-gpicview.py、test-gpicview.html
	2.  运行脚本时需要用到的图片*********.png
	3.  运行脚本时生成的截图view*********.png
	4.  运行时生成的中间结果result
	5.  运行此用例时执行的文件testrun.txt
2. sikuli.png（运行脚本时浏览的图片文件，默认放在/root/Desktop文件夹下）
3. 用到的软件
	1. gpicview图片浏览器
		- 系统自带，无需安装

**pdf文件浏览**

1. test-pdf.sikuli/
	1. 运行脚本test-pdf.py、test-pdf.html
	2.  运行脚本时需要用到的图片*********.png
	3.  运行脚本时生成的截图view*********.png
	4.  运行时生成的中间结果result
	5.  运行此用例时执行的文件testrun.txt
2. sikuli.pdf（运行脚本时浏览的pdf文件，默认放在/root/Desktop文件夹下）
3. 用到的软件
	1. Document viewer阅读器
		- 系统自带，无需安装

**pidgin实时会话**

1. test-pidgin.sikuli/
	1. 运行脚本test-pidgin.py、test-pidgin.html
	2.  运行脚本时需要用到的图片*********.png
	3.  运行脚本时生成的截图chat*********.png
	4.  运行时生成的中间结果result
	5.  运行此用例时执行的文件testrun.txt
3. 用到的软件
	1. Document viewer阅读器
		- 系统自带，无需安装

### 四. 脚本运行方法 ###

1. 为每一个测试用例定义好相应的文件夹名称，并且都不相同，例如test-leafpad.sikuli为leafpad文本编辑器的测试用例。
2. 各个测试用例需要的原始文件就事先已经保存在了测试用例所在的文件夹，例如执行文件test-leafpad.py以及执行脚本是需要进行匹配的图片文件等。生成的截图文件和日志文件也保存在测试用例所在的目录。其中名为testrun.txt的文件，其内容是执行此测试用例的命令。例如
 - /usr/local/runScript -r /root/Documents/test-leafpad.sikuli/  #程序和文件都用绝对路径
3. 将测试用例打包生成xxx.tar.gz格式
 - tar zcf test-leafpad.sikuli.tar.gz  test-leafpad.sikuli
