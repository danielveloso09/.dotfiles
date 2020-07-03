#!/bin/bash
############################
# .install.sh
# This script creates a base start for my console configuration
############################

########## Variables

# dotfiles directory
DOTFILES_DIR=~/.dotfiles

# old dotfiles backup directory
BK_DIR=~/dotfiles_old

##########

# create dotfiles_old in homedir
echo "Creating $BK_DIR for backup of any existing dotfiles in ~"
mkdir -p $BK_DIR
echo "...done"

# Install dependencies 1st step
if [ "$STEP" == '1' || "$STEP" == '' ]; then
  echo "Runing step 2"
  ./dependencies/git.sh
  ./dependencies/tmux.sh
  ./dependencies/vim.sh
  ./dependencies/zshell.sh
fi

# Install dependencies 2nd step
if [ "$STEP" == '2']; then
  echo "Runing step 2"
  ./dependencies/zshell_ln.sh
  ./dependencies/fzf.sh
  ./dependencies/homebrew.sh
  ./dependencies/rvm.sh
  ./dependencies/subl-link.sh
fi
