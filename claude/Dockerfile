FROM docker.1ms.run/library/debian:12-slim AS builder

RUN apt update && \
    apt install -y curl  && \
    curl -fsSL https://claude.ai/install.sh | bash

WORKDIR /workspace
