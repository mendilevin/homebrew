#!/bin/bash

# Install Homebrew if not installed
if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew
brew update

# Install brew packages
while read p; do
  brew install --formula "$p"
done <brew_packages.txt

# Install brew casks
while read c; do
  brew install --cask "$c"
done <brew_casks.txt
