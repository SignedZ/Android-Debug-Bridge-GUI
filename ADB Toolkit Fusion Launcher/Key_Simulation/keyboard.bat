@echo off
echo ³õÊ¼»¯ÖÐ
%adb% start-server
cls
:mui
cls
title AutoPushMessage
choice /n /c:abcdefghijklmnopqrstuvwxyz1234567890 /m ">"
if '%ERRORLEVEL%'=='1' %adb% shell input keyevent 29
if '%ERRORLEVEL%'=='2' %adb% shell input keyevent 30
if '%ERRORLEVEL%'=='3' %adb% shell input keyevent 31
if '%ERRORLEVEL%'=='4' %adb% shell input keyevent 32
if '%ERRORLEVEL%'=='5' %adb% shell input keyevent 33
if '%ERRORLEVEL%'=='6' %adb% shell input keyevent 34
if '%ERRORLEVEL%'=='7' %adb% shell input keyevent 35
if '%ERRORLEVEL%'=='8' %adb% shell input keyevent 36
if '%ERRORLEVEL%'=='9' %adb% shell input keyevent 37
if '%ERRORLEVEL%'=='10' %adb% shell input keyevent 38
if '%ERRORLEVEL%'=='11' %adb% shell input keyevent 39
if '%ERRORLEVEL%'=='12' %adb% shell input keyevent 40
if '%ERRORLEVEL%'=='13' %adb% shell input keyevent 41
if '%ERRORLEVEL%'=='14' %adb% shell input keyevent 42
if '%ERRORLEVEL%'=='15' %adb% shell input keyevent 43
if '%ERRORLEVEL%'=='16' %adb% shell input keyevent 44
if '%ERRORLEVEL%'==17'' %adb% shell input keyevent 45
if '%ERRORLEVEL%'=='18' %adb% shell input keyevent 46
if '%ERRORLEVEL%'=='19' %adb% shell input keyevent 47
if '%ERRORLEVEL%'=='20' %adb% shell input keyevent 48
if '%ERRORLEVEL%'=='21' %adb% shell input keyevent 49
if '%ERRORLEVEL%'=='22' %adb% shell input keyevent 50
if '%ERRORLEVEL%'=='23' %adb% shell input keyevent 51
if '%ERRORLEVEL%'=='24' %adb% shell input keyevent 52
if '%ERRORLEVEL%'=='25' %adb% shell input keyevent 53
if '%ERRORLEVEL%'=='26' %adb% shell input keyevent 54
if '%ERRORLEVEL%'=='27' %adb% shell input keyevent 8
if '%ERRORLEVEL%'=='28' %adb% shell input keyevent 9
if '%ERRORLEVEL%'=='29' %adb% shell input keyevent 10
if '%ERRORLEVEL%'=='30' %adb% shell input keyevent 11
if '%ERRORLEVEL%'=='31' %adb% shell input keyevent 12
if '%ERRORLEVEL%'=='32' %adb% shell input keyevent 13
if '%ERRORLEVEL%'=='33' %adb% shell input keyevent 14
if '%ERRORLEVEL%'=='34' %adb% shell input keyevent 15
if '%ERRORLEVEL%'=='35' %adb% shell input keyevent 16
if '%ERRORLEVEL%'=='36' %adb% shell input keyevent 7
goto mui