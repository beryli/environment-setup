# Ubuntu Setup <!-- omit in toc -->

This repository contains information on the settings, tools, and applications I use on my Ubuntu.

**Table of Contents**
- [Installation](#installation)
- [System Settings](#system-settings)
- [APT](#apt)
  - [Installing software](#installing-software)
  - [Updating](#updating)


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
To adjust display scaling:
- Go to System Settings.
- Navigate to Displays.
- Enable Fractional Scaling and set the desired scale.

## APT
APT (Advanced Package Tool) is the primary command-line package manager for Debian and its derivatives.

### Installing software
Use the [setup_ubuntu.sh](setup_ubuntu.sh) script to install necessary software.
- Make the script executable with `chmod +x setup_ubuntu.sh`.
- Execute it with `./setup_ubuntu.sh`.

### Updating
To keep your system up-to-date:
- Update package lists and upgrade packages with `sudo apt update && sudo apt upgrade`.
- Remove unused dependencies with `sudo apt autoremove`.
- List all non-automatic installed packages with `apt list --installed | grep -v automatic`.

<!-- nodejs
google-cloud-cli -->