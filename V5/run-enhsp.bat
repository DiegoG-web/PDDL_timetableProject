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
::java -jar "%~dp0..\enhsp25.jar" -o %1 -f %2 -planner sat-hadd -sjr
::java -jar "%~dp0..\enhsp25.jar" -o %1 -f %2 -planner sat-hadd -sjr -sp "%~dp0logsPDDL\saved_plan_output_%TIMESTAMP%.txt"
java -jar "%~dp0..\enhsp25.jar" -o %1 -f %2 -planner sat-hadd -sjr -pls > "%~dp0logsPDDL\print_very_last_state%TIMESTAMP%.txt" -sp "%~dp0logsPDDL\saved_plan_output_%TIMESTAMP%.txt"
::java -jar "%~dp0..\enhsp25.jar" -o %1 -f %2 -planner sat-hadd -anytime -timeout 10 -sjr -pls > "%~dp0logsPDDL\print_very_last_state%TIMESTAMP%.txt" -sp "%~dp0logsPDDL\saved_plan_output_%TIMESTAMP%.txt"

:: B: OPTIMAL MODE
:: Finds the path with the absolute lowest cost using h_max heuristic
::java -jar "%~dp0..\enhsp25.jar" -o %1 -f %2 -planner opt-hrmax -timeout 60 -sjr 
:: OPT_HMAX OPT_HRMAX

:: C: BENCHMARK MODE
:: testing the 5 scaling instances for the report. Stops at 60s, saves the plan
::java -jar "%~dp0..\enhsp25.jar" -o %1 -f %2 -planner sat-hadd -timeout 60 -onlyplan -sp "%~dp0logsPDDL\clean_plan_output.txt"

:: D: DEBUG MODE
:: prints the exact state of the universe after every step
:: java -jar "%~dp0..\enhsp25.jar" -o %1 -f %2 -planner sat-hadd -pt -print_actions

:: E: GUI
:: a plan, hides the metrics, saves the plan and final state
::java -jar "%~dp0..\enhsp25.jar" -o %1 -f %2 -planner sat-hadd -onlyplan -pls > "%~dp0logsPDDL\final_state_output_%TIMESTAMP%.txt"

:: E: MULTIPLE SOLUTIONS
:: flag -anytime. Questa vi esegue enhsp in modo da ottenere un numero di soluzioni di costo decrescente. 
::Qui sarebbe da capire come si comporta il planner nel tempo.


::java -jar "%~dp0..\enhsp25.jar" -o %1 -f %2 -planner sat-hadd -anytime -timeout 120 -pls > "%~dp0logsPDDL\final_state_output_%TIMESTAMP%.txt" -sp "%~dp0logsPDDL\clean_plan_output_%TIMESTAMP%.txt"
::java -jar "%~dp0..\enhsp25.jar" -o %1 -f %2 -planner SAT_HMRP -anytime -timeout 30 -sjr -pls > "%~dp0logsPDDL\print_very_last_state%TIMESTAMP%.txt" -sp "%~dp0logsPDDL\saved_plan_output_%TIMESTAMP%.txt"

:: make the logsPDDL folder
:: $PSScriptRoot is where this script is -Force hides "folder already exists" error.
mkdir "%~dp0logsPDDL" 2>nul

:: Grabs .sp_log file and renames it
move "%~dp2*.sp_log" "%~dp0logsPDDL\plan_tree_%TIMESTAMP%.sp_log" >nul 2>&1

:: force exit cleanly
exit /b 0

:: Site to visualize the node tree
:: https://clementchamayou.github.io/enhsptree/



::Modeling quick guide (PDDL)
::---------------------------
::Domain file (-o): describe the planning language of your task.
::- :requirements used by the model
::- :types (optional but recommended)
::- :predicates for boolean facts
::- :functions for numeric fluents
::- :action / :process / :event with parameters, preconditions, effects
::
::Problem file (-f): describe one concrete instance of that domain.
::- (:domain NAME) must match the domain
::- :objects (the instance objects)
::- :init (initial facts and numeric values)
::- :goal (target conditions)
::- :metric (optional optimization objective)
::
::Rule of thumb: put reusable dynamics in DOMAIN, put instance data in PROBLEM.
::
::usage: enhsp
:: -aibr_debug                          Enable AIBR debug logging
:: -anytime                             Run in anytime modality. Incrementally tries to find a lower bound. Does not stop
::                                      until the user decides so
:: -autoanytime                         Activate auto anytime modality.
:: -bbqs                                Use Bucket Based Priority Queue in the search if applicable
:: -d,--delta <arg>                     Override other delta_<planning,execuction,validation,heuristic> configurations:
::                                      float
:: -dap                                 Disable Aibr Preprocessing
:: -de,--delta_execution <arg>          planning execution executionDelta: float
:: -dh,--delta_heuristic <arg>          planning heuristic executionDelta: float
:: -dl <arg>                            bound on plan-cost: float (Experimental)
:: -dp,--delta_planning <arg>           planning decision executionDelta: float
:: -dv,--delta_validation <arg>         validation executionDelta: float
:: -ea <arg>                            Effect abstraction mode for non-constants effects. Takes integer as an argument,
::                                      denoting the number of intervals to consider
:: -epsilon <arg>                       epsilon separation: float
:: -f,--problem <arg>                   PDDL problem file (objects, initial state, goals, optional metric)
:: -gro,--grounding <arg>               Activate grounding via internal mechanism, fd or metricff or internal or naive
::                                      (default is internal)
:: -h <arg>                             allows to select heuristic (default is hadd). Available Heuristics:
::                                      - gc: Counts the number of unsatisfied goals as heuristic value.
::                                      - hadd: Additive version of subgoaling heuristic.
::                                      - haddb: Additive heuristic with bucket expansion.
::                                      - ngc: Structure-sensitive numeric goal counting.
::                                      - agnosticngc: Numeric goal counting ignoring structure.
::                                      - mgc: Manhattan heuristic for numeric goals.
::                                      - hradd: Additive version of subgoaling heuristic plus redundant constraints.
::                                      - hrmax: Hmax for Numeric Planning with redundant constraints.
::                                      - hrmaxb: Hmax with bucket expansion and redundant constraints.
::                                      - h1res: Resolution-based heuristic without optimizations.
::                                      - h1res2: Resolution-based heuristic with relaxed operator relevance pruning.
::                                      - h1res3: Resolution-based heuristic with both relevance and transition pruning.
::                                      - h1res4: Resolution-based heuristic with transition pruning only.
::                                      - hmax: Hmax for Numeric Planning.
::                                      - hmrp: Heuristic based on MRP extraction.
::                                      - hmrpb: HMRP with bucket expansion.
::                                      - hmrp_fix: Fixed variant of HMRP with adjusted mutex handling.
::                                      - hmrp_easy_fix: Simplified fixed variant of HMRP for efficiency.
::                                      - hmrp_fix_tran: Fixed variant of HMRP including transition-based handling.
::                                      - blind: Blind heuristic always returning 0 (uninformed).
::                                      - 01blind: Goal-sensitive blind heuristic returning 0 or 1 depending on state.
::                                      - aibr: Additive Interval Based relaxation heuristic.
::                                      - hlm-count: Landmark-count heuristic estimating distance by number of unsatisfied
::                                      landmarks.
::                                      - hlm-lp: Landmark heuristic using linear programming (LP) with CPLEX.
::                                      - hlm-lp-gurobi: Landmark heuristic using LP solved with Gurobi.
::                                      - hgen: Generalised hmax for handling conjunctions directly.
:: -ha,--helpful-actions <arg>          activate helpful actions in the search
:: -help                                Show help and modeling instructions
:: -ht,--helpful-transitions <arg>      activate up-to-macro actions
:: -im                                  Ignore Metric in the heuristic
:: -inputplan <arg>                     Insert the name of the file containing the plan to validate. This is to be used
::                                      with ival activated
:: -ival                                Internal Validation
:: -k <arg>                             maximal number of subdomains. This works in combination with haddabs: integer
:: -knov <arg>                          novelty k parameter, 1 or 2
:: -nov <arg>                           heuristic novelty: options:
::                                      aqb, Atom Quantified Both novelty heuristic
::                                      aw, Atom Width novelty heuristic
::                                      iqb, Interval Quantified Both novelty heuristic
::                                      iw, Interval Width novelty heuristic
:: -npm                                 PDDL+ feature: Do not print makespan in the plan
:: -o,--domain <arg>                    PDDL domain file (operators, predicates/functions, transition model)
:: -onlyplan                            Print only the plan without waiting
:: -pai                                 Print all info before search
:: -pe,--print-events-plan              activate printing of events
:: -planner <arg>                       Fast Preconfgured Planner. This overrides all other parameters but domain and
::                                      problem specs.
::                                      Available planners:
::                                      SAT_HMRP     : satisficing planning
::                                      SAT_HMRPH    :
::                                      SAT_HMRPHJ   :
::                                      SAT_HMRPFF   :
::                                      SAT_HADD     :
::                                      SAT_AIBR     :
::                                      SAT_HRADD    :
::                                      OPT_HMAX     :
::                                      OPT_HLM      :
::                                      OPT_HLMRD    :
::                                      OPT_HRMAX    : optimal planning
::                                      OPT_BLIND    : blind planning
:: -pls                                 Print the very last state
:: -print_actions                       Print all actions after grounding
:: -pt                                  print state trajectory (Experimental)
:: -red,--redundant_constraints <arg>   Choose mechanism for redundant constraints generation among, no, brute and smart.
::                                      No redundant constraints generation is the default
:: -s <arg>                             allows to select search strategy (default is WAStar):
::                                      Available Search Engines:
::                                      - wastar: WAStar
::                                      - gbfs: GBFS
::                                      - ehs: EHS
::                                      - ida: IDA
::                                      - lazygbfs: LazyGBFS
::                                      - lazywastar: LazyWAStar
:: -sdac <arg>                          Activate State Dependent Action Cost (Very Experimental!). Options are: disabled,
::                                      rhs, condition
:: -silent                              Activate silent modality
:: -sjr                                 save state space explored in json file
:: -sp <arg>                            Save plan. Argument is filename
:: -stopgro                             Stop After Grounding
:: -ties <arg>                          tie-breaking (default is arbitrary): larger_g, smaller_g, arbitrary
:: -timeout <arg>                       Overall planning timeout (seconds).
:: -tolerance <arg>                     Numeric tolerance in evaluating numeric conditions. Default is 0.00001
:: -tun                                 (Experimental) Use tunnelling  during search
:: -uch                                 Pretend all actions cost one in the heuristic
:: -wh <arg>                            h-values weight: float
:: -with_posthoc_logger <arg>           Activate the posthoc file logger. A filename must be provided as argument