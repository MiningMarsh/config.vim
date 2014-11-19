" Remove all tabs.
autocmd BufWritePre <buffer> :%s_^\([ ]*\)\t\([ ]*.*\)$_\1    \2_ge
