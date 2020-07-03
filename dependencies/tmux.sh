#!/bin/bash

echo "backup .tmux.conf"
mv ~/.tmux.conf $BK_DIR

echo "Creating symlink to .tmux.conf in home directory."
ln -s $DOTFILES_DIR/tmux.conf ~/.tmux.conf
