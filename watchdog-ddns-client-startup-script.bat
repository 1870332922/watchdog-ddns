@echo off
mode con cols=65 lines=30
title=watchdog-ddns-client-startup-script
color 3f

:check
SET conf=.\conf
if not exist %conf% (md conf)
SET configJSON=.\conf\client.json
if not exist %configJSON% (watchdog-ddns-client -init)else goto start

echo Program Init.
echo Please change .\conf\client.json
echo Press any key to contiune ...
pause>nul
cls

:start
echo watchdog-ddns-client is starting...
echo.
echo =================================================================
echo                   Welcome to use watchdog-ddns-client
echo                     This program is already running
echo =================================================================
echo.
call watchdog-ddns-client.exe
echo.
echo Program exit. Press any key to restart watchdog-ddns ...
pause>nul
cls
goto start
