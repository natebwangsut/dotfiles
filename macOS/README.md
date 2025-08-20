# macOS

## Backup

Backing up the default configuration.

```
defaults read > ~/macos_defaults_backup.plist
```

## Restore

```
defaults read ~/macos_defaults_backup.plist | defaults write
```
