@echo off
:again
cls
color 4
title ---------------- Quarantine Port Scanner --- Enter IP ----------------
mode con lines=15 cols=67
type quatmaina.py
echo.
set /p portip=[40;30m        [40;37m[[40;35mQuarantine[40;37m]~^>[40;33m 
start quatport.py %portip%
echo.
echo [40;30m        [40;34m%portip% [40;35mIs Scanned For Open Ports
echo.
echo [40;30m        [40;37mThe Port Scanner Will Reset In 3 Seconds . . .
ping localhost -n 3 >nul
goto again