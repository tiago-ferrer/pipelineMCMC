@echo off
REM Compile the test program with func.c
echo Compiling test_func.c with func.c...
gcc -fopenmp -Wall -std=c11 test_func.c func.c -o test_func.exe -lm

REM Check if compilation was successful
if %ERRORLEVEL% NEQ 0 (
    echo Compilation failed!
    exit /b %ERRORLEVEL%
)

echo Compilation successful!
echo.
echo Running tests...
echo ===============================================
test_func.exe
echo ===============================================
echo.
echo Test execution completed.

REM Return the exit code from the test program
exit /b %ERRORLEVEL%