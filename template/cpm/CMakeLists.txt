cmake_minimum_required(VERSION 3.14 FATAL_ERROR)

project(main)

set(CMAKE_CXX_STANDARD 14)
list(APPEND CMAKE_MODULE_PATH "cmake")

include(cmake/CPM.cmake)
CPMAddPackage("gh:catchorg/Catch2@2.5.0")

add_executable(tests tests.cpp)
target_link_libraries(tests Catch2)

