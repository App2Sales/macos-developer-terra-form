#!/bin/bash

function new_line() {
	echo '' >> $FILE_PATH
}

FILE_PATH=./zsh/zsh-file

echo '#!/bin/bash' \
> $FILE_PATH

# Path to your oh-my-zsh installation.
echo 'export ZSH="$HOME/.oh-my-zsh"' \
>> $FILE_PATH
new_line

echo 'ZSH_THEME="robbyrussell"' \
>> $FILE_PATH
new_line

echo 'plugins=(git)' \
>> $FILE_PATH
new_line

echo 'source $ZSH/oh-my-zsh.sh' \
>> $FILE_PATH
new_line

echo '# RUBY' \
>> $FILE_PATH

echo "export PATH=\"$(brew --prefix/)/bin:$PATH\"" \
>> $FILE_PATH
new_line

echo '# FVM' \
>> $FILE_PATH

echo 'export PATH="$PATH":"$HOME/.pub-cache/bin"' \
>> $FILE_PATH

echo 'export PATH="$PATH":$HOME/fvm/default/bin' \
>> $FILE_PATH
new_line

echo '# ANDROID NDK' \
>> $FILE_PATH

echo "export ANDROID_NDK_HOME=\"$(brew --prefix android-ndk)/android-ndk\"" \
>> $FILE_PATH
new_line

echo '# NVM' \
>> $FILE_PATH

echo 'export NVM_DIR="$HOME/.nvm"' \
>> $FILE_PATH

echo "[ -s \"$(brew --prefix nvm)/nvm.sh\" ] && . \"$(brew --prefix nvm)/nvm.sh\"  # This loads nvm" \
>> $FILE_PATH

echo "[ -s \"$(brew --prefix nvm)/etc/bash_completion.d/nvm\" ] && . \"$(brew --prefix nvm)/etc/bash_completion.d/nvm\"  # This loads nvm bash_completion" \
>> $FILE_PATH
new_line

echo '' \
>> $FILE_PATH
new_line
