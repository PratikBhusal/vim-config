" Netrw automatically load CtrlP {{{ -------------------------------------------
" augroup NetrwLineNumbers
"     setlocal updatetime=500
"     autocmd CursorHold *
"         \ if (&filetype == 'netrw')
"             \ | CtrlP
"         \ | endif
"     autocmd BufLeave *
"         \ if (&filetype == 'netrw')
"             \ | bdelete
"             \ | set updatetime=4000
"         \ | endif
" augroup END
" Netrw automatically load CtrlP }}} -------------------------------------------
