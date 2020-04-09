@echo off
echo 服务启动中..
%adb% start-server
cls
set /p packagename=应用包ID:
adb uninstall %packagename%
echo [%date%-%time%]Action:application.uninstall(%packagename%)>>D:\ADB_Tools.log
exit