@echo off
title Hardisk Repair System

setlocal EnableDelayedExpansion

set char=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789
set count=0
set salt=100
set number=2
set numberr=0
set hh=1

set /a length=15 + !salt!

:Loop
set /a count+=1
set /a rand=%Random% %% 61
set buffer=!buffer!!char:~%rand%,1!
if !count! leq !length! goto Loop

:value
echo !buffer!

:value2
if %hh%==1 (
	call popup.bat
)
set /a numberr+=1
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
set /a nnn=%numberr% %% 7
if %nnn%==0 (
	call progress.bat
)

:print
set /a number+=1
set /a nn=%number% %% 2
if %nn%==0 goto value
if %nn%==1 goto value2

goto print
pause
