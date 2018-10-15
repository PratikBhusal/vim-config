" Compile/Run programs {{{ -----------------------------------------------------


if !( filereadable( expand('%:p:h') . ( g:windows ? '\/Makefile' : '/Makefile' ) ) )
    setlocal makeprg=gcc\ -Wall\ -fexceptions\ -g\ -O3\ -Wcast-align\ -Wundef\
        \ -Wshadow\ -Winit-self\ -Wredundant-decls\ -Wextra\
        \ -Wfloat-equal\ -Winline\ -Wunreachable-code\ -Wmissing-declarations\
        \ -Wmissing-include-dirs\ -Wswitch-enum\ -Wswitch-default\ -Wmain\
        \ -pedantic-errors\ -pedantic\
        \ %:p\ -o

    if g:windows
        noremap <buffer> <silent> <F9> :silent update <bar>silent make %:p:r.exe<cr><cr>

        if has('nvim')
            noremap <buffer> <silent> <F10> :!%:p:r.exe<cr>
        else
            noremap <buffer> <silent> <F10> :!%:p:r.exe<cr><cr>
        endif
    elseif g:linux
        noremap <buffer> <silent> <F9> :silent update <bar>silent make %:p:r.out<cr><cr>
        noremap <buffer> <silent> <F10> :!'%:p:r.out'<cr>
    endif
else
    noremap <buffer> <silent> <F9> :silent update <bar>silent make <cr><cr>

    if g:windows
        noremap <buffer> <silent> <F10> :!make run<cr><cr>
    else
        noremap <buffer> <silent> <F10> :!make run<cr>
    endif
endif

" -std=c++11
" -Weffc++
" -Wfatal-errors
" Compile/Run programs }}} -----------------------------------------------------

" Clang_Complete {{{ -----------------------------------------------------------
let g:clang_snippets = 1
let g:clang_snippets_engine = 'ultisnips'
let g:clang_auto_select = 1
let g:clang_close_preview = 1
let g:clang_complete_copen = 1
let g:clang_auto_select = 1
let g:clang_complete_optional_args_in_snippets = 1
inoremap <buffer> <C-Space> <C-x><C-o>

if g:windows
    let g:clang_library_path= 'C:\Program Files\LLVM\bin'
    let g:clang_user_options = '--target=x86_64-w64-mingw32 -Weverything -std=c11'
elseif g:linux
    let g:clang_library_path = '/usr/lib/llvm-4.0/lib'
    let g:clang_user_options = '-Weverything -std=c11'
endif
" Clang_Complete }}} -----------------------------------------------------------
