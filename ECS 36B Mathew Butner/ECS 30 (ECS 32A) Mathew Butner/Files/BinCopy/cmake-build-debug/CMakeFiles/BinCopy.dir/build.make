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
CMAKE_SOURCE_DIR = "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Files/BinCopy"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Files/BinCopy/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/BinCopy.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/BinCopy.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/BinCopy.dir/flags.make

CMakeFiles/BinCopy.dir/main.c.o: CMakeFiles/BinCopy.dir/flags.make
CMakeFiles/BinCopy.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Files/BinCopy/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/BinCopy.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/BinCopy.dir/main.c.o   -c "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Files/BinCopy/main.c"

CMakeFiles/BinCopy.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/BinCopy.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Files/BinCopy/main.c" > CMakeFiles/BinCopy.dir/main.c.i

CMakeFiles/BinCopy.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/BinCopy.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Files/BinCopy/main.c" -o CMakeFiles/BinCopy.dir/main.c.s

CMakeFiles/BinCopy.dir/main.c.o.requires:

.PHONY : CMakeFiles/BinCopy.dir/main.c.o.requires

CMakeFiles/BinCopy.dir/main.c.o.provides: CMakeFiles/BinCopy.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/BinCopy.dir/build.make CMakeFiles/BinCopy.dir/main.c.o.provides.build
.PHONY : CMakeFiles/BinCopy.dir/main.c.o.provides

CMakeFiles/BinCopy.dir/main.c.o.provides.build: CMakeFiles/BinCopy.dir/main.c.o


# Object files for target BinCopy
BinCopy_OBJECTS = \
"CMakeFiles/BinCopy.dir/main.c.o"

# External object files for target BinCopy
BinCopy_EXTERNAL_OBJECTS =

BinCopy.exe: CMakeFiles/BinCopy.dir/main.c.o
BinCopy.exe: CMakeFiles/BinCopy.dir/build.make
BinCopy.exe: CMakeFiles/BinCopy.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Files/BinCopy/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable BinCopy.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BinCopy.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/BinCopy.dir/build: BinCopy.exe

.PHONY : CMakeFiles/BinCopy.dir/build

CMakeFiles/BinCopy.dir/requires: CMakeFiles/BinCopy.dir/main.c.o.requires

.PHONY : CMakeFiles/BinCopy.dir/requires

CMakeFiles/BinCopy.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/BinCopy.dir/cmake_clean.cmake
.PHONY : CMakeFiles/BinCopy.dir/clean

CMakeFiles/BinCopy.dir/depend:
	cd "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Files/BinCopy/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Files/BinCopy" "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Files/BinCopy" "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Files/BinCopy/cmake-build-debug" "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Files/BinCopy/cmake-build-debug" "/cygdrive/d/RealGoogleBackup/ECS/ECS 30/ECS 30 Shared/Files/BinCopy/cmake-build-debug/CMakeFiles/BinCopy.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/BinCopy.dir/depend
