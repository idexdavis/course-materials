cmake_minimum_required(VERSION 3.8)
project(print_cmd_line)

set(CMAKE_C_STANDARD 11)

set(SOURCE_FILES main.c)
add_executable(print_cmd_line ${SOURCE_FILES})