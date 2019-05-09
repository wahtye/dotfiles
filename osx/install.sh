echo "Setting up OSX Sharing..."
sudo systemsetup -setwakeonnetworkaccess off
echo yes | sudo systemsetup -setremotelogin off
sudo systemsetup -setremoteappleevents off

echo "Setting up OSX Settings..."
defaults write com.apple.CrashReporter DialogType -string "none"
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true
defaults write com.apple.screencapture type -string "png"
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
sudo defaults write /Library/Preferences/com.apple.loginwindow GuestEnabled -bool false
sudo nvram SystemAudioVolume=" "

echo "Setting up Hot Corners..."
defaults write com.apple.dock wvous-bl-corner -int 5
defaults write com.apple.dock wvous-bl-modifier -int 0
defaults write com.apple.dock wvous-br-corner -int 4
defaults write com.apple.dock wvous-br-modifier -int 0

echo "Setting up Devices..."
# Tap for Clicking
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Bluetooth Headphone Quality
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40