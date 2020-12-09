@echo off
cls
mode con lines=10 cols=49
title Connection Test
:loop
set /a ran=(%Random%%%9)+1
color %ran%
PING -n 1 1.1.1.1 | FIND "TTL="
IF ERRORLEVEL 1 echo [!] You are under attack - Someone is flooding your Network [!]
goto loop
