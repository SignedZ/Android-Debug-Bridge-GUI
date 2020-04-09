@echo off
%adb% start-server
title  
cls
:main
echo ===================???===================
echo +[1]自输入KeyEvent(单循环)              +
echo +[2]无限循环一个KeyEvent                +
echo +[3]带延迟的循环                        +
echo ===================???===================
choice /n /c:123 /m "键入选择...>"
if '%ERRORLEVEL%'=='1' goto Input_KeyEvent_Once
if '%ERRORLEVEL%'=='2' goto Loop
if '%ERRORLEVEL%'=='3' goto Loop_With_Delay


:Input_KeyEvent_Once
cls
title  
echo ===================???===================
set /p input=输入KeyEvent:
cls
echo ===================???===================
choice /n /c:YN /m "是否生成独立脚本到C盘(Y/N)>"
if '%ERRORLEVEL%'=='1' goto Input_KeyEvent_Once_Export
if '%ERRORLEVEL%'=='2' goto Input_KeyEvent_Once_Start


:Input_KeyEvent_Once_Export
cls
title Writing
echo @echo off>C:\OnlyOnce.bat
echo %adb% start-server>>C:\OnlyOnce.bat
echo %adb% shell input keyevent %input%>>C:\OnlyOnce.bat
echo exit>>C:\OnlyOnce.bat
goto main


:Input_KeyEvent_Once_Start
cls
%adb% shell input keyevent %input%
goto Input_KeyEvent_Once


:Loop
cls
title  
echo ===================???===================
set /p input_2=输入KeyEvent:
cls
echo ===================???===================
choice /n /c:YN /m "是否生成独立脚本到C盘(Y/N)>"
if '%ERRORLEVEL%'=='1' goto Loop_Export
if '%ERRORLEVEL%'=='2' goto Loop_Start


:Loop_Export
cls
title Writing
echo @echo off>C:\Loop.bat
echo %adb% start-server>>C:\Loop.bat
echo :back>>C:\Loop.bat
echo %adb% shell input keyevent %input_2%>>C:\Loop.bat
echo goto back>>C:\Loop.bat
goto main


:Loop_Start
cls
%adb% shell input keyevent %input_2%
goto Loop_Start

:Loop_With_Delay
cls
title  
echo ===================???===================
set /p input_3=输入KeyEvent:
set /p input_4=输入延迟秒数(单位s)
cls
echo ===================???===================
choice /n /c:YN /m "是否生成独立脚本到C盘(Y/N)>"
if '%ERRORLEVEL%'=='1' goto Loop_With_Delay_Export
if '%ERRORLEVEL%'=='2' goto Loop_With_Delay_Start
:Loop_With_Delay_Export
cls
title Writing
echo @echo off>C:\Loop_Delay.bat
echo %adb% start-server>>C:\Loop_Delay.bat
echo :back>>C:\Loop_Delay.bat
echo %adb% shell input keyevent %input_3%>>C:\Loop_Delay.bat
echo ping -n %input_4% 127.0.0.1>>C:\Loop_Delay.bat
echo goto back>>C:\Loop_Delay.bat
goto main

:Loop_With_Delay_Start
cls
%adb% shell input keyevent %input_3%
ping -n %input_4% 127.0.0.1>nul
goto Loop_With_Delay_Start