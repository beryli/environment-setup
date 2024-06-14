# IDE Setup <!-- omit in toc -->

## Table of Contents <!-- omit in toc -->

- [VSCode](#vscode)
  - [Exporting Extensions List](#exporting-extensions-list)
  - [Reinstalling Extension](#reinstalling-extension)
- [Eclipse](#eclipse)
  - [Installation](#installation)
  - [Configuration](#configuration)
  - [Usage](#usage)

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
  - Set the installation folder to the default /home/${your-username}/eclipse/java-2024-03.
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
