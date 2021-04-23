# Made by Maximilien "cewein" Nowak Abdallah
#
# 2021, Sorbonne university

cmake_minimum_required(VERSION 3.9)

# here we specify that the project is C language only, so the default
# C compiler on the system will be used
project(HPC C)

SET(CMAKE_C_FLAGS  "-Wall -pedantic -lm -O3 -funroll-loops")

find_package(MPI REQUIRED)
# add this line only when you are using openmpi which has a different c++ bindings
# add_definitions(-DOMPI_SKIP_MPICXX)

add_executable(HPC src/exact_cover.c)
target_link_libraries(HPC ${MPI_LIBRARIES})

if(MPI_COMPILE_FLAGS)
  set_target_properties(HPC PROPERTIES
    COMPILE_FLAGS "${MPI_COMPILE_FLAGS}")
endif()

if(MPI_LINK_FLAGS)
  set_target_properties(HPC PROPERTIES
    LINK_FLAGS "${MPI_LINK_FLAGS}")
endif()