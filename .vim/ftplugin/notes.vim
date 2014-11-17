" Removing trailing periods from note files.
autocmd BufWritePre <buffer> :%s_\(^\s*[•◦▸▹▪▫].*\)[.]\s*$_\1_ge
" Remove empty bullet points.
autocmd BufWritePre <buffer> :silent! %g_^\s*[•◦▸▹▪▫]\s*$_d
" Remove empty lines.
autocmd BufWritePre <buffer> :silent! %g_^\s*$_d
" Add a line between sections.
autocmd BufWritePre <buffer> :%s_\n*\(\u.*[:]\)$_\r\r\1_ge

" Enable spell checking.
setlocal spell spelllang=en_us

" Soft line wrapping.
source ~/.vim/common/soft-wrap.vim
