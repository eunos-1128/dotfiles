# Dotfiles

A personal collection of configuration files for various development tools and applications. This repository helps maintain consistent settings across different environments and makes it easy to set up new development machines quickly.

## What's Included

This repository contains configuration files for:

- PyMOL configuration
- Shell configuration (bash, zsh)
- Text editor settings (vim, etc.)
- Git configuration
- And more...

## Installation

The installation process is simple:

1. Clone this repository:
   ```shell
   git clone https://github.com/yourusername/dotfiles.git
   ```

2. Run the installation script:
   ```shell
   cd dotfiles
   chmod +x install.sh
   ./install.sh
   ```

The installer will:
- Create symbolic links from the dotfiles to your home directory
- Back up any existing configuration files
- Set up a startup script that loads all necessary configurations

## Usage in GitHub Codespaces

This repository is optimized for use with GitHub Codespaces. When you create a new Codespace, these dotfiles will automatically be applied to your environment.

## Customization

Feel free to customize the dotfiles to match your preferences:

1. Modify any configuration file in the repository
2. Run `./install.sh` again to update the symbolic links

