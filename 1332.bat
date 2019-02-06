@echo off
cls
cd C:\Users\Taylor Smith\cs1332
echo.
set /p x="What HW would you like to view: "

FOR %%y IN (%x%) DO (
cd hw%%y\src
)