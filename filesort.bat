@echo off
set current_dir=%cd%
if not exist "%current_dir%\JPG" mkdir "%current_dir%\JPEG"
if not exist "%current_dir%\NEF" mkdir "%current_dir%\RAW"

for %%f in (%current_dir%\*.*) do (
    echo %%~xf
    if "%%~xf"==".JPG" (
        move "%%f" "%current_dir%\JPEG"
    ) else if "%%~xf"==".NEF" (
        move "%%f" "%current_dir%\RAW"
    )
)
