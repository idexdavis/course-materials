# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /cygdrive/c/Users/mfbut/.CLion2017.2/system/cygwin_cmake/bin/cmake.exe

# The command to remove a file.
RM = /cygdrive/c/Users/mfbut/.CLion2017.2/system/cygwin_cmake/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Loops/scalar_pus_matrix"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Loops/scalar_pus_matrix/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/scalar_pus_matrix.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/scalar_pus_matrix.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/scalar_pus_matrix.dir/flags.make

CMakeFiles/scalar_pus_matrix.dir/main.c.o: CMakeFiles/scalar_pus_matrix.dir/flags.make
CMakeFiles/scalar_pus_matrix.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Loops/scalar_pus_matrix/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/scalar_pus_matrix.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/scalar_pus_matrix.dir/main.c.o   -c "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Loops/scalar_pus_matrix/main.c"

CMakeFiles/scalar_pus_matrix.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/scalar_pus_matrix.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Loops/scalar_pus_matrix/main.c" > CMakeFiles/scalar_pus_matrix.dir/main.c.i

CMakeFiles/scalar_pus_matrix.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/scalar_pus_matrix.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Loops/scalar_pus_matrix/main.c" -o CMakeFiles/scalar_pus_matrix.dir/main.c.s

CMakeFiles/scalar_pus_matrix.dir/main.c.o.requires:

.PHONY : CMakeFiles/scalar_pus_matrix.dir/main.c.o.requires

CMakeFiles/scalar_pus_matrix.dir/main.c.o.provides: CMakeFiles/scalar_pus_matrix.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/scalar_pus_matrix.dir/build.make CMakeFiles/scalar_pus_matrix.dir/main.c.o.provides.build
.PHONY : CMakeFiles/scalar_pus_matrix.dir/main.c.o.provides

CMakeFiles/scalar_pus_matrix.dir/main.c.o.provides.build: CMakeFiles/scalar_pus_matrix.dir/main.c.o


# Object files for target scalar_pus_matrix
scalar_pus_matrix_OBJECTS = \
"CMakeFiles/scalar_pus_matrix.dir/main.c.o"

# External object files for target scalar_pus_matrix
scalar_pus_matrix_EXTERNAL_OBJECTS =

scalar_pus_matrix.exe: CMakeFiles/scalar_pus_matrix.dir/main.c.o
scalar_pus_matrix.exe: CMakeFiles/scalar_pus_matrix.dir/build.make
scalar_pus_matrix.exe: CMakeFiles/scalar_pus_matrix.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Loops/scalar_pus_matrix/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable scalar_pus_matrix.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/scalar_pus_matrix.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/scalar_pus_matrix.dir/build: scalar_pus_matrix.exe

.PHONY : CMakeFiles/scalar_pus_matrix.dir/build

CMakeFiles/scalar_pus_matrix.dir/requires: CMakeFiles/scalar_pus_matrix.dir/main.c.o.requires

.PHONY : CMakeFiles/scalar_pus_matrix.dir/requires

CMakeFiles/scalar_pus_matrix.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/scalar_pus_matrix.dir/cmake_clean.cmake
.PHONY : CMakeFiles/scalar_pus_matrix.dir/clean

CMakeFiles/scalar_pus_matrix.dir/depend:
	cd "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Loops/scalar_pus_matrix/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Loops/scalar_pus_matrix" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Loops/scalar_pus_matrix" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Loops/scalar_pus_matrix/cmake-build-debug" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Loops/scalar_pus_matrix/cmake-build-debug" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Loops/scalar_pus_matrix/cmake-build-debug/CMakeFiles/scalar_pus_matrix.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/scalar_pus_matrix.dir/depend

