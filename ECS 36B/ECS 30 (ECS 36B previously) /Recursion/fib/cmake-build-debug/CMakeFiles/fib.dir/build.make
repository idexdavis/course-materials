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
CMAKE_SOURCE_DIR = "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Recursion/fib"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Recursion/fib/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/fib.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/fib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/fib.dir/flags.make

CMakeFiles/fib.dir/main.c.o: CMakeFiles/fib.dir/flags.make
CMakeFiles/fib.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Recursion/fib/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/fib.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/fib.dir/main.c.o   -c "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Recursion/fib/main.c"

CMakeFiles/fib.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fib.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Recursion/fib/main.c" > CMakeFiles/fib.dir/main.c.i

CMakeFiles/fib.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fib.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Recursion/fib/main.c" -o CMakeFiles/fib.dir/main.c.s

CMakeFiles/fib.dir/main.c.o.requires:

.PHONY : CMakeFiles/fib.dir/main.c.o.requires

CMakeFiles/fib.dir/main.c.o.provides: CMakeFiles/fib.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/fib.dir/build.make CMakeFiles/fib.dir/main.c.o.provides.build
.PHONY : CMakeFiles/fib.dir/main.c.o.provides

CMakeFiles/fib.dir/main.c.o.provides.build: CMakeFiles/fib.dir/main.c.o


# Object files for target fib
fib_OBJECTS = \
"CMakeFiles/fib.dir/main.c.o"

# External object files for target fib
fib_EXTERNAL_OBJECTS =

fib.exe: CMakeFiles/fib.dir/main.c.o
fib.exe: CMakeFiles/fib.dir/build.make
fib.exe: CMakeFiles/fib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Recursion/fib/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable fib.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/fib.dir/build: fib.exe

.PHONY : CMakeFiles/fib.dir/build

CMakeFiles/fib.dir/requires: CMakeFiles/fib.dir/main.c.o.requires

.PHONY : CMakeFiles/fib.dir/requires

CMakeFiles/fib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/fib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/fib.dir/clean

CMakeFiles/fib.dir/depend:
	cd "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Recursion/fib/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Recursion/fib" "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Recursion/fib" "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Recursion/fib/cmake-build-debug" "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Recursion/fib/cmake-build-debug" "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Recursion/fib/cmake-build-debug/CMakeFiles/fib.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/fib.dir/depend
