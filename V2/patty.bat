@echo off

:: timestamp per non far sovrascrivere
for /f %%i in ('powershell -Command "Get-Date -format 'yyyyMMdd_HHmmss'"') do set TIMESTAMP=%%i

"C:\Users\gaibo\miniconda3\envs\patty\python.exe" 
"C:\Users\gaibo\Desktop\Universita\Sistemi Intelligenti\patty\main.py" -o "%1" -f "%2" -n 2 --encoding binary --solver z3 --save-plan "logs\plan_%TIMESTAMP%.txt"

echo.
echo fine
echo risultato in: logs\plan_%TIMESTAMP%.txt