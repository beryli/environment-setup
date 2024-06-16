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
    default-jdk
    # default-jre \\ No need to have JRE when you have JDK

# Python packages
# sudo apt install -y \
    # python3 \
    # python3-pip \
    # python3-venv

# Additional packages (optional)
# sudo apt install -y \
#     <package-name>

# VSCode
code --install-extension yzhang.markdown-all-in-one       # markdown
code --install-extension davidanson.vscode-markdownlint
code --install-extension esbenp.prettier-vscode           # format
code --install-extension shardulm94.trailing-spaces
code --install-extension oderwat.indent-rainbow           # highlight
code --install-extension donjayamanne.githistory          # git
code --install-extension mhutchie.git-graph
code --install-extension eamodio.gitlens

echo "Installation completed."