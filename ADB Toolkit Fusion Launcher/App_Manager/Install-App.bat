@echo off
echo 服务启动中..
%adb% start-server
cls
:mui
echo 1]一次一次安装
echo 2]队列安装
echo 3]打开已生成的队列安装脚本
choice /n /c:12 /m "键入功能数字...>"
if '%ERRORLEVEL%'=='1' goto x_mui
if '%ERRORLEVEL%'=='2' md temp&echo %adb% start-server>temp\install.bat&echo cls>>temp\install.bat&goto y_mui
if '%ERRORLEVEL%'=='3' goto list_install
goto mui

:x_mui
set /p APK=apk_File:
echo [%date%-%time%]Action:application.install.once(file:%apk%)>>D:\ADB_Tools.log
%adb% install %APK%
goto x_mui

:y_mui
cls
echo 该界面会一直重复 直到手动关闭窗口
echo 如需安装请重新在ADB Toolkit里打开该功能
set /p APK=apk_File:
echo 写入脚本中
echo %adb% install %APK%>>temp\install.bat
echo [%date%-%time%]Action:application.list.added(file:%apk%)>>D:\ADB_Tools.log
goto y_mui

:list_install
start temp\install.bat
echo [%date%-%time%]Action:application.list.install>>D:\ADB_Tools.log
rd /s /q  temp
echo [%date%-%time%]Action:file.deleted()>>D:\ADB_Tools.log
goto mui
