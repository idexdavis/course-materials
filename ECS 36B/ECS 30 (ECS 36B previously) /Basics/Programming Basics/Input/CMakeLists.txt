cmake_minimum_required(VERSION 3.8)
project(Input)

set(CMAKE_C_STANDARD 11)
set(GCC_ENABLE_WARNINGS "-O1 -Wall -Werror -Wno-unused-result")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${GCC_ENABLE_WARNINGS}")
set(SOURCE_FILES input.c)
add_executable(Input ${SOURCE_FILES})