## sikuli自动测试脚本 ##
**sikuli** 是一种自动化测试的软件，此文件夹中包含测试脚本以及脚本运行时调用的文件等。
### 一. 软件录制脚本 ###
此文件夹内包含多种软件的录制脚本，主要有Firefox浏览器、thunderbird邮件客户端、OpenOffice中文本编辑、幻灯片编辑以及表格编辑、leafpad文本编辑、lxmuisc音乐播放、gpicview图片浏览、Pidgin实时会话、pdf文本查看以及视频播放等软件的脚本。
### 二. 各软件包含的文件 ###
**Firefox浏览器**

1.  test-firefox.sikuli/
	1.  运行脚本test-firefox.py、test-firefox.html
	2.  运行脚本时需要用到的图片*********.png
	3.  运行脚本时生成的截图open*********.png
	4.  运行脚本时生成的截图finish*********.png
	5.  运行时生成的中间结果reasult
	
**thunderbird邮件客户端**

1. test-mail.sikuli/
  1.  运行脚本test-mail.py、test-mail.html
	2.  运行脚本时需要用到的图片*********.png
	3.  运行脚本时生成的截图open*********.png
	4.  运行脚本时生成的截图write*********.png
	5.  运行时生成的中间结果reasult
	
**OpenOffice文本编辑**

1. test-odt.sikuli/
 1.  运行脚本test-odt.py、test-odt.html
	2.  运行脚本时需要用到的图片*********.png
	3.  运行时生成的中间结果reasult
2. test.odt（运行脚本时修改的文件，默认放在/root/Desktop文件夹下）

**OpenOffice文本编辑**

1. test-ods.sikuli/
  1.  运行脚本test-ods.py、test-ods.html
	2.  运行脚本时需要用到的图片*********.png
	3.  运行时生成的中间结果reasult
2. test.ods（运行脚本时修改的文件，默认放在/root/Desktop文件夹下）

**OpenOffice幻灯片编辑**

1. test-odp.sikuli/
  1.  运行脚本test-odp.py、test-odp.html
	2.  运行脚本时需要用到的图片*********.png
	3.  运行时生成的中间结果reasult
2. test.odp（运行脚本时修改的文件，默认放在/root/Desktop文件夹下）

**leafpad文本编辑**

1. test.sikuli/
 1. 运行脚本test.py、test.html
	2.  运行脚本时需要用到的图片*********.png
	3.  运行时生成的中间结果reasult
2. test（运行脚本时修改的文件，默认放在/root/Desktop文件夹下）
3. test2（运行脚本时修改的文件，默认放在/root/Desktop文件夹下）

**lxmusic音乐播放器**

1. tes-music.sikuli/
 1. 1. 运行脚本test-music.py、test-music.html
	2.  运行脚本时需要用到的图片*********.png
	3.  运行脚本时生成的截图play*********.png
	4.  运行时生成的中间结果reasult
2. sikuli.mp3（运行脚本时播放的音乐文件，默认放在/root/Desktop文件夹下）

**GNOME Mplayer视频播放器**

1. tes-video.sikuli/
 1. 1. 运行脚本test-video.py、test-video.html
	2.  运行脚本时需要用到的图片*********.png
	3.  运行脚本时生成的截图play*********.png
	4.  运行时生成的中间结果reasult
2. sikuli.mp4（运行脚本时播放的音乐文件，默认放在/root/Desktop文件夹下）

**gpicview图片浏览**

1. tes-gpicview.sikuli/
 1. 1. 运行脚本test-gpicview.py、test-gpicview.html
	2.  运行脚本时需要用到的图片*********.png
	3.  运行脚本时生成的截图view*********.png
	4.  运行时生成的中间结果reasult
2. sikuli.png（运行脚本时浏览的图片文件，默认放在/root/Desktop文件夹下）

**pdf文件浏览**

1. test-pdf.sikuli/
 1. 运行脚本test-pdf.py、test-pdf.html
	2.  运行脚本时需要用到的图片*********.png
	3.  运行脚本时生成的截图view*********.png
	4.  运行时生成的中间结果reasult
2. sikuli.pdf（运行脚本时浏览的pdf文件，默认放在/root/Desktop文件夹下）

**pidgin实时会话**

1. test-pidgin.sikuli/
1. 运行脚本test-pidgin.py、test-pidgin.html
	2.  运行脚本时需要用到的图片*********.png
	3.  运行脚本时生成的截图chat*********.png
	4.  运行时生成的中间结果reasult

### 三. 脚本运行方法 ###

- cd /usr/local
- ./runScript -r /root/Documents/test*******.sikuli/