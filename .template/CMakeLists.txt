cmake_minimum_required(VERSION 3.10)

project(ProjectName)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED True)


add_executable(main main.cpp file1.cpp file2.cpp)
target_include_directories(main PUBLIC include)
