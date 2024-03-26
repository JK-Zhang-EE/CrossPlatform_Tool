cmake_minimum_required(VERSION 3.25.1)

## Set project output path
set(CMAKE_BUILD_TYPE Release)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

## Setting directories path
set(SOURCE_DIR ${CMAKE_SOURCE_DIR}/src)
set(INCLUDE_DIR ${CMAKE_SOURCE_DIR}/include)

# === Setting Project Information
## Project Name
project(MyTool)

if (WIN32)
    set(MYTOOL_LIB MyTool.lib)

elseif (ANDROID)
    include_directories(
        ${INCLUDE_DIR}/android
    )

    set(MYTOOL_LIB -lMyTool)

elseif (IOS)
    #echo IOS
endif()

## Include directories (.h)
include_directories(
    ${INCLUDE_DIR}
    ${INCLUDE_DIR}/math
)

link_directories(
    ${CMAKE_BINARY_DIR}/lib
)

set(MYTOOL_SOURCES ${SOURCE_DIR}/MyTool.cpp ${SOURCE_DIR}/math/MyMath.cpp)

if (ANDROID)
    set(MYTOOL_SOURCES ${MYTOOL_SOURCES} ${SOURCE_DIR}/android/MyToolJNI.cpp)
endif()

## Add source to lib
add_library(MyTool SHARED ${MYTOOL_SOURCES})
