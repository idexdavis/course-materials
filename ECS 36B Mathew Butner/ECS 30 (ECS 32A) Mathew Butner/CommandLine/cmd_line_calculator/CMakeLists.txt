cmake_minimum_required(VERSION 3.8)
project(cmd_line_calculator)

set(CMAKE_C_STANDARD 11)

set(SOURCE_FILES main.c)
add_executable(cmd_line_calculator ${SOURCE_FILES})