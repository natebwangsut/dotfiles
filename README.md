# Dotfiles

A collection of configurations for developing environment

## Usage

- Run [scripts/macOS.sh](./scripts/macOS.sh) to define macOS preferences.

- Run [brew/install.sh](./brew/install.sh) from the local repository after the homebrew installation to install standard bins.

```zsh
chmod +x brew/install.sh
sh ./brew/install.sh
```

- Install zsh from [sorin-ionescu/prezto](https://github.com/sorin-ionescu/prezto).

```zsh
# Note: To run the command on zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
chsh -s /bin/zsh
```

- Symlink all configurations with [scripts/symlinks.sh](./scripts/symlinks.sh)

## Components

### Zsh (Z-Shell)

TODO: Zsh speciic details

### Vim

TODO: Vim specific details

### Git

> Configuring the most complex tool on the universe

We can define git behaviour by seperating .gitconfig per folder/project basis.

```bash
git config --global -e
```

```bash
# This is Git's per-user configuration file.
[color]
    ui = auto
[commit]
    gpgsign = true
[includeIf "gitdir:~/github/"]
    path = ~/github/.gitconfig
# For more sub-folders
[includeIf "gitdir:~/<FOLDER_PATH>"]
    path = ~/<FOLDER_PATH>/.gitconfig
```
