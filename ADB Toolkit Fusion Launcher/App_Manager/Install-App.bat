@echo off
echo 服务启动中..
%adb% start-server
cls
set /p APK=apk路径(绝对,不要加标点单引双引号):
echo [%date%-%time%]Action:application.install(file:%apk%)>>D:\ADB_Tools.log
%adb% install %APK%
exit