cmake_minimum_required(VERSION 3.9)
project(SplitString C)
set(GCC_ENABLE_WARNINGS "-O0 -Wall -Werror -Wno-unused-result")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${GCC_ENABLE_WARNINGS}")
set(CMAKE_C_STANDARD 11)

add_executable(SplitString main.c)