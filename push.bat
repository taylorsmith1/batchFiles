@echo off
cls

set /p y="What would you like to commit (* for all files): "
echo.
set /p x="What would you like to call your commit: "
echo.
set /p z="Are you sure you want to push (y or n): "

IF %z% == n (exit /b)

FOR %%A IN (%y%) DO (git add %%A)
echo.

git commit -m "%x%"
echo.

git push