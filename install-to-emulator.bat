@echo off
title Installing ATV Hub to Emulator
echo ====================================================
echo Installing ATV Hub into running Android TV emulator
echo ====================================================
echo.

set "ADB=D:\Projects\AndroidSDK\platform-tools\adb.exe"

set "APK=D:\Projects\ATV-Hub\app\build\outputs\apk\release\ATV-Hub-v1.0.1.apk"
if not exist "%APK%" set "APK=D:\Projects\ATV-Hub\app\build\outputs\apk\debug\ATV-Hub-v1.0.1-debug.apk"

echo Waiting for emulator device...
"%ADB%" wait-for-device

echo Installing %APK%...
"%ADB%" install -r -d "%APK%"

echo Launching ATV Hub on TV screen...
"%ADB%" shell monkey -p com.atvhub.launcher -c android.intent.category.LAUNCHER 1

echo.
echo ====================================================
echo [SUCCESS] ATV Hub installed and running!
echo ====================================================
echo.
pause
