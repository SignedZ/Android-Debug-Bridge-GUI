@echo off
:cmd
title ADB Command Line
set /p command=��
%adb% %command%
goto cmd