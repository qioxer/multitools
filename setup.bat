@echo off
title Multi Tools Terminal
color 0A
mode con: cols=60 lines=10
:menu
cls
echo ==========================================
echo         MULTI TOOLS TERMINAL
echo ==========================================
echo [1] Download Cleaner
echo [2] Exit
echo ==========================================
set /p choice=Select an option: 

if "%choice%"=="1" call :create_cleaner
if "%choice%"=="2" exit
goto menu

:create_cleaner
cls
echo Creating cleaner tool...
(
echo @echo off
echo title PC Cleaner
echo color 0C
echo echo Cleaning system...
echo del /s /q C:\Windows\Temp\*.*
echo del /s /q C:\Users\%%username%%\AppData\Local\Temp\*.*
echo ipconfig /flushdns
echo echo Cleaning completed!
echo pause
) > cleaner.bat
echo Cleaner tool created! Open "cleaner.bat" to clean your PC.
pause
goto menu

