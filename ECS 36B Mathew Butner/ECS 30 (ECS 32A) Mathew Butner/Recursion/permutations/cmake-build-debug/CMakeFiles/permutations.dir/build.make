# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /cygdrive/c/Users/mfbut/.CLion2017.3/system/cygwin_cmake/bin/cmake.exe

# The command to remove a file.
RM = /cygdrive/c/Users/mfbut/.CLion2017.3/system/cygwin_cmake/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Recursion/permutations"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Recursion/permutations/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/permutations.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/permutations.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/permutations.dir/flags.make

CMakeFiles/permutations.dir/main.c.o: CMakeFiles/permutations.dir/flags.make
CMakeFiles/permutations.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Recursion/permutations/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/permutations.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/permutations.dir/main.c.o   -c "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Recursion/permutations/main.c"

CMakeFiles/permutations.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/permutations.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Recursion/permutations/main.c" > CMakeFiles/permutations.dir/main.c.i

CMakeFiles/permutations.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/permutations.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Recursion/permutations/main.c" -o CMakeFiles/permutations.dir/main.c.s

CMakeFiles/permutations.dir/main.c.o.requires:

.PHONY : CMakeFiles/permutations.dir/main.c.o.requires

CMakeFiles/permutations.dir/main.c.o.provides: CMakeFiles/permutations.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/permutations.dir/build.make CMakeFiles/permutations.dir/main.c.o.provides.build
.PHONY : CMakeFiles/permutations.dir/main.c.o.provides

CMakeFiles/permutations.dir/main.c.o.provides.build: CMakeFiles/permutations.dir/main.c.o


# Object files for target permutations
permutations_OBJECTS = \
"CMakeFiles/permutations.dir/main.c.o"

# External object files for target permutations
permutations_EXTERNAL_OBJECTS =

permutations.exe: CMakeFiles/permutations.dir/main.c.o
permutations.exe: CMakeFiles/permutations.dir/build.make
permutations.exe: CMakeFiles/permutations.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Recursion/permutations/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable permutations.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/permutations.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/permutations.dir/build: permutations.exe

.PHONY : CMakeFiles/permutations.dir/build

CMakeFiles/permutations.dir/requires: CMakeFiles/permutations.dir/main.c.o.requires

.PHONY : CMakeFiles/permutations.dir/requires

CMakeFiles/permutations.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/permutations.dir/cmake_clean.cmake
.PHONY : CMakeFiles/permutations.dir/clean

CMakeFiles/permutations.dir/depend:
	cd "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Recursion/permutations/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Recursion/permutations" "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Recursion/permutations" "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Recursion/permutations/cmake-build-debug" "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Recursion/permutations/cmake-build-debug" "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Recursion/permutations/cmake-build-debug/CMakeFiles/permutations.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/permutations.dir/depend

