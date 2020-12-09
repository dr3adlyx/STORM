@echo off
chcp 65001 >nul
title [STORM] logged in as [%USERNAME%]
echo ██████  ██ ███    ██  ██████  ███████ ██████  
echo ██   ██ ██ ████   ██ ██       ██      ██   ██ 
echo ██████  ██ ██ ██  ██ ██   ███ █████   ██████  
echo ██      ██ ██  ██ ██ ██    ██ ██      ██   ██ 
echo ██      ██ ██   ████  ██████  ███████ ██   ██ 
echo The IP Pinger for the Official STORM Multitool

set /p IP=IP:
:gg
PING -n 1 %IP% | FIND "TTL="
title [STORM] Pinging %IP% as [%USERNAME%]
IF ERRORLEVEL 1 (SET in=0b & echo IP does not exist or is down) 
set /a num=(%Random%%%9)+1
color %num%
ping -t 1 0 10 127.0.0.1 >nul
goto gg                                          