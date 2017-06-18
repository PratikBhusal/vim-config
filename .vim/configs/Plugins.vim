""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree {{{
let NERDTreeBookmarksFile=expand("$HOME/.vim/.NERDTreeBookmarks")
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ultisnips {{{
" Trigger configuration. 
" Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
set runtimepath+=~\plugged\vim-snippets\UltiSnips
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"
let g:UltiSnipsSnippetDirectories=["UltiSnips","plugged/vim-snippets/UltiSnips"]
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<Leader>z"
let g:UltiSnipsEditSplit="vertical"
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
