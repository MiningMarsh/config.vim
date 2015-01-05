function s:AutoCall()
	" Check to see if the first line of the file is an import.
	let l:ln = getline(1)
	if l:ln[:5] is# "import"

		" Go to the top of the file.
		normal! gg
		" Sort until the last import.
		,/import.*\n\(import\)\@!/sort
	endif

	" Replace tabs with spaces.
	%s_\t_    _ge

	" Convert forms of `if(){` to `if () {`
	%s_\(if\|while\|do\)\s*\((.*)\)\s*{_\1 \2 {_ge

	" Put whitespace after casts.
	%s_(\(\s*\(\u\l*\)\+\s*\))\s*_(\1) _ge

	" Put whitespace after casts.
	%s_(\s*\(byte\|short\|int\|long\|float\|double\|boolean\)\s*)\s*_(\1) _ge

endfunction

let b:AutoCall = function("s:AutoCall")
let b:commentPrefix = "//"
set smarttab
set expandtab

inoremap <buffer> <expr> if( "if ("
inoremap <buffer> <expr> while( "while ("
inoremap <buffer> <expr> for( "for ("
inoremap <buffer> <expr> * " * "
inoremap <buffer> <expr> / " / "
inoremap <buffer> <expr> - " - "
inoremap <buffer> <expr> + " + "
inoremap <buffer> <expr> (byte) "(byte) "
inoremap <buffer> <expr> (short) "(short) "
inoremap <buffer> <expr> (int) "(int) "
inoremap <buffer> <expr> (long) "(long) "
inoremap <buffer> <expr> (float) "(float) "
inoremap <buffer> <expr> (double) "(double) "
inoremap <buffer> <expr> (boolean) "(boolean) "
