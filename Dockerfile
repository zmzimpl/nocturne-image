# 使用 Ubuntu 为基础镜像
FROM ubuntu:latest

# 更新软件包列表并安装 curl 和其他必要工具
RUN apt-get update && apt-get install -y curl software-properties-common

# 使用 NodeSource 官方脚本安装 Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get install -y nodejs

# 安装其他必要的软件
RUN apt-get install -y xsel xclip xvfb screen

# 全局安装 npm 包
RUN npm install -g @nocturne-xyz/nocturne-setup

# 其他配置（如环境变量等）
