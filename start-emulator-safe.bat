@echo off
chcp 65001 > nul
title Android TV Emulator (Safe Software GPU)
echo ====================================================
echo Запуск Android TV эмулятора в безопасном режиме (SwiftShader)
echo ====================================================
echo.

set "ANDROID_SDK_ROOT=D:\Projects\AndroidSDK"
set "ANDROID_HOME=D:\Projects\AndroidSDK"
set "PATH=D:\Projects\AndroidSDK\platform-tools;D:\Projects\AndroidSDK\emulator;%PATH%"

cd /d "D:\Projects\AndroidSDK\emulator"
emulator.exe -avd ATV_9 -gpu swiftshader -accel on

pause
