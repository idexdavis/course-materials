cmake_minimum_required(VERSION 3.8)
project(factorial)

set(CMAKE_C_STANDARD 11)

set(SOURCE_FILES main.c)
add_executable(factorial ${SOURCE_FILES})