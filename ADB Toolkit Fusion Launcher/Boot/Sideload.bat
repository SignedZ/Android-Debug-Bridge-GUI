@echo off
echo =====Log=====
set /p pack=Filename:
echo [%date%-%time%]Input:file(%Filename%)>>D:\ADB_Tools.log
%adb% sideload %pack%
echo [%date%-%time%]Action:sideload.start>>D:\ADB_Tools.log
echo =====Log=====
pause.echo
exit