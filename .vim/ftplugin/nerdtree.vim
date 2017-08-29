" Visual Settings {{{ ----------------------------------------------------------
" setlocal colorcolumn=
setlocal colorcolumn=

if has('folding')
  setlocal nofoldenable
endif

setlocal nolist
" Visual Settings }}} ----------------------------------------------------------

" Shortcuts {{{ ----------------------------------------------------------------
" Make '-' work like 'u' (netrw-like)
nmap <buffer> <expr> - g:NERDTreeMapUpdir
" Shortcuts }}} ----------------------------------------------------------------
