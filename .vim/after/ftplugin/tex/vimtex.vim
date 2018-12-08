let g:polyglot_disabled += 'latex'

let g:vimtex_compiler_latexmk = {
    \ 'options' : [
    \   '-pdf',
    \   '-verbose',
    \   '-bibtex',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}

" Compile and Run {{{ ----------------------------------------------------------
augroup vimtex_event_1
    au!
    au User VimtexEventInitPost call vimtex#compiler#compile()
    au User VimtexEventQuit     call vimtex#compiler#clean(0)
    au User VimtexEventQuit     call CloseViewers()
augroup END
" Compile and Run }}} ----------------------------------------------------------
