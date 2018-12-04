
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
