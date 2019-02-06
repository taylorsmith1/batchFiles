@echo off
cls
set /p a="What CS would you like to view: "
echo.
cd C:\Users\Taylor Smith\cs%a%
echo.
set /p x="What HW would you like to view: "

FOR %%y IN (%x%) DO (
cd hw%%y\src
)