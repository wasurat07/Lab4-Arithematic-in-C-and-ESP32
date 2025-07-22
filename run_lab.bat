@echo off
REM Lab4 Arithmetic ESP32 - Quick Start Script for Windows
REM This script helps setup and run the ESP32 arithmetic project

echo === Lab4 Arithmetic ESP32 Quick Start ===

REM Function to check if Docker is running
docker info >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Docker is not running. Please start Docker first.
    pause
    exit /b 1
)
echo ✅ Docker is running

REM Get command line argument
set "command=%1"
if "%command%"=="" set "command=all"

if "%command%"=="setup" goto setup
if "%command%"=="build" goto build  
if "%command%"=="run" goto run
if "%command%"=="info" goto info
if "%command%"=="clean" goto clean
if "%command%"=="all" goto all
if "%command%"=="help" goto help
if "%command%"=="-h" goto help
if "%command%"=="--help" goto help

echo ❌ Unknown command: %command%
goto help

:setup
echo 🔧 Setting up project...
echo Starting Docker container...
docker-compose up -d
if %errorlevel% equ 0 (
    echo ✅ Container started successfully
) else (
    echo ❌ Failed to start container
    pause
    exit /b 1
)
goto end

:build
echo 🔨 Building ESP32 project...
docker exec esp32-lab4 bash -c "cd /project && . $IDF_PATH/export.sh && idf.py set-target esp32 && idf.py build"
if %errorlevel% equ 0 (
    echo ✅ Build completed successfully
) else (
    echo ❌ Build failed
    pause
    exit /b 1
)
goto end

:run
echo 🚀 Running on ESP32 QEMU...
echo 📝 Press Ctrl+] to exit monitor
echo ⏳ Starting in 3 seconds...
timeout /t 3 /nobreak >nul
docker exec -it esp32-lab4 bash -c "cd /project && . $IDF_PATH/export.sh && idf.py qemu monitor"
goto end

:info
echo 📊 Project Information:
echo    Project: Lab4 Arithmetic Operations
echo    Target: ESP32
echo    Framework: ESP-IDF
echo    Container: esp32-lab4
echo.
echo 📁 Project Structure:
echo    ├── main/
echo    │   ├── main.c (Main arithmetic program)
echo    │   └── CMakeLists.txt
echo    ├── CMakeLists.txt
echo    ├── docker-compose.yml
echo    └── README.md
goto end

:clean
echo 🧹 Cleaning up...
docker-compose down
echo ✅ Cleanup completed
goto end

:all
call :info
call :setup
if %errorlevel% neq 0 goto end
call :build
if %errorlevel% neq 0 goto end
call :run
goto end

:help
echo Usage: %0 [command]
echo.
echo Commands:
echo   setup    - Setup and start Docker container
echo   build    - Build the ESP32 project
echo   run      - Run the project on QEMU
echo   info     - Show project information
echo   clean    - Clean up containers
echo   all      - Run setup, build, and run (default)
echo   help     - Show this help message
echo.
echo Examples:
echo   %0           # Run full sequence (setup + build + run)
echo   %0 setup     # Only setup container
echo   %0 build     # Only build project
echo   %0 run       # Only run on QEMU
goto end

:end
echo ✅ Script completed!
if not "%command%"=="run" pause
