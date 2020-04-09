@echo off
echo 服务启动中..
%adb% start-server
set /p start=电脑文件位置(绝对 不带任何引号):
echo [%date%-%time%]Input:file(%start%)>>D:\ADB_Tools.log
%adb% push ~%start% /sdcard/
echo [%date%-%time%]%start%.file.transed>>D:\ADB_Tools.log