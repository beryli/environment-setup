# Ubuntu Setup <!-- omit in toc -->

This repository contains information on the settings, tools, and applications I use on my Ubuntu.

## Table of Contents <!-- omit in toc -->

- [Installation](#installation)
- [System Settings](#system-settings)
  - [Display Scaling](#display-scaling)
  - [Additional Resources](#additional-resources)
  - [Bash Settings](#bash-settings)
- [Advanced Package Tool (APT)](#advanced-package-tool-apt)
  - [Installing software](#installing-software)
  - [Updating](#updating)
- [SSH Server](#ssh-server)
  - [Installation and Verification](#installation-and-verification)
  - [Firewall Configuration (UFW)](#firewall-configuration-ufw)
  - [Connecting to the Server](#connecting-to-the-server)
- [GitHub](#github)
  - [SSH key](#ssh-key)
    - [Generating a New SSH Key](#generating-a-new-ssh-key)
    - [Adding the SSH Key to the ssh-agent](#adding-the-ssh-key-to-the-ssh-agent)
    - [Adding the SSH Key to Your GitHub Account](#adding-the-ssh-key-to-your-github-account)
- [Git](#git)
  - [Config](#config)
  - [New Repo](#new-repo)

## Installation

- Boot into Ubuntu (Try or Install Ubuntu) and select "Install Ubuntu" on the desktop.
- Follow these steps:
  - Select language and keyboard layout.
  - Choose whether to install updates and additional software during installation.
  - Select installation type.
  - Click "Install now".
- Complete setup by providing:
  - Location information.
  - Username and password.
- Reboot.

## System Settings

### Display Scaling

- Go to System Settings.
- Navigate to Displays.
- Enable Fractional Scaling and set the desired scale.

### Additional Resources

- For instructions on installing a desktop environment on an Ubuntu server, refer to this guide: [How to Install a Desktop (GUI) on an Ubuntu Server](https://phoenixnap.com/kb/how-to-install-a-gui-on-ubuntu).

### Bash Settings

- Open and edit the `~/.bashrc` file.

## Advanced Package Tool (APT)

APT (Advanced Package Tool) is the primary command-line package manager for Debian and its derivatives.

### Installing software

Use the [setup_ubuntu.sh](../install/setup_ubuntu.sh) script to install necessary software.

- Make the script executable with `chmod +x setup_ubuntu.sh`.
- Execute it with `./setup_ubuntu.sh`.

### Updating

To keep your system up-to-date:

- Update package lists and upgrade packages with `sudo apt update && sudo apt upgrade`.
- Remove unused dependencies with `sudo apt autoremove`.
- List all non-automatic installed packages with `apt list --installed | grep -v automatic`.

## SSH Server

Secure Shell (SSH) protocol allows secure command execution over an unsecured network.

### Installation and Verification

- Install **openssh-server**.
- Verify the SSH service is running with `sudo systemctl status ssh`.
- If not running, enable and start the SSH server with `sudo systemctl enable --now ssh`.
<!-- Note: The --now option starts the service immediately, so you don't need to run `sudo systemctl start ssh` separately. -->
### Firewall Configuration (UFW)

- Check Firewall Status with `sudo ufw status`.
- Enable UFW with `sudo ufw enable`.
- Allow SSH Connections with `sudo ufw allow ssh`.

### Connecting to the Server

- Connect to the server use `ssh -p port_number username@IP_address`. Replace port_number, username, and IP_address with your specific details.
- To check your IP address, use `ip a` or `hostname -I`.

Note: The default SSH port is 22. Port configuration changes, including modifying the sshd_config file, are omitted here.

## GitHub

### SSH key

To generate a new SSH key and add it to the ssh-agent, follow these steps (summarized from [GitHub documentation](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent?platform=linux)):

#### Generating a New SSH Key

- Open Terminal.
- Generate a new SSH key with `ssh-keygen -t ed25519 -C "your_email@example.com"`.
  - Note: If you are using a legacy system that doesn't support the Ed25519 algorithm, use `ssh-keygen -t rsa -b 4096 -C "your_email@example.com"`.

This creates a new SSH key using your email as a label.

#### Adding the SSH Key to the ssh-agent

- Start the ssh-agent in the background with `eval "$(ssh-agent -s)"`.
- Add your SSH private key to the ssh-agent with `ssh-add ~/.ssh/id_ed25519`.

#### Adding the SSH Key to Your GitHub Account

- Display your SSH public key with `cat ~/.ssh/id_ed25519.pub` and then copy its contents.
- Navigate to **Settings** in GitHub.
- In the "Access" section of the sidebar, click **SSH and GPG keys**.
- Click **New SSH key** or **Add SSH key**.
  - In the "Title" field, add a descriptive label for the new key.
  - Select the type of key, either authentication or signing.
  - In the "Key" field, paste your public key.
  - Click Add SSH key.
- If prompted, confirm access to your GitHub account.

Note: GitHub Desktop uses HTTPS rather than SSH to connect.

## Git

Git is a distributed version control system that tracks versions of files. Here's a handy [cheat sheet](https://education.github.com/git-cheat-sheet-education.pdf) provided by GitHub.

### Config

- List all Git configurations: `git config --list`.
- Set the default editor to Vim: `git config --global core.editor "vim"`.
- Create an alias for a compact log view: `git config --global alias.lg "log --oneline --graph --decorate --all"`.
- `git config --global user.email "you@example.com"`
- `git config --global user.name "Your Name"`

### New Repo

- `git init`
- `git add --all`
- `git commit -m "first commit"`
- `git branch -M main`
- `git remote add origin "URL"`
- `git push -u origin main`

<!-- ## web dev
nodejs
google-cloud-cli -->