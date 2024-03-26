cmake_minimum_required(VERSION 3.25.1)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

Project(Test)

set(TEST_SRC ${CMAKE_SOURCE_DIR}/main.cpp)
set(MYTOOL_LIB MyTool.lib)

include_directories(
    ${CMAKE_SOURCE_DIR}/include
)

link_directories(
    ${CMAKE_SOURCE_DIR}/lib
)

add_executable(Test ${TEST_SRC})
target_link_libraries(Test ${MYTOOL_LIB})
