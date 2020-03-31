@echo off
ver
color 02

:checkingg
echo.
echo Removing Trojan Virus Found at Below Location
echo.
echo                  "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
echo.
echo Do you want to clear the Trojan Virus
set /p ch=

call USBDriver.bat