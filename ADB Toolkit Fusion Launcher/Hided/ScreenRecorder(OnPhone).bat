@echo off
echo ����������..
set time=1
%adb% start-server
cls
set /p video_s=����ߴ�(����1280x720):
set /p video_b=���������:
set /p video_t=¼��ʱ��:
set /p video_n=��Ƶ����:
echo ��ʼ¼��
%adb% shell screenrecord --size %video_s% --bit-rate %video_b% --time-limit %video_t% /sdcard/%video_n%.mp4