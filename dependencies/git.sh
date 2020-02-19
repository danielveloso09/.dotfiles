#!/bin/bash

echo "backup .gitconfig"
mv ~/.gitconfig $olddir

echo "copying a default .gitconfig file"
cp $dir/git/.gitconfig ~/
