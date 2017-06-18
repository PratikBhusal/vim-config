"Platform Identification & Compatibility
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:OSX = has('macunix')
let g:LINUX = has('unix') && !has('macunix') && !has('win32unix')
let g:WINDOWS = has('win32') || has('win64')
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"run the program
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if g:Windows
    noremap <buffer> <silent> <F9> :w<cr>:!py -3 "%:p"<cr>
endif
if g:LINUX
    noremap <buffer> <silent> <F9> :w<cr>:!python3 "%:p"<cr>


