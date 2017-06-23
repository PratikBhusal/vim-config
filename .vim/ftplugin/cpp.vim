"Platform Identification & Compatibility
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:OSX = has('macunix')
let g:LINUX = has('unix') && !has('macunix') && !has('win32unix')
let g:WINDOWS = has('win32') || has('win64')
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"compile/run the program
if g:WINDOWS
    noremap <buffer> <silent> <F9> :w<cr>:!"C:\Binaries\compileRun\C++\compileRunC++.bat" "%:p:r"<cr><cr>
    noremap <buffer> <silent> <F10> :!%:p:r.exe<cr><cr>
    "autocmd FileType cpp noremap <buffer> <silent> <F9> :w<cr>:!"C:\Binaries\compileRun\C++\compileRunC++.bat" %:p:r<cr><cr>
endif
if g:LINUX
    set makeprg=g++\ %\ -o\ %:p:r 
    "command -nargs=* Make make <args> | cwindow 3
    command  Make make | cwindow 3
    noremap <buffer> <silent> <F9> :w<cr>:Make<cr><cr>
    "noremap <buffer> <silent> <F10> :!expand("%:t:r")   
    noremap <buffer> <F10> :!"%:p:r"<cr>
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
