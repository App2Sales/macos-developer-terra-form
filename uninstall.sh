# REMOVE BREWS
brew remove --force $(brew list --formula)

# UNINSTALL BREW
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"

# PUT BACK ZPROFILE AND ZSHSRC

