#!/bin/bash

# 获取鼠标点击时的坐标（需在点击事件触发后立即执行）
mouse_pos=$(hyprctl cursorpos -j | jq -r '"\(.x),\(.y)"')

# 查询所有窗口信息，精准匹配鼠标所在位置的窗口
window_info=$(hyprctl clients -j | jq --arg pos "$mouse_pos" '
  .[] | 
  select(
    (.at[0] <= ($pos | split(",")[0] | tonumber)) and 
    (.at[0] + .size[0] >= ($pos | split(",")[0] | tonumber)) and 
    (.at[1] <= ($pos | split(",")[1] | tonumber)) and 
    (.at[1] + .size[1] >= ($pos | split(",")[1] | tonumber))
  ) |
  {class: (if .class != null then .class else .app_id end), title: .title}
')

# 提取并显示结果
class=$(echo "$window_info" | jq -r '.class')
title=$(echo "$window_info" | jq -r '.title')
notify-send "窗口信息" "Class: $class\nTitle: $title"
