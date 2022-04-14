@echo off
color c
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Programma aperto come amministratore! Continuando...
    goto continua
) else (
    echo Devi avviare il programma come amministratore!
    pause
)
:continua
bcdedit -set TESTSIGNING OFF
cd dist
explorer.exe %CD%
pause
