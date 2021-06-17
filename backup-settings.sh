#!/bin/bash

# Updates the list of extensions installed in visual studio code

# https://superuser.com/a/1452176/177945
echo "Exporting visual studio code extensions"
code --list-extensions > vs-code-extensions.txt

echo "Copying git config"
cp ~/.gitconfig .