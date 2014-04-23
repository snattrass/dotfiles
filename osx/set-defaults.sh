# Set reasonable OS X defaults.
#
# Run ./set-defaults.sh and you'll be good to go.

###############################################################################
# General UI/UX                                                               #
###############################################################################

# Set computer name (as done via System Preferences → Sharing)
sudo scutil --set ComputerName "grytviken"
sudo scutil --set HostName "grytviken"
sudo scutil --set LocalHostName "grytviken"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "grytviken"


###############################################################################
# Trackpad, mouse, keyboard, Bluetooth accessories, and input                 #
###############################################################################

# Trackpad: map bottom right corner to right-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true

# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 0

# Automatically illuminate built-in MacBook keyboard in low light
defaults write com.apple.BezelServices kDim -bool true

# Turn off keyboard illumination when computer is not used for 5 minutes
defaults write com.apple.BezelServices kDimTime -int 300


###############################################################################
# Finder                                                                      #
###############################################################################

# Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem true

# Finder: show hidden files by default
#defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar true

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle true

# Disable the warning when changing a file extension
#defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

# Always open everything in Finder's list view. This is important.
#defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show the ~/Library folder.
#chflags nohidden ~/Library


###############################################################################
# iTunes                                                                      #
###############################################################################

# Disable the iTunes store link arrows
#defaults write com.apple.iTunes show-store-link-arrows -bool false

# Disable the Genius sidebar in iTunes
#defaults write com.apple.iTunes disableGeniusSidebar -bool true

# Disable the Ping sidebar in iTunes
#defaults write com.apple.iTunes disablePingSidebar -bool true

# Disable all the other Ping stuff in iTunes
#defaults write com.apple.iTunes disablePing -bool true

# Disable radio stations in iTunes
#defaults write com.apple.iTunes disableRadio -bool true


###############################################################################
# UI                                                                          #
###############################################################################
# Get rid of the useless dashboard
defaults write com.apple.dashboard mcx-disabled -boolean YES


###############################################################################
# Kill affected applications                                                  #
###############################################################################

for app in "Address Book" "Calendar" "Contacts" "Dashboard" "Dock" "Finder" \
	 "SystemUIServer" "Terminal" "iCal" "iTunes"; do
	killall "$app" > /dev/null 2>&1
done
echo "Done. Note that some of these changes require a logout/restart to take effect."
