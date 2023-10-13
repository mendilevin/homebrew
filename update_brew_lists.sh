#!/bin/bash

# Navigate to the directory where your brew lists and git repo are
#cd ~/Documents/MyProject/homebrew/files/

# Update brew and cask lists
echo "Updating brew and cask lists..."
brew list --formula > brew_packages.txt
echo "brew_packages.txt updated"
brew list --cask > brew_casks.txt

# Git operations
git add brew_packages.txt brew_casks.txt
git commit -m "Update brew lists"
git push origin main
