@echo off
%adb% start-server
echo ˵��
echo ��x=0
echo ��x=�����Ч����
echo ��y=0
echo ��y=�����Ч����
echo ��ʼ�ͽ�����û�и�����
echo x y��Ч����
%adb% shell wm size
set /p x_start=��ʼ��x����:
set /p y_start=��ʼ��y����:
set /p x_end=������x����:
set /p y_end=������y����:
%adb% shell input swipe %x_start% %y_start% %x_end% %y_end%
exit