@echo off
if /i "%processor_architecture%"=="AMD64" GOTO AMD64
if /i "%PROCESSOR_ARCHITEW6432%"=="AMD64" GOTO AMD64
if /i "%processor_architecture%"=="x86" GOTO x86
GOTO ERR

:AMD64
    start /wait "" "%~sdp0/dpinst_amd64.exe"
    GOTO END

:x86
    start /wait "" "%~sdp0/dpinst_x86.exe"
    GOTO END

:ERR
    exit /b 1

:END
    exit /b 0
