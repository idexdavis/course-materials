# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /cygdrive/c/Users/mfbut/.CLion2018.3/system/cygwin_cmake/bin/cmake.exe

# The command to remove a file.
RM = /cygdrive/c/Users/mfbut/.CLion2018.3/system/cygwin_cmake/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/cygdrive/d/GoogleBackup/ECS/ECS 30/ECS 30 Shared/Files/read_write_binary"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/cygdrive/d/GoogleBackup/ECS/ECS 30/ECS 30 Shared/Files/read_write_binary/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/read_write_binary.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/read_write_binary.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/read_write_binary.dir/flags.make

CMakeFiles/read_write_binary.dir/main.c.o: CMakeFiles/read_write_binary.dir/flags.make
CMakeFiles/read_write_binary.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/d/GoogleBackup/ECS/ECS 30/ECS 30 Shared/Files/read_write_binary/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/read_write_binary.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/read_write_binary.dir/main.c.o   -c "/cygdrive/d/GoogleBackup/ECS/ECS 30/ECS 30 Shared/Files/read_write_binary/main.c"

CMakeFiles/read_write_binary.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/read_write_binary.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/cygdrive/d/GoogleBackup/ECS/ECS 30/ECS 30 Shared/Files/read_write_binary/main.c" > CMakeFiles/read_write_binary.dir/main.c.i

CMakeFiles/read_write_binary.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/read_write_binary.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/cygdrive/d/GoogleBackup/ECS/ECS 30/ECS 30 Shared/Files/read_write_binary/main.c" -o CMakeFiles/read_write_binary.dir/main.c.s

# Object files for target read_write_binary
read_write_binary_OBJECTS = \
"CMakeFiles/read_write_binary.dir/main.c.o"

# External object files for target read_write_binary
read_write_binary_EXTERNAL_OBJECTS =

read_write_binary.exe: CMakeFiles/read_write_binary.dir/main.c.o
read_write_binary.exe: CMakeFiles/read_write_binary.dir/build.make
read_write_binary.exe: CMakeFiles/read_write_binary.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/cygdrive/d/GoogleBackup/ECS/ECS 30/ECS 30 Shared/Files/read_write_binary/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable read_write_binary.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/read_write_binary.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/read_write_binary.dir/build: read_write_binary.exe

.PHONY : CMakeFiles/read_write_binary.dir/build

CMakeFiles/read_write_binary.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/read_write_binary.dir/cmake_clean.cmake
.PHONY : CMakeFiles/read_write_binary.dir/clean

CMakeFiles/read_write_binary.dir/depend:
	cd "/cygdrive/d/GoogleBackup/ECS/ECS 30/ECS 30 Shared/Files/read_write_binary/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/cygdrive/d/GoogleBackup/ECS/ECS 30/ECS 30 Shared/Files/read_write_binary" "/cygdrive/d/GoogleBackup/ECS/ECS 30/ECS 30 Shared/Files/read_write_binary" "/cygdrive/d/GoogleBackup/ECS/ECS 30/ECS 30 Shared/Files/read_write_binary/cmake-build-debug" "/cygdrive/d/GoogleBackup/ECS/ECS 30/ECS 30 Shared/Files/read_write_binary/cmake-build-debug" "/cygdrive/d/GoogleBackup/ECS/ECS 30/ECS 30 Shared/Files/read_write_binary/cmake-build-debug/CMakeFiles/read_write_binary.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/read_write_binary.dir/depend
