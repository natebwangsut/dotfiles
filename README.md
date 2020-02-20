# Dotfiles

A collection of configurations for developing environment

## Zsh (Z-Shell)

TODO: Add instructions of how to operate

## Vim

### Symlink

```console
ln -s $HOME/github/dotfiles/.vim $HOME
```

### Git

> Configuring the most complex tool on the universe

```console
git config --global -e
```

```console
# This is Git's per-user configuration file.
[color]
    ui = auto
[commit]
	gpgsign = true
[hooks]
	gitleaks = true
[init]
	templatedir = ~/github/dotfiles/.git-templates
[includeIf "gitdir:~/github/"]
  path = ~/github/.gitconfig
```
