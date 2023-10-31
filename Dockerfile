# 使用 Ubuntu 为基础镜像
FROM ubuntu:20.04

# 安装 curl 和 sudo（Ubuntu 镜像可能不包含这些工具）
RUN apt-get update && apt-get install -y curl sudo

# 安装 Node.js （可以使用 NVM 或直接安装）
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash - \
    && sudo apt-get install -y nodejs

# 安装其他必要的软件
RUN apt-get install -y xsel xclip xvfb screen

# 全局安装 npm 包
RUN npm install -g @nocturne-xyz/nocturne-setup

