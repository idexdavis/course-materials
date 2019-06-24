cmake_minimum_required(VERSION 3.8)
project(Variables)

set(CMAKE_C_STANDARD 11)

set(SOURCE_FILES variables.c)
add_executable(Variables ${SOURCE_FILES})