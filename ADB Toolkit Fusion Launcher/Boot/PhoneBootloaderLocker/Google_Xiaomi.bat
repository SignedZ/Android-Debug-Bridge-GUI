@echo off
%adb% start-server
cls
echo 请确认手机是否在FastBoot模式下且Rom是否为原厂Rom
echo 如不是则会出现开机卡一屏的现象
echo 三思而后行!
echo 按任意键开始回锁BootLoader
pause>nul
echo =====Log=====
%fastboot% oem lock
echo Command Sended..
echo [%date%-%time%]Action:bootloader.lock(Google_Xiaomi)>>D:\ADB_Tools.log
ping -n 5 127.0.0.1>nul
echo =====Log=====&pause
exit