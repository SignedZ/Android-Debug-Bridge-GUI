@echo off
echo ����������..
%adb% start-server
cls
set /p APK=apk·��(����,��Ҫ�ӱ�㵥��˫����):
echo [%date%-%time%]Action:application.install(file:%apk%)>>D:\ADB_Tools.log
%adb% install %APK%
exit