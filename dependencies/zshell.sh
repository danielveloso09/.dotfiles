#!/bin/bash

echo "backup .zshrc"
mv ~/.zshrc $olddir

echo "Installing ohmyzsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Creating symlink to .zshrc in home directory."
ln -s $dir/zshrc ~/.zshrc
