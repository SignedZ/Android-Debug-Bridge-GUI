@echo off
%adb% start-server
cls
set /p File_Location=�����뱣��λ��:
set /p File_Name=�������ļ���(��������׺):
cls
echo nice....
cls
echo �����½��ļ�...
echo @echo off>%File_Location%\%File_Name%.bat
echo %adb% start-server>>%File_Location%\%File_Name%.bat
echo cls>>%File_Location%\%File_Name%.bat


:Loop_Start
cls
echo �����������Զ��ű�������,ֱ�ӹر�cmd
choice /n /c:YN /m "�Ƿ�����ӳ�(Y/N)>"
if '%ERRORLEVEL%'=='1' goto ADD_DELAY
if '%ERRORLEVEL%'=='2' goto No_Delay


:ADD_DELAY
set /p delay=�ӳٳ���(��λ1s):
echo ����д������
echo ping -n %delay% 127.0.0.1>>%File_Location%\%File_Name%.bat
echo cls>>%File_Location%\%File_Name%.bat
cls
set /p command=����adb����(�ɲ�����վ����Ѱ��ADB Toolkit�ĵ��������ļ�):
echo ����д������
echo %command%>>%File_Location%\%File_Name%.bat
echo ��ת...
goto Loop_Start


:No_Delay
set /p command=����adb����(�ɲ�����վ����Ѱ��ADB Toolkit�ĵ��������ļ�):
echo ����д������
echo %command%>>%File_Location%\%File_Name%.bat
echo ��ת...
goto Loop_Start

