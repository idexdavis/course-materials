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
CMAKE_SOURCE_DIR = "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/VoidPointer/multi_print2"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/VoidPointer/multi_print2/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/multi_print2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/multi_print2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/multi_print2.dir/flags.make

CMakeFiles/multi_print2.dir/main.c.o: CMakeFiles/multi_print2.dir/flags.make
CMakeFiles/multi_print2.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/VoidPointer/multi_print2/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/multi_print2.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/multi_print2.dir/main.c.o   -c "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/VoidPointer/multi_print2/main.c"

CMakeFiles/multi_print2.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/multi_print2.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/VoidPointer/multi_print2/main.c" > CMakeFiles/multi_print2.dir/main.c.i

CMakeFiles/multi_print2.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/multi_print2.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/VoidPointer/multi_print2/main.c" -o CMakeFiles/multi_print2.dir/main.c.s

CMakeFiles/multi_print2.dir/main.c.o.requires:

.PHONY : CMakeFiles/multi_print2.dir/main.c.o.requires

CMakeFiles/multi_print2.dir/main.c.o.provides: CMakeFiles/multi_print2.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/multi_print2.dir/build.make CMakeFiles/multi_print2.dir/main.c.o.provides.build
.PHONY : CMakeFiles/multi_print2.dir/main.c.o.provides

CMakeFiles/multi_print2.dir/main.c.o.provides.build: CMakeFiles/multi_print2.dir/main.c.o


# Object files for target multi_print2
multi_print2_OBJECTS = \
"CMakeFiles/multi_print2.dir/main.c.o"

# External object files for target multi_print2
multi_print2_EXTERNAL_OBJECTS =

multi_print2.exe: CMakeFiles/multi_print2.dir/main.c.o
multi_print2.exe: CMakeFiles/multi_print2.dir/build.make
multi_print2.exe: CMakeFiles/multi_print2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/VoidPointer/multi_print2/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable multi_print2.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/multi_print2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/multi_print2.dir/build: multi_print2.exe

.PHONY : CMakeFiles/multi_print2.dir/build

CMakeFiles/multi_print2.dir/requires: CMakeFiles/multi_print2.dir/main.c.o.requires

.PHONY : CMakeFiles/multi_print2.dir/requires

CMakeFiles/multi_print2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/multi_print2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/multi_print2.dir/clean

CMakeFiles/multi_print2.dir/depend:
	cd "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/VoidPointer/multi_print2/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/VoidPointer/multi_print2" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/VoidPointer/multi_print2" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/VoidPointer/multi_print2/cmake-build-debug" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/VoidPointer/multi_print2/cmake-build-debug" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/VoidPointer/multi_print2/cmake-build-debug/CMakeFiles/multi_print2.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/multi_print2.dir/depend

