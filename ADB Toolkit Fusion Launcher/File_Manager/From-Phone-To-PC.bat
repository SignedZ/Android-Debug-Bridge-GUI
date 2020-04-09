@echo off
echo 服务启动中..
%adb% start-server
set /p start=手机文件位置(绝对 不带任何引号):
echo [%date%-%time%]Input:file(%start%)>>D:\ADB_Tools.log
%adb% push ~/sdcard/%start% ~/
echo [%date%-%time%]Action:file.transed>>D:\ADB_Tools.log