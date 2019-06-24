cmake_minimum_required(VERSION 3.8)
project(append_prepend)

set(CMAKE_C_STANDARD 11)
set(GCC_ENABLE_WARNINGS "-Wall -Werror -Wno-unused-result")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${GCC_ENABLE_WARNINGS}")
set(SOURCE_FILES main.c)
add_executable(append_prepend ${SOURCE_FILES})