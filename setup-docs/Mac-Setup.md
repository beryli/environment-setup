# Mac Setup <!-- omit in toc -->

This repository contains information on the settings, tools, and applications I use on my Mac.

## Table of Contents <!-- omit in toc -->

- [System Settings](#system-settings)
- [Homebrew](#homebrew)
  - [Installation](#installation)
  - [Installing Software](#installing-software)
  - [Uninstalling Software](#uninstalling-software)
  - [Updating](#updating)
  - [Backup](#backup)

## System Settings

- **Create User Account:**
  - Create a username and password for your account.

- **Language and Input:**
  - Add Chinese language to the system.
  - Configure Zhuyin input method.

- **Trackpad/Mouse Settings:**
  - Enable or disable natural scrolling as per preference.

- **Dock Organization:**
  - Organize Dock icons for easy access.

- **Microsoft 365:**
  - Install Microsoft 365 for productivity applications.

## Homebrew

[Homebrew](https://brew.sh/) is a Package Manager for macOS.

### Installation

To install Homebrew, follow these steps:

- Open a macOS Terminal.
- Paste the following command and press Enter to install Homebrew. You may be prompted to enter your password for sudo access. This command will also install the Xcode Command Line Tools if they are not already installed.

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

- After installation, run the following two commands in your terminal to add Homebrew to your PATH. Replace ${username} with your macOS username.

```sh
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/${username}/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

Now Homebrew is installed and configured on your system.

### Installing Software

To install command line software, run the following command and replace ${package_name} with the name of the package you want to install:

```sh
brew install ${package_name}
```

To install GUI applications, use the --cask option. Run the following command and replace ${package_name} with the name of the GUI application you want to install:

```sh
brew install --cask ${package_name}
```

### Uninstalling Software

To uninstall software installed via Homebrew, follow these steps:

- Uninstall the Package:
For regular packages, use the following command:

```sh
brew uninstall ${package_name}
```

For applications installed as casks, use:

```sh
brew uninstall --cask ${package_name}
```

- Remove Unused Dependencies:
After uninstalling the package, you can remove any unused dependencies by running:

```sh
brew autoremove
```

### Updating

To update Homebrew and upgrade your installed packages, run the following command:

```sh
brew update && brew upgrade
```

### Backup

You can create a backup of your installed packages using a Brewfile.

- Generate a Brewfile containing your installed packages:

```sh
brew bundle dump
```

- To reinstall the same packages later, run the following command from the same folder where your Brewfile is located:

```sh
brew bundle
```

[Download my minimal essential bundle](../install/Brewfile)
