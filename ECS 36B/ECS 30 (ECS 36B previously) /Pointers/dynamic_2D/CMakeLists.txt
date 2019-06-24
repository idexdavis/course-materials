cmake_minimum_required(VERSION 3.8)
project(dynamic_2D)

set(CMAKE_C_STANDARD 11)
set(GCC_ENABLE_WARNINGS " -Wall -Werror -Wno-unused-result")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${GCC_ENABLE_WARNINGS}")
set(SOURCE_FILES main.c mult.c mult.h)
add_executable(dynamic_2D ${SOURCE_FILES})