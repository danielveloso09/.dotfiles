#!/bin/bash

echo "backup .gitconfig"
mv ~/.gitconfig $BK_DIR

echo "copying a default .gitconfig file"
cp $DOTFILES_DIR/git/.gitconfig ~/
