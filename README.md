# Ubuntu

# Mac
## Homebrew
[Homebrew](https://brew.sh/) is a Package Manager for macOS. 
### Installation
To install Homebrew, follow these steps:
1. Open a macOS Terminal.
2. Paste the following command and press Enter to install Homebrew. This command will also install the Xcode Command Line Tools if they are not already installed.
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
3. After installation, run the following two commands in your terminal to add Homebrew to your PATH. Replace ${username} with your macOS username.
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
### Updating
To update Homebrew and upgrade your installed packages, run the following command:
```sh
brew update && brew upgrade
```
### Backup
You can create a backup of your installed packages using a Brewfile.
1. Generate a Brewfile containing your installed packages:
```sh
brew bundle dump
```
2. To reinstall the same packages later, run the following command from the same folder where your Brewfile is located:
```sh
brew bundle dump
```
[Download my minimal essential bundle](Brewfile)

# Others