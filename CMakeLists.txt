# Made by Maximilien "cewein" Nowak Abdallah
#
# 2021, Sorbonne university

cmake_minimum_required(VERSION 3.9 FATAL_ERROR)

# here we specify that the project is C language only, so the default
# C compiler on the system will be used
project(HPC C)

SET(CMAKE_C_FLAGS  "-Wall -O3")

add_executable(HPC src/exact_cover.c)

find_package(OpenMP REQUIRED)
if (OPENMP_FOUND)
    set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${OpenMP_C_FLAGS}")
    set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
    set (CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${OpenMP_EXE_LINKER_FLAGS}")
endif()