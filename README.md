# Environment Setup <!-- omit in toc -->

This repository contains information on the settings, tools, and applications I use on my machines.

## Table of Contents <!-- omit in toc -->

- [Virtual Machine Setup](#virtual-machine-setup)
  - [Downloading ISO image](#downloading-iso-image)
  - [Creating a new virtual machine](#creating-a-new-virtual-machine)
  - [Settings](#settings)
- [Ubuntu Setup](#ubuntu-setup)
- [Mac Setup](#mac-setup)

## Virtual Machine Setup

### Downloading ISO image

- <https://ubuntu.com/download/server/arm>

### Creating a new virtual machine

- Use UTM to virtualize or emulate.
- Choose the operating system.
- Specify the path of the ISO image.
- Configure hardware settings including memory, CPU, and OpenGL acceleration.
- Set storage size.
- Define shared directories (optional).
- Review summary and name the virtual machine.

### Settings

- Devices - Display
  - Hardware
    - Emulated Display Card: virtio-gpu-gl-pci (GPU Supported)
    - Turn on "Resize display to window size automatically"
  - Scaling
    - Upscaling: Nearest Neighbor
    - Downscaling: Linear
    - Turn on "Retina Mode"
- [Headless mode](https://docs.getutm.app/advanced/headless/#:~:text=Headless%20mode%20allows%20you%20to,Built%2Din%20Terminal%E2%80%9D%20mode.) allows you to run a virtual machine in the background.

## Ubuntu Setup

For detailed instructions on setting up your Ubuntu environment, please refer to [Ubuntu-Setup.md](docs/Ubuntu-Setup.md).

## Mac Setup

For detailed instructions on setting up your Mac environment, please refer to [Mac-Setup.md](docs/Mac-Setup.md).
