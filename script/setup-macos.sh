#!/bin/sh
echo Setting MacOS defaults...

echo "Setting preferences for Apple Global Domain"
# use a highlight color of purple
defaults write "Apple Global Domain" AppleHighlightColor -string "0.968627 0.831373 1.000000";

echo "Setting preferences for Finder"
# clear the Trash after 30 days
defaults write com.apple.finder FXRemoveOldTrashItems -bool true
# sort with folders at the top
defaults write com.apple.finder _FXSortFoldersFirst -bool true

echo "Setting preferences for Menubar Clock"
defaults write com.apple.menuextra.clock DateFormat -string "EEE MMM d  h:mm:ss a"

echo "Setting preferences for Dock"
defaults write com.apple.dock orientation -string right
defaults write com.apple.dock tilesize -int 42

echo "Setting preferences for Terminal"
defaults write com.apple.terminal "Default Window Settings" -string Pro
defaults write com.apple.terminal NewTabSettingsBehavior -int 1

echo "Setting preferences for Safari"
defaults write com.apple.Safari NewTabBehavior -int 1
defaults write com.apple.Safari NewWindowBehavior -int 1
defaults write com.apple.Safari ShowOverlayStatusBar -bool true
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true
defaults write com.apple.Safari ShowIconsInTabs -bool true

echo "TODO: Setting preferences for Atom"
echo "TODO: Setting preferences for Caffeine"
