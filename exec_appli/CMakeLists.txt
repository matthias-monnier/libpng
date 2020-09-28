cmake_minimum_required(VERSION 3.10)
project(pngprocess)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(ZLIB REQUIRED)
find_package(PNG REQUIRED)

add_executable(pngprocess main.c)

target_link_libraries(pngprocess PRIVATE PNG::PNG)
target_link_libraries(pngprocess PRIVATE ZLIB::ZLIB)
