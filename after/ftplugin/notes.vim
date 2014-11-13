" Removing trailing periods from note files.
autocmd-buffer-local BufWritePre <buffer> :%s_\(^\s*[•◦▸▹▪▫].*\)[.]\s*$_\1_ge

" Enable spell checking.
setlocal spell spelllang=en_us

" Soft line wrapping.
source ~/.vim/common/soft-wrap.vim
