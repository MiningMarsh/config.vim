" ################
" # Start Vundle #
" ################

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ###########
" # Plugins #
" ###########

source ~/.vim/plugins.vim

" ##############
" # End Vundle #
" ##############

let g:session_autoload = 'no'
let g:session_autosave = 'no'
call vundle#end()
filetype plugin indent on
