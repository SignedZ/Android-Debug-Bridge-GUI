@echo off
:memu
cls
title Android Debug Bridge����
echo ===================Android Debug Bridge����===================
echo =[1]Ӧ�ù���(���� ϵͳ ������ ��װ ж�� ���Ӧ������)        =
echo =[2]�ļ�����(����-�ֻ� �ֻ�-����)                            =
echo =[3]����ģ������(̫�಻�о�)                                 =
echo =[5]�豸��Ϣ(�ͺ� ��� �ֱ��� ��ʾ�� Android�汾 IMEI CPU..) =
echo =[6]С����                                                   =
echo =[7]�߼�������ĳЩ����ˢ��ѡ��                                =
echo =[8]Shell����                                                =
echo =[9]����(������ߺ�adb�汾)                                  =
echo ============================Ver.1.1===========================
choice /n /c:123456789 /m "���빦������...>"
if '%ERRORLEVEL%'=='1' goto App_Manager
if '%ERRORLEVEL%'=='2' goto File_Manager
if '%ERRORLEVEL%'=='3' goto Key_Simulation
if '%ERRORLEVEL%'=='5' goto Phone_Information
if '%ERRORLEVEL%'=='6' goto Hided
if '%ERRORLEVEL%'=='7' goto Boot
if '%ERRORLEVEL%'=='8' goto Shell
if '%ERRORLEVEL%'=='9' goto ABOUT


:App_Manager
cls
title Ӧ�ù���
echo ===================Android Debug Bridge����===================
echo =[1]��ʾ����Ӧ��                                             =
echo =[2]��װӦ��                                                 =
echo =[3]ж��Ӧ��                                                 =
echo =[4]������ҳ��                                               =
echo ============================Ver.1.1===========================
choice /n /c:1234 /m "���빦������...>"
if '%ERRORLEVEL%'=='1' start App_Manager\AllApp.bat
if '%ERRORLEVEL%'=='2' start App_Manager\Install-App.bat
if '%ERRORLEVEL%'=='3' start App_Manager\Uninstall-APP.bat
if '%ERRORLEVEL%'=='4' goto memu
goto App_Manager

:File_Manager
cls
title �ļ�����
echo ===================Android Debug Bridge����===================
echo =[1]�����ֻ��ϵ��ļ�������                                   =
echo =[2]���Ƶ����ϵ��ļ����ֻ�                                   =
echo =[3]�ص�������                                               =
echo ============================Ver.1.1===========================
choice /n /c:123 /m "���빦������...>"
if '%ERRORLEVEL%'=='1' start File_Manager\From-Phone-To-PC.bat
if '%ERRORLEVEL%'=='2' start File_Manager\From-PC-To-Phone.bat
if '%ERRORLEVEL%'=='3' goto memu
goto File_Manager


:Key_Simulation
cls
title ����ģ������
echo ===================Android Debug Bridge����===================
echo =[1]����Ļ��                                                 =
echo =[2]���ؼ�                                                   =
echo =[3]�򿪵绰                                                 =
echo =[4]�Ҷϵ绰                                                 =
echo =[5]��������                                                 =
echo =[6]��������                                                 =
echo =[7]��Դ��                                                   =
echo =[8]����(ֻ�����������)                                     =
echo =[9]�˵���                                                   =
echo =[0]����/��ͣ                                                =
echo =[a]ֹͣ����                                                 =
echo =[b]����                                                     =
echo =[c]������                                                 =
echo =[d]�л�app                                                  =
echo =[e]������Ļ                                                 =
echo =[f]������Ļ����                                             =
echo =[g]������Ļ����                                             =
echo =[h]�ر���Ļ                                                 =
echo =[i]��������                                                 =
echo =[j]������Ļ                                                 =
echo =[k]��������                                                 =
echo ============================Ver.1.1===========================
choice /n /c:1234567890abcdefghijk /m "���빦������...>"
if '%ERRORLEVEL%'=='1' start Key_Simulation\Key\Home-Key.bat
if '%ERRORLEVEL%'=='2' start Key_Simulation\Key\Back-Key.bat
if '%ERRORLEVEL%'=='3' start Key_Simulation\Key\Open-Call_App.bat
if '%ERRORLEVEL%'=='4' start Key_Simulation\Key\End-Of-Call_.bat
if '%ERRORLEVEL%'=='5' start Key_Simulation\Key\Up-Vol.bat
if '%ERRORLEVEL%'=='6' start Key_Simulation\Key\Down-Vol.bat
if '%ERRORLEVEL%'=='7' start Key_Simulation\Key\Power-Key.bat
if '%ERRORLEVEL%'=='8' start Key_Simulation\Key\Take-Photo.bat
if '%ERRORLEVEL%'=='9' start Key_Simulation\Key\Memu-Key.bat
if '%ERRORLEVEL%'=='10' start Key_Simulation\Key\Play-Pause.bat
if '%ERRORLEVEL%'=='11' start Key_Simulation\Key\Stop-Playing.bat
if '%ERRORLEVEL%'=='12' start Key_Simulation\Key\Vol-Shutup.bat
if '%ERRORLEVEL%'=='13' start Key_Simulation\Key\Open-Setting.bat
if '%ERRORLEVEL%'=='14' start Key_Simulation\Key\Swipe-App.bat
if '%ERRORLEVEL%'=='15' start Key_Simulation\Key\Light-Screen.bat
if '%ERRORLEVEL%'=='16' start Key_Simulation\Key\Up-Bright.bat
if '%ERRORLEVEL%'=='17' start Key_Simulation\Key\Down-Bright.bat
if '%ERRORLEVEL%'=='18' start Key_Simulation\Key\Shutdown-Screen.bat
if '%ERRORLEVEL%'=='19' start Key_Simulation\Input-Text.bat
if '%ERRORLEVEL%'=='20' start Key_Simulation\Swipe-Screen.bat
if '%ERRORLEVEL%'=='21' goto memu
goto Key_Simulation


:Phone_Information
cls
title �豸��Ϣ
echo ===================Android Debug Bridge����===================
echo =[1]�ͺ�                                                     =
echo =[2]���״��                                                 =
echo =[3]��Ļ�ֱ���                                               =
echo =[4]��Ļ�ܶ�                                                 =
echo =[5]��ʾ������                                               =
echo =[6]Android ID                                               =
echo =[7]IMEI(Android4.4����)                                     =
echo =[8]IMEI(Android5.0������)                                   =
echo =[9]Android�汾                                              =
echo =[0]Mac��ַ                                                  =
echo =[a]CPU��Ϣ                                                  =
echo =[b]��������                                                 =
echo ============================Ver.1.1===========================
choice /n /c:1234567890ab /m "���빦������...>"
if '%ERRORLEVEL%'=='1' 
if '%ERRORLEVEL%'=='2' 
if '%ERRORLEVEL%'=='3' 
if '%ERRORLEVEL%'=='4' 
if '%ERRORLEVEL%'=='5' 
if '%ERRORLEVEL%'=='6' 
if '%ERRORLEVEL%'=='7' 
if '%ERRORLEVEL%'=='8' 
if '%ERRORLEVEL%'=='9' 
if '%ERRORLEVEL%'=='10' 
if '%ERRORLEVEL%'=='11' 
if '%ERRORLEVEL%'=='12' goto memu
goto Phone_Information


:Hided
cls
title С����
echo ===================Android Debug Bridge����===================
echo =[1]��Ļ��ͼ(�������ֻ���Ŀ¼)                               =
echo =[2]��Ļ��ͼ(����������c�̸�Ŀ¼)                            =
echo =[3]��Ļ¼��(�������ֻ���Ŀ¼)                               =
echo =[4]��Ļ¼��(����������c��)                                  =
echo =[5]��������                                                 =
echo ============================Ver.1.1===========================
choice /n /c:12345 /m "���빦������...>"
if '%ERRORLEVEL%'=='1' 
if '%ERRORLEVEL%'=='2' 
if '%ERRORLEVEL%'=='3' 
if '%ERRORLEVEL%'=='4' 
if '%ERRORLEVEL%'=='5' goto memu
goto Hided


:Boot
cls
title �߼�����
echo ===================Android Debug Bridge����===================
echo =[0]����BootLoader                                           =
echo =[1]����                                                     =
echo =[2]������Recovery                                           =
echo =[3]������Fastboot                                           =
echo =[4]Sideload                                                 =
echo =[5]ˢ��REC                                                  =
echo =[6]��������                                                 =
echo ============================Ver.1.1===========================
choice /n /c:0123456 /m "���빦������...>"
if '%ERRORLEVEL%'=='0' goto BootMemu_2
if '%ERRORLEVEL%'=='1' start Boot\Reboot.bat
if '%ERRORLEVEL%'=='2' start Boot\Recovery.bat
if '%ERRORLEVEL%'=='3' start Boot\Recovery.bat
if '%ERRORLEVEL%'=='4' start Boot\Sideload.bat
if '%ERRORLEVEL%'=='5' start Boot\RecoveryInstaller.bat
if '%ERRORLEVEL%'=='6' goto memu
goto Boot

:BootMemu_2
cls
title �߼�����2
echo ===================Android Debug Bridge����===================
echo =[0]����һ��                                                 =
echo =[1]��Ϊϵ��                                                 =
echo =[2]С�׺͹ȸ�ϵ��                                           =
echo =ע:δ���� ���������                                        =
echo ============================Ver.1.1===========================
choice /n /c:0123456 /m "���빦������...>"
if '%ERRORLEVEL%'=='0' goto Boot
if '%ERRORLEVEL%'=='0' goto Boot
if '%ERRORLEVEL%'=='1' start Boot\PhoneBootloaderLocker\Huawei.bat
if '%ERRORLEVEL%'=='2' start Boot\PhoneBootloaderLocker\Google_Xiaomi.bat
goto BootMemu_2


:Shell
cls
title Shell����
echo ===================Android Debug Bridge����===================
echo =[1]�鿴����                                                 =
echo =[2]�鿴ʵʱ��Դռ��                                         =
echo =[3]��������                                                 =
echo ============================Ver.1.1===========================
choice /n /c:123 /m "���빦������...>"
if '%ERRORLEVEL%'=='1' 
if '%ERRORLEVEL%'=='2' 
if '%ERRORLEVEL%'=='3' goto memu
goto Shell


:ABOUT
cls
title ����
echo ===================Android Debug Bridge����===================
echo =[1]�鿴˵��                                                 =
echo =[2]��������Ŀ��githubҳ��                                   =
echo =[3]��������                                                 =
echo ============================Ver.1.1===========================
choice /n /c:123 /m "���빦������...>"
if '%ERRORLEVEL%'=='1' goto saying
if '%ERRORLEVEL%'=='2' Start https://github.com/SignedZ/Android-Debug-Bridge-Toolkit
if '%ERRORLEVEL%'=='3' goto memu
goto ABOUT


:saying
cls
title ����
echo ===================Android Debug Bridge����===================
echo =�ð�,д���������Ȼ����Ϊһʱ����.�տ�ʼ�Ӵ�ADB��ʱ������ =
echo =������̳�����ֻ����ˢ��twrp.�ɹ���,�ܿ���                  =
echo =���ǿ����˸�ʽ������ˢ��֮·((((((((                        =
echo =�Ѿ������������������ߵĳ��� �����̿�������               =
echo =�����б�Ҫ������ȥ��(Ц                                     =
echo ==========================2019 12.15==========================
pause.echo&goto ABOUT