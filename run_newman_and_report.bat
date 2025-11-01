@echo off
echo ================================
echo   STEP 1: Run Newman
echo ================================
call scripts\01_run_newman.bat

echo ================================
echo   STEP 2: Generate Allure Report
echo ================================
call scripts\02_generate_report.bat

echo ================================
echo   STEP 3: Open Report in Chrome
echo ================================
call scripts\03_open_report.bat

echo ================================
echo ✅ ALL DONE
echo ================================
pause