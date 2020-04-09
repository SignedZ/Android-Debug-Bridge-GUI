@echo off
echo 注意,该工具为刷入REC工具
echo 是刷机相关
echo 刷之前确认所选的REC文件是为该设备而制作的REC
echo 不一定在所有的机型上成功使用
echo 刷坏了请自行获取修复方法 作者无权承担任何责任
echo 刷入前确定已解开BootLoader锁
cls&echo 确认刷入?如不是请立即退出
pause.echo
echo =====Log=====
set /p rec_file=Filename
echo [%date%-%time%]Input:file(%Filename%)>>D:\ADB_Tools.log
%fastboot% flash recovery %rec_file%
echo [%date%-%time%]Action:img.rec.write>>D:\ADB_Tools.log
%fastboot% boot %rec_file%
echo [%date%-%time%]Action:recovery.enter>>D:\ADB_Tools.log
echo 刷入成功!&ping -n 2 127.0.0.1>nul&echo =====Log=====