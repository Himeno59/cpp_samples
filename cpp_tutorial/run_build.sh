#!/bin/bash

# 引数がない場合はデフォルトでrebuildを設定
if [ "$#" -eq 0 ]; then
    ACTION="rebuild"
else
    ACTION="$1"
fi

# ビルドディレクトリの名前
BUILD_DIR="build"

# 引数に応じて動作を変更
case $ACTION in
    clean)
        # ビルドディレクトリを削除
        echo "Cleaning build directory..."
        rm -rf "$BUILD_DIR"
        ;;
    rebuild)
        # ビルドディレクトリが存在するか確認
        if [ ! -d "$BUILD_DIR" ]; then
            echo "Build directory not found. Creating a new build directory."
        else
            echo "Rebuilding..."
        fi
        ;;
    *)
        echo "Invalid argument: $ACTION"
        echo "Usage: $0 {clean|rebuild}"
        exit 1
        ;;
esac

# ビルドディレクトリを作成
mkdir -p "$BUILD_DIR"

# ビルドディレクトリに移動
cd "$BUILD_DIR" || exit

# CMakeを実行
cmake ..

# Makeを実行
make

echo "Build completed."
