Project(Test)

set(TEST_SRC ${CMAKE_SOURCE_DIR} main.cpp)

add_executable(Test ${TEST_SRC})
target_link_libraries(Test ${MYTOOL_LIB})
add_dependencies(Test MyTool)