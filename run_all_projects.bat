@echo off
REM สคริปท์สำหรับรันโปรเจคทั้งหมดตามลำดับ (Windows)

echo 🚀 เริ่มต้นการเรียนรู้ Lab4 ทีละโปรเจค
echo ========================================

REM ตรวจสอบว่าอยู่ในไดเรกทอรีที่ถูกต้อง
if not exist "projects" (
    echo ❌ ไม่พบโฟลเดอร์ projects
    echo กรุณารันจากไดเรกทอรีหลักของ Lab4
    pause
    exit /b 1
)

REM ตรวจสอบ Docker
docker ps | findstr esp32-lab4 >nul
if %errorlevel% neq 0 (
    echo ⚠️  ไม่พบ Container esp32-lab4 กำลังทำงาน
    echo 🔧 กำลังเริ่ม Container...
    docker-compose up -d
    timeout /t 5 /nobreak >nul
    
    docker ps | findstr esp32-lab4 >nul
    if %errorlevel% neq 0 (
        echo ❌ ไม่สามารถเริ่ม Container ได้
        echo กรุณาตรวจสอบ Docker และ docker-compose.yml
        pause
        exit /b 1
    )
)
echo ✅ Container esp32-lab4 พร้อมใช้งาน

:menu
echo.
echo 📋 เลือกโหมดการเรียนรู้:
echo 1. รันทุกโปรเจคตามลำดับ (แนะนำ)
echo 2. เลือกโปรเจคที่ต้องการ
echo 3. แสดงรายการโปรเจค
echo 4. ออกจากโปรแกรม
echo.
set /p choice=เลือก (1-4): 

if "%choice%"=="1" goto run_all
if "%choice%"=="2" goto select_project
if "%choice%"=="3" goto show_list
if "%choice%"=="4" goto exit
echo ❌ ตัวเลือกไม่ถูกต้อง กรุณาเลือก 1-4
goto menu

:run_all
echo.
echo 🎓 เริ่มเรียนรู้ทุกโปรเจคตามลำดับ
echo ==================================
call :run_project 01_addition_eggs
call :run_project 02_subtraction_toys
call :run_project 03_multiplication_candies
call :run_project 04_division_cookies
echo.
echo 🎉 เรียนจบทุกโปรเจคแล้ว!
echo ยินดีด้วย! คุณได้เรียนรู้การคำนวณพื้นฐานทั้งหมดแล้ว
pause
goto menu

:select_project
call :show_project_list
echo 0. กลับไปเมนูหลัก
echo.
set /p project_choice=เลือกโปรเจค (0-4): 

if "%project_choice%"=="0" goto menu
if "%project_choice%"=="1" call :run_project 01_addition_eggs
if "%project_choice%"=="2" call :run_project 02_subtraction_toys
if "%project_choice%"=="3" call :run_project 03_multiplication_candies
if "%project_choice%"=="4" call :run_project 04_division_cookies
if "%project_choice%" geq "5" (
    echo ❌ ตัวเลือกไม่ถูกต้อง
    pause
)
goto menu

:show_list
call :show_project_list
pause
goto menu

:show_project_list
echo.
echo 📋 รายการโปรเจครทั้งหมด:
echo ========================
echo 1. 01_addition_eggs
echo    โปรเจค 1: การบวก - ไข่ไก่ของแม่ 🥚
echo.
echo 2. 02_subtraction_toys
echo    โปรเจค 2: การลบ - ของเล่นของน้อง 🧸
echo.
echo 3. 03_multiplication_candies
echo    โปรเจค 3: การคูณ - ลูกอมในถุง 🍬
echo.
echo 4. 04_division_cookies
echo    โปรเจค 4: การหาร - คุกกี้แบ่งกัน 🍪
echo.
goto :eof

:run_project
set project_name=%1
set project_path=projects\%project_name%

echo.
echo 📁 โปรเจค: %project_name%
echo ========================

if not exist "%project_path%" (
    echo ❌ ไม่พบโฟลเดอร์ %project_path%
    pause
    goto :eof
)

echo 🔨 กำลัง build โปรเจค...
docker exec esp32-lab4 bash -c "cd /project/%project_path% && . $IDF_PATH/export.sh && idf.py build" >nul 2>&1
if %errorlevel% equ 0 (
    echo ✅ Build สำเร็จ
    echo 🚀 กำลังรันโปรเจค...
    echo 📝 กด Ctrl+] เพื่อหยุดและไปโปรเจคถัดไป
    echo.
    
    REM รันโปรเจค
    docker exec -it esp32-lab4 bash -c "cd /project/%project_path% && . $IDF_PATH/export.sh && idf.py qemu monitor"
    
) else (
    echo ❌ Build ไม่สำเร็จ
    echo กรุณาตรวจสอบโค้ดในโปรเจค %project_name%
    pause
)

echo.
echo ⏸️  หยุดชั่วคราว 3 วินาที...
timeout /t 3 /nobreak >nul
goto :eof

:exit
echo 👋 ขอบคุณที่ใช้งาน Lab4!
exit /b 0
