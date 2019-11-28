@echo off
cls
netsh wlan show profile
echo.

set /p x="Enter the wifi in which you want to know the password: "

netsh wlan show profile "%x%" key=clear