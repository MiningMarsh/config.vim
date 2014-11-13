" ####################
" # Quick Commenting #
" ####################

" Comments everything between the '[ and '] marks.
function! Comment(mode)
	'[,']s_^_\=b:commentPrefix _
endfunction

" Comments everything between the '[ and '] marks.
function! UnComment(mode)
	'[,']s_^\(\s*\)// _\1_
endfunction

" Map ,c to commenting every line that is encompassed by a movement.
map <buffer> ,c :set operatorfunc=Comment <CR>g@
" Map ,u to un-commenting every line that is encompassed by a movement.
map <buffer> ,u :set operatorfunc=UnComment <CR>g@
