cmake_minimum_required(VERSION 3.28.3 FATAL_ERROR)

# Project Name
project(MyTool)
set(CMAKE_BUILD_TYPE Release)

# Defined Path
set(SOURCE_DIR ${CMAKE_SOURCE_DIR}/src)
set(INCLUDE_DIR ${CMAKE_SOURCE_DIR}/include)

# Include header files
include_directories(
    ${CMAKE_SOURCE_DIR}/include
    ${CMAKE_SOURCE_DIR}/include/math
)

#file(GLOB_RECURSE MYLIB RELATIVE ${CMAKE_SOURCE_DIR} src/MyMath.cpp include/MyMath.h)

# Create shared lib
add_library(${PROJECT_NAME} STATIC ${SOURCE_DIR}/math/MyMath.cpp)


