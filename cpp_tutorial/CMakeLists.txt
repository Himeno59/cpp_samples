cmake_minimum_required(VERSION 3.10)
project(cpp_tutorial)

set(CMAKE_CXX_STANDARD 14)

# 実行ファイルの出力先指定
# add_subdirectoryより前に定義する
# そのままだとbuild/src以下にあるので、build/に移るように変更
set(OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/build")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${OUTPUT_DIRECTORY})

add_subdirectory(src)

message(STATUS "Output directory: ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}")
