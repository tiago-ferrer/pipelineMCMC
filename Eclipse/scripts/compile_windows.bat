@echo off
REM Compile 32-bit version
gcc -fopenmp -Wall -std=c11 -c -fPIC func.c -o func32.o -O3
gcc -fopenmp -shared func32.o -o func32.dll -O3

REM Compile 64-bit version
gcc -fopenmp -Wall -std=c11 -c -fPIC func.c -o func64.o -O3
gcc -fopenmp -shared func64.o -o func64.dll -O3

REM Compile multithreadCheck program
gcc -fopenmp -Wall -std=c11 multithreadCheck.c -o multithreadCheck.exe

echo Compilation complete!
echo Running multithreadCheck to verify OpenMP functionality:
multithreadCheck.exe
