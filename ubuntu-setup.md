# Ubuntu Setup <!-- omit in toc -->

This repository contains information on the settings, tools, and applications I use on my Ubuntu.

**Table of Contents**
- [Installation](#installation)
- [System Settings](#system-settings)
- [APT](#apt)
  - [Installing software](#installing-software)
  - [Updating](#updating)
- [Git](#git)
- [SSH Server](#ssh-server)
  - [Installation and Verification](#installation-and-verification)
  - [Firewall Configuration (UFW)](#firewall-configuration-ufw)
  - [Connecting to the Server](#connecting-to-the-server)
- [GitHub](#github)
  - [SSH key](#ssh-key)
    - [Generating a New SSH Key](#generating-a-new-ssh-key)
    - [Adding the SSH Key to the ssh-agent](#adding-the-ssh-key-to-the-ssh-agent)
    - [Adding the SSH Key to Your GitHub Account](#adding-the-ssh-key-to-your-github-account)
- [VSCode](#vscode)
  - [Exporting Extensions List](#exporting-extensions-list)
  - [Reinstalling Extension](#reinstalling-extension)
- [Eclipse](#eclipse)
  - [Installation](#installation-1)
  - [Configuration](#configuration)
  - [Usage](#usage)


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

## Git
- List all Git configurations: `git config --list`.
- Set the default editor to Vim: `git config --global core.editor "vim"`.
- Create an alias for a compact log view: `git config --global alias.lg "log --oneline --graph --decorate --all"`.

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
- Generate a new SSH key with `ssh-keygen -t ed25519 -C "your_email@example.com"`. Replace your_email@example.com with your GitHub email address.
  - Note: If you are using a legacy system that doesn't support the Ed25519 algorithm, use ` ssh-keygen -t rsa -b 4096 -C "your_email@example.com"`.

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

## VSCode
### Exporting Extensions List
VSCode provides a command to list all installed extensions. If you want to save the list to a file, you can redirect the output to a file: `code --list-extensions > vscode-extensions.txt`
### Reinstalling Extension
To reinstall the extensions on another machine, you can use the output file created by the above steps. For example, if you have a list of extensions in vscode-extensions.txt, you can install them using: `cat vscode-extensions.txt | xargs -L 1 code --install-extension`

## Eclipse
### Installation
- Download Eclipse Installer from [Eclipse downloads page](https://www.eclipse.org/downloads/packages/installer).
- Extract the Installer with `tar -xzf eclipse-inst-jre-linux-aarch64.tar.gz`.
- Navigate to the installer directory with `cd eclipse-installer`, and then run the installer `./eclipse-inst` with GUI.
  - Select Eclipse IDE for Java Developers.
  - Ensure you have a Java 17+ VM (e.g., JRE 21).
  - Set the installation folder to the default /home/<your-username>/eclipse/java-2024-03.
  - Check the options to Create start menu entry/desktop shortcut.
  - Click Install all and accept.
### Configuration
- Configure Eclipse Settings.
  - Go to Window > Preferences.
  - Navigate to General > Appearance.
  - Select Theme and choose Dark.
  - Click Apply and Close.
### Usage
- Launch Eclipse:
  - Start Eclipse from your applications menu or using the terminal with `~/eclipse/java-2024-03/eclipse/eclipse`.
  - Select a workspace directory.
- Set up a new Java project:
  - Go to the Package Explorer view.
  - Right-click and select New > Java Project.
  - Enter your desired Project Name.
  - Click Finish.
- Create a New Java Class:
  - Right-click on the src folder in your project.
  - Go to New > Class.
  - Enter the name of your class and check the box to include the public static void main(String[] args) method if you want to create an executable program. Click Finish.
- Run Your Java Program:
  - Click the Run button on the toolbar (green circle with a white arrow) or right-click on your class in the Project Explorer and select Run As > Java Application.
  - Your program will compile and run. The output will be displayed in the Console view at the bottom of the Eclipse window.

Note: If you encounter the error "must declare a named package eclipse because this compilation unit is associated to the named module x." simply delete module-info.java in your Project Explorer tab. For more details, refer to this [Stack Overflow post](https://stackoverflow.com/questions/53033899/must-declare-a-named-package-eclipse-because-this-compilation-unit-is-associated).

<!-- ## web dev
nodejs
google-cloud-cli -->