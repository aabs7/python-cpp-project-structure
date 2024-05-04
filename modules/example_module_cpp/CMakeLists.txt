cmake_minimum_required(VERSION 2.8.12)
project(example_module_cpp)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_BUILD_TYPE "Release")

# Download pybind11
find_package(Git QUIET)
if(GIT_FOUND AND NOT EXISTS "${PROJECT_SOURCE_DIR}/pybind11")
# Update submodules as needed
    option(GIT_CLONE "Clone during build" ON)
    if(GIT_CLONE)
        message(STATUS "Clone update")
        execute_process(COMMAND ${GIT_EXECUTABLE} clone --branch v2.12.0 https://github.com/pybind/pybind11.git
                        WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
                        RESULT_VARIABLE GIT_CLONE_RESULT)
        if(NOT GIT_CLONE_RESULT EQUAL "0")
            message(FATAL_ERROR "git clone failed with ${GIT_CLONE_RESULT}.")
        endif()
    endif()
endif()

# Make the library that pybind will link against
include_directories(src)

# Build the python library
add_subdirectory(pybind11)
pybind11_add_module(example_module_cpp NO_EXTRAS src/bindings.cpp)
