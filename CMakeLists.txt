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
project(MyToolLibrary)

include_directories(
    ${CMAKE_SOURCE_DIR}
    ${INCLUDE_DIR}
    ${INCLUDE_DIR}/math
)

link_directories(
    ${CMAKE_BINARY_DIR}/lib
)

if (IOS)
    include_directories(
        ${INCLUDE_DIR}/ios
    )
else()
    if (ANDROID)
        set(MYTOOL_LIB -lMyTool)
        include_directories(
            ${INCLUDE_DIR}/android
        )
    elseif(WIN32)
        set(MYTOOL_LIB MyTool.lib)
    endif()
    
    include_directories(
        ${INCLUDE_DIR}
    )
endif()

set(MYTOOL_SOURCES ${SOURCE_DIR}/MyTool.cpp ${SOURCE_DIR}/math/MyMath.cpp)

if (IOS)
    set(MYTOOL_SOURCES ${MYTOOL_SOURCES} ${INCLUDE_DIR}/MyTool.h ${INCLUDE_DIR}/math/MyMath.h)
    set(MYTOOL_SOURCES ${MYTOOL_SOURCES} ${SOURCE_DIR}/ios/MyToolLibrary.mm ${INCLUDE_DIR}/ios/MyToolLibrary.h)
else()
    if (ANDROID)
        set(MYTOOL_SOURCES ${MYTOOL_SOURCES} ${SOURCE_DIR}/android/MyToolJNI.cpp)
    endif()
endif()

## Add source to lib
if (IOS)
    add_library(
        MyToolLibrary 
        STATIC 
        ${MYTOOL_SOURCES}
    )

    set_target_properties(
        MyToolLibrary
        PROPERTIES
        FRAMEWORK TRUE
        FRAMEWORK_VERSION A
        PUBLIC_HEADER "include/ios/MyToolLibrary.h"
        XCODE_ATTRIBUTE_DEFINES_MODULE YES
        XCODE_ATTRIBUTE_CODE_SIGN_REQUIRED NO
    )

    set(CMAKE_FIND_FRAMEWORK ONLY)

else()
    add_library(MyTool SHARED ${MYTOOL_SOURCES})
endif()
