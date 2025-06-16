# Ativar multithread

## Windows

````
cd Eclipse/scripts
.\compile_windows.bat
````

Depois 

```
.\multithreadCheck.exe
```

Resultado esperado no console:

```aiignore
{local}\Eclipse\scripts> .\multithreadCheck.exe                                                                                                               
OpenMP version: 201511                                                                                                                                                                                                              
Max threads: 12                                                                                                                                                                                                                     
Thread 2 of 12 is running
Thread 5 of 12 is running
Thread 8 of 12 is running
Thread 11 of 12 is running
Thread 3 of 12 is running
Thread 10 of 12 is running
Thread 1 of 12 is running
Thread 0 of 12 is running
Thread 7 of 12 is running
Thread 4 of 12 is running
Thread 6 of 12 is running
Thread 9 of 12 is running
```