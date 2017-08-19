" Netrw Automatically Add line numbering {{{ -----------------------------------
augroup NetrwLineNumbers
    setlocal updatetime=500
    autocmd CursorHold *
        \ if (&filetype == 'netrw' && &number == 0)
            \ | set number
            \ | set relativenumber
        \ | endif
    autocmd BufLeave *
        \ if count(['netrw'],&filetype)
            \ | setlocal updatetime=4000
        \ | endif
augroup END
" Netrw Automatically Add line numbering }}} -----------------------------------
