@echo off
:: Silent Background Execution
powershell -NoProfile -WindowStyle Hidden -Command "Start-Process calc.exe"
:: Kamu bisa menambahkan reverse shell di sini
exit
