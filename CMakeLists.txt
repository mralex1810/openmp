cmake_minimum_required(VERSION 3.21)
project(openmp)

set (CMAKE_CXX_STANDARD 20)
#set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${OpenMP_C_FLAGS}")
#set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
#set (CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${OpenMP_EXE_LINKER_FLAGS}")
set(CMAKE_CXX_FLAGS "-fopenmp")
add_compile_options(-O3)


add_executable(openmp main.cpp)
