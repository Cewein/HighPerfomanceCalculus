# Made by Maximilien "cewein" Nowak Abdallah
#
# 2021, Sorbonne university

cmake_minimum_required(VERSION 3.9)

# here we specify that the project is C language only, so the default
# C compiler on the system will be used
project(HPC C)

add_executable(HPC src/exact_cover.c)

find_package(OpenMP)
if(OpenMP_CXX_FOUND)
    target_link_libraries(HPC PUBLIC OpenMP::OpenMP_CXX)
endif()