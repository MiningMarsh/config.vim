#!/usr/bin/env sh
DIR="$( cd "$( dirname "$0" )" && pwd )"
mkdir "$DIR/bundle"
git clone https://github.com/gmarik/Vundle.vim.git "$DIR"/bundle/Vundle.vim
mv "$DIR" ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
vim -c "PluginInstall" -c "q" -c "q"
