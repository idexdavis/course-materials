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
CMAKE_SOURCE_DIR = "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Pointers/dynamic_2D"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Pointers/dynamic_2D/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/dynamic_2D.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/dynamic_2D.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dynamic_2D.dir/flags.make

CMakeFiles/dynamic_2D.dir/main.c.o: CMakeFiles/dynamic_2D.dir/flags.make
CMakeFiles/dynamic_2D.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Pointers/dynamic_2D/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/dynamic_2D.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dynamic_2D.dir/main.c.o   -c "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Pointers/dynamic_2D/main.c"

CMakeFiles/dynamic_2D.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dynamic_2D.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Pointers/dynamic_2D/main.c" > CMakeFiles/dynamic_2D.dir/main.c.i

CMakeFiles/dynamic_2D.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dynamic_2D.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Pointers/dynamic_2D/main.c" -o CMakeFiles/dynamic_2D.dir/main.c.s

CMakeFiles/dynamic_2D.dir/main.c.o.requires:

.PHONY : CMakeFiles/dynamic_2D.dir/main.c.o.requires

CMakeFiles/dynamic_2D.dir/main.c.o.provides: CMakeFiles/dynamic_2D.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/dynamic_2D.dir/build.make CMakeFiles/dynamic_2D.dir/main.c.o.provides.build
.PHONY : CMakeFiles/dynamic_2D.dir/main.c.o.provides

CMakeFiles/dynamic_2D.dir/main.c.o.provides.build: CMakeFiles/dynamic_2D.dir/main.c.o


CMakeFiles/dynamic_2D.dir/mult.c.o: CMakeFiles/dynamic_2D.dir/flags.make
CMakeFiles/dynamic_2D.dir/mult.c.o: ../mult.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Pointers/dynamic_2D/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/dynamic_2D.dir/mult.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dynamic_2D.dir/mult.c.o   -c "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Pointers/dynamic_2D/mult.c"

CMakeFiles/dynamic_2D.dir/mult.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dynamic_2D.dir/mult.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Pointers/dynamic_2D/mult.c" > CMakeFiles/dynamic_2D.dir/mult.c.i

CMakeFiles/dynamic_2D.dir/mult.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dynamic_2D.dir/mult.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Pointers/dynamic_2D/mult.c" -o CMakeFiles/dynamic_2D.dir/mult.c.s

CMakeFiles/dynamic_2D.dir/mult.c.o.requires:

.PHONY : CMakeFiles/dynamic_2D.dir/mult.c.o.requires

CMakeFiles/dynamic_2D.dir/mult.c.o.provides: CMakeFiles/dynamic_2D.dir/mult.c.o.requires
	$(MAKE) -f CMakeFiles/dynamic_2D.dir/build.make CMakeFiles/dynamic_2D.dir/mult.c.o.provides.build
.PHONY : CMakeFiles/dynamic_2D.dir/mult.c.o.provides

CMakeFiles/dynamic_2D.dir/mult.c.o.provides.build: CMakeFiles/dynamic_2D.dir/mult.c.o


# Object files for target dynamic_2D
dynamic_2D_OBJECTS = \
"CMakeFiles/dynamic_2D.dir/main.c.o" \
"CMakeFiles/dynamic_2D.dir/mult.c.o"

# External object files for target dynamic_2D
dynamic_2D_EXTERNAL_OBJECTS =

dynamic_2D.exe: CMakeFiles/dynamic_2D.dir/main.c.o
dynamic_2D.exe: CMakeFiles/dynamic_2D.dir/mult.c.o
dynamic_2D.exe: CMakeFiles/dynamic_2D.dir/build.make
dynamic_2D.exe: CMakeFiles/dynamic_2D.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Pointers/dynamic_2D/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable dynamic_2D.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dynamic_2D.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dynamic_2D.dir/build: dynamic_2D.exe

.PHONY : CMakeFiles/dynamic_2D.dir/build

CMakeFiles/dynamic_2D.dir/requires: CMakeFiles/dynamic_2D.dir/main.c.o.requires
CMakeFiles/dynamic_2D.dir/requires: CMakeFiles/dynamic_2D.dir/mult.c.o.requires

.PHONY : CMakeFiles/dynamic_2D.dir/requires

CMakeFiles/dynamic_2D.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/dynamic_2D.dir/cmake_clean.cmake
.PHONY : CMakeFiles/dynamic_2D.dir/clean

CMakeFiles/dynamic_2D.dir/depend:
	cd "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Pointers/dynamic_2D/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Pointers/dynamic_2D" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Pointers/dynamic_2D" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Pointers/dynamic_2D/cmake-build-debug" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Pointers/dynamic_2D/cmake-build-debug" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Pointers/dynamic_2D/cmake-build-debug/CMakeFiles/dynamic_2D.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/dynamic_2D.dir/depend
