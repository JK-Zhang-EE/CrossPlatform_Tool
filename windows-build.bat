set OUTPUT=build
set BIN=%OUTPUT%\bin\Release

rmdir %OUTPUT% /q/s
md %BIN%

cmake -G "Visual Studio 17 2022" -A x64 -S . -B %OUTPUT%
cmake --build %OUTPUT% --target ALl_BUILD --config Release