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
   ```bash
   git clone https://github.com/yourusername/dotfiles.git ~/.dotfiles
   ```

2. Run the installation script:
   ```bash
   cd ~/.dotfiles
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

## Directory Structure

```
dotfiles/
├── bash/               # Bash shell configuration
├── bin/                # Executable scripts (will be linked to ~/.local/bin)
├── config/             # XDG config files (will be linked to ~/.config)
├── git/                # Git configuration
├── pymol/              # PyMOL configuration
├── vim/                # Vim editor configuration
├── install.sh          # Installation script
├── codespace_startup.sh # GitHub Codespaces specific configuration
└── README.md           # This file
```

## License

This project is open source and available under the [MIT License](LICENSE).
