" ##########
" # Vundle #
" ##########

source ~/.vim/common/vundle.vim

" #############
" # Indention #
" #############

" Display tabs as 4 spaces, but don't actually expand them.
set tabstop=4
set noexpandtab

" ######################
" # Automatic Commands #
" ######################

" Automatically search and replace all trailing whitespace with null
" characters when saving a file.
"
" \s matches all whitespace
" + matches 1 or more instances of the \s
" $ is EOL
autocmd BufWritePre * :%s_\s\+$__e

" Use relative line numbering in normal mode, and absolute line numbering in
" insert mode.
autocmd InsertEnter * :set number
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set number
autocmd InsertLeave * :set relativenumber


" ############
" # Bindings #
" ############

" Disable the arrow keys, encourages good habits.
noremap <Up> <NOP>
inoremap <Up> <NOP>
noremap <Down> <NOP>
inoremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
" B A Start

" ############
" # Defaults #
" ############

" Absolute numbering at startup
set relativenumber
set number

" Set the default colors of everything.
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

