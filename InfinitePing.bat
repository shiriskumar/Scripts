@echo off
:ping
PING -n 1 www.google.com | FIND "TTL="
REM you can also use some other IP address, instead of www.google.com
IF ERRORLEVEL 1 (SET OUT=4F  & echo Request timed out.) ELSE (SET OUT=2F)
color %OUT%
GoTo ping
pause
