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
CMAKE_SOURCE_DIR = "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Loops/skills_test_solution"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Loops/skills_test_solution/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/skills_test_solution.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/skills_test_solution.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/skills_test_solution.dir/flags.make

CMakeFiles/skills_test_solution.dir/main.c.o: CMakeFiles/skills_test_solution.dir/flags.make
CMakeFiles/skills_test_solution.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Loops/skills_test_solution/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/skills_test_solution.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/skills_test_solution.dir/main.c.o   -c "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Loops/skills_test_solution/main.c"

CMakeFiles/skills_test_solution.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/skills_test_solution.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Loops/skills_test_solution/main.c" > CMakeFiles/skills_test_solution.dir/main.c.i

CMakeFiles/skills_test_solution.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/skills_test_solution.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Loops/skills_test_solution/main.c" -o CMakeFiles/skills_test_solution.dir/main.c.s

CMakeFiles/skills_test_solution.dir/main.c.o.requires:

.PHONY : CMakeFiles/skills_test_solution.dir/main.c.o.requires

CMakeFiles/skills_test_solution.dir/main.c.o.provides: CMakeFiles/skills_test_solution.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/skills_test_solution.dir/build.make CMakeFiles/skills_test_solution.dir/main.c.o.provides.build
.PHONY : CMakeFiles/skills_test_solution.dir/main.c.o.provides

CMakeFiles/skills_test_solution.dir/main.c.o.provides.build: CMakeFiles/skills_test_solution.dir/main.c.o


# Object files for target skills_test_solution
skills_test_solution_OBJECTS = \
"CMakeFiles/skills_test_solution.dir/main.c.o"

# External object files for target skills_test_solution
skills_test_solution_EXTERNAL_OBJECTS =

skills_test_solution.exe: CMakeFiles/skills_test_solution.dir/main.c.o
skills_test_solution.exe: CMakeFiles/skills_test_solution.dir/build.make
skills_test_solution.exe: CMakeFiles/skills_test_solution.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Loops/skills_test_solution/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable skills_test_solution.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/skills_test_solution.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/skills_test_solution.dir/build: skills_test_solution.exe

.PHONY : CMakeFiles/skills_test_solution.dir/build

CMakeFiles/skills_test_solution.dir/requires: CMakeFiles/skills_test_solution.dir/main.c.o.requires

.PHONY : CMakeFiles/skills_test_solution.dir/requires

CMakeFiles/skills_test_solution.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/skills_test_solution.dir/cmake_clean.cmake
.PHONY : CMakeFiles/skills_test_solution.dir/clean

CMakeFiles/skills_test_solution.dir/depend:
	cd "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Loops/skills_test_solution/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Loops/skills_test_solution" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Loops/skills_test_solution" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Loops/skills_test_solution/cmake-build-debug" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Loops/skills_test_solution/cmake-build-debug" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Loops/skills_test_solution/cmake-build-debug/CMakeFiles/skills_test_solution.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/skills_test_solution.dir/depend
