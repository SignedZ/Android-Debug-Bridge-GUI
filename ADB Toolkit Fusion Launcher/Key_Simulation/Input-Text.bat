@echo off
%adb% start-server
:back
set /p input=��������ʲô?(������Ч):
%adb% shell input text %input%
goto back