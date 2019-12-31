@echo off
:memu
cls
title Android Debug Bridge工具
echo ===================Android Debug Bridge工具===================
echo =[1]应用管理(所有 系统 第三方 安装 卸载 清除应用数据)        =
echo =[2]文件管理(电脑-手机 手机-电脑)                            =
echo =[3]按键模拟输入(太多不列举)                                 =
echo =[5]设备信息(型号 电池 分辨率 显示屏 Android版本 IMEI CPU..) =
echo =[6]小功能                                                   =
echo =[7]高级重启和某些关于刷机选项                                =
echo =[8]Shell命令                                                =
echo =[9]关于(这个工具和adb版本)                                  =
echo ============================Ver.1.1===========================
choice /n /c:123456789 /m "键入功能数字...>"
if '%ERRORLEVEL%'=='1' goto App_Manager
if '%ERRORLEVEL%'=='2' goto File_Manager
if '%ERRORLEVEL%'=='3' goto Key_Simulation
if '%ERRORLEVEL%'=='5' goto Phone_Information
if '%ERRORLEVEL%'=='6' goto Hided
if '%ERRORLEVEL%'=='7' goto Boot
if '%ERRORLEVEL%'=='8' goto Shell
if '%ERRORLEVEL%'=='9' goto ABOUT


:App_Manager
cls
title 应用管理
echo ===================Android Debug Bridge工具===================
echo =[1]显示所有应用                                             =
echo =[2]安装应用                                                 =
echo =[3]卸载应用                                                 =
echo =[4]返回主页面                                               =
echo ============================Ver.1.1===========================
choice /n /c:1234 /m "键入功能数字...>"
if '%ERRORLEVEL%'=='1' start App_Manager\AllApp.bat
if '%ERRORLEVEL%'=='2' start App_Manager\Install-App.bat
if '%ERRORLEVEL%'=='3' start App_Manager\Uninstall-APP.bat
if '%ERRORLEVEL%'=='4' goto memu
goto App_Manager

:File_Manager
cls
title 文件管理
echo ===================Android Debug Bridge工具===================
echo =[1]复制手机上的文件到电脑                                   =
echo =[2]复制电脑上的文件到手机                                   =
echo =[3]回到主界面                                               =
echo ============================Ver.1.1===========================
choice /n /c:123 /m "键入功能数字...>"
if '%ERRORLEVEL%'=='1' start File_Manager\From-Phone-To-PC.bat
if '%ERRORLEVEL%'=='2' start File_Manager\From-PC-To-Phone.bat
if '%ERRORLEVEL%'=='3' goto memu
goto File_Manager


:Key_Simulation
cls
title 按键模拟输入
echo ===================Android Debug Bridge工具===================
echo =[1]主屏幕键                                                 =
echo =[2]返回键                                                   =
echo =[3]打开电话                                                 =
echo =[4]挂断电话                                                 =
echo =[5]上升音量                                                 =
echo =[6]降低音量                                                 =
echo =[7]电源键                                                   =
echo =[8]拍照(只在相机里有用)                                     =
echo =[9]菜单键                                                   =
echo =[0]播放/暂停                                                =
echo =[a]停止播放                                                 =
echo =[b]静音                                                     =
echo =[c]打开设置                                                 =
echo =[d]切换app                                                  =
echo =[e]点亮屏幕                                                 =
echo =[f]上升屏幕亮度                                             =
echo =[g]降低屏幕亮度                                             =
echo =[h]关闭屏幕                                                 =
echo =[i]输入文字                                                 =
echo =[j]滑动屏幕                                                 =
echo =[k]回主界面                                                 =
echo ============================Ver.1.1===========================
choice /n /c:1234567890abcdefghijk /m "键入功能数字...>"
if '%ERRORLEVEL%'=='1' start Key_Simulation\Key\Home-Key.bat
if '%ERRORLEVEL%'=='2' start Key_Simulation\Key\Back-Key.bat
if '%ERRORLEVEL%'=='3' start Key_Simulation\Key\Open-Call_App.bat
if '%ERRORLEVEL%'=='4' start Key_Simulation\Key\End-Of-Call_.bat
if '%ERRORLEVEL%'=='5' start Key_Simulation\Key\Up-Vol.bat
if '%ERRORLEVEL%'=='6' start Key_Simulation\Key\Down-Vol.bat
if '%ERRORLEVEL%'=='7' start Key_Simulation\Key\Power-Key.bat
if '%ERRORLEVEL%'=='8' start Key_Simulation\Key\Take-Photo.bat
if '%ERRORLEVEL%'=='9' start Key_Simulation\Key\Memu-Key.bat
if '%ERRORLEVEL%'=='10' start Key_Simulation\Key\Play-Pause.bat
if '%ERRORLEVEL%'=='11' start Key_Simulation\Key\Stop-Playing.bat
if '%ERRORLEVEL%'=='12' start Key_Simulation\Key\Vol-Shutup.bat
if '%ERRORLEVEL%'=='13' start Key_Simulation\Key\Open-Setting.bat
if '%ERRORLEVEL%'=='14' start Key_Simulation\Key\Swipe-App.bat
if '%ERRORLEVEL%'=='15' start Key_Simulation\Key\Light-Screen.bat
if '%ERRORLEVEL%'=='16' start Key_Simulation\Key\Up-Bright.bat
if '%ERRORLEVEL%'=='17' start Key_Simulation\Key\Down-Bright.bat
if '%ERRORLEVEL%'=='18' start Key_Simulation\Key\Shutdown-Screen.bat
if '%ERRORLEVEL%'=='19' start Key_Simulation\Input-Text.bat
if '%ERRORLEVEL%'=='20' start Key_Simulation\Swipe-Screen.bat
if '%ERRORLEVEL%'=='21' goto memu
goto Key_Simulation


:Phone_Information
cls
title 设备信息
echo ===================Android Debug Bridge工具===================
echo =[1]型号                                                     =
echo =[2]电池状况                                                 =
echo =[3]屏幕分辨率                                               =
echo =[4]屏幕密度                                                 =
echo =[5]显示屏参数                                               =
echo =[6]Android ID                                               =
echo =[7]IMEI(Android4.4以下)                                     =
echo =[8]IMEI(Android5.0及以上)                                   =
echo =[9]Android版本                                              =
echo =[0]Mac地址                                                  =
echo =[a]CPU信息                                                  =
echo =[b]回主界面                                                 =
echo ============================Ver.1.1===========================
choice /n /c:1234567890ab /m "键入功能数字...>"
if '%ERRORLEVEL%'=='1' 
if '%ERRORLEVEL%'=='2' 
if '%ERRORLEVEL%'=='3' 
if '%ERRORLEVEL%'=='4' 
if '%ERRORLEVEL%'=='5' 
if '%ERRORLEVEL%'=='6' 
if '%ERRORLEVEL%'=='7' 
if '%ERRORLEVEL%'=='8' 
if '%ERRORLEVEL%'=='9' 
if '%ERRORLEVEL%'=='10' 
if '%ERRORLEVEL%'=='11' 
if '%ERRORLEVEL%'=='12' goto memu
goto Phone_Information


:Hided
cls
title 小功能
echo ===================Android Debug Bridge工具===================
echo =[1]屏幕截图(导出到手机根目录)                               =
echo =[2]屏幕截图(导出到电脑c盘根目录)                            =
echo =[3]屏幕录制(导出到手机根目录)                               =
echo =[4]屏幕录制(导出到电脑c盘)                                  =
echo =[5]回主界面                                                 =
echo ============================Ver.1.1===========================
choice /n /c:12345 /m "键入功能数字...>"
if '%ERRORLEVEL%'=='1' 
if '%ERRORLEVEL%'=='2' 
if '%ERRORLEVEL%'=='3' 
if '%ERRORLEVEL%'=='4' 
if '%ERRORLEVEL%'=='5' goto memu
goto Hided


:Boot
cls
title 高级重启
echo ===================Android Debug Bridge工具===================
echo =[0]回锁BootLoader                                           =
echo =[1]重启                                                     =
echo =[2]重启到Recovery                                           =
echo =[3]重启到Fastboot                                           =
echo =[4]Sideload                                                 =
echo =[5]刷入REC                                                  =
echo =[6]回主界面                                                 =
echo ============================Ver.1.1===========================
choice /n /c:0123456 /m "键入功能数字...>"
if '%ERRORLEVEL%'=='0' goto BootMemu_2
if '%ERRORLEVEL%'=='1' start Boot\Reboot.bat
if '%ERRORLEVEL%'=='2' start Boot\Recovery.bat
if '%ERRORLEVEL%'=='3' start Boot\Recovery.bat
if '%ERRORLEVEL%'=='4' start Boot\Sideload.bat
if '%ERRORLEVEL%'=='5' start Boot\RecoveryInstaller.bat
if '%ERRORLEVEL%'=='6' goto memu
goto Boot

:BootMemu_2
cls
title 高级重启2
echo ===================Android Debug Bridge工具===================
echo =[0]回上一级                                                 =
echo =[1]华为系列                                                 =
echo =[2]小米和谷歌系列                                           =
echo =注:未测试 且适配很少                                        =
echo ============================Ver.1.1===========================
choice /n /c:0123456 /m "键入功能数字...>"
if '%ERRORLEVEL%'=='0' goto Boot
if '%ERRORLEVEL%'=='0' goto Boot
if '%ERRORLEVEL%'=='1' start Boot\PhoneBootloaderLocker\Huawei.bat
if '%ERRORLEVEL%'=='2' start Boot\PhoneBootloaderLocker\Google_Xiaomi.bat
goto BootMemu_2


:Shell
cls
title Shell命令
echo ===================Android Debug Bridge工具===================
echo =[1]查看进程                                                 =
echo =[2]查看实时资源占用                                         =
echo =[3]回主界面                                                 =
echo ============================Ver.1.1===========================
choice /n /c:123 /m "键入功能数字...>"
if '%ERRORLEVEL%'=='1' 
if '%ERRORLEVEL%'=='2' 
if '%ERRORLEVEL%'=='3' goto memu
goto Shell


:ABOUT
cls
title 关于
echo ===================Android Debug Bridge工具===================
echo =[1]查看说明                                                 =
echo =[2]跳至该项目的github页面                                   =
echo =[3]回主界面                                                 =
echo ============================Ver.1.1===========================
choice /n /c:123 /m "键入功能数字...>"
if '%ERRORLEVEL%'=='1' goto saying
if '%ERRORLEVEL%'=='2' Start https://github.com/SignedZ/Android-Debug-Bridge-Toolkit
if '%ERRORLEVEL%'=='3' goto memu
goto ABOUT


:saying
cls
title 关于
echo ===================Android Debug Bridge工具===================
echo =好吧,写这个工具仍然是因为一时兴起.刚开始接触ADB的时候还是在 =
echo =各大论坛找我手机如何刷入twrp.成功了,很开心                  =
echo =于是开启了各式各样的刷机之路((((((((                        =
echo =已经忘记了最初做这个工具的初衷 但工程开都开了               =
echo =还是有必要延续下去的(笑                                     =
echo ==========================2019 12.15==========================
pause.echo&goto ABOUT