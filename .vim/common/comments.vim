" ####################
" # Quick Commenting #
" ####################

" Comments everything between the '[ and '] marks.
function! Comment(mode)
	if exists("b:commentPrefix")
		" Save the cursor position.
		let l:winview = winsaveview()

		'[,']s_^_\=b:commentPrefix _e

		" Restore cursor position.
		call winrestview(l:winview)
	endif
endfunction

" Comments everything between the '[ and '] marks.
function! UnComment(mode)
	if exists("b:commentPrefix")
		" Save the cursor position.
		let l:winview = winsaveview()

		let @/="^\\(\\s*\\)" . b:commentPrefix
		'[,']s__\1_e

		" Restore cursor position.
		call winrestview(l:winview)
	endif
endfunction

" Map ,c to commenting every line that is encompassed by a movement.
map <buffer> <Leader>c :silent! set operatorfunc=Comment <CR>g@
" Map ,u to un-commenting every line that is encompassed by a movement.
map <buffer> <Leader>u :silent! set operatorfunc=UnComment <CR>g@
