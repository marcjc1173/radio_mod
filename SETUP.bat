@echo off
echo ========================================
echo Radio Mod - One-Click Setup
echo ========================================
echo.
echo This will set up everything automatically!
echo.

REM Get the directory where this script is located
set "SCRIPT_DIR=%~dp0"
set "MODS_DIR=%appdata%\.minecraft\mods"
set "RADIOMOD_DIR=%appdata%\.minecraft\radiomod"

echo [Step 1/3] Creating Radio Mod directory...
if not exist "%RADIOMOD_DIR%" mkdir "%RADIOMOD_DIR%"
if not exist "%RADIOMOD_DIR%\tools" mkdir "%RADIOMOD_DIR%\tools"
echo [OK] Directory created
echo.

echo [Step 2/3] Extracting portable tools...
REM Check if tools.zip exists
if exist "%SCRIPT_DIR%tools.zip" (
    echo Extracting portable tools...
    REM Extract to temp location first, then handle nested structure
    powershell -Command "$tempExtract = '%TEMP%\radiomod_tools_extract'; if (Test-Path $tempExtract) { Remove-Item $tempExtract -Recurse -Force }; Expand-Archive -Path '%SCRIPT_DIR%tools.zip' -DestinationPath $tempExtract -Force; $nestedTools = Join-Path $tempExtract 'tools'; if (Test-Path $nestedTools) { Copy-Item -Path (Join-Path $nestedTools '*') -Destination '%RADIOMOD_DIR%\tools' -Recurse -Force } else { Copy-Item -Path (Join-Path $tempExtract '*') -Destination '%RADIOMOD_DIR%\tools' -Recurse -Force }; Remove-Item $tempExtract -Recurse -Force"
    echo [OK] Tools extracted
) else (
    echo [INFO] tools.zip not found - will use system-installed tools
    echo Users will need to install Python, yt-dlp, and ffmpeg manually
    echo See README.txt for instructions
)
echo.

echo [Step 3/3] Installing mod...
if not exist "%MODS_DIR%" mkdir "%MODS_DIR%"
copy /Y "%SCRIPT_DIR%radiomod-1.0.0.jar" "%MODS_DIR%\" >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Could not copy mod to mods folder
    echo Please manually copy radiomod-1.0.0.jar to:
    echo %MODS_DIR%
    pause
    exit /b 1
)
echo [OK] Mod installed
echo.

echo ========================================
echo Setup Complete!
echo ========================================
echo.
echo The Radio Mod has been installed.
echo.
echo Next steps:
echo 1. Launch Minecraft with Forge 1.20.4
echo 2. Create or join a world
echo 3. Craft a Radio and enjoy music!
echo.
echo If you encounter issues, check TROUBLESHOOTING.md
echo.
pause

