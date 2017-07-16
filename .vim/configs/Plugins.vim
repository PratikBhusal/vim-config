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
let NERDTreeShowBookmarks=1
let NERDTreeShowLineNumbers=1
let NERDTreeIgnore=['\.ncb$', '\.suo$', '\.vcproj\.RIMNET', '\.obj$',
                    \ '\.ilk$', '^BuildLog.htm$', '\.pdb$', '\.idb$',
                    \ '\.embed\.manifest$', '\.embed\.manifest.res$',
                    \ '\.intermediate\.manifest$', '^mt.dep$' ]
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
cabbrev ls <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'CtrlPBuffer' : 'ls')<CR>
cabbrev sl <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'CtrlPBuffer' : 'sl')<CR>
map <silent> <Leader>B :CtrlPBookmarkDir<CR>
let g:ctrlp_dont_split = 'NERD_tree_2'
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_root_markers = ['.gitignore']
let g:ctrlp_extensions = ['bookmarkdir']
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe {{{
if g:LINUX
    let g:ycm_key_list_select_completion=['<Leader>n']
    let g:ycm_key_list_previous_completion=['<Leader>p']
    let g:ycm_autoclose_preview_window_after_completion=1
    " let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm'
    let g:ycm_global_ycm_extra_conf = '~/.vim/YouCompleteMe/.ycm_extra_conf.py'
    let g:ycm_python_binary_path = '/usr/bin/python3'
endif
" if g:WINDOWS
"     let g:ycm_keep_logfiles = 1
"     let g:ycm_log_level = 'debug'
"     let g:ycm_global_ycm_extra_conf = '~/.vim/YouCompleteMe/.ycm_extra_conf.py'
" endif
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VimCompletesMe {{{
" let g:vcm_default_maps = 0
" imap <Leader><Tab>   <plug>vim_completes_me_forward
" imap <S-Tab> <plug>vim_completes_me_backward
" " }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic {{{1
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_aggregate_errors = 1
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"  1}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
