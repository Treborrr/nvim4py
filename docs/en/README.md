# nvim4py: Minimalist Neovim Setup for Python

This repository contains an optimized Neovim configuration for Python development using Lua and Packer as the plugin manager.

## Prerequisites

Before you start, make sure you have the following installed:

- **Neovim (v0.8+)**: Check the [official installation guide](https://github.com/neovim/neovim/wiki/Installing-Neovim) to get Neovim on your system.
- **Node.js and npm (v14.0+)**: Used to manage language servers and other plugins. Install from the [official Node.js website](https://nodejs.org/).
- **Python 3**: Required for certain plugins and language servers for Python.

## Pyright Installation

To provide code editing capabilities to nvim, we will install Pyright, a language server for Python. Use the following command to install it globally:

```bash
npm install -g pyright
```

## Clone Configuration

To use this Neovim configuration, clone this repository into your Neovim configuration directory. Make sure the path `~/.config/nvim` exists or create the folder if necessary:

```bash
git clone https://github.com/treborrr/nvim4py ~/.config/nvim
cd ~/.config/nvim
rm -rf .git README.md  # Optional: Remove unnecessary files
```

## Neovim Configuration

Once the repository is cloned, open Neovim and run the following command to install and synchronize the plugins:

```vim
:PackerSync
```

After running this command, restart Neovim to apply the changes.

## Usage

With this configuration, you can start developing in Python efficiently with autocomplete support. If you encounter any problems or have suggestions, feel free to open an issue in this repository.