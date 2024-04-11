# homebrew
https://brew.sh/

# clone
git clone https://github.com/mendilevin/homebrew

# change directory
cd homebrew
chmode +x install_brew_packages.sh

# Add brew to PATH
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> $HOME/.zprofile

eval "$(/opt/homebrew/bin/brew shellenv)"

# run the installation
sudo ./install_brew_packages.sh
