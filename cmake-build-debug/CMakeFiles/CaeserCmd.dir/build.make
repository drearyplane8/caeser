# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\Program Files\CLION\CLion 2020.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\Program Files\CLION\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\chasj\CLionProjects\CaeserCmd

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\chasj\CLionProjects\CaeserCmd\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/CaeserCmd.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CaeserCmd.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CaeserCmd.dir/flags.make

CMakeFiles/CaeserCmd.dir/main.c.obj: CMakeFiles/CaeserCmd.dir/flags.make
CMakeFiles/CaeserCmd.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\chasj\CLionProjects\CaeserCmd\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/CaeserCmd.dir/main.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\CaeserCmd.dir\main.c.obj   -c C:\Users\chasj\CLionProjects\CaeserCmd\main.c

CMakeFiles/CaeserCmd.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CaeserCmd.dir/main.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\chasj\CLionProjects\CaeserCmd\main.c > CMakeFiles\CaeserCmd.dir\main.c.i

CMakeFiles/CaeserCmd.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CaeserCmd.dir/main.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\chasj\CLionProjects\CaeserCmd\main.c -o CMakeFiles\CaeserCmd.dir\main.c.s

# Object files for target CaeserCmd
CaeserCmd_OBJECTS = \
"CMakeFiles/CaeserCmd.dir/main.c.obj"

# External object files for target CaeserCmd
CaeserCmd_EXTERNAL_OBJECTS =

CaeserCmd.exe: CMakeFiles/CaeserCmd.dir/main.c.obj
CaeserCmd.exe: CMakeFiles/CaeserCmd.dir/build.make
CaeserCmd.exe: CMakeFiles/CaeserCmd.dir/linklibs.rsp
CaeserCmd.exe: CMakeFiles/CaeserCmd.dir/objects1.rsp
CaeserCmd.exe: CMakeFiles/CaeserCmd.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\chasj\CLionProjects\CaeserCmd\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable CaeserCmd.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\CaeserCmd.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CaeserCmd.dir/build: CaeserCmd.exe

.PHONY : CMakeFiles/CaeserCmd.dir/build

CMakeFiles/CaeserCmd.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\CaeserCmd.dir\cmake_clean.cmake
.PHONY : CMakeFiles/CaeserCmd.dir/clean

CMakeFiles/CaeserCmd.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\chasj\CLionProjects\CaeserCmd C:\Users\chasj\CLionProjects\CaeserCmd C:\Users\chasj\CLionProjects\CaeserCmd\cmake-build-debug C:\Users\chasj\CLionProjects\CaeserCmd\cmake-build-debug C:\Users\chasj\CLionProjects\CaeserCmd\cmake-build-debug\CMakeFiles\CaeserCmd.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CaeserCmd.dir/depend

