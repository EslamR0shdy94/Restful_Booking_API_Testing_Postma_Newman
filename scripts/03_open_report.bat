echo ================================
echo Open Allure Report in Chrome
echo ================================

set BASE_DIR=%~dp0..

allure open "%BASE_DIR%\allure-report"

echo ================================
echo ✅ All Done. Report should now display test results
echo Press any key to exit...
pause

