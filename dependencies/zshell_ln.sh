#!/bin/bash

echo "backup .zshrc"
mv ~/.zshrc $BK_DIR

echo "Creating symlink to .zshrc in home directory."
ln -s $DOTFILES_DIR/zshrc ~/.zshrc
