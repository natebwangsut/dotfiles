#!/bin/sh

#
# defaults.sh
# @natebwangsut <nate.bwangsut@gmail.com>
# ---
# Setup macOS developing machine, configuring defaults and system configurations
#

# Better Bluetooth audio quality
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Max (editable)" 80
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" 80
defaults write com.apple.BluetoothAudioAgent "Apple Initial Bitpool (editable)" 80
defaults write com.apple.BluetoothAudioAgent "Apple Initial Bitpool Min (editable)" 80
defaults write com.apple.BluetoothAudioAgent "Negotiated Bitpool" 80
defaults write com.apple.BluetoothAudioAgent "Negotiated Bitpool Max" 80
defaults write com.apple.BluetoothAudioAgent "Negotiated Bitpool Min" 80

# Check for Software Update daily
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Disable Local Time Machine Snapshots
# sudo tmutil disablelocal

# Disable hibernation in the favour of sleeping
sudo pmset -a hibernatemode 0

# Remove shadow from screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# Enable font smoothing in non-Apple LCDs
defaults write NSGlobalDomain AppleFontSmoothing -int 2

# TODO: I don't remember what does it do anymore...
sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true

# Do not write .DS_Store files on network drives
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Disable pop-up for Time Machine when plugging in new disk
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Disable Long Pressed - Accenturated Characters
defaults write -g ApplePressAndHoldEnabled -bool false

# Change Screenshots Location
mkdir -p ~/Screenshots
defaults write com.apple.screencapture location ~/Screenshots

# Disable Apple's Spotlight indexing
# sudo mdutil -a -i off
