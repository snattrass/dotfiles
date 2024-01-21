# Set reasonable macOS defaults.
#
# Run ./set-defaults.sh and you'll be good to go.

###############################################################################
# General UI/UX                                                               #
###############################################################################

# Set computer name (as done via System Preferences → Sharing)
sudo scutil --set ComputerName "amity"
sudo scutil --set HostName "amity"
sudo scutil --set LocalHostName "amity"


###############################################################################
# Finder                                                                      #
###############################################################################

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

# show POSIX style path in title bar
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
# Show the ~/Library folder.
#chflags nohidden ~/Library
#

###############################################################################
# IntelliJ                                                                      #
###############################################################################

# setting key repeat for IntelliJ
defaults write com.jetbrains.intellij.ce ApplePressAndHoldEnabled -bool false
