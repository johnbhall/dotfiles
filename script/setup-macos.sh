#!/bin/sh
echo Setting MacOS defaults...

echo "Setting preferences for Apple Global Domain"
# use a highlight color of purple
defaults write "Apple Global Domain" AppleHighlightColor -string "0.968627 0.831373 1.000000";
# turn off user interface sound effects (eg trash crumple noise)
defaults write "Apple Global Domain" com.apple.sound.uiaudio.enabled -bool false
# turn down alert volume (eg, funk noise when trying to unsuccessfully tab-complete in terminal)
defaults write "Apple Global Domain" com.apple.sound.beep.volume -int 0

echo "Setting preferences for NSGLobalDomain"
# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

echo "Setting preferences for Finder"
# clear the Trash after 30 days
defaults write com.apple.finder FXRemoveOldTrashItems -bool true
# sort with folders at the top
defaults write com.apple.finder _FXSortFoldersFirst -bool true

echo "Setting preferences for Menubar Clock"
# format top-right time
defaults write com.apple.menuextra.clock DateFormat -string "EEE MMM d  h:mm:ss a"

echo "Setting preferences for Dock"
# move dock to the right
defaults write com.apple.dock orientation -string right
# set dock icon size
defaults write com.apple.dock tilesize -int 42

echo "Setting preferences for Terminal (TODO: currently unreliable; may have to do manually)"
# use pro theme
defaults write com.apple.terminal "Default Window Settings" -string Pro
# new tabs open with default profile
defaults write com.apple.terminal NewTabSettingsBehavior -int 1
# new tabs open with default working directory
defaults write com.apple.terminal NewTabWorkingDirectoryBehavior -int 1
# todo: disable the 'visual bell'
# todo: use font size of 18px


echo "Setting preferences for Screencapture"
# Save screenshots to ~/Screenshots
defaults write com.apple.screencapture location -string "${HOME}/Screenshots"

echo "Setting preferences for Safari"
# use a blank screen when opening new tabs
defaults write com.apple.Safari NewTabBehavior -int 1
# use a blank screen when opening new windows
defaults write com.apple.Safari NewWindowBehavior -int 1
# show bottom-left status bar
defaults write com.apple.Safari ShowOverlayStatusBar -bool true
# show full URL in location bar
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true
# show favicons
defaults write com.apple.Safari ShowIconsInTabs -bool true
# show develop menu in menu bar
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

echo "TODO: Setting preferences for Atom"
echo "TODO: Setting preferences for Caffeine"
