@echo off
cls

set /p y="What would you like to commit (* for all files): "
echo.
set /p x="What would you like to call your commit: "
echo.

git add %y%
echo.

git commit -m "%x%"
echo.

git push