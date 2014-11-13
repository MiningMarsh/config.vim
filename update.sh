#!/usr/bin/env sh
DIR="$( cd "$( dirname "$0" )" && pwd )"
cd "$DIR"
git pull origin master
vim -u "~/.vim/vundle.vim" -c "PluginInstall!" -c ":q" -c ":q"
