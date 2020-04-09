@echo off
%adb% start-server
echo 说明
echo 左x=0
echo 右x=最大有效距离
echo 上y=0
echo 下y=最大有效距离
echo 起始和结束都没有负数的
echo x y有效距离
%adb% shell wm size
set /p x_start=起始点x坐标:
set /p y_start=起始点y坐标:
set /p x_end=结束点x坐标:
set /p y_end=结束点y坐标:
%adb% shell input swipe %x_start% %y_start% %x_end% %y_end%
exit