cmake_minimum_required(VERSION 3.8)
project(linked_list)

set(CMAKE_C_STANDARD 11)
set(GCC_ENABLE_WARNINGS "-O0 -Wall -Werror -Wno-unused-result")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${GCC_ENABLE_WARNINGS}")
set(SOURCE_FILES main.c linked_list.c linked_list.h)
add_executable(linked_list ${SOURCE_FILES})