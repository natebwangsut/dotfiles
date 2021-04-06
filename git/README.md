# Git

> File that opened when running `git config -e --global`

## .gitconfig

```console
# This is Git's per-user configuration file.
[color]
    ui = auto
[commit]
    gpgsign = false
[includeIf "gitdir:~/github/"]
    path = ~/github/.gitconfig
[includeIf "gitdir:~/xxx-github/"]
    path = ~/xxx-github/.gitconfig
[credential]
    helper = osxkeychain
```

### GitHub .gitconfig

```console
[user]
    name = natebwangsut
    email = nate.bwangsut@gmail.com
    signingKey = <GitHub GPG Key>
[commit]
    gpgsign = true
```

### [xxx] .gitconfig

```console
[user]
    name = <username>
    email = <email_address>
    signingKey = <xxx GPG Key>
[commit]
    gpgsign = true
```
