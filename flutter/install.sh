#!/bin/bash
FLUTTER_VERSION=3.3.7

# Install Brew Deps
brew bundle --file=./flutter/Brewfile

export PATH="$PATH":"$HOME/.pub-cache/bin" # Making fvm available to the script

fvm install $FLUTTER_VERSION
fvm global $FLUTTER_VERSION
fvm flutter precache ios
fvm flutter precache android

## Config Flutter Visual Studio Code Extensions
code --install-extension Dart-Code.dart-code
code --install-extension Dart-Code.flutter
code --install-extension eamodio.gitlens
code --install-extension aksharpatel47.vscode-flutter-helper
