# Environment Setup <!-- omit in toc -->

This repository contains information on the settings, tools, and applications I use on my machines.

## Table of Contents <!-- omit in toc -->

- [Virtual Machine Setup](#virtual-machine-setup)
  - [Creating a new virtual machine](#creating-a-new-virtual-machine)
  - [Settings](#settings)
  - [Passwordless SSH Login](#passwordless-ssh-login)
- [Ubuntu Setup](#ubuntu-setup)
- [Mac Setup](#mac-setup)
- [Cheatsheets](#cheatsheets)

## Virtual Machine Setup

### Creating a new virtual machine

- Use UTM to virtualize or emulate.
- Choose the operating system.
- Specify the path of the ISO image.
- Configure hardware settings including memory, CPU, and OpenGL acceleration.
- Set storage size.
- Define shared directories (optional).
- Review summary and name the virtual machine.

### Settings

- For Retina Mode, navigate to Settings -> Display.
- [Headless mode](https://docs.getutm.app/advanced/headless/#:~:text=Headless%20mode%20allows%20you%20to,Built%2Din%20Terminal%E2%80%9D%20mode.) allows you to run a virtual machine in the background.

### Passwordless SSH Login

- Generate a new SSH key pair.
- Copy the Public Key to the Remote Server.
  - Display the content of your public key file using `cat ~/.ssh/id_ed25519.pub`.
  - SSH into the remote server, and then append your public key to the ~/.ssh/authorized_keys file using `echo "your_public_key" >> ~/.ssh/authorized_keys`. Replace your_public_key with the content of the public key you copied earlier.
  - Set the appropriate permissions for the ~/.ssh directory and authorized_keys file using `chmod 700 ~/.ssh` and `chmod 600 ~/.ssh/authorized_keys`.
- Configure VS Code for Remote SSH.
  - Choose the SSH configuration file to edit (typically ~/.ssh/config).
  - Add a new Host entry in the configuration file.

    ```text
    Host remote_host
        HostName remote_host
        User username
        IdentityFile ~/.ssh/id_ed25519
    ```

    Replace remote_host with the server's hostname or IP address and username with your username on the remote server.

## Ubuntu Setup

For detailed instructions on setting up your Ubuntu environment, please refer to [ubuntu-setup.md](ubuntu-setup.md).

## Mac Setup

For detailed instructions on setting up your Mac environment, please refer to [mac-setup.md](mac-setup.md).

## Cheatsheets

Find detailed instructions on various commands in [cheatsheets.md](cheatsheets.md).
