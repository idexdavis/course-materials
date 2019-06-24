cmake_minimum_required(VERSION 3.9)
project(Summer2018TicTacToe C)

set(CMAKE_C_STANDARD 11)
set(GCC_ENABLE_WARNINGS "-O0 -Wall -Werror -Wno-unused-result")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${GCC_ENABLE_WARNINGS}")
add_executable(Summer2018TicTacToe main.c board.c board.h move.h move.c InputValidation.c InputValidation.h win.c win.h)