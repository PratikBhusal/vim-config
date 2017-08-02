" Backup Code Compile/Run {{{ --------------------------------------------------
"noremap <buffer> <F9> :w<cr>:exec '!javac' shellescape(expand('%'), 1) '&& java' shellescape(expand('%:r'), 1)<cr>
"noremap <buffer> <F10> :exec '!java' shellescape(expand('%:r'), 1)<cr>
" Backup Code Compile/Run }}} --------------------------------------------------

" Eclim Configs {{{ ------------------------------------------------------------
let g:EclimCompletionMethod = 'omnifunc'
" let g:EclimCompletionMethod = 'completefunc'
if g:EclimCompletionMethod == 'completefunc'
    inoremap <buffer> <C-Space> <C-x><C-u>
else
    inoremap <buffer> <C-Space> <C-x><C-o>
endif

" Single file compilation
" noremap <buffer> <silent> <F9> :w<cr>:silent exec Java %"<cr>

" Multi-file compilation
nnoremap <buffer> <silent> <F9> :w<cr>:Java<cr><cr>
" Eclim Configs }}} ------------------------------------------------------------

" Windows Configs {{{ ----------------------------------------------------------
if g:windows
    nnoremap <buffer> <silent> <F2> :silent exec "!C:/Users/Pratik/eclipse/eclimd.bat"<cr>
endif
" Windows Configs }}} ----------------------------------------------------------
