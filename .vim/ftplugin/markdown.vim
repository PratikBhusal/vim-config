setlocal makeprg=grip\ --export\ --quiet

if g:windows
    nnoremap <buffer> <silent> <F2> :silent !start /min grip --quiet -b<cr>
    nnoremap <buffer> <silent> <F5> :silent update <bar> make <bar>
        \ :silent ! start /b %:r.html<cr>
elseif g:linux
    nnoremap <buffer> <silent> <F5> :silent update <bar> make <bar>
        \ silent !xdg-open %:r.html &<cr><cr>
endif
