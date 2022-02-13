mes.sh脚本是对于termux开发的一个bash脚本。🙂
===
优点🥳：
---
  1.只需要安装curl（termux基本已经自带——curl）。
  ---
  2.快速，安装速度取决于你的网速。
  ---
  3.支持arm64和armhf，aarch64系统
  ---
  4.支持Ubuntu,Centos,kali,opensuse,Alpine,archlinux,ferado
  --
  
###该项目是耗时接近1天完成，因个人对linux的shell脚本代码还没完成优化，及一些功能尚未实现，不出意外的话会在几天后更新。

使用方法🤪：
---
  将脚本复制于termux的home（/data/data/com.termux.com/files/home/ )文件夹里，在终端输入 bash mes.sh
  接着会显示可以安装的系统，在 bash mes.sh xxx(输入系统名),即可进行安装，完成后退出termux再次进入termux，输入你安装的系统名
  eg(以alpine为例子):  
    ~ $  alpine
    
注意事项😥:
---
  该脚本会向.bashrc写入命令，请确保.bashrc是否有重要的需要备份，因初版还未对此进行优化，会导致重复写入问题。
	
  如有错误请向320155863@qq.com发送邮件，谢谢
  ---
该脚本创立最初目的是解决安装linux需要安装的依赖文件比较多（但也可能是我的问题哈）。
如果对你有帮助请🌟。
