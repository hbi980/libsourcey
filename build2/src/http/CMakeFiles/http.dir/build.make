# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/deploy/src/libsourcey

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/deploy/src/libsourcey/build

# Include any dependencies generated for this target.
include src/http/CMakeFiles/http.dir/depend.make

# Include the progress variables for this target.
include src/http/CMakeFiles/http.dir/progress.make

# Include the compile flags for this target's objects.
include src/http/CMakeFiles/http.dir/flags.make

src/http/CMakeFiles/http.dir/src/connection.cpp.o: src/http/CMakeFiles/http.dir/flags.make
src/http/CMakeFiles/http.dir/src/connection.cpp.o: ../src/http/src/connection.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/deploy/src/libsourcey/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/http/CMakeFiles/http.dir/src/connection.cpp.o"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/http.dir/src/connection.cpp.o -c /home/deploy/src/libsourcey/src/http/src/connection.cpp

src/http/CMakeFiles/http.dir/src/connection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/http.dir/src/connection.cpp.i"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/deploy/src/libsourcey/src/http/src/connection.cpp > CMakeFiles/http.dir/src/connection.cpp.i

src/http/CMakeFiles/http.dir/src/connection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/http.dir/src/connection.cpp.s"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/deploy/src/libsourcey/src/http/src/connection.cpp -o CMakeFiles/http.dir/src/connection.cpp.s

src/http/CMakeFiles/http.dir/src/connection.cpp.o.requires:
.PHONY : src/http/CMakeFiles/http.dir/src/connection.cpp.o.requires

src/http/CMakeFiles/http.dir/src/connection.cpp.o.provides: src/http/CMakeFiles/http.dir/src/connection.cpp.o.requires
	$(MAKE) -f src/http/CMakeFiles/http.dir/build.make src/http/CMakeFiles/http.dir/src/connection.cpp.o.provides.build
.PHONY : src/http/CMakeFiles/http.dir/src/connection.cpp.o.provides

src/http/CMakeFiles/http.dir/src/connection.cpp.o.provides.build: src/http/CMakeFiles/http.dir/src/connection.cpp.o

src/http/CMakeFiles/http.dir/src/url.cpp.o: src/http/CMakeFiles/http.dir/flags.make
src/http/CMakeFiles/http.dir/src/url.cpp.o: ../src/http/src/url.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/deploy/src/libsourcey/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/http/CMakeFiles/http.dir/src/url.cpp.o"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/http.dir/src/url.cpp.o -c /home/deploy/src/libsourcey/src/http/src/url.cpp

src/http/CMakeFiles/http.dir/src/url.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/http.dir/src/url.cpp.i"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/deploy/src/libsourcey/src/http/src/url.cpp > CMakeFiles/http.dir/src/url.cpp.i

src/http/CMakeFiles/http.dir/src/url.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/http.dir/src/url.cpp.s"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/deploy/src/libsourcey/src/http/src/url.cpp -o CMakeFiles/http.dir/src/url.cpp.s

src/http/CMakeFiles/http.dir/src/url.cpp.o.requires:
.PHONY : src/http/CMakeFiles/http.dir/src/url.cpp.o.requires

src/http/CMakeFiles/http.dir/src/url.cpp.o.provides: src/http/CMakeFiles/http.dir/src/url.cpp.o.requires
	$(MAKE) -f src/http/CMakeFiles/http.dir/build.make src/http/CMakeFiles/http.dir/src/url.cpp.o.provides.build
.PHONY : src/http/CMakeFiles/http.dir/src/url.cpp.o.provides

src/http/CMakeFiles/http.dir/src/url.cpp.o.provides.build: src/http/CMakeFiles/http.dir/src/url.cpp.o

src/http/CMakeFiles/http.dir/src/cookie.cpp.o: src/http/CMakeFiles/http.dir/flags.make
src/http/CMakeFiles/http.dir/src/cookie.cpp.o: ../src/http/src/cookie.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/deploy/src/libsourcey/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/http/CMakeFiles/http.dir/src/cookie.cpp.o"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/http.dir/src/cookie.cpp.o -c /home/deploy/src/libsourcey/src/http/src/cookie.cpp

src/http/CMakeFiles/http.dir/src/cookie.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/http.dir/src/cookie.cpp.i"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/deploy/src/libsourcey/src/http/src/cookie.cpp > CMakeFiles/http.dir/src/cookie.cpp.i

src/http/CMakeFiles/http.dir/src/cookie.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/http.dir/src/cookie.cpp.s"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/deploy/src/libsourcey/src/http/src/cookie.cpp -o CMakeFiles/http.dir/src/cookie.cpp.s

src/http/CMakeFiles/http.dir/src/cookie.cpp.o.requires:
.PHONY : src/http/CMakeFiles/http.dir/src/cookie.cpp.o.requires

src/http/CMakeFiles/http.dir/src/cookie.cpp.o.provides: src/http/CMakeFiles/http.dir/src/cookie.cpp.o.requires
	$(MAKE) -f src/http/CMakeFiles/http.dir/build.make src/http/CMakeFiles/http.dir/src/cookie.cpp.o.provides.build
.PHONY : src/http/CMakeFiles/http.dir/src/cookie.cpp.o.provides

src/http/CMakeFiles/http.dir/src/cookie.cpp.o.provides.build: src/http/CMakeFiles/http.dir/src/cookie.cpp.o

src/http/CMakeFiles/http.dir/src/message.cpp.o: src/http/CMakeFiles/http.dir/flags.make
src/http/CMakeFiles/http.dir/src/message.cpp.o: ../src/http/src/message.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/deploy/src/libsourcey/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/http/CMakeFiles/http.dir/src/message.cpp.o"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/http.dir/src/message.cpp.o -c /home/deploy/src/libsourcey/src/http/src/message.cpp

src/http/CMakeFiles/http.dir/src/message.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/http.dir/src/message.cpp.i"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/deploy/src/libsourcey/src/http/src/message.cpp > CMakeFiles/http.dir/src/message.cpp.i

src/http/CMakeFiles/http.dir/src/message.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/http.dir/src/message.cpp.s"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/deploy/src/libsourcey/src/http/src/message.cpp -o CMakeFiles/http.dir/src/message.cpp.s

src/http/CMakeFiles/http.dir/src/message.cpp.o.requires:
.PHONY : src/http/CMakeFiles/http.dir/src/message.cpp.o.requires

src/http/CMakeFiles/http.dir/src/message.cpp.o.provides: src/http/CMakeFiles/http.dir/src/message.cpp.o.requires
	$(MAKE) -f src/http/CMakeFiles/http.dir/build.make src/http/CMakeFiles/http.dir/src/message.cpp.o.provides.build
.PHONY : src/http/CMakeFiles/http.dir/src/message.cpp.o.provides

src/http/CMakeFiles/http.dir/src/message.cpp.o.provides.build: src/http/CMakeFiles/http.dir/src/message.cpp.o

src/http/CMakeFiles/http.dir/src/parser.cpp.o: src/http/CMakeFiles/http.dir/flags.make
src/http/CMakeFiles/http.dir/src/parser.cpp.o: ../src/http/src/parser.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/deploy/src/libsourcey/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/http/CMakeFiles/http.dir/src/parser.cpp.o"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/http.dir/src/parser.cpp.o -c /home/deploy/src/libsourcey/src/http/src/parser.cpp

src/http/CMakeFiles/http.dir/src/parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/http.dir/src/parser.cpp.i"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/deploy/src/libsourcey/src/http/src/parser.cpp > CMakeFiles/http.dir/src/parser.cpp.i

src/http/CMakeFiles/http.dir/src/parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/http.dir/src/parser.cpp.s"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/deploy/src/libsourcey/src/http/src/parser.cpp -o CMakeFiles/http.dir/src/parser.cpp.s

src/http/CMakeFiles/http.dir/src/parser.cpp.o.requires:
.PHONY : src/http/CMakeFiles/http.dir/src/parser.cpp.o.requires

src/http/CMakeFiles/http.dir/src/parser.cpp.o.provides: src/http/CMakeFiles/http.dir/src/parser.cpp.o.requires
	$(MAKE) -f src/http/CMakeFiles/http.dir/build.make src/http/CMakeFiles/http.dir/src/parser.cpp.o.provides.build
.PHONY : src/http/CMakeFiles/http.dir/src/parser.cpp.o.provides

src/http/CMakeFiles/http.dir/src/parser.cpp.o.provides.build: src/http/CMakeFiles/http.dir/src/parser.cpp.o

src/http/CMakeFiles/http.dir/src/response.cpp.o: src/http/CMakeFiles/http.dir/flags.make
src/http/CMakeFiles/http.dir/src/response.cpp.o: ../src/http/src/response.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/deploy/src/libsourcey/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/http/CMakeFiles/http.dir/src/response.cpp.o"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/http.dir/src/response.cpp.o -c /home/deploy/src/libsourcey/src/http/src/response.cpp

src/http/CMakeFiles/http.dir/src/response.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/http.dir/src/response.cpp.i"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/deploy/src/libsourcey/src/http/src/response.cpp > CMakeFiles/http.dir/src/response.cpp.i

src/http/CMakeFiles/http.dir/src/response.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/http.dir/src/response.cpp.s"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/deploy/src/libsourcey/src/http/src/response.cpp -o CMakeFiles/http.dir/src/response.cpp.s

src/http/CMakeFiles/http.dir/src/response.cpp.o.requires:
.PHONY : src/http/CMakeFiles/http.dir/src/response.cpp.o.requires

src/http/CMakeFiles/http.dir/src/response.cpp.o.provides: src/http/CMakeFiles/http.dir/src/response.cpp.o.requires
	$(MAKE) -f src/http/CMakeFiles/http.dir/build.make src/http/CMakeFiles/http.dir/src/response.cpp.o.provides.build
.PHONY : src/http/CMakeFiles/http.dir/src/response.cpp.o.provides

src/http/CMakeFiles/http.dir/src/response.cpp.o.provides.build: src/http/CMakeFiles/http.dir/src/response.cpp.o

src/http/CMakeFiles/http.dir/src/util.cpp.o: src/http/CMakeFiles/http.dir/flags.make
src/http/CMakeFiles/http.dir/src/util.cpp.o: ../src/http/src/util.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/deploy/src/libsourcey/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/http/CMakeFiles/http.dir/src/util.cpp.o"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/http.dir/src/util.cpp.o -c /home/deploy/src/libsourcey/src/http/src/util.cpp

src/http/CMakeFiles/http.dir/src/util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/http.dir/src/util.cpp.i"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/deploy/src/libsourcey/src/http/src/util.cpp > CMakeFiles/http.dir/src/util.cpp.i

src/http/CMakeFiles/http.dir/src/util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/http.dir/src/util.cpp.s"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/deploy/src/libsourcey/src/http/src/util.cpp -o CMakeFiles/http.dir/src/util.cpp.s

src/http/CMakeFiles/http.dir/src/util.cpp.o.requires:
.PHONY : src/http/CMakeFiles/http.dir/src/util.cpp.o.requires

src/http/CMakeFiles/http.dir/src/util.cpp.o.provides: src/http/CMakeFiles/http.dir/src/util.cpp.o.requires
	$(MAKE) -f src/http/CMakeFiles/http.dir/build.make src/http/CMakeFiles/http.dir/src/util.cpp.o.provides.build
.PHONY : src/http/CMakeFiles/http.dir/src/util.cpp.o.provides

src/http/CMakeFiles/http.dir/src/util.cpp.o.provides.build: src/http/CMakeFiles/http.dir/src/util.cpp.o

src/http/CMakeFiles/http.dir/src/request.cpp.o: src/http/CMakeFiles/http.dir/flags.make
src/http/CMakeFiles/http.dir/src/request.cpp.o: ../src/http/src/request.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/deploy/src/libsourcey/build/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/http/CMakeFiles/http.dir/src/request.cpp.o"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/http.dir/src/request.cpp.o -c /home/deploy/src/libsourcey/src/http/src/request.cpp

src/http/CMakeFiles/http.dir/src/request.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/http.dir/src/request.cpp.i"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/deploy/src/libsourcey/src/http/src/request.cpp > CMakeFiles/http.dir/src/request.cpp.i

src/http/CMakeFiles/http.dir/src/request.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/http.dir/src/request.cpp.s"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/deploy/src/libsourcey/src/http/src/request.cpp -o CMakeFiles/http.dir/src/request.cpp.s

src/http/CMakeFiles/http.dir/src/request.cpp.o.requires:
.PHONY : src/http/CMakeFiles/http.dir/src/request.cpp.o.requires

src/http/CMakeFiles/http.dir/src/request.cpp.o.provides: src/http/CMakeFiles/http.dir/src/request.cpp.o.requires
	$(MAKE) -f src/http/CMakeFiles/http.dir/build.make src/http/CMakeFiles/http.dir/src/request.cpp.o.provides.build
.PHONY : src/http/CMakeFiles/http.dir/src/request.cpp.o.provides

src/http/CMakeFiles/http.dir/src/request.cpp.o.provides.build: src/http/CMakeFiles/http.dir/src/request.cpp.o

src/http/CMakeFiles/http.dir/src/client.cpp.o: src/http/CMakeFiles/http.dir/flags.make
src/http/CMakeFiles/http.dir/src/client.cpp.o: ../src/http/src/client.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/deploy/src/libsourcey/build/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/http/CMakeFiles/http.dir/src/client.cpp.o"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/http.dir/src/client.cpp.o -c /home/deploy/src/libsourcey/src/http/src/client.cpp

src/http/CMakeFiles/http.dir/src/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/http.dir/src/client.cpp.i"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/deploy/src/libsourcey/src/http/src/client.cpp > CMakeFiles/http.dir/src/client.cpp.i

src/http/CMakeFiles/http.dir/src/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/http.dir/src/client.cpp.s"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/deploy/src/libsourcey/src/http/src/client.cpp -o CMakeFiles/http.dir/src/client.cpp.s

src/http/CMakeFiles/http.dir/src/client.cpp.o.requires:
.PHONY : src/http/CMakeFiles/http.dir/src/client.cpp.o.requires

src/http/CMakeFiles/http.dir/src/client.cpp.o.provides: src/http/CMakeFiles/http.dir/src/client.cpp.o.requires
	$(MAKE) -f src/http/CMakeFiles/http.dir/build.make src/http/CMakeFiles/http.dir/src/client.cpp.o.provides.build
.PHONY : src/http/CMakeFiles/http.dir/src/client.cpp.o.provides

src/http/CMakeFiles/http.dir/src/client.cpp.o.provides.build: src/http/CMakeFiles/http.dir/src/client.cpp.o

src/http/CMakeFiles/http.dir/src/form.cpp.o: src/http/CMakeFiles/http.dir/flags.make
src/http/CMakeFiles/http.dir/src/form.cpp.o: ../src/http/src/form.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/deploy/src/libsourcey/build/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/http/CMakeFiles/http.dir/src/form.cpp.o"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/http.dir/src/form.cpp.o -c /home/deploy/src/libsourcey/src/http/src/form.cpp

src/http/CMakeFiles/http.dir/src/form.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/http.dir/src/form.cpp.i"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/deploy/src/libsourcey/src/http/src/form.cpp > CMakeFiles/http.dir/src/form.cpp.i

src/http/CMakeFiles/http.dir/src/form.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/http.dir/src/form.cpp.s"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/deploy/src/libsourcey/src/http/src/form.cpp -o CMakeFiles/http.dir/src/form.cpp.s

src/http/CMakeFiles/http.dir/src/form.cpp.o.requires:
.PHONY : src/http/CMakeFiles/http.dir/src/form.cpp.o.requires

src/http/CMakeFiles/http.dir/src/form.cpp.o.provides: src/http/CMakeFiles/http.dir/src/form.cpp.o.requires
	$(MAKE) -f src/http/CMakeFiles/http.dir/build.make src/http/CMakeFiles/http.dir/src/form.cpp.o.provides.build
.PHONY : src/http/CMakeFiles/http.dir/src/form.cpp.o.provides

src/http/CMakeFiles/http.dir/src/form.cpp.o.provides.build: src/http/CMakeFiles/http.dir/src/form.cpp.o

src/http/CMakeFiles/http.dir/src/server.cpp.o: src/http/CMakeFiles/http.dir/flags.make
src/http/CMakeFiles/http.dir/src/server.cpp.o: ../src/http/src/server.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/deploy/src/libsourcey/build/CMakeFiles $(CMAKE_PROGRESS_11)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/http/CMakeFiles/http.dir/src/server.cpp.o"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/http.dir/src/server.cpp.o -c /home/deploy/src/libsourcey/src/http/src/server.cpp

src/http/CMakeFiles/http.dir/src/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/http.dir/src/server.cpp.i"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/deploy/src/libsourcey/src/http/src/server.cpp > CMakeFiles/http.dir/src/server.cpp.i

src/http/CMakeFiles/http.dir/src/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/http.dir/src/server.cpp.s"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/deploy/src/libsourcey/src/http/src/server.cpp -o CMakeFiles/http.dir/src/server.cpp.s

src/http/CMakeFiles/http.dir/src/server.cpp.o.requires:
.PHONY : src/http/CMakeFiles/http.dir/src/server.cpp.o.requires

src/http/CMakeFiles/http.dir/src/server.cpp.o.provides: src/http/CMakeFiles/http.dir/src/server.cpp.o.requires
	$(MAKE) -f src/http/CMakeFiles/http.dir/build.make src/http/CMakeFiles/http.dir/src/server.cpp.o.provides.build
.PHONY : src/http/CMakeFiles/http.dir/src/server.cpp.o.provides

src/http/CMakeFiles/http.dir/src/server.cpp.o.provides.build: src/http/CMakeFiles/http.dir/src/server.cpp.o

src/http/CMakeFiles/http.dir/src/websocket.cpp.o: src/http/CMakeFiles/http.dir/flags.make
src/http/CMakeFiles/http.dir/src/websocket.cpp.o: ../src/http/src/websocket.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/deploy/src/libsourcey/build/CMakeFiles $(CMAKE_PROGRESS_12)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/http/CMakeFiles/http.dir/src/websocket.cpp.o"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/http.dir/src/websocket.cpp.o -c /home/deploy/src/libsourcey/src/http/src/websocket.cpp

src/http/CMakeFiles/http.dir/src/websocket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/http.dir/src/websocket.cpp.i"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/deploy/src/libsourcey/src/http/src/websocket.cpp > CMakeFiles/http.dir/src/websocket.cpp.i

src/http/CMakeFiles/http.dir/src/websocket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/http.dir/src/websocket.cpp.s"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/deploy/src/libsourcey/src/http/src/websocket.cpp -o CMakeFiles/http.dir/src/websocket.cpp.s

src/http/CMakeFiles/http.dir/src/websocket.cpp.o.requires:
.PHONY : src/http/CMakeFiles/http.dir/src/websocket.cpp.o.requires

src/http/CMakeFiles/http.dir/src/websocket.cpp.o.provides: src/http/CMakeFiles/http.dir/src/websocket.cpp.o.requires
	$(MAKE) -f src/http/CMakeFiles/http.dir/build.make src/http/CMakeFiles/http.dir/src/websocket.cpp.o.provides.build
.PHONY : src/http/CMakeFiles/http.dir/src/websocket.cpp.o.provides

src/http/CMakeFiles/http.dir/src/websocket.cpp.o.provides.build: src/http/CMakeFiles/http.dir/src/websocket.cpp.o

src/http/CMakeFiles/http.dir/src/authenticator.cpp.o: src/http/CMakeFiles/http.dir/flags.make
src/http/CMakeFiles/http.dir/src/authenticator.cpp.o: ../src/http/src/authenticator.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/deploy/src/libsourcey/build/CMakeFiles $(CMAKE_PROGRESS_13)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/http/CMakeFiles/http.dir/src/authenticator.cpp.o"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/http.dir/src/authenticator.cpp.o -c /home/deploy/src/libsourcey/src/http/src/authenticator.cpp

src/http/CMakeFiles/http.dir/src/authenticator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/http.dir/src/authenticator.cpp.i"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/deploy/src/libsourcey/src/http/src/authenticator.cpp > CMakeFiles/http.dir/src/authenticator.cpp.i

src/http/CMakeFiles/http.dir/src/authenticator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/http.dir/src/authenticator.cpp.s"
	cd /home/deploy/src/libsourcey/build/src/http && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/deploy/src/libsourcey/src/http/src/authenticator.cpp -o CMakeFiles/http.dir/src/authenticator.cpp.s

src/http/CMakeFiles/http.dir/src/authenticator.cpp.o.requires:
.PHONY : src/http/CMakeFiles/http.dir/src/authenticator.cpp.o.requires

src/http/CMakeFiles/http.dir/src/authenticator.cpp.o.provides: src/http/CMakeFiles/http.dir/src/authenticator.cpp.o.requires
	$(MAKE) -f src/http/CMakeFiles/http.dir/build.make src/http/CMakeFiles/http.dir/src/authenticator.cpp.o.provides.build
.PHONY : src/http/CMakeFiles/http.dir/src/authenticator.cpp.o.provides

src/http/CMakeFiles/http.dir/src/authenticator.cpp.o.provides.build: src/http/CMakeFiles/http.dir/src/authenticator.cpp.o

# Object files for target http
http_OBJECTS = \
"CMakeFiles/http.dir/src/connection.cpp.o" \
"CMakeFiles/http.dir/src/url.cpp.o" \
"CMakeFiles/http.dir/src/cookie.cpp.o" \
"CMakeFiles/http.dir/src/message.cpp.o" \
"CMakeFiles/http.dir/src/parser.cpp.o" \
"CMakeFiles/http.dir/src/response.cpp.o" \
"CMakeFiles/http.dir/src/util.cpp.o" \
"CMakeFiles/http.dir/src/request.cpp.o" \
"CMakeFiles/http.dir/src/client.cpp.o" \
"CMakeFiles/http.dir/src/form.cpp.o" \
"CMakeFiles/http.dir/src/server.cpp.o" \
"CMakeFiles/http.dir/src/websocket.cpp.o" \
"CMakeFiles/http.dir/src/authenticator.cpp.o"

# External object files for target http
http_EXTERNAL_OBJECTS =

src/http/libscy_http.a: src/http/CMakeFiles/http.dir/src/connection.cpp.o
src/http/libscy_http.a: src/http/CMakeFiles/http.dir/src/url.cpp.o
src/http/libscy_http.a: src/http/CMakeFiles/http.dir/src/cookie.cpp.o
src/http/libscy_http.a: src/http/CMakeFiles/http.dir/src/message.cpp.o
src/http/libscy_http.a: src/http/CMakeFiles/http.dir/src/parser.cpp.o
src/http/libscy_http.a: src/http/CMakeFiles/http.dir/src/response.cpp.o
src/http/libscy_http.a: src/http/CMakeFiles/http.dir/src/util.cpp.o
src/http/libscy_http.a: src/http/CMakeFiles/http.dir/src/request.cpp.o
src/http/libscy_http.a: src/http/CMakeFiles/http.dir/src/client.cpp.o
src/http/libscy_http.a: src/http/CMakeFiles/http.dir/src/form.cpp.o
src/http/libscy_http.a: src/http/CMakeFiles/http.dir/src/server.cpp.o
src/http/libscy_http.a: src/http/CMakeFiles/http.dir/src/websocket.cpp.o
src/http/libscy_http.a: src/http/CMakeFiles/http.dir/src/authenticator.cpp.o
src/http/libscy_http.a: src/http/CMakeFiles/http.dir/build.make
src/http/libscy_http.a: src/http/CMakeFiles/http.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libscy_http.a"
	cd /home/deploy/src/libsourcey/build/src/http && $(CMAKE_COMMAND) -P CMakeFiles/http.dir/cmake_clean_target.cmake
	cd /home/deploy/src/libsourcey/build/src/http && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/http.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/http/CMakeFiles/http.dir/build: src/http/libscy_http.a
.PHONY : src/http/CMakeFiles/http.dir/build

src/http/CMakeFiles/http.dir/requires: src/http/CMakeFiles/http.dir/src/connection.cpp.o.requires
src/http/CMakeFiles/http.dir/requires: src/http/CMakeFiles/http.dir/src/url.cpp.o.requires
src/http/CMakeFiles/http.dir/requires: src/http/CMakeFiles/http.dir/src/cookie.cpp.o.requires
src/http/CMakeFiles/http.dir/requires: src/http/CMakeFiles/http.dir/src/message.cpp.o.requires
src/http/CMakeFiles/http.dir/requires: src/http/CMakeFiles/http.dir/src/parser.cpp.o.requires
src/http/CMakeFiles/http.dir/requires: src/http/CMakeFiles/http.dir/src/response.cpp.o.requires
src/http/CMakeFiles/http.dir/requires: src/http/CMakeFiles/http.dir/src/util.cpp.o.requires
src/http/CMakeFiles/http.dir/requires: src/http/CMakeFiles/http.dir/src/request.cpp.o.requires
src/http/CMakeFiles/http.dir/requires: src/http/CMakeFiles/http.dir/src/client.cpp.o.requires
src/http/CMakeFiles/http.dir/requires: src/http/CMakeFiles/http.dir/src/form.cpp.o.requires
src/http/CMakeFiles/http.dir/requires: src/http/CMakeFiles/http.dir/src/server.cpp.o.requires
src/http/CMakeFiles/http.dir/requires: src/http/CMakeFiles/http.dir/src/websocket.cpp.o.requires
src/http/CMakeFiles/http.dir/requires: src/http/CMakeFiles/http.dir/src/authenticator.cpp.o.requires
.PHONY : src/http/CMakeFiles/http.dir/requires

src/http/CMakeFiles/http.dir/clean:
	cd /home/deploy/src/libsourcey/build/src/http && $(CMAKE_COMMAND) -P CMakeFiles/http.dir/cmake_clean.cmake
.PHONY : src/http/CMakeFiles/http.dir/clean

src/http/CMakeFiles/http.dir/depend:
	cd /home/deploy/src/libsourcey/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/deploy/src/libsourcey /home/deploy/src/libsourcey/src/http /home/deploy/src/libsourcey/build /home/deploy/src/libsourcey/build/src/http /home/deploy/src/libsourcey/build/src/http/CMakeFiles/http.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/http/CMakeFiles/http.dir/depend
