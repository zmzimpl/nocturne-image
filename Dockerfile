# 使用 Ubuntu 为基础镜像
FROM ubuntu:20.04

# 更新软件包列表并安装所需软件
RUN apt-get update && apt-get install -y curl software-properties-common xsel xclip xvfb screen \
    && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g @nocturne-xyz/nocturne-setup \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# 设置工作目录（根据需要修改）
WORKDIR /app

# 设置容器启动时执行的命令，以保持容器运行
CMD ["tail", "-f", "/dev/null"]
