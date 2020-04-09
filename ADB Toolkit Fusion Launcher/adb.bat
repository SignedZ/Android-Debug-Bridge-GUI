@echo off
:cmd
title ADB Command Line
set /p command=¡ú
%adb% %command%
goto cmd