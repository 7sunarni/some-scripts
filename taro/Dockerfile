FROM node:20.19-slim

RUN apt update && \
    apt install -y ca-certificates && \
    echo 'deb https://mirrors.tuna.tsinghua.edu.cn/debian/ trixie main contrib non-free non-free-firmware' > /etc/apt/sources.list && \
    echo 'deb https://mirrors.tuna.tsinghua.edu.cn/debian/ trixie-updates main contrib non-free non-free-firmware' >> /etc/apt/sources.list && \
    echo 'deb https://mirrors.tuna.tsinghua.edu.cn/debian/ trixie-backports main contrib non-free non-free-firmware' >> /etc/apt/sources.list && \
    echo 'deb https://security.debian.org/debian-security trixie-security main contrib non-free non-free-firmware' >> /etc/apt/sources.list && \
    apt update && \
    apt install -y git && \
    npm install -g @tarojs/cli --registry=https://registry.npmmirror.com 
