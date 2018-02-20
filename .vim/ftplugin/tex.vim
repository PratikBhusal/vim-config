let g:tex_flavor = "latex"

" Vimtex {{{ -------------------------------------------------------------------
let g:vimtex_view_general_viewer = 'SumatraPDF'
let g:vimtex_view_general_options
    \ = '-reuse-instance -forward-search @tex @line @pdf'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'
" Vimtex }}} -------------------------------------------------------------------

" Compile and Run {{{ ----------------------------------------------------------
augroup vimtex_event_1
    au!
    au User VimtexEventInitPost call vimtex#compiler#compile()
    au User VimtexEventQuit     call vimtex#compiler#clean(0)
    au User VimtexEventQuit     call CloseViewers()
augroup END
" Compile and Run }}} ----------------------------------------------------------



