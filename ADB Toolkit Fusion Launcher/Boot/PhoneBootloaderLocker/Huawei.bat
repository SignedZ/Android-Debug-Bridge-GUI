@echo off
%adb% start-server
cls
echo 请确认手机是否在FastBoot模式下且Rom是否为原厂Rom
echo 如不是则会出现开机卡一屏的现象
echo 三思而后行!
echo 按任意键开始回锁BootLoader步骤
pause>nul
echo =====Log=====
%adb% devices
set /p code=输入设备device前面的信息码:
echo [%date%-%time%]Input:code.device(%code%)>>D:\ADB_Tools.log
%fastboot% oem  relock %code%
echo [%date%-%time%]Action:bootloader.lock>>D:\ADB_Tools.log
echo Command Sended
ping -n 5 127.0.0.1>nul
echo =====Log=====&pause
exit