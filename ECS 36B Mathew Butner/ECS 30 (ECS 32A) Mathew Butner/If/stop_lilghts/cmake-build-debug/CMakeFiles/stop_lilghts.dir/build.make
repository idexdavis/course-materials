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
CMAKE_SOURCE_DIR = "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/If/stop_lilghts"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/If/stop_lilghts/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/stop_lilghts.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/stop_lilghts.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/stop_lilghts.dir/flags.make

CMakeFiles/stop_lilghts.dir/main.c.o: CMakeFiles/stop_lilghts.dir/flags.make
CMakeFiles/stop_lilghts.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/If/stop_lilghts/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/stop_lilghts.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/stop_lilghts.dir/main.c.o   -c "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/If/stop_lilghts/main.c"

CMakeFiles/stop_lilghts.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/stop_lilghts.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/If/stop_lilghts/main.c" > CMakeFiles/stop_lilghts.dir/main.c.i

CMakeFiles/stop_lilghts.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/stop_lilghts.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/If/stop_lilghts/main.c" -o CMakeFiles/stop_lilghts.dir/main.c.s

CMakeFiles/stop_lilghts.dir/main.c.o.requires:

.PHONY : CMakeFiles/stop_lilghts.dir/main.c.o.requires

CMakeFiles/stop_lilghts.dir/main.c.o.provides: CMakeFiles/stop_lilghts.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/stop_lilghts.dir/build.make CMakeFiles/stop_lilghts.dir/main.c.o.provides.build
.PHONY : CMakeFiles/stop_lilghts.dir/main.c.o.provides

CMakeFiles/stop_lilghts.dir/main.c.o.provides.build: CMakeFiles/stop_lilghts.dir/main.c.o


# Object files for target stop_lilghts
stop_lilghts_OBJECTS = \
"CMakeFiles/stop_lilghts.dir/main.c.o"

# External object files for target stop_lilghts
stop_lilghts_EXTERNAL_OBJECTS =

stop_lilghts.exe: CMakeFiles/stop_lilghts.dir/main.c.o
stop_lilghts.exe: CMakeFiles/stop_lilghts.dir/build.make
stop_lilghts.exe: CMakeFiles/stop_lilghts.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/If/stop_lilghts/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable stop_lilghts.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/stop_lilghts.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/stop_lilghts.dir/build: stop_lilghts.exe

.PHONY : CMakeFiles/stop_lilghts.dir/build

CMakeFiles/stop_lilghts.dir/requires: CMakeFiles/stop_lilghts.dir/main.c.o.requires

.PHONY : CMakeFiles/stop_lilghts.dir/requires

CMakeFiles/stop_lilghts.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/stop_lilghts.dir/cmake_clean.cmake
.PHONY : CMakeFiles/stop_lilghts.dir/clean

CMakeFiles/stop_lilghts.dir/depend:
	cd "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/If/stop_lilghts/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/If/stop_lilghts" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/If/stop_lilghts" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/If/stop_lilghts/cmake-build-debug" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/If/stop_lilghts/cmake-build-debug" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/If/stop_lilghts/cmake-build-debug/CMakeFiles/stop_lilghts.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/stop_lilghts.dir/depend
