@echo off
%adb% reboot fastboot
echo [%date%-%time%]Action:fastboot.reboot>>D:\ADB_Tools.log
exit