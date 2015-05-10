@echo off
runas /user:ShirisKumar\Shiris Kumar /savecred "elevate.cmd sc stop \"$ServiceName\""
netsh interface set interface Wi-Fi ENABLE
echo Process completed
timeout /t 10
