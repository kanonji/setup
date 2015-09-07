#!/bin/sh
echo '-------------------'
echo 'Setting for Mac'
echo '-------------------'
echo ''

# Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -boolean true
# Disable warning on changing extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
# Set LoginHook for root
sudo defaults write com.apple.loginwindow LoginHook ~/dotfile/login-hook-root.sh
# Set LoginHook for normal user
defaults write com.apple.loginwindow LoginHook ~/dotfile/login-hook.sh
