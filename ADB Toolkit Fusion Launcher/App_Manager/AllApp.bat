@echo off
%adb% shell pm list packages
echo [%date%-%time%]Action:app.list>>D:\ADB_Tools.log
pause.echo