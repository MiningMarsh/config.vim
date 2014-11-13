#!/usr/bin/env sh
DIR="$( cd "$( dirname "$0" )" && pwd )"
mkdir "$DIR/bundle"
echo "Downloading vundle"
git clone https://github.com/gmarik/Vundle.vim.git "$DIR"/bundle/Vundle.vim
echo "Copying to ~/.vim"
mv "$DIR" ~/.vim
echo "Linking ~/.vimrc"
ln -s ~/.vim/common/rc.vim ~/.vimrc
echo "Installing Vim bundles"
vim -u "~/.vim/common/vundle.vim" -c "PluginInstall" -c ":q" -c ":q"
echo "Done!"
