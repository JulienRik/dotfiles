# Dotfiles

This repository contains my personal dotfiles, managed using a bare Git repository approach.

## Setup

To set up these dotfiles on a new machine:

```bash
# Clone the repository as a bare repo
git clone --bare https://github.com/JulienRik/dotfiles.git $HOME/.cfg

# Define the alias in the current shell
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Checkout the content from the bare repository to your $HOME
config checkout

# Set the flag showUntrackedFiles to no for this repository
config config --local status.showUntrackedFiles no
```

## What's Included

- **Kitty Terminal**: Configuration for the Kitty terminal emulator
  - Custom theme (Sakura Night)
  - Window management scripts
  - Key bindings

- **Neovim**: Configuration for Neovim using LazyVim
  - Custom plugins
  - Key mappings
  - LSP configurations

- **Zsh**: Shell configuration
  - Aliases
  - Functions
  - Environment variables

- **Git**: Git configuration
  - Aliases
  - User settings

- **Navi**: Cheatsheet configuration

## Managing Dotfiles

Add new files:
```bash
config add .zshrc
config commit -m "Add zshrc"
config push
```

Update existing files:
```bash
config add -u
config commit -m "Update dotfiles"
config push
```

## License

This project is licensed under the MIT License - see the LICENSE file for details.
