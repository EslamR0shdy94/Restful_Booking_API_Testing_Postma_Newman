@echo off
echo ================================
echo   Generating Allure Report
echo ================================

set BASE_DIR=%~dp0..

:: التحقق من وجود النتائج
IF NOT EXIST "%BASE_DIR%\allure-results" (
    echo ❌ ERROR: allure-results folder not found! Run Newman first.
    pause
    exit /b
)

:: توليد تقرير Allure

echo ================================
echo Generating Allure Report
echo ================================

allure generate "%BASE_DIR%\allure-results" -o "%BASE_DIR%\allure-report"
if %errorlevel% neq 0 (
echo ❌ ERROR: Allure report generation failed!
pause
exit /b
)

echo ================================
echo ✅ All Done. Report should now display test results
echo Press any key to exit...
pause

