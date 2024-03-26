@echo off
setlocal ENABLEDELAYEDEXPANSION

set OUTPUT=build
set ABI=(arm64-v8a armeabi-v7a x86)
set ANDROID_NDK_HOME="C:\android-ndk-r18b"
set ANDROID_NDK_PREBUILT=windows-x86_64

if not exist %ANDROID_NDK_HOME% (
	echo Need Android NDK
)

rmdir %OUTPUT% /q/s

Rem Cmake android lib properties
Rem ANDROID_ABI:          CPU structure
Rem ANDROID_NDK:          NDK root path
Rem CMAKE_TOOLCHAIN_FILE: NDK tool chain file
Rem ANDROID_PLATFORM:     Minimal andorid platform support
Rem DCMAKE_MAKE_PROGRAM:  Cmake root path

for %%i in %ABI% do ( 
	
	set BUILD=%OUTPUT%\%%i	
	md !BUILD!
	
	cmake -G "Unix Makefiles" -DUSEMYPRINT=1 -S ./ -B ./!BUILD! ^
		-DCMAKE_BUILD_TYPE=Release ^
		-DCMAKE_TOOLCHAIN_FILE="%ANDROID_NDK_HOME%\build\cmake\android.toolchain.cmake" ^
		-DCMAKE_MAKE_PROGRAM="%ANDROID_NDK_HOME%\prebuilt\%ANDROID_NDK_PREBUILT%\bin\make.exe" .. ^
		-DANDROID_PLATFORM="android-21" ^
		-DANDROID_NDK="%ANDROID_NDK_HOME%" ^
		-DANDROID_ABI=%%i
		
	cmake --build ./!BUILD! --clean-first --config Release --target all
)