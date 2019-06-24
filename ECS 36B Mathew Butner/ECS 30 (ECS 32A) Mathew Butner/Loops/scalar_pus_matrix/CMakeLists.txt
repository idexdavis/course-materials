cmake_minimum_required(VERSION 3.8)
project(scalar_pus_matrix)

set(CMAKE_C_STANDARD 11)

set(SOURCE_FILES main.c)
add_executable(scalar_pus_matrix ${SOURCE_FILES})