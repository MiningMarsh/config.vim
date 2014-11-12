" Removing trailing periods from note files.
autocmd BufWritePre * :%s/[.]$//e

" Enable spell checking.
setlocal spell spelllang=en_us

" Soft line wrapping.
setlocal formatoptions+=l
setlocal wrap
setlocal linebreak
setlocal nolist
setlocal textwidth = 0
setlocal wrapmargin = 0
