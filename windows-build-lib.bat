@echo off
set OUTPUT=build
set BIN=%OUTPUT%\bin\Release
set LIB=%OUTPUT%\lib\Release

set DLL_FILE=%BIN%\MyTool.dll
set LIB_FILE=%LIB%\MyTool.lib

set EXAMPLE_ROOT=test\windows
set HEADER=include\MyTool.h

rmdir %OUTPUT% /q/s
md %BIN%

cmake -G "Visual Studio 17 2022" -A x64 -S . -B %OUTPUT%
cmake --build %OUTPUT% --target ALl_BUILD --config Release

echo D | xcopy %DLL_FILE% %EXAMPLE_ROOT%\lib /q/s/i/y
echo D | xcopy %LIB_FILE% %EXAMPLE_ROOT%\lib /q/s/i/y
echo D | xcopy %HEADER% %EXAMPLE_ROOT%\include /q/s/i/y