@echo off
echo ����������..
%adb% start-server
cls
set /p packagename=Ӧ�ð�ID:
adb uninstall %packagename%
echo [%date%-%time%]Action:application.uninstall(%packagename%)>>D:\ADB_Tools.log
exit