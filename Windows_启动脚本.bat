@echo off
mode con cols=80 lines=30
title=watchdog-ddns
color 3f
echo ��watchdog-ddns �������������Ժ�...
echo ��                           
echo ��=================================================================
echo ��                   ��ӭʹ�� watchdog-ddns
echo ��                        ����������
echo ��=================================================================
echo ��                                     
call ddns-client.exe
echo.
pause
