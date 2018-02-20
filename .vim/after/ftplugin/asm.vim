setlocal commentstring=#\ %s
setlocal nolist

" Run/Compile mips assembly code
command! -nargs=* Mips !java -jar
    \ C:/Programming-Projects/2017/UTD/Fall-2017/CS-3340/Mars4_5.jar
    \ nc we <args>
noremap <buffer> <silent> <F9> :update <bar> :Mips "%:p"<cr><cr>
