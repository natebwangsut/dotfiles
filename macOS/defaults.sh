#!/bin/sh

#
# defaults.sh
# @natebwangsut <nate.bwangsut@gmail.com>
# ---
# Setup macOS developing machine, configuring defaults and system configurations
#

################################################################################
# System & UI/UX
################################################################################

# Allows you to hold down a key and have it repeat, instead of showing the character accent menu.
#
# Revert:
# defaults write -g ApplePressAndHoldEnabled -bool true
defaults write -g ApplePressAndHoldEnabled -bool false

# Set a faster keyboard repeat rate (very useful for navigating/editing code)
# KeyRepeat: lower is faster (values can be 1 or 2)
# InitialKeyRepeat: lower is faster (default is 15)
#
# Reference: https://mac-key-repeat.zaymon.dev/
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 10

# Disable automatic capitalization as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable automatic period substitution as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable the crash reporter dialog to avoid interruptions
defaults write com.apple.CrashReporter DialogType -string "none"

# Increase the window resize speed for Cocoa applications
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# Disable resume system-wide
defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false

################################################################################
# Finder
################################################################################

# Show hidden files by default (the #1 tweak for any developer)
defaults write com.apple.finder AppleShowAllFiles -bool true

# Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Use list view in all Finder windows by default
# Four-letter codes for other view modes: `icnv` (icons), `clmv` (columns), `glyv` (gallery)
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Set the Desktop as the default location for new Finder windows
# For other locations, use `PfHm` for home, `PfDe` for desktop, `PfDo` for documents
defaults write com.apple.finder NewWindowTarget -string "PfDe"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/Desktop/"

# Show the ~/Library folder
chflags nohidden ~/Library

# Show the /Volumes folder
sudo chflags nohidden /Volumes

################################################################################
# Docks
################################################################################

# Set the icon size of Dock items
defaults write com.apple.dock tilesize -int 36

# Speed up Mission Control animations
defaults write com.apple.dock expose-animation-duration -float 0.1

# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# Minimize windows into their application’s icon
defaults write com.apple.dock minimize-to-application -bool true

# Make Dock icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool true

# Instantly enable auto-hiding for the Dock (no delay)
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0

# Add a spacer to the Dock to separate app groups
# Run this command multiple times for multiple spacers
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'

################################################################################
# Screenshots
################################################################################

# Save screenshots to the dedicated folder
mkdir -p ~/Screenshots
defaults write com.apple.screencapture location -string "${HOME}/Screenshots"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# Disable shadow in screenshots for clean window captures
defaults write com.apple.screencapture disable-shadow -bool true

################################################################################
# Others
################################################################################

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

# Enable font smoothing in non-Apple LCDs
defaults write NSGlobalDomain AppleFontSmoothing -int 2

# Disable pop-up for Time Machine when plugging in new disk
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Done
echo "Configuration finished. Applying changes..."

# --- Kill affected applications to apply changes ---
for app in "Activity Monitor" "Dock" "Finder" "Safari" "SystemUIServer"; do
    killall "${app}" &> /dev/null
done
