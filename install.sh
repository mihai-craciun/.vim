#!/bin/bash
# Get the parent directory of the .vim folder
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." >/dev/null 2>&1 && pwd )"
# Copy to home
cp -r "$DIR/.vim" "$HOME/"
# Link the .vimrc
cp "$HOME/.vim/.vimrc" "$HOME/"
# Checkout Vundle to latest
CRT_DIR=$(pwd)
cd "$HOME/.vim/bundle/Vundle.vim"
git pull origin master
git checkout master
# Update commands
vim +PluginUpdate +qall
# Change back
cd $CRT_DIR

