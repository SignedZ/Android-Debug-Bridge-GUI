@echo off
echo 服务启动中..
set time=1
%adb% start-server
cls
set /p video_s=输入尺寸(例如1280x720):
set /p video_b=输入比特率:
set /p video_t=录制时长:
set /p video_n=视频名字:
echo 开始录制
%adb% shell screenrecord --size %video_s% --bit-rate %video_b% --time-limit %video_t% /sdcard/%video_n%.mp4