@echo off
%adb% start-server
cls
echo ��ȷ���ֻ��Ƿ���FastBootģʽ����Rom�Ƿ�Ϊԭ��Rom
echo �粻�������ֿ�����һ��������
echo ��˼������!
echo ���������ʼ����BootLoader
pause>nul
echo =====Log=====
%fastboot% oem lock
echo Command Sended..
echo [%date%-%time%]Action:bootloader.lock(Google_Xiaomi)>>D:\ADB_Tools.log
ping -n 5 127.0.0.1>nul
echo =====Log=====&pause
exit