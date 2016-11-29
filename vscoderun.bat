"@echo off
set filename=%1
set basename=%~n1
set extname=%~x1
set var=0
IF "%extname%" == ".cpp" (set var=1)
IF "%extname%" == ".c" (set var=2)
IF "%extname%" == ".py" (set var=3)
IF "%extname%" == ".java" (set var=4)
GOTO CASE_%var%
:CASE_0
    ECHO Unsupported File Type!
    GOTO END_SWITCH
:CASE_1
    g++ -std=c++11 -Wall %filename% -o "%basename%.exe" && "%basename%.exe"
    GOTO END_SWITCH
:CASE_2
    gcc -std=c99 -Wall %filename% -o "%basename%.exe" && "%basename%.exe"
    GOTO END_SWITCH    
:CASE_3
    py %filename%
    GOTO END_SWITCH    
:CASE_4
    javac %filename% && java %basename%
:END_SWITCH
pause
exit
