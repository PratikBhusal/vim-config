if g:windows
    setlocal makeprg=grip\ --export

    nnoremap <buffer> <silent> <F2> :silent !start /min grip --quiet -b<cr>
    nnoremap <buffer> <silent> <F9> :silent make<cr>
        \ :silent ! start /b %:r.html<cr>
endif
