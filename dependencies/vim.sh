#!/bin/bash

echo "backup .vimrc"
mv ~/.vimrc $BK_DIR

echo "Creating symlink to .vimrc in home directory."
ln -s $DOTFILES_DIR/vimrc ~/.vimrc

echo "Creating vim folder"
mkdir -p ~/.vim

echo "copying the vim files to .vim dir"
VIM_FOLDER=$DOTFILES_DIR/vim/.
cp -a $VIM_FOLDER ~/.vim

echo "Installing Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim || echo "Vundle already installed"

# Installing vim plugins
vim +PluginInstall +qall
