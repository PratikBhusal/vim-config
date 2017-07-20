if g:windows
    " setlocal makeprg=grip\ --export
    setlocal makeprg=grip\ --quiet\ -b
    noremap <buffer> <silent> <F9> :silent Make<cr>
endif
