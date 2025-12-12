# --- Stage 1: Build stage ---
FROM docker.1ms.run/library/node:20.19-slim AS builder

RUN npm install -g @anthropic-ai/claude-code --registry=https://registry.npmmirror.com \
    && npm cache clean --force \
    && rm -rf /var/lib/apt/lists/* /root/.npm /root/.cache

WORKDIR /workspace
