@echo off

:: script to run ENHSP

:: timestamp
for /f %%i in ('powershell -Command "Get-Date -format 'yyyyMMdd_HHmmss'"') do set TIMESTAMP=%%i

:: ENHSP FLAGS
:: -o $DomainFile  : domain file
:: -f $ProblemFile : problem file
:: -sjr            : exports the tree in JSON/sp_log for the website
:: -sp <file>      : saves the final plan to a txt file
:: -timeout <n>    : kills the planner after n seconds
:: -onlyplan       : hides all the engine unecessary info and just prints the actions
:: -pt             : print trajectory, shows the numbers after each step


:: IMPORTANT: uncomment ONLY ONE of the java commands below at a time!

:: A: DRAFTING MODE (satisficing)
:: finds a working plan quickly using the h_add heuristic
java -jar "%~dp0..\enhsp25.jar" -o %1 -f %2 -planner sat-hadd -sjr

:: B: OPTIMAL MODE
:: Finds the path with the absolute lowest cost using h_max heuristic
::java -jar "%~dp0..\enhsp25.jar" -o %1 -f %2 -planner opt-hrmax -sjr

:: C: BENCHMARK MODE
:: testing the 5 scaling instances for the report. Stops at 60s, saves the plan
::java -jar "%~dp0..\enhsp25.jar" -o %1 -f %2 -planner sat-hadd -timeout 60 -onlyplan -sp "%~dp0logsPDDL\clean_plan_output.txt"

:: D: DEBUG MODE
:: prints the exact state of the universe after every step
:: java -jar "%~dp0..\enhsp25.jar" -o %1 -f %2 -planner sat-hadd -pt -print_actions

:: E: GUI
:: a plan, hides the metrics, saves the plan and final state
::java -jar "%~dp0..\enhsp25.jar" -o %1 -f %2 -planner sat-hadd -onlyplan -pls > "%~dp0logsPDDL\final_state_output_%TIMESTAMP%.txt"

:: make the logsPDDL folder
:: $PSScriptRoot is where this script is -Force hides "folder already exists" error.
mkdir "%~dp0logsPDDL" 2>nul

:: Grabs .sp_log file and renames it
move "%~dp2*.sp_log" "%~dp0logsPDDL\plan_tree_%TIMESTAMP%.sp_log" >nul 2>&1

:: force exit cleanly
exit /b 0

:: Site to visualize the node tree
:: https://clementchamayou.github.io/enhsptree/