@echo off
echo ע��,�ù���Ϊˢ��REC����
echo ��ˢ�����
echo ˢ֮ǰȷ����ѡ��REC�ļ���Ϊ���豸��������REC
echo ��һ�������еĻ����ϳɹ�ʹ��
echo ˢ���������л�ȡ�޸����� ������Ȩ�е��κ�����
echo ˢ��ǰȷ���ѽ⿪BootLoader��
cls&echo ȷ��ˢ��?�粻���������˳�
pause.echo
echo =====Log=====
set /p rec_file=Filename
echo [%date%-%time%]Input:file(%Filename%)>>D:\ADB_Tools.log
%fastboot% flash recovery %rec_file%
echo [%date%-%time%]Action:img.rec.write>>D:\ADB_Tools.log
%fastboot% boot %rec_file%
echo [%date%-%time%]Action:recovery.enter>>D:\ADB_Tools.log
echo ˢ��ɹ�!&ping -n 2 127.0.0.1>nul&echo =====Log=====