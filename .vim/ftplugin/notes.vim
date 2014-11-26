function! b:AutoCall()
	" Removing trailing periods from note files.
	silent! %s_\(^\s*[•◦▸▹▪▫].*\)[.]\s*$_\1_ge
	" Remove empty bullet points.
	silent! %g_^\s*[•◦▸▹▪▫]\s*$_d
	" Remove empty lines.
	silent! %g_^\s*$_d
	" Convert first word of bullet point to uppercase.
	silent! %s_\(^\s*[•◦▸▹▪▫]\s*\)\(\w\)\(.*\)$_\1\u\2\3_ge
	" Remove leading whitespace in headers.
	silent! /^[^•^◦^▸^▹^▪^▫]*[:]\s*$/s_^\s*\(\S\)[:]$_\1:_g
	" Add a line between sections.
	silent! %s_\n*\(\u.*[:]\)$_\r\r\1_ge
endfunction

" Enable spell checking.
setlocal spell spelllang=en_us

" Soft line wrapping.
source ~/.vim/common/soft-wrap.vim
