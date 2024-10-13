cmake_minimum_required(VERSION 3.10)
project(cpp_tutorial)

set(CMAKE_CXX_STANDARD 14)

# 実行ファイル
add_executable(${PROJECT_NAME}
  src/main.cpp
  src/greetings.cpp)

# 実行ファイルのインクルードディレクトリの設定
# add_executableの後出する必要がある
target_include_directories(${PROJECT_NAME}
  PUBLIC include)
