cmake_minimum_required(VERSION 3.8)
project(tic_tac_toe)

set(CMAKE_C_STANDARD 11)
set(GCC_ENABLE_WARNINGS "-Wall -Werror -Wno-unused-result")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${GCC_ENABLE_WARNINGS}")
set(SOURCE_FILES main.c board.c board.h win.c win.h input_validation.c input_validation.h move.c move.h)
add_executable(tic_tac_toe ${SOURCE_FILES})