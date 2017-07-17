"Platform Identification & Compatibility
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:OSX = has('macunix')
let g:LINUX = has('unix') && !has('macunix') && !has('win32unix')
let g:WINDOWS = has('win32') || has('win64')
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"compile/run the program
if g:LINUX
    set makeprg=g++\ %:p\ -o\ %:p:r.out\ -Wall\ -fexceptions\ -g\ -O3\ -Wcast-align\
        \ -Wnon-virtual-dtor\ -Wshadow\ -Winit-self\ -Wredundant-decls\ -Wundef\
        \ -Wfloat-equal\ -Winline\ -Wunreachable-code\ -Wmissing-declarations\
        \ -Wmissing-include-dirs\ -Wswitch-enum\ -Wswitch-default\ -Wmain\ -Wextra\
        \ -Wzero-as-null-pointer-constant\ -pedantic-errors\ -pedantic\ -std=c++11
elseif g:WINDOWS
     set makeprg=g++\ %:p\ -o\ %:p:r\ -Wall\ -fexceptions\ -g\ -O3\ -Wcast-align\
        \ -Wnon-virtual-dtor\ -Wshadow\ -Winit-self\ -Wredundant-decls\ -Wundef\
        \ -Wfloat-equal\ -Winline\ -Wunreachable-code\ -Wmissing-declarations\
        \ -Wmissing-include-dirs\ -Wswitch-enum\ -Wswitch-default\ -Wmain\ -Wextra\
        \ -Wzero-as-null-pointer-constant\ -pedantic-errors\ -pedantic\ -std=c++11
endif
" -Weffc++
" -Wfatal-errors

" command -nargs=* Make make <args> | cwindow
" command  Make make | cwindow
noremap <buffer> <silent> <F9> :w<cr>:make<cr><cr>

if g:WINDOWS
    noremap <buffer> <silent> <F10> :!%:p:r.exe<cr><cr>
endif
if g:LINUX
    noremap <buffer> <silent> <F10> :!"%:p:r.out"<cr>
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Clang_Complete {{{
if g:WINDOWS
    let g:clang_library_path='C:\Program Files\LLVM\bin'
    let g:clang_user_options = '--target=x86_64-w64-mingw32 -Weverything -std=c++11'
    let g:clang_snippets = 1
    let g:clang_snippets_engine = 'ultisnips'
    let g:AutoPairsMapCR = 0
    imap <buffer> <silent> <CR> <CR><Plug>AutoPairsReturn
    let g:clang_auto_select = 1
    let g:clang_complete_optional_args_in_snippets = 1
    inoremap <buffer> <C-Space> <C-x><C-o>
endif
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
