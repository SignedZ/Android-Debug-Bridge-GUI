@echo off
echo ����������..
%adb% start-server
set /p start=�����ļ�λ��(���� �����κ�����):
echo [%date%-%time%]Input:file(%start%)>>D:\ADB_Tools.log
%adb% push ~%start% /sdcard/
echo [%date%-%time%]%start%.file.transed>>D:\ADB_Tools.log