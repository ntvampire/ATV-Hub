@echo off
title Installing ATV Hub to Emulator
echo ====================================================
echo Installing ATV Hub into running Android TV emulator
echo ====================================================
echo.

set "ADB=D:\Projects\AndroidSDK\platform-tools\adb.exe"
set "APK=d:\Projects\ATV-Hub\ATV-Hub-v1.0.1.apk"

echo Waiting for emulator device...
"%ADB%" wait-for-device

echo Installing %APK%...
"%ADB%" install -r "%APK%"

echo Launching ATV Hub on TV screen...
"%ADB%" shell am start -n com.atvhub.launcher/.ui.MainActivity

echo.
echo ====================================================
echo [SUCCESS] ATV Hub installed and running!
echo ====================================================
echo.
pause
