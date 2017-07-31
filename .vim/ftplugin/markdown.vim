if g:windows
    " setlocal makeprg=grip\ --export
    setlocal makeprg=grip\ --quiet\ -b
    nnoremap <buffer> <silent> <F9> :silent Make<cr>
    nnoremap <buffer> <silent> <F10> :silent !grip --export -b<cr>
endif
