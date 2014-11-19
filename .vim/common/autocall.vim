autocmd BufWritePre * :call DispatchAutoCall()

function DispatchAutoCall()
	if exists("*b:AutoCall")
		" Save the cursor position.
		let l:winview = winsaveview()

		call b:AutoCall()

		" Restore cursor position.
		call winrestview(l:winview)
	endif
endfunction
