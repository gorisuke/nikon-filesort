@echo off
set current_dir=%cd%
if not exist "%current_dir%\JPEG" mkdir "%current_dir%\JPEG"
if not exist "%current_dir%\RAW" mkdir "%current_dir%\RAW"

for %%f in (%current_dir%\*.*) do (
    if "%%~xf"==".JPG" (
        move "%%f" "%current_dir%\JPEG"
    ) else if "%%~xf"==".NEF" (
        move "%%f" "%current_dir%\RAW"
    )
)
