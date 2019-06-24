cmake_minimum_required(VERSION 3.8)
project(complex_add)

set(CMAKE_C_STANDARD 11)

set(SOURCE_FILES main.c)
add_executable(complex_add ${SOURCE_FILES})