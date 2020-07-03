#!/bin/bash

echo "backup .zshrc"
mv ~/.zshrc $BK_DIR

echo "Installing ohmyzsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
