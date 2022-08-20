# Dotfiles

A collection of configurations for developing environment

## Usage

When cloning this repository you must clone them into `~/github/` for all the scripts to be functioning

> Base structure for dotfiles

```text
~/
├── .config/
│   ├── fish/               -> todo: configure fish shell
│   └── nvim/
│       └── lua/
│           └── custom/     -> symlink to ~/github/dotfiles/.config/nvchad/custom
├── .vim/                   -> symlink to ~/github/dotfiles/.vim
├── .vimrc                  -> symlink to ~/github/dotfiles/.vim/init.vim
└── .zshrc                  -> symlink to ~/github/dotfiles/zsh/.zshrc
```


- Run [scripts/macOS.sh](./scripts/macOS.sh) to define macOS preferences.
- Run [brew/install.sh](./brew/install.sh) from the local repository after the homebrew installation.

```zsh
./brew/install.sh
```

- Symlink all configurations with [scripts/symlinks.sh](./scripts/symlinks.sh)

## Machines

Each specific machine type setups.

### Debian

Debian based machine can have a look at `apt` folder and run the script to initialised setup

### macOS

macOS machines needed to setup the devices default configuration via `macOS/defaults.sh` then proceed to setup environments via `brew` on `brew` folder

## Components

### Fish (fish shell)

> TODO: Experimenting fish

### Zsh (z-shell)

> TODO: Zsh speciic details

### Vim

> We're moving to use nvchad

TODO: Vim specific details

### Neovim / Nvim

Since we've migrated to nvchad framework, please see [.config/nvchad](.config/nvchad) folder.

### Git

> Configuring the most complex tool on the universe

```zsh
git config --global -e
```

We can define git behaviour by seperating `.gitconfig` per folder/project basis.

```zsh
# This is Git's per-user configuration file.
[color]
    ui = auto
[commit]
    gpgsign = true

# Use macOS keychain so that we don't have to type in credentials every now and then
[credential]
    helper = osxkeychain

# Sub-folders specific .gitconfig settings
#
# Examples:
# [includeIf "gitdir:~/<FOLDER_PATH>"]
#     path = ~/<FOLDER_PATH>/.gitconfig
#
[includeIf "gitdir:~/github/"]
    path = ~/github/.gitconfig
```
