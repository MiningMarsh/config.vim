" #################
" # Quick Sorting #
" #################

" Comments everything between the '[ and '] marks.
function! SortSelection(mode)
	'[,']sort
endfunction

" Map ,c to commenting every line that is encompassed by a movement.
map <buffer> <Leader>s :silent! set operatorfunc=SortSelection <CR>g@
