# ATV-Hub Build and Release Script
param (
    [string]$sdk = "D:\Projects\AndroidSDK",
    [string]$repoRoot = "D:\Projects\ATV-Hub"
)

$ErrorActionPreference = "Stop"

$env:JAVA_HOME = "$sdk\jdk-17"
$env:PATH = "$sdk\jdk-17\bin;" + $env:PATH
$javac = "$sdk\jdk-17\bin\javac.exe"
$d8 = "$sdk\build-tools\34.0.0\d8.bat"
$jar = "$sdk\jdk-17\bin\jar.exe"
$apktool = "$sdk\tools\apktool\apktool.jar"
$java = "$sdk\jdk-17\bin\java.exe"
$zipalign = "$sdk\build-tools\34.0.0\zipalign.exe"
$apksigner = "$sdk\build-tools\34.0.0\apksigner.bat"
$keystore = "$env:USERPROFILE\.android\debug.keystore"
$androidJar = "$sdk\platforms\android-34\android.jar"
$stubsDir = "$sdk\stubs"
$binDir = "$sdk\bin"
$dexDir = "$sdk\st_dex"

Write-Host ">>> Compiling SmartTubeBridge..." -ForegroundColor Cyan
Copy-Item "$repoRoot\bridge\SmartTubeBridge.java" "$stubsDir\SmartTubeBridge.java" -Force

Remove-Item -Path "$binDir\*" -Recurse -Force -ErrorAction SilentlyContinue
& $javac -encoding UTF-8 -cp "$androidJar;$stubsDir" -d $binDir "$stubsDir\SmartTubeBridge.java"
if ($LASTEXITCODE -ne 0) { throw "javac failed" }

Write-Host ">>> Compiling DEX via d8..." -ForegroundColor Cyan
Remove-Item -Path "$dexDir\*" -Recurse -Force -ErrorAction SilentlyContinue
$classFiles = Get-ChildItem -Path $binDir -Filter "SmartTubeBridge*.class" | ForEach-Object { $_.FullName }
& $d8 --output $dexDir $classFiles
if ($LASTEXITCODE -ne 0) { throw "d8 failed" }

Write-Host ">>> Baksmaling into smali..." -ForegroundColor Cyan
& $jar cf "$dexDir\dummy.apk" -C $dexDir classes.dex
Remove-Item -Path "$dexDir\smali_out" -Recurse -Force -ErrorAction SilentlyContinue
& $java -jar $apktool d -f "$dexDir\dummy.apk" -o "$dexDir\smali_out"
if ($LASTEXITCODE -ne 0) { throw "apktool d failed" }

Copy-Item -Path "$dexDir\smali_out\smali\SmartTubeBridge*.smali" -Destination "$sdk\apktool_flux\smali\" -Force

Write-Host ">>> Building APK via apktool..." -ForegroundColor Cyan
& $java -jar $apktool b "$sdk\apktool_flux" -o "$sdk\atv_hub_rebuilt.apk"
if ($LASTEXITCODE -ne 0) { throw "apktool b failed" }

$distDir = "$repoRoot\dist"
if (!(Test-Path $distDir)) {
    New-Item -ItemType Directory -Path $distDir -Force | Out-Null
}
$finalApk = "$distDir\atv_hub.apk"
Remove-Item -Path $finalApk -Force -ErrorAction SilentlyContinue

Write-Host ">>> Aligning and signing APK..." -ForegroundColor Cyan
& $zipalign -p -f 4 "$sdk\atv_hub_rebuilt.apk" $finalApk
& $apksigner sign --ks $keystore --ks-pass pass:android $finalApk
if ($LASTEXITCODE -ne 0) { throw "apksigner failed" }

Write-Host "[SUCCESS] ATV-Hub built and signed at: $finalApk" -ForegroundColor Green
