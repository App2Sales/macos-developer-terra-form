#!/bin/bash
sudo -v # Request sudo upfront

CODE_DIRECTORY=macos-developer-terra-form

git clone https://github.com/App2Sales/macos-developer-terra-form.git $CODE_DIRECTORY
cd $CODE_DIRECTORY
chmod +x  install.sh
./install.sh
