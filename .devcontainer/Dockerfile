# syntax=docker/dockerfile:1
FROM ubuntu:24.04

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Install basic packages
RUN apt-get update && \
    apt-get install -y zsh vim build-essential curl wget git \
    && rm -rf /var/lib/apt/lists/*

# Install oh-my-zsh (non-interactive, default settings)
RUN RUNZSH=no CHSH=no KEEP_ZSHRC=yes sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" || true

# Install Node.js (LTS) and yarn
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && \
    apt-get update && \
    apt-get install -y nodejs && \
    npm install -g yarn && \
    rm -rf /var/lib/apt/lists/*

# Set default shell to zsh
SHELL ["/bin/zsh", "-c"] 