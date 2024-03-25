cmake_minimum_required(VERSION 3.28.3)

# Project Name
project(MyTool)
set(CMAKE_BUILD_TYPE Release)

set(MYTOOL_LIB MyTool)

# Defined Path
set(SOURCE_DIR ${CMAKE_SOURCE_DIR}/src)
set(INCLUDE_DIR ${CMAKE_SOURCE_DIR}/include)

# Include header files
include_directories(
    ${CMAKE_SOURCE_DIR}/include
    ${CMAKE_SOURCE_DIR}/include/math
)

# Create lib
add_library(MyTool STATIC ${SOURCE_DIR}/MyTool.cpp)

add_subdirectory(Test)