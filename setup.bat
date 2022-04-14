@echo off
color c
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Programma aperto come amministratore! Continuando...
    goto continua
) else (
    echo Devi avviare il programma come amministratore!
    goto fine
)
:continua
bcdedit -set TESTSIGNING OFF
cd dist
explorer.exe %CD%
pause
:fine
pause
