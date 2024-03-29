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
# brew install TomAnthony/brews/itermocil
pip3 install git+https://github.com/PythonicNinja/itermocil

echo "Installing itermocil configs"
mkdir -p ~/.itermocil
cp ./itermocil/* ~/.itermocil

echo "Installing oh-my-zsh"
test -d ~/.oh-my-zsh || ( curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sh )

echo "Installing oh-my-zsh extensions"
cp -r ./oh-my-zsh/custom/* ~/.oh-my-zsh/custom/

echo "Installing git message template"
cp ./configs/.gitmessage ~/.gitmessage

echo "Installing git config"
cp ./configs/.gitconfig ~/.gitconfig

echo "Install hosts file and malware / adware blocking"
test -d ~/hosts || ( mkdir -p ~/hosts && git clone git@github.com:StevenBlack/hosts.git ~/hosts)
cp ./hosts/whitelist ~/hosts/whitelist
pushd ~/hosts && pip3 install --user -r requirements.txt &&  python3 updateHostsFile.py --backup --auto --replace --extensions gambling porn fakenews --whitelist whitelist && popd
sudo dscacheutil -flushcache
sudo killall -HUP mDNSResponder

echo "Screenshots Folder"
mkdir -p ~/Documents/Screenshots
defaults write com.apple.screencapture location ~/Documents/Screenshots

WEB_REPOS=("web-marketplace" "web-nav" "web-preauth" "web-registry" "web-store" "web-wedding" "zola-helpers" "zola-ui")
echo "Making second directories for builds"
test -d ~/builds || (mkdir -p ~/builds)
for dir in "${WEB_REPOS[@]}"; do
  test -d ~/builds/$dir || ( mkdir -p ~/builds/$dir && git clone git@github.com:NewAmsterdamLabs/$dir.git ~/builds/$dir )
done


echo "Setting up git-hooks"
for dir in "${WEB_REPOS[@]}"; do
  pushd ~/builds/$dir && git config --local core.hooksPath .git/hooks && popd
  pushd ~/web/$dir && git config --local core.hooksPath .git/hooks && popd
done

echo "Installing npm-merge-driver"
npx npm-merge-driver install --global

echo "Installing gh extensions"
gh extension install mislav/gh-branch
gh extension install dlvhdr/gh-prs
gh extension install davidraviv/gh-clean-branches

echo "Disable mac manage"
sudo mv /Library/Addigy/macmanage/macmanage /Library/Addigy/macmanage/macmanage.old

echo "Installing npx globally"
npm install -g npx

echo "Installing github-linguist"
gem install charlock_holmes -- --with-icu-dir=/usr/local/opt/icu4c
gem install github-linguist

echo "Done - good luck"
