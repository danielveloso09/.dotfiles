#!/bin/bash

echo "backup .tmux.conf"
mv ~/.tmux.conf $olddir

echo "Creating symlink to .tmux.conf in home directory."
ln -s $dir/tmux.conf ~/.tmux.conf
