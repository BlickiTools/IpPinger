@echo off
color C
title Blicki Pinger
                        
echo =====-Blicki Pinger By Blicki#0001-=====
set /p IP="Host: "
:top
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=0b & echo RIP BOZO HES DOWNED .)
color %in%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top