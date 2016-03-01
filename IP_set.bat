@ECHO off
cls
:start
ECHO.
ECHO 1. 0 Series
ECHO 2. 1 Series
ECHO 3. Obtain an IP address automatically
ECHO 4. View Wifi IPv4 Details
ECHO 4. Exit
set choice=
set /p choice=Type the number to print text.
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto con1
if '%choice%'=='2' goto con2
if '%choice%'=='3' goto autosearch
if '%choice%'=='4' goto view
if '%choice%'=='5' goto bye
ECHO "%choice%" is not valid, try again
ECHO.



goto start
:con1
ECHO 0 series
ipconfig /renew "Wi-Fi"
netsh interface ipv4 set address "Wi-Fi" static 192.168.0.1 255.255.255.0 192.168.0.1
goto start

:con2
ECHO 1 Series
ipconfig /renew "Wi-Fi"
netsh interface ipv4 set address "Wi-Fi" static 192.168.1.1 255.255.255.0 192.168.1.1
goto start

:autosearch
ECHO DHCP: Obtaining IP Address
ipconfig /renew "Wi-Fi"
goto start

:view
ECHO Your IPv4 details:
netsh interface ipv4 show addresses "Wi-Fi"
goto start

:bye
ECHO BYE
goto end

:end