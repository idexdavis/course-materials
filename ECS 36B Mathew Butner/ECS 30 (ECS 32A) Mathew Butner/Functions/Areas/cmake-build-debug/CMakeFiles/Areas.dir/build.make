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
CMAKE_SOURCE_DIR = "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Functions/Areas"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Functions/Areas/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Areas.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Areas.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Areas.dir/flags.make

CMakeFiles/Areas.dir/main.c.o: CMakeFiles/Areas.dir/flags.make
CMakeFiles/Areas.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Functions/Areas/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Areas.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Areas.dir/main.c.o   -c "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Functions/Areas/main.c"

CMakeFiles/Areas.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Areas.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Functions/Areas/main.c" > CMakeFiles/Areas.dir/main.c.i

CMakeFiles/Areas.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Areas.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Functions/Areas/main.c" -o CMakeFiles/Areas.dir/main.c.s

CMakeFiles/Areas.dir/main.c.o.requires:

.PHONY : CMakeFiles/Areas.dir/main.c.o.requires

CMakeFiles/Areas.dir/main.c.o.provides: CMakeFiles/Areas.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/Areas.dir/build.make CMakeFiles/Areas.dir/main.c.o.provides.build
.PHONY : CMakeFiles/Areas.dir/main.c.o.provides

CMakeFiles/Areas.dir/main.c.o.provides.build: CMakeFiles/Areas.dir/main.c.o


# Object files for target Areas
Areas_OBJECTS = \
"CMakeFiles/Areas.dir/main.c.o"

# External object files for target Areas
Areas_EXTERNAL_OBJECTS =

Areas.exe: CMakeFiles/Areas.dir/main.c.o
Areas.exe: CMakeFiles/Areas.dir/build.make
Areas.exe: CMakeFiles/Areas.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Functions/Areas/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable Areas.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Areas.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Areas.dir/build: Areas.exe

.PHONY : CMakeFiles/Areas.dir/build

CMakeFiles/Areas.dir/requires: CMakeFiles/Areas.dir/main.c.o.requires

.PHONY : CMakeFiles/Areas.dir/requires

CMakeFiles/Areas.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Areas.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Areas.dir/clean

CMakeFiles/Areas.dir/depend:
	cd "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Functions/Areas/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Functions/Areas" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Functions/Areas" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Functions/Areas/cmake-build-debug" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Functions/Areas/cmake-build-debug" "/cygdrive/d/Google Drive/ECS/ECS 30/ECS 30 Shared/Functions/Areas/cmake-build-debug/CMakeFiles/Areas.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Areas.dir/depend

