cmake_minimum_required(VERSION 3.28)
project(test)

include(impl/install/lib/cmake/mod/mod.cmake)

add_executable(test test.cpp)
target_link_libraries(test PRIVATE mod::mod)
