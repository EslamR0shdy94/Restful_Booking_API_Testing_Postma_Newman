@echo off
echo ================================
echo Starting API Test Run with Newman
echo ================================
:: المسار الحالي للـ BAT

set BASE_DIR=%~dp0..

:: تنظيف النتائج القديمة

IF EXIST "%BASE_DIR%\allure-results" rmdir /s /q "%BASE_DIR%\allure-results"

IF EXIST "%BASE_DIR%\allure-report" rmdir /s /q "%BASE_DIR%\allure-report"

:: تشغيل Newman مع Allure reporter

newman run "%BASE_DIR%\Collections\Restful-Booker-collection.json" -e "%BASE_DIR%\Environment\Restful-Booker-Env.json" --reporters cli,allure --verbose"
if %errorlevel% neq 0 (
echo ❌ ERROR: Newman run failed!
pause
exit /b
)
:: التحقق من وجود ملفات JSON في allure-results
dir "%BASE_DIR%\allure-results\*.json" >nul 2>&1
if %errorlevel% neq 0 (
echo ❌ ERROR: No test results found in allure-results! Make sure your collection has assertions.
pause
exit /b
)

echo ================================
echo ✅ All Done. Report should now display test results
echo Press any key to exit...
pause
