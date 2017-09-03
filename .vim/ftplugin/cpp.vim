" Compile/Run programs {{{ -----------------------------------------------------

if !( filereadable(expand('%:p:h') . "\/GNUmakefile") )
    setlocal makeprg=g++\ -Wall\ -fexceptions\ -g\ -O3\ -Wcast-align\
        \ -Wnon-virtual-dtor\ -Wshadow\ -Winit-self\ -Wredundant-decls\ -Wundef\
        \ -Wfloat-equal\ -Winline\ -Wunreachable-code\ -Wmissing-declarations\
        \ -Wmissing-include-dirs\ -Wswitch-enum\ -Wswitch-default\ -Wmain\ -Wextra\
        \ -Wzero-as-null-pointer-constant\ -pedantic-errors\ -pedantic\ %:p\ -o
endif

" -std=c++11
" -Weffc++
" -Wfatal-errors

" command -nargs=* Make make <args> | cwindow
" command  Make make | cwindow
if g:windows
    noremap <buffer> <silent> <F9> :w<cr>:make %:p:r.exe<cr><cr>

    if has('nvim')
        noremap <buffer> <silent> <F10> :!%:p:r.exe<cr>
    else
        noremap <buffer> <silent> <F10> :!%:p:r.exe<cr><cr>
    endif
elseif g:linux
    noremap <buffer> <silent> <F9> :w<cr>:make %:p:r.out<cr><cr>
    noremap <buffer> <silent> <F10> :!"%:p:r.out"<cr>
endif
" Compile/Run programs }}} -----------------------------------------------------

" Clang_Complete {{{ -----------------------------------------------------------
if g:windows
    let g:clang_library_path='C:\Program Files\LLVM\bin'
    let g:clang_user_options = '--target=x86_64-w64-mingw32 -Weverything -std=c++11'
    let g:clang_snippets = 1
    let g:clang_snippets_engine = 'ultisnips'
    let g:clang_auto_select = 1
    let g:clang_close_preview = 1
    let g:clang_complete_copen = 1
    let g:clang_auto_select = 1
    let g:clang_complete_optional_args_in_snippets = 1
    inoremap <buffer> <C-Space> <C-x><C-o>

    " Auto-Pairs Compatibility {{{
    let g:AutoPairsMapCR = 0
    imap <buffer> <silent> <CR> <CR><Plug>AutoPairsReturn
    " Auto-Pairs Compatibility }}}
endif
" Clang_Complete }}} -----------------------------------------------------------
