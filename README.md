# SETUP .dotfiles FOLDER <!-- omit in toc -->


1. [WSL2 + Ubuntu 22.04](#wsl2-+-ubuntu-22.04)
2. [Update apt, install build essential, and auto remove](#update-apt,-install-build-essential,-and-auto-remove)
3. [Cloning this repo](#cloning-this-repo)
4. [Install Starship](#install-starship)
5. [Install Rust Programming Language](#install-rust-programming-language)
6. [Install nvm](#install-nvm)
7. [Use Astro](#use-astro)
8. [Use Svelte + Rust wasm](#use-svelte-+-rust-wasm)

## WSL2 + Ubuntu 22.04

1. Install `Windows Terminal` through Microsoft Store
2. Run this command to install WSL [Windows Subsystem for Linux]

```bash

wsl --install


```

3. Reset computer
4. Run update WSL to get WSL2

```bash

wsl --update


```

5. Go to Microsoft Store, find `Ubuntu 22.04` and install it
6. Run `Ubuntu 22.04` from Start to setup username, password,...

## Update apt, install build essential, and auto remove

```bash

# Update and upgrade [with yes to all]
sudo apt update && sudo apt upgrade -y
# Install essentials for build in Ubuntu
sudo apt-get install build-essential
# Install things for display
sudo apt-get install pkg-config libssl-dev
# Remove no longer needed packages
sudo apt autoremove

# Install Neovim
sudo add-apt-repository ppa:neovim-ppa/stable
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim


# Install these libraries for GUI application
sudo apt-get install libx11-xcb1 libx11-xcb-dev libegl-dev
sudo apt-get install libgtk-3-dev
sudo apt-get install libxcb-render0-dev libxcb-shape0-dev libxcb-xfixes0-dev libspeechd-dev libxkbcommon-dev libssl-dev
sudo apt-get install libfontconfig-dev
# Install libxcb1-dev package for Debian/Ubuntu* and libxcb-devel package for Fedora/openSUSE/Void Linux.

```

In Windows you need to update the `WSLENV` environment variable to include the value `GIT_EXEC_PATH/wp`. From an Administrator Command Prompt run the following:

```bash

SETX WSLENV %WSLENV%:GIT_EXEC_PATH/wp


```

After updating the `WSLENV` environment variable, restart your WSL installation.

>**Note**: ssh link look like this git@github.com:USERNAME/REPOSITORY.git

Change remote url if needed

```bash
git remote set-url origin git@github.com:USERNAME/REPOSITORY.git
```

## Cloning this repo

>**WARNING:**
Only proceed this part below after cloned this repo into `$HOME`

It should look like this

## Install Starship

```bash
curl -sS https://starship.rs/install.sh | sh
```

## Install Rust Programming Language

Watch tutorial [here](https://www.rust-lang.org/learn/get-started) if needed

```bash
# Install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# Install rust-analyzer (if using Lapce)
https://github.com/rust-lang/rust-analyzer
# Install cargo binstall
https://github.com/cargo-bins/cargo-binstall
# Insta;; Mingw-w64
sudo apt -y install mingw-w64
# Add target triple
rustup target add x86_64-pc-windows-gnu

# Install fnm (if using nushell)
https://github.com/Schniz/fnm
```

Go to `#HOME/.cargo` and create new file called `Config.toml`. Then add some config.

`Config.toml` should look like this

```toml
[alias]
b_win = "build --target x86_64-pc-windows-gnu"
b_lnx = "build --target x86_64-unknown-linux-gnu"
[build]
```

## Install nvm

Install nvm with this [tutorial](https://docs.microsoft.com/en-us/windows/dev-environment/javascript/nodejs-on-wsl)

```bash
# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
# Log out and log in again before use the command below
# Check if nvm installed. It should return 'nvm'
command -v nvm
# Install Node LTS verion
nvm install --lts
# Install newest Node version
nvm install node
# Select Newest version as default, change to LTS with 'nvm use lts'
nvm use node
```

## Use Astro

[Learn Astro here](https://docs.astro.build/en/getting-started/)

```bash
# Create new project with astro
npm create astro@latest
```

## Use Svelte + Rust wasm

```bash
git clone "https://github.com/calisfed/sveltekit-rust-wasm"

```

