" Run the Program {{{ ----------------------------------------------------------
if g:windows
    noremap <buffer> <silent> <F9> :update <bar> !py -3 "%:p"<cr><cr>
endif
if g:linux
    noremap <buffer> <silent> <F9> :update <bar> !python3 "%:p"<cr>
endif
" Run the Program }}} ----------------------------------------------------------

" Autucompletion {{{ -----------------------------------------------------------
setlocal omnifunc=pythoncomplete#Complete
" Autucompletion }}} -----------------------------------------------------------
