#!/bin/bash
# Get the parent directory of the .vim folder
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." >/dev/null 2>&1 && pwd )"
# Copy to home
cp -Tr "$DIR/.vim" "$HOME/"
# Link the .vimrc
cp -T "$HOME/.vim/.vimrc" "$HOME/"
# Checkout Vundle to latest
CRT_DIR=$(pwd)
cd "$HOME/.vim/bundle/Vundle.vim"
git pull origin master
git checkout origin/master
# Update commands
vim +PluginUpdate +qall
# Change back
cd $CRT_DIR

