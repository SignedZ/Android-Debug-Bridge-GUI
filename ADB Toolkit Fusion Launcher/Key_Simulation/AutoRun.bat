@echo off
%adb% start-server
cls
set /p File_Location=请输入保存位置:
set /p File_Name=请输入文件名(不包含后缀):
cls
echo nice....
cls
echo 正在新建文件...
echo @echo off>%File_Location%\%File_Name%.bat
echo %adb% start-server>>%File_Location%\%File_Name%.bat
echo cls>>%File_Location%\%File_Name%.bat


:Loop_Start
cls
echo 如果你已完成自动脚本的制作,直接关闭cmd
choice /n /c:YN /m "是否加入延迟(Y/N)>"
if '%ERRORLEVEL%'=='1' goto ADD_DELAY
if '%ERRORLEVEL%'=='2' goto No_Delay


:ADD_DELAY
set /p delay=延迟长短(单位1s):
echo 正在写入命令
echo ping -n %delay% 127.0.0.1>>%File_Location%\%File_Name%.bat
echo cls>>%File_Location%\%File_Name%.bat
cls
set /p command=输入adb命令(可查找网站或者寻找ADB Toolkit的单独功能文件):
echo 正在写入命令
echo %command%>>%File_Location%\%File_Name%.bat
echo 跳转...
goto Loop_Start


:No_Delay
set /p command=输入adb命令(可查找网站或者寻找ADB Toolkit的单独功能文件):
echo 正在写入命令
echo %command%>>%File_Location%\%File_Name%.bat
echo 跳转...
goto Loop_Start

