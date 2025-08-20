#!/bin/bash

# 屏幕分辨率，可以改成你 fb 的实际分辨率
SCREEN_W=480
SCREEN_H=320

# 测试字符串列表
rand_str() {
    # 生成 20~80 长度的随机字符串
    LEN=$((480 + RANDOM % 640))
    tr -dc 'A-Za-z0-9' </dev/urandom | head -c $LEN
}

while true; do
    # 随机坐标
    X=$((RANDOM % SCREEN_W))
    Y=$((RANDOM % SCREEN_H))

    # 随机字符串
    STR=$(rand_str)

    # 执行绘制
    ./test_fb "$X" "$Y" "$STR"

    # 间隔 0.1 秒（可调快/慢）
    sleep 0.1
done

