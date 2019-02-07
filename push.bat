@echo off
cls

set /p y="What would you like to commit (* for all files): "
echo.
set /p x="What would you like to call your commit: "
echo.
set /p z="Are you sure you want to push (y or n): "

IF %z% == n DO (/exit)

git add %y%
echo.

git commit -m "%x%"
echo.

git push