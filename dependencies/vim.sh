#!/bin/bash

echo "backup .vimrc"
mv ~/.vimrc $olddir

echo "Creating symlink to .vimrc in home directory."
ln -s $dir/vimrc ~/.vimrc

echo "Creating vim folder"
mkdir -p ~/.vim

echo "copying the vim files to .vim dir"
VIM_FOLDER=$dir/vim/*
for vim_file in $VIM_FOLDER; do
  cp $vim_file ~/.vim/
done

echo "Installing Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim || echo "Vundle already installed"

# Installing vim plugins
vim +PluginInstall +qall
