#!/bin/bash

# 检查是否提供了文件夹名称
if [ -z "$1" ]; then
    echo "用法: $0 <文件夹路径>"
    exit 1
fi

# 获取文件夹路径
DIR="$1"

# 确保目录存在且不是空的
if [ ! -d "$DIR" ] || [ -z "$(ls -A "$DIR")" ]; then
    echo "错误: 目录不存在或为空"
    exit 1
fi

# 随机选取一个文件
RANDOM_FILE="$DIR/$(ls -A -1 "$DIR" | shuf -n 1)"

hyprpaper &
sleep 1
hyprctl hyprpaper preload $RANDOM_FILE
hyprctl hyprpaper wallpaper ,$RANDOM_FILE
