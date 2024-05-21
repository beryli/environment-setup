#!/bin/bash

# Update package lists
sudo apt update

# Common packages
sudo apt install -y \
    vim \
    curl \
    git \
    wget \
    htop \
    tree \
    gzip \
    unzip \
    tmux \
    software-properties-common \
    build-essential \
    openssh-server

# Java packages
sudo apt install -y \
    default-jre \
    default-jdk

# Python packages
# sudo apt install -y \
    # python3 \
    # python3-pip \
    # python3-venv

# Additional packages (optional)
# sudo apt install -y \
#     <package-name>

echo "Installation completed."