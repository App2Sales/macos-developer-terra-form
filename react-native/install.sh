#!/bin/bash
NODE_VERSION=14

# Install Brew Deps
brew bundle --file=./react-native/Brewfile

nvm install $NODE_VERSION
nvm alias default 14

npm install -g react-native-cli
