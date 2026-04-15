@echo off

for /f %%i in ('powershell -Command "Get-Date -format 'yyyyMMdd_HHmmss'"') do set TIMESTAMP=%%i

:: java -jar "%~dp0..\enhsp25.jar" -o %1 -f %2 -planner sat-hadd -sjr
java -jar "%~dp0..\enhsp25.jar" -o %1 -f %2 -planner opt-hrmax -sjr
:: java -jar "%~dp0..\enhsp25.jar" -o %1 -f %2 -planner sat-hadd -timeout 60 -onlyplan -sp "%~dp0logsPDDL\clean_plan_output.txt"
:: java -jar "%~dp0..\enhsp25.jar" -o %1 -f %2 -planner sat-hadd -pt -print_actions

mkdir "%~dp0logsPDDL" 2>nul

move "%~dp2*.sp_log" "%~dp0logsPDDL\plan_tree_%TIMESTAMP%.sp_log" >nul 2>&1
:: move "%~dp2*.sp_log" "%~dp0logsPDDL\" >nul 2>&1

exit /b 0

:: https://clementchamayou.github.io/enhsptree/