@echo off

if "%1"=="/?" (
    echo Usage: count_files.bat [directory_path]
    echo.
    echo Counts the number of files in the specified directory and its subdirectories.
    echo.
    echo Optional parameters:
    echo   /?    Displays this help message.
    exit /b 0
)

if "%1"=="" (
    echo Error: Missing directory path.
    echo.
    echo Usage: count_files.bat [directory_path]
    echo.
    echo Use /? for help.
    exit /b 1
)

setlocal enabledelayedexpansion

set /a count=0

for /r "%~1" %%a in (*) do (
    set "attribs=%%~aa"
    if "!attribs:~4,1!"=="h" (
        set /a count+=0
    ) else if "!attribs:~5,1!"=="r" (
        set /a count+=0
    ) else if "!attribs:~6,1!"=="a" (
        set /a count+=0
    ) else (
        echo %%a
        set /a count+=1
    )
)
echo %count%
if %count% equ 0 (
    exit /b 1
) else (
    exit /b 0
)