@echo off
%adb% start-server
:back
set /p input=你想输入什么?(中文无效):
%adb% shell input text %input%
goto back