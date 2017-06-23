"Platform Identification & Compatibility
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:OSX = has('macunix')
let g:LINUX = has('unix') && !has('macunix') && !has('win32unix')
let g:WINDOWS = has('win32') || has('win64')
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"compile/run the program
set makeprg=g++\ %\ -o\ %:p:r\ -Wall\ -fexceptions\ -g\ -O3\ 
    \-Wnon-virtual-dtor\ -Wshadow\ -Winit-self\ -Wredundant-decls\ -Wcast-align\ 
    \-Wundef\ -Wfloat-equal\ -Winline\ -Wunreachable-code\ -Wall\ 
    \-Wmissing-declarations\ -Wmissing-include-dirs\ -Wswitch-enum\ 
    \-Wswitch-default\ -Wzero-as-null-pointer-constant\ -Wmain\ 
    \-pedantic-errors\ -pedantic\ -Wextra\ -std=gnu++11
"-Weffc++
noremap <buffer> <silent> <F9> :w<cr>:make<cr><cr>

if g:WINDOWS
    "noremap <buffer> <silent> <F9> :w<cr>:!"C:\Binaries\compileRun\C++\compileRunC++.bat" "%:p:r"<cr><cr>  
    "autocmd FileType cpp noremap <buffer> <silent> <F9> :w<cr>:!
    "\"C:\Binaries\compileRun\C++\compileRunC++.bat" %:p:r<cr><cr>
    noremap <buffer> <silent> <F10> :!%:p:r.exe<cr><cr>
endif
if g:LINUX
    "command -nargs=* Make make <args> | cwindow 3
    "command  Make make | cwindow 3 
    "noremap <buffer> <silent> <F10> :!expand("%:t:r")   
    noremap <buffer> <F10> :!"%:p:r"<cr>
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
