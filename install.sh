#!/bin/bash

echo "Installing software from brew"
echo "Installing formulas and casks from the Brewfile ..."
if brew bundle --file="./Brewfile"; then
  echo "All formulas and casks were installed successfully."
else
  echo "Some formulas or casks failed to install."
  echo "This is usually due to one of the Mac apps being already installed,"
  echo "in which case, you can ignore these errors."
fi

# VS Code Settings Sync does this
# echo "Installing vs code extensions"
# cat vs-code-extensions.txt | xargs -n 1 code --install-extension

echo "Installing itermocil"
brew install TomAnthony/brews/itermocil

echo "Installing itermocil configs"
mkdir -p ~/.itermocil
cp ./itermocil/* ~/.itermocil

echo "Installing oh-my-zsh"
test -d ~/.oh-my-zsh || ( curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sh )

echo "Installing oh-my-zsh extensions"
cp -r ./oh-my-zsh/custom/* ~/.oh-my-zsh/custom/

echo "Installing git config"
cp ./gitconfig ~/.gitconfig

echo "Install hosts file and malware / adware blocking"
test -d ~/hosts || ( mkdir -p ~/hosts && git clone git@github.com:StevenBlack/hosts.git ~/hosts)
pushd ~/hosts && pip3 install --user -r requirements.txt &&  python3 updateHostsFile.py --backup --auto --replace --extensions gambling porn fakenews && popd
sudo dscacheutil -flushcache
sudo killall -HUP mDNSResponder

echo "Screenshots Folder"
mkdir -p ~/Documents/Screenshots
defaults write com.apple.screencapture location ~/Documents/Screenshots

echo "Making second marketplace folder for builds"
test -d ~/web/marketplace-web || ( mkdir -p ~/web/marketplace-web && git clone git@github.com:NewAmsterdamLabs/web-marketplace.git ~/web/marketplace-web )

echo "Done - good luck"
