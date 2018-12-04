setlocal commentstring=//\ %s

" Compile/Run programs {{{ -----------------------------------------------------
if executable('iverilog')
    if g:windows
        noremap <buffer> <silent> <F9> :silent update <bar>silent make<cr><cr>

        if has('nvim')
            noremap <buffer> <silent> <F10> :!vvp "%:p:r.out"<cr>
        else
            noremap <buffer> <silent> <F10> :!vvp "%:p:r.out"<cr><cr>
        endif
    elseif g:linux
        noremap <buffer> <silent> <F9> :silent update <bar>silent make<cr><cr>
        noremap <buffer> <silent> <F10> :!vvp "%:p:r.out"<cr>
    endif

    setlocal makeprg=iverilog\ -o\ \"%:p:r.out\"\ \"%:p\"
endif
" Compile/Run programs }}} -----------------------------------------------------
