cmake_minimum_required(VERSION 3.9)
project(CircularArray C)

set(CMAKE_C_STANDARD 11)

add_executable(CircularArray main.c CircularArray.c CircularArray.h)