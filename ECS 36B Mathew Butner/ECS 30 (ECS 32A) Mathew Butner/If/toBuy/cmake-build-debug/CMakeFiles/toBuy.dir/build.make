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
CMAKE_SOURCE_DIR = "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/If/toBuy"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/If/toBuy/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/toBuy.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/toBuy.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/toBuy.dir/flags.make

CMakeFiles/toBuy.dir/main.c.o: CMakeFiles/toBuy.dir/flags.make
CMakeFiles/toBuy.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/If/toBuy/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/toBuy.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/toBuy.dir/main.c.o   -c "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/If/toBuy/main.c"

CMakeFiles/toBuy.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/toBuy.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/If/toBuy/main.c" > CMakeFiles/toBuy.dir/main.c.i

CMakeFiles/toBuy.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/toBuy.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/If/toBuy/main.c" -o CMakeFiles/toBuy.dir/main.c.s

CMakeFiles/toBuy.dir/main.c.o.requires:

.PHONY : CMakeFiles/toBuy.dir/main.c.o.requires

CMakeFiles/toBuy.dir/main.c.o.provides: CMakeFiles/toBuy.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/toBuy.dir/build.make CMakeFiles/toBuy.dir/main.c.o.provides.build
.PHONY : CMakeFiles/toBuy.dir/main.c.o.provides

CMakeFiles/toBuy.dir/main.c.o.provides.build: CMakeFiles/toBuy.dir/main.c.o


# Object files for target toBuy
toBuy_OBJECTS = \
"CMakeFiles/toBuy.dir/main.c.o"

# External object files for target toBuy
toBuy_EXTERNAL_OBJECTS =

toBuy.exe: CMakeFiles/toBuy.dir/main.c.o
toBuy.exe: CMakeFiles/toBuy.dir/build.make
toBuy.exe: CMakeFiles/toBuy.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/If/toBuy/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable toBuy.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/toBuy.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/toBuy.dir/build: toBuy.exe

.PHONY : CMakeFiles/toBuy.dir/build

CMakeFiles/toBuy.dir/requires: CMakeFiles/toBuy.dir/main.c.o.requires

.PHONY : CMakeFiles/toBuy.dir/requires

CMakeFiles/toBuy.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/toBuy.dir/cmake_clean.cmake
.PHONY : CMakeFiles/toBuy.dir/clean

CMakeFiles/toBuy.dir/depend:
	cd "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/If/toBuy/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/If/toBuy" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/If/toBuy" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/If/toBuy/cmake-build-debug" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/If/toBuy/cmake-build-debug" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/If/toBuy/cmake-build-debug/CMakeFiles/toBuy.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/toBuy.dir/depend
