""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Platform Identification {{{
let g:OSX = has('macunix')
let g:LINUX = has('unix') && !has('macunix') && !has('win32unix')
let g:WINDOWS = has('win32') || has('win64')
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree {{{
if g:LINUX
    let NERDTreeBookmarksFile=expand("$HOME/.vim/.NERDTreeBookmarks-Linux")
endif
if g:WINDOWS
    let NERDTreeBookmarksFile=expand("$HOME/.vim/.NERDTreeBookmarks-Windows")
endif

let NERDTreeShowLineNumbers=1
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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP {{{
map <silent> <Leader>p :CtrlP<CR>
map <silent> <Leader>b :CtrlPBuffer<CR>
map <silent> <Leader>B :CtrlPBookmarkDir<CR>
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co 
    \--exclude-standard']
let g:ctrlp_root_markers = ['.gitignore']
let g:ctrlp_extensions = ['bookmarkdir']
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
