# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/arthur/Projects/EstudosVisaoComputacional/PropriedadeVizinhos

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/arthur/Projects/EstudosVisaoComputacional/PropriedadeVizinhos

# Include any dependencies generated for this target.
include CMakeFiles/labeling.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/labeling.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/labeling.dir/flags.make

CMakeFiles/labeling.dir/labeling.cpp.o: CMakeFiles/labeling.dir/flags.make
CMakeFiles/labeling.dir/labeling.cpp.o: labeling.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/arthur/Projects/EstudosVisaoComputacional/PropriedadeVizinhos/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/labeling.dir/labeling.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/labeling.dir/labeling.cpp.o -c /home/arthur/Projects/EstudosVisaoComputacional/PropriedadeVizinhos/labeling.cpp

CMakeFiles/labeling.dir/labeling.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/labeling.dir/labeling.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/arthur/Projects/EstudosVisaoComputacional/PropriedadeVizinhos/labeling.cpp > CMakeFiles/labeling.dir/labeling.cpp.i

CMakeFiles/labeling.dir/labeling.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/labeling.dir/labeling.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/arthur/Projects/EstudosVisaoComputacional/PropriedadeVizinhos/labeling.cpp -o CMakeFiles/labeling.dir/labeling.cpp.s

# Object files for target labeling
labeling_OBJECTS = \
"CMakeFiles/labeling.dir/labeling.cpp.o"

# External object files for target labeling
labeling_EXTERNAL_OBJECTS =

labeling: CMakeFiles/labeling.dir/labeling.cpp.o
labeling: CMakeFiles/labeling.dir/build.make
labeling: /usr/local/lib/libopencv_gapi.so.4.5.1
labeling: /usr/local/lib/libopencv_highgui.so.4.5.1
labeling: /usr/local/lib/libopencv_ml.so.4.5.1
labeling: /usr/local/lib/libopencv_objdetect.so.4.5.1
labeling: /usr/local/lib/libopencv_photo.so.4.5.1
labeling: /usr/local/lib/libopencv_stitching.so.4.5.1
labeling: /usr/local/lib/libopencv_video.so.4.5.1
labeling: /usr/local/lib/libopencv_videoio.so.4.5.1
labeling: /usr/local/lib/libopencv_dnn.so.4.5.1
labeling: /usr/local/lib/libopencv_imgcodecs.so.4.5.1
labeling: /usr/local/lib/libopencv_calib3d.so.4.5.1
labeling: /usr/local/lib/libopencv_features2d.so.4.5.1
labeling: /usr/local/lib/libopencv_flann.so.4.5.1
labeling: /usr/local/lib/libopencv_imgproc.so.4.5.1
labeling: /usr/local/lib/libopencv_core.so.4.5.1
labeling: CMakeFiles/labeling.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/arthur/Projects/EstudosVisaoComputacional/PropriedadeVizinhos/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable labeling"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/labeling.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/labeling.dir/build: labeling

.PHONY : CMakeFiles/labeling.dir/build

CMakeFiles/labeling.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/labeling.dir/cmake_clean.cmake
.PHONY : CMakeFiles/labeling.dir/clean

CMakeFiles/labeling.dir/depend:
	cd /home/arthur/Projects/EstudosVisaoComputacional/PropriedadeVizinhos && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/arthur/Projects/EstudosVisaoComputacional/PropriedadeVizinhos /home/arthur/Projects/EstudosVisaoComputacional/PropriedadeVizinhos /home/arthur/Projects/EstudosVisaoComputacional/PropriedadeVizinhos /home/arthur/Projects/EstudosVisaoComputacional/PropriedadeVizinhos /home/arthur/Projects/EstudosVisaoComputacional/PropriedadeVizinhos/CMakeFiles/labeling.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/labeling.dir/depend

