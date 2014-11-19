function b:AutoCall()
	" Removing trailing periods from note files.
	%s_\(^\s*[•◦▸▹▪▫].*\)[.]\s*$_\1_ge
	" Remove empty bullet points.
	%g_^\s*[•◦▸▹▪▫]\s*$_d
	" Remove empty lines.
	%g_^\s*$_d
	" Add a line between sections.
	%s_\n*\(\u.*[:]\)$_\r\r\1_ge
	" Convert first word of bullet point to uppercase.
	%s_\(^\s*[•◦▸▹▪▫]\s*\)\(\w\)\(.*\)$_\1\u\2\3_ge
endfunction

" Enable spell checking.
setlocal spell spelllang=en_us

" Soft line wrapping.
source ~/.vim/common/soft-wrap.vim
