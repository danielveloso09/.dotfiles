#!/bin/bash
############################
# .install.sh
# This script creates a base start for my console configuration
############################

########## Variables

dir=~/.dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# Install dependencies
./dependencies/git.sh
./dependencies/tmux.sh
./dependencies/vim.sh
./dependencies/zshell.sh
./dependencies/fzf.sh
./dependencies/homebrew.sh
./dependencies/rvm.sh
./dependencies/subl-link.sh
