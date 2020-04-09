@echo off
%adb% reboot recovery
echo [%date%-%time%]Action:recovery.reboot>>D:\ADB_Tools.log
exit