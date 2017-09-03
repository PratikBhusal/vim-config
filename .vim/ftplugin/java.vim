" Eclim Configs {{{ ------------------------------------------------------------
let g:EclimCompletionMethod = 'omnifunc'
" let g:EclimCompletionMethod = 'completefunc'
if g:EclimCompletionMethod == 'completefunc'
    inoremap <buffer> <C-Space> <C-x><C-u>
else
    inoremap <buffer> <C-Space> <C-x><C-o>
endif

" Compile Code
nnoremap <buffer> <silent> <F9> :w<cr>:Java<cr><cr>
" noremap <buffer> <silent> <F9> :w<cr>:make -d "%:p:h:h/bin" "%:p"<cr><cr>
" noremap <buffer> <silent> <F10> :!java -cp "%:p:h:h/bin" %:r<cr><cr>
" Eclim Configs }}} ------------------------------------------------------------

" Windows Configs {{{ ----------------------------------------------------------
if g:windows
    nnoremap <silent> <F2> :silent exec "!C:/Users/Pratik/eclipse/eclimd.bat
        \ -Dnailgun.server.port=9091
        \ -Dosgi.instance.area.default=" . expand( getcwd() )<cr>
endif
" Windows Configs }}} ----------------------------------------------------------
