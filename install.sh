#!/bin/bash
sudo -v # Request sudo upfront
sudo sh -c 'echo "\nDefaults timestamp_timeout=-1">>/etc/sudoers' # Unlimit sudo time

# Enable Rosetta 2 (x86 emulator)
yes A | softwareupdate --install-rosetta

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" < /dev/null \
&& echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile \
&& eval "$(/opt/homebrew/bin/brew shellenv)" \
&& source ~/.zprofile

# Install Mac App Store for command line
brew install mas # mas is not being used right now

# Install Xcode and Command Line Tools
# mas install 497799835 # Install Xcode ## Maybe switch to `xcodes`
sudo xcodebuild -license accept
# xcode-select --install

# Install Power Line Shell
# sudo -H python -m ensurepip
# sudo pip install powerline-shell

# Copy fonts
cp -a ./fonts/. ~/Library/Fonts

# Install Brew Deps
brew bundle --file=./Brewfile

# Config Dock to show the developer the avaliable UI apps
dockutil --remove all
dockutil --add  "/System/Applications/Launchpad.app"
dockutil --add  "/Applications/Discord.app"
dockutil --add  "/Applications/Google Chrome.app"
dockutil --add  "/Applications/Visual Studio Code.app"
dockutil --add  "/Applications/Xcode.app"
dockutil --add  "/Applications/Android Studio.app/"
dockutil --add  "/Applications/iTerm.app"
dockutil --add  "/Applications/Fork.app"
dockutil --add  "/Applications/Postman.app"

# Config Android SDK
# yes | sdkmanager "platforms;android-29" "system-images;android-29;default;x86_64" "system-images;android-29;google_apis;x86"
# yes | sdkmanager "cmdline-tools;latest" "build-tools;29.0.2"
# yes | sdkmanager --licenses

# Install and Config Flutter
sh flutter/install.sh

# Install and Config React Native
sh react-native/install.sh

# Install Oh My ZShell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
rm ~/.zshrc
cp ./zsh/.zshrc ~/.zshrc
source ~/.zshrc

# END
sudo sed -i "/Defaults timestamp_timeout=-1/d" /etc/sudoers # Re-enable sudo timeout
sudo –k # END sudo session
echo "FINISHED!"
echo "Remember to setup your SSH Keys."
echo "Remember to setup your Git global configuraiton."
echo "Remember to open Xcode once. It's recommend to do it now."
echo "START A NEW TERMINAL SESSION!"
