#!/bin/bash

# Navigate to the directory where your brew lists and git repo are
cd ~/Documents/MyProject/GitHubRepo/homebrew

# Update brew and cask lists
echo "Updating brew and cask lists..."
brew list --formula > ~/Documents/MyProject/GitHubRepo/homebrew/brew_packages.txt
echo "brew_packages.txt updated"

echo "Updating brew casks..."
brew list --cask > ~/Documents/MyProject/GitHubRepo/homebrew/brew_casks.txt
echo "brew_casks.txt updated"

# Git operations
git add brew_packages.txt brew_casks.txt
git commit -m "Update brew lists"
git push origin main
