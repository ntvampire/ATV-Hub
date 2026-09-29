@echo off
title Android TV Emulator (ATV 9)
echo ====================================================
echo Starting Android TV 9.0 Emulator with Hyper-V (WHPX)
echo ====================================================
echo.

set "ANDROID_SDK_ROOT=D:\Projects\AndroidSDK"
set "ANDROID_HOME=D:\Projects\AndroidSDK"
set "PATH=D:\Projects\AndroidSDK\platform-tools;D:\Projects\AndroidSDK\emulator;%PATH%"

cd /d "D:\Projects\AndroidSDK\emulator"
emulator.exe -avd ATV_11 -gpu auto -accel on

pause
