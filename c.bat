@echo off
cls

set /p type="Checkstyle(c), Javadocs(j), or both(b): "

IF %type%==b GOTO ALL
IF %type%==j GOTO JDOCS
IF %type%==c GOTO CHECK
exit /b

:ALL
set /p id="Enter Java File(s): "
FOR %%A IN (%id%) DO (
echo.
echo Running checkstyle and javadocs for %%A:  & echo.
java -jar C:\Users\TaylorSmith\cs1331\checkstyle-6.2.2.jar -a %%A.java
echo.
)
exit/b

:JDOCS
set /p id="Enter Java File(s): "
FOR %%A IN (%id%) DO (
echo.
echo Running javadocs for %%A:  & echo.
java -jar C:\Users\TaylorSmith\cs1331\checkstyle-6.2.2.jar -j %%A.java
echo.
)
exit/b

:CHECK
set /p id="Enter Java File(s): "
FOR %%A IN (%id%) DO (
echo.
echo Running checkstyle for %%A:  & echo.
java -jar C:\Users\TaylorSmith\cs1331\checkstyle-6.2.2.jar %%A.java
echo.
)
exit/b