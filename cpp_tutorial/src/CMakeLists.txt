# 実行ファイルの生成
add_executable(${PROJECT_NAME}
  main.cpp
  greetings.cpp
  )

# インクルードファイルの設定
target_include_directories(${PROJECT_NAME}
  PUBLIC ${CMAKE_SOURCE_DIR}/include
  )
