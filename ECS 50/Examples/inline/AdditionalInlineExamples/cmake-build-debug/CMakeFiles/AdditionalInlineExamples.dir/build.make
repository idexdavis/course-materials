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
CMAKE_SOURCE_DIR = "/cygdrive/d/GoogleBackup/ECS/ECS 50/ECS 50 Shared/Examples/inline/AdditionalInlineExamples"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/cygdrive/d/GoogleBackup/ECS/ECS 50/ECS 50 Shared/Examples/inline/AdditionalInlineExamples/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/AdditionalInlineExamples.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/AdditionalInlineExamples.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/AdditionalInlineExamples.dir/flags.make

CMakeFiles/AdditionalInlineExamples.dir/main.cpp.o: CMakeFiles/AdditionalInlineExamples.dir/flags.make
CMakeFiles/AdditionalInlineExamples.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/d/GoogleBackup/ECS/ECS 50/ECS 50 Shared/Examples/inline/AdditionalInlineExamples/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/AdditionalInlineExamples.dir/main.cpp.o"
	/usr/bin/c++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AdditionalInlineExamples.dir/main.cpp.o -c "/cygdrive/d/GoogleBackup/ECS/ECS 50/ECS 50 Shared/Examples/inline/AdditionalInlineExamples/main.cpp"

CMakeFiles/AdditionalInlineExamples.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AdditionalInlineExamples.dir/main.cpp.i"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/cygdrive/d/GoogleBackup/ECS/ECS 50/ECS 50 Shared/Examples/inline/AdditionalInlineExamples/main.cpp" > CMakeFiles/AdditionalInlineExamples.dir/main.cpp.i

CMakeFiles/AdditionalInlineExamples.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AdditionalInlineExamples.dir/main.cpp.s"
	/usr/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/cygdrive/d/GoogleBackup/ECS/ECS 50/ECS 50 Shared/Examples/inline/AdditionalInlineExamples/main.cpp" -o CMakeFiles/AdditionalInlineExamples.dir/main.cpp.s

# Object files for target AdditionalInlineExamples
AdditionalInlineExamples_OBJECTS = \
"CMakeFiles/AdditionalInlineExamples.dir/main.cpp.o"

# External object files for target AdditionalInlineExamples
AdditionalInlineExamples_EXTERNAL_OBJECTS =

AdditionalInlineExamples.exe: CMakeFiles/AdditionalInlineExamples.dir/main.cpp.o
AdditionalInlineExamples.exe: CMakeFiles/AdditionalInlineExamples.dir/build.make
AdditionalInlineExamples.exe: CMakeFiles/AdditionalInlineExamples.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/cygdrive/d/GoogleBackup/ECS/ECS 50/ECS 50 Shared/Examples/inline/AdditionalInlineExamples/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable AdditionalInlineExamples.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AdditionalInlineExamples.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/AdditionalInlineExamples.dir/build: AdditionalInlineExamples.exe

.PHONY : CMakeFiles/AdditionalInlineExamples.dir/build

CMakeFiles/AdditionalInlineExamples.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/AdditionalInlineExamples.dir/cmake_clean.cmake
.PHONY : CMakeFiles/AdditionalInlineExamples.dir/clean

CMakeFiles/AdditionalInlineExamples.dir/depend:
	cd "/cygdrive/d/GoogleBackup/ECS/ECS 50/ECS 50 Shared/Examples/inline/AdditionalInlineExamples/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/cygdrive/d/GoogleBackup/ECS/ECS 50/ECS 50 Shared/Examples/inline/AdditionalInlineExamples" "/cygdrive/d/GoogleBackup/ECS/ECS 50/ECS 50 Shared/Examples/inline/AdditionalInlineExamples" "/cygdrive/d/GoogleBackup/ECS/ECS 50/ECS 50 Shared/Examples/inline/AdditionalInlineExamples/cmake-build-debug" "/cygdrive/d/GoogleBackup/ECS/ECS 50/ECS 50 Shared/Examples/inline/AdditionalInlineExamples/cmake-build-debug" "/cygdrive/d/GoogleBackup/ECS/ECS 50/ECS 50 Shared/Examples/inline/AdditionalInlineExamples/cmake-build-debug/CMakeFiles/AdditionalInlineExamples.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/AdditionalInlineExamples.dir/depend
