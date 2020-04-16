@echo off
echo 服务启动中..
%adb% start-server
:start
cls
set /p APK=apk_File:
echo [%date%-%time%]Action:application.install(file:%apk%)>>D:\ADB_Tools.log
%adb% install %APK%
goto start
