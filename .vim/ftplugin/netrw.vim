" Netrw Automatically Add line numbering {{{ -----------------------------------
" augroup NetrwLineNumbers
"     setlocal updatetime=500
"     autocmd CursorHold *
"         \ if (&filetype == 'netrw' && &number == 0)
"             \ | set number
"             \ | set relativenumber
"         \ | endif
"     autocmd BufLeave *
"         \ if count(['netrw'],&filetype)
"             \ | setlocal updatetime=4000
"         \ | endif
" augroup END
" Netrw Automatically Add line numbering }}} -----------------------------------

" Change how netrw Looks {{{ ---------------------------------------------------
let g:netrw_liststyle = 1
let g:netrw_banner = 0
let g:netrw_sizestyle = "H"
" Change how netrw Looks }}} ---------------------------------------------------

