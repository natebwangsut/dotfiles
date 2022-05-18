# Dotfiles

A collection of configurations for developing environment

## Usage

- Run [scripts/macOS.sh](./scripts/macOS.sh) to define macOS preferences.
- Run [brew/install.sh](./brew/install.sh) from the local repository after the homebrew installation.

```zsh
./brew/install.sh
```

- Symlink all configurations with [scripts/symlinks.sh](./scripts/symlinks.sh)

## Components

### Zsh (Z-Shell)

TODO: Zsh speciic details

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
