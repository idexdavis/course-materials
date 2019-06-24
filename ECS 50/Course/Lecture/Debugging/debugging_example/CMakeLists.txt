cmake_minimum_required(VERSION 3.8)
project(debugging_example)

set(CMAKE_C_STANDARD 11)

set(SOURCE_FILES main.c)
add_executable(broken_sort originalWrongCode.c)
add_executable(working solution.c)
add_executable(current main.c)

target_compile_options(current PRIVATE -Wall -Werror)
