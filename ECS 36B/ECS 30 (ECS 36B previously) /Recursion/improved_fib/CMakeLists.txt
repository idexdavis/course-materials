cmake_minimum_required(VERSION 3.8)
project(improved_fib)

set(CMAKE_C_STANDARD 11)

set(SOURCE_FILES main.c)
add_executable(improved_fib ${SOURCE_FILES})