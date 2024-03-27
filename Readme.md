# Cross Platform Library Development
This project will demonstrate how to build the cross platform library from c++ source code.

## Window
1. Execute the `windows-build-lib.bat` file to make c++ library.
2. The output will copy to `./test/windows/lib` and  `./test/windows/include`.
3. Execute the `./test/windows-build.bat` to make a windows application `Test.exe`.
4. The execute result:  
![image info](./img/windows.PNG)

## Android
1. Execute the `android-build-lib.bat` file to make android .so library.
2. The output will copy to `./test/androd/app/src/main/jniLibs` and  `./test/androd/app/src/main/java/com`.
3. Use `Android Studio` to execute the `./test/android/build.gradle` to make a android application.
4. The execute result:  
![image info](./img/android.jpg)

## iOS